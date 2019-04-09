<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "article".
 *
 * @property integer $id
 * @property string  $stuffname
 * @property string  $type
 * @property integer $money
 * @property integer $create_time
 *
 */
class Article extends \yii\db\ActiveRecord
{
    
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'article';
    }

}
