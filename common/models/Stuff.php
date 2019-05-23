<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "stuff".
 *
 * @property integer $id
 * @property string $stuffname
 * @property string $borrow_money
 * @property string $create_time
 */
class Stuff extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'stuff';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['stuffname', 'borrow_money'], 'required'],
            [['borrow_money'], 'number'],
            [['create_time'], 'safe'],
            [['stuffname'], 'string', 'max' => 10],
            [['stuffname'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'stuffname' => '员工姓名',
            'borrow_money' => '当前欠款金额',
            'create_time' => '创建时间',
            'remark' => '备注'
        ];
    }
}
