<?php
namespace api\modules\v2\controllers;

use Yii;
use yii\rest\ActiveController;
use common\models\Article;
use yii\web\Response;

class ArticleController extends ActiveController
{
    public $modelClass = 'common\models\Article';
    
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['contentNegotiator']['formats']['text/html'] = Response::FORMAT_JSON;
        return $behaviors;
    }

    // 获取当前员工的借还列表
    public function actionSearch($id) {
        $this->id = Yii::$app->request->get('id');
        return Article::find()->where(['stuff_id' => $this->id ])->all();
    }

    public function actionSum($id) {
        $this->id = Yii::$app->request->get('id');
        return Article::find()->where(['stuff_id' => $this->id ])->sum('money');
    }
    // public function actionAdd() {
    //     $article = new Article;
    //     $article->username = "张五"；
    //     $article->type = "还";
    //     $article->money = "-100";
    //     $article->create_time = "1504152206";
    //     $article->save();
    // }
    // 
    public function actionBatch() {
        $params = Yii::$app->request->post();
        // var_dump(Yii::$app->request->bodyParams)
        $userkey=['stuff_id','stuffname','type','money','remark'];//测试数据键
    
       // $uservale=[
       //      [1, '张一', '借', '100', '初始数据'],
       //      [2, '张er', '借', '100', '初始数据'],
       //      [3, '张san', '借', '100', '初始数据'],
       //      [4, '张si', '借', '100', '初始数据']
       //  ];//测试数据值
        Article::deleteAll();
       $res= Yii::$app->db->createCommand()->batchInsert('article', $userkey, $params)->execute();//执行批量添加
       // return Yii::$app->request->bodyParams;
    }
   
}