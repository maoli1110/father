<?php
namespace api\modules\v2\controllers;

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
    public function actionSearch() {
        // if (!\Yii::$app->user->can('ArticleAdmin'))
        // {
        //     throw new ForbiddenHttpException('对不起，你没有进行该操作的权限。');
        // }
        // return Article::find()->where(['stuffname' => '张一'])->all();
        return Article::find()->sum('money');

    }

    // public function actionAdd() {
    //     $article = new Article;
    //     $article->username = "张五"；
    //     $article->type = "还";
    //     $article->money = "-100";
    //     $article->create_time = "1504152206";
    //     $article->save();
    // }
   
}