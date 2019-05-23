<?php
namespace api\modules\v2\controllers;

use Yii;
use yii\rest\ActiveController;
use common\models\Stuff;
use yii\web\Response;

class StuffController extends ActiveController
{
    public $modelClass = 'common\models\Stuff';
    
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['contentNegotiator']['formats']['text/html'] = Response::FORMAT_JSON;
        return $behaviors;
    }

     public function actionSearch($id) {
        $this->id = Yii::$app->request->get('id');
        return Stuff::find()->where(['like','stuffname', $this->id ])->all();
    }

    public function actionBatch() {
        $params = Yii::$app->request->post();
        $userkey=['stuffname','borrow_money'];//测试数据键
       // $params=[
       //      [1, '张一', '借', '100', '初始数据'],
       //      [2, '张er', '借', '100', '初始数据'],
       //      [3, '张san', '借', '100', '初始数据'],
       //      [4, '张si', '借', '100', '初始数据']
       //  ];//测试数据值
        Stuff::deleteAll();
       $res= Yii::$app->db->createCommand()->batchInsert('stuff', $userkey, $params)->execute();//执行批量添加
       // return Yii::$app->request->bodyParams;
    }
   
}