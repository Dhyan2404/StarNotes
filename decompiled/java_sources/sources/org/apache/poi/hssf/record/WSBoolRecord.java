package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.WSBoolRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class WSBoolRecord extends StandardRecord {
    public static final short sid = 129;
    private byte field_1_wsbool;
    private byte field_2_wsbool;
    private static final BitField autobreaks = BitFieldFactory.getInstance(1);
    private static final BitField dialog = BitFieldFactory.getInstance(16);
    private static final BitField applystyles = BitFieldFactory.getInstance(32);
    private static final BitField rowsumsbelow = BitFieldFactory.getInstance(64);
    private static final BitField rowsumsright = BitFieldFactory.getInstance(128);
    private static final BitField fittopage = BitFieldFactory.getInstance(1);
    private static final BitField displayguts = BitFieldFactory.getInstance(6);
    private static final BitField alternateexpression = BitFieldFactory.getInstance(64);
    private static final BitField alternateformula = BitFieldFactory.getInstance(128);

    public WSBoolRecord() {
    }

    public boolean getAlternateExpression() {
        return alternateexpression.isSet(this.field_2_wsbool);
    }

    public boolean getAlternateFormula() {
        return alternateformula.isSet(this.field_2_wsbool);
    }

    public boolean getAutobreaks() {
        return autobreaks.isSet(this.field_1_wsbool);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 2;
    }

    public boolean getDialog() {
        return dialog.isSet(this.field_1_wsbool);
    }

    public boolean getDisplayGuts() {
        return displayguts.isSet(this.field_2_wsbool);
    }

    public boolean getFitToPage() {
        return fittopage.isSet(this.field_2_wsbool);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("wsbool1", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.i5o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(WSBoolRecord.this.getWSBool1());
            }
        }, new BitField[]{autobreaks, dialog, applystyles, rowsumsbelow, rowsumsright}, new String[]{"AUTO_BREAKS", "DIALOG", "APPLY_STYLES", "ROW_SUMS_BELOW", "ROW_SUMS_RIGHT"}), "wsbool2", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.j5o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(WSBoolRecord.this.getWSBool2());
            }
        }, new BitField[]{fittopage, displayguts, alternateexpression, alternateformula}, new String[]{"FIT_TO_PAGE", "DISPLAY_GUTS", "ALTERNATE_EXPRESSION", "ALTERNATE_FORMULA"}));
    }

    public boolean getRowSumsBelow() {
        return rowsumsbelow.isSet(this.field_1_wsbool);
    }

    public boolean getRowSumsRight() {
        return rowsumsright.isSet(this.field_1_wsbool);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 129;
    }

    public byte getWSBool1() {
        return this.field_1_wsbool;
    }

    public byte getWSBool2() {
        return this.field_2_wsbool;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeByte(getWSBool2());
        littleEndianOutput.writeByte(getWSBool1());
    }

    public void setAlternateExpression(boolean z) {
        this.field_2_wsbool = alternateexpression.setByteBoolean(this.field_2_wsbool, z);
    }

    public void setAlternateFormula(boolean z) {
        this.field_2_wsbool = alternateformula.setByteBoolean(this.field_2_wsbool, z);
    }

    public void setAutobreaks(boolean z) {
        this.field_1_wsbool = autobreaks.setByteBoolean(this.field_1_wsbool, z);
    }

    public void setDialog(boolean z) {
        this.field_1_wsbool = dialog.setByteBoolean(this.field_1_wsbool, z);
    }

    public void setDisplayGuts(boolean z) {
        this.field_2_wsbool = displayguts.setByteBoolean(this.field_2_wsbool, z);
    }

    public void setFitToPage(boolean z) {
        this.field_2_wsbool = fittopage.setByteBoolean(this.field_2_wsbool, z);
    }

    public void setRowSumsBelow(boolean z) {
        this.field_1_wsbool = rowsumsbelow.setByteBoolean(this.field_1_wsbool, z);
    }

    public void setRowSumsRight(boolean z) {
        this.field_1_wsbool = rowsumsright.setByteBoolean(this.field_1_wsbool, z);
    }

    public void setWSBool1(byte b) {
        this.field_1_wsbool = b;
    }

    public void setWSBool2(byte b) {
        this.field_2_wsbool = b;
    }

    public WSBoolRecord(WSBoolRecord wSBoolRecord) {
        super(wSBoolRecord);
        this.field_1_wsbool = wSBoolRecord.field_1_wsbool;
        this.field_2_wsbool = wSBoolRecord.field_2_wsbool;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.WS_BOOL;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public WSBoolRecord copy() {
        return new WSBoolRecord(this);
    }

    public WSBoolRecord(RecordInputStream recordInputStream) {
        byte[] readRemainder = recordInputStream.readRemainder();
        this.field_1_wsbool = readRemainder[1];
        this.field_2_wsbool = readRemainder[0];
    }
}
