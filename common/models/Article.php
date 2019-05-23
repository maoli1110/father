<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "article".
 *
 * @property integer $id
 * @property integer $stuff_id
 * @property string $stuffname
 * @property string $type
 * @property string $money
 * @property string $create_time
 * @property string $remark
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

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['stuff_id', 'stuffname', 'money'], 'required'],
            [['stuff_id'], 'integer'],
            [['money'], 'number'],
            [['create_time'], 'safe'],
            [['stuffname', 'type'], 'string', 'max' => 10],
            [['remark'], 'string', 'max' => 200],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'stuff_id' => 'ID',
            'stuffname' => '员工姓名',
            'type' => '借款or还款',
            'money' => '金额',
            'create_time' => '创建时间',
            'remark' => '备注',
        ];
    }
}
