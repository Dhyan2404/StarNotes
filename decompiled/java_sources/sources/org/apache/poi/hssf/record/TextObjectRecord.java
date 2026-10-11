package org.apache.poi.hssf.record;

import com.google.android.material.motion.MotionUtils;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.TextObjectRecord;
import org.apache.poi.hssf.record.cont.ContinuableRecord;
import org.apache.poi.hssf.record.cont.ContinuableRecordOutput;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;
import org.apache.poi.ss.formula.ptg.OperandPtg;
import org.apache.poi.ss.formula.ptg.Ptg;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.RecordFormatException;

/* loaded from: classes12.dex */
public final class TextObjectRecord extends ContinuableRecord {
    private static final int FORMAT_RUN_ENCODED_SIZE = 8;
    public static final short HORIZONTAL_TEXT_ALIGNMENT_CENTERED = 2;
    public static final short HORIZONTAL_TEXT_ALIGNMENT_JUSTIFIED = 4;
    public static final short HORIZONTAL_TEXT_ALIGNMENT_LEFT_ALIGNED = 1;
    public static final short HORIZONTAL_TEXT_ALIGNMENT_RIGHT_ALIGNED = 3;
    public static final short TEXT_ORIENTATION_NONE = 0;
    public static final short TEXT_ORIENTATION_ROT_LEFT = 3;
    public static final short TEXT_ORIENTATION_ROT_RIGHT = 2;
    public static final short TEXT_ORIENTATION_TOP_TO_BOTTOM = 1;
    public static final short VERTICAL_TEXT_ALIGNMENT_BOTTOM = 3;
    public static final short VERTICAL_TEXT_ALIGNMENT_CENTER = 2;
    public static final short VERTICAL_TEXT_ALIGNMENT_JUSTIFY = 4;
    public static final short VERTICAL_TEXT_ALIGNMENT_TOP = 1;
    public static final short sid = 438;
    private OperandPtg _linkRefPtg;
    private HSSFRichTextString _text;
    private Byte _unknownPostFormulaByte;
    private int _unknownPreFormulaInt;
    private int field_1_options;
    private int field_2_textOrientation;
    private int field_3_reserved4;
    private int field_4_reserved5;
    private int field_5_reserved6;
    private int field_8_reserved7;
    private static final BitField HorizontalTextAlignment = BitFieldFactory.getInstance(14);
    private static final BitField VerticalTextAlignment = BitFieldFactory.getInstance(112);
    private static final BitField textLocked = BitFieldFactory.getInstance(512);

    public TextObjectRecord() {
    }

    private int getFormattingDataLength() {
        if (this._text.length() < 1) {
            return 0;
        }
        return (this._text.numFormattingRuns() + 1) * 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$0() {
        return Integer.valueOf(this.field_3_reserved4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$1() {
        return Integer.valueOf(this.field_4_reserved5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$2() {
        return Integer.valueOf(this.field_5_reserved6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$getGenericProperties$3() {
        return Integer.valueOf(this.field_8_reserved7);
    }

    private static void processFontRuns(RecordInputStream recordInputStream, HSSFRichTextString hSSFRichTextString, int i) {
        if (i % 8 != 0) {
            throw new RecordFormatException("Bad format run data length " + i + MotionUtils.f31762d);
        }
        int i2 = i / 8;
        for (int i3 = 0; i3 < i2; i3++) {
            short readShort = recordInputStream.readShort();
            short readShort2 = recordInputStream.readShort();
            recordInputStream.readInt();
            hSSFRichTextString.applyFont(readShort, hSSFRichTextString.length(), readShort2);
        }
    }

    private static String readRawString(RecordInputStream recordInputStream, int i) {
        return (recordInputStream.readByte() & 1) == 0 ? recordInputStream.readCompressedUnicode(i) : recordInputStream.readUnicodeLEString(i);
    }

    private void serializeTXORecord(ContinuableRecordOutput continuableRecordOutput) {
        continuableRecordOutput.writeShort(this.field_1_options);
        continuableRecordOutput.writeShort(this.field_2_textOrientation);
        continuableRecordOutput.writeShort(this.field_3_reserved4);
        continuableRecordOutput.writeShort(this.field_4_reserved5);
        continuableRecordOutput.writeShort(this.field_5_reserved6);
        continuableRecordOutput.writeShort(this._text.length());
        continuableRecordOutput.writeShort(getFormattingDataLength());
        continuableRecordOutput.writeInt(this.field_8_reserved7);
        OperandPtg operandPtg = this._linkRefPtg;
        if (operandPtg != null) {
            continuableRecordOutput.writeShort(operandPtg.getSize());
            continuableRecordOutput.writeInt(this._unknownPreFormulaInt);
            this._linkRefPtg.write(continuableRecordOutput);
            Byte b = this._unknownPostFormulaByte;
            if (b != null) {
                continuableRecordOutput.writeByte(b.byteValue());
            }
        }
    }

    private void serializeTrailingRecords(ContinuableRecordOutput continuableRecordOutput) {
        continuableRecordOutput.writeContinue();
        continuableRecordOutput.writeStringData(this._text.getString());
        continuableRecordOutput.writeContinue();
        writeFormatData(continuableRecordOutput, this._text);
    }

    private static void writeFormatData(ContinuableRecordOutput continuableRecordOutput, HSSFRichTextString hSSFRichTextString) {
        int numFormattingRuns = hSSFRichTextString.numFormattingRuns();
        for (int i = 0; i < numFormattingRuns; i++) {
            continuableRecordOutput.writeShort(hSSFRichTextString.getIndexOfFormattingRun(i));
            short fontOfFormattingRun = hSSFRichTextString.getFontOfFormattingRun(i);
            if (fontOfFormattingRun == 0) {
                fontOfFormattingRun = 0;
            }
            continuableRecordOutput.writeShort(fontOfFormattingRun);
            continuableRecordOutput.writeInt(0);
        }
        continuableRecordOutput.writeShort(hSSFRichTextString.length());
        continuableRecordOutput.writeShort(0);
        continuableRecordOutput.writeInt(0);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("isHorizontal", new Supplier() { // from class: com.sunia.HTREnginev2.ldn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextObjectRecord.this.getHorizontalTextAlignment());
            }
        });
        linkedHashMap.put("isVertical", new Supplier() { // from class: com.sunia.HTREnginev2.mdn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextObjectRecord.this.getVerticalTextAlignment());
            }
        });
        linkedHashMap.put("textLocked", new Supplier() { // from class: com.sunia.HTREnginev2.ndn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(TextObjectRecord.this.isTextLocked());
            }
        });
        linkedHashMap.put("textOrientation", new Supplier() { // from class: com.sunia.HTREnginev2.odn
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(TextObjectRecord.this.getTextOrientation());
            }
        });
        linkedHashMap.put("string", new Supplier() { // from class: com.sunia.HTREnginev2.pdn
            @Override // java.util.function.Supplier
            public final Object get() {
                return TextObjectRecord.this.getStr();
            }
        });
        linkedHashMap.put("reserved4", new Supplier() { // from class: com.sunia.HTREnginev2.qdn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = TextObjectRecord.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        });
        linkedHashMap.put("reserved5", new Supplier() { // from class: com.sunia.HTREnginev2.rdn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = TextObjectRecord.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        });
        linkedHashMap.put("reserved6", new Supplier() { // from class: com.sunia.HTREnginev2.sdn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$2;
                lambda$getGenericProperties$2 = TextObjectRecord.this.lambda$getGenericProperties$2();
                return lambda$getGenericProperties$2;
            }
        });
        linkedHashMap.put("reserved7", new Supplier() { // from class: com.sunia.HTREnginev2.tdn
            @Override // java.util.function.Supplier
            public final Object get() {
                Object lambda$getGenericProperties$3;
                lambda$getGenericProperties$3 = TextObjectRecord.this.lambda$getGenericProperties$3();
                return lambda$getGenericProperties$3;
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public int getHorizontalTextAlignment() {
        return HorizontalTextAlignment.getValue(this.field_1_options);
    }

    public Ptg getLinkRefPtg() {
        return this._linkRefPtg;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return sid;
    }

    public HSSFRichTextString getStr() {
        return this._text;
    }

    public int getTextOrientation() {
        return this.field_2_textOrientation;
    }

    public int getVerticalTextAlignment() {
        return VerticalTextAlignment.getValue(this.field_1_options);
    }

    public boolean isTextLocked() {
        return textLocked.isSet(this.field_1_options);
    }

    @Override // org.apache.poi.hssf.record.cont.ContinuableRecord
    public void serialize(ContinuableRecordOutput continuableRecordOutput) {
        serializeTXORecord(continuableRecordOutput);
        if (this._text.getString().length() > 0) {
            serializeTrailingRecords(continuableRecordOutput);
        }
    }

    public void setHorizontalTextAlignment(int i) {
        this.field_1_options = HorizontalTextAlignment.setValue(this.field_1_options, i);
    }

    public void setStr(HSSFRichTextString hSSFRichTextString) {
        this._text = hSSFRichTextString;
    }

    public void setTextLocked(boolean z) {
        this.field_1_options = textLocked.setBoolean(this.field_1_options, z);
    }

    public void setTextOrientation(int i) {
        this.field_2_textOrientation = i;
    }

    public void setVerticalTextAlignment(int i) {
        this.field_1_options = VerticalTextAlignment.setValue(this.field_1_options, i);
    }

    public TextObjectRecord(TextObjectRecord textObjectRecord) {
        super(textObjectRecord);
        this.field_1_options = textObjectRecord.field_1_options;
        this.field_2_textOrientation = textObjectRecord.field_2_textOrientation;
        this.field_3_reserved4 = textObjectRecord.field_3_reserved4;
        this.field_4_reserved5 = textObjectRecord.field_4_reserved5;
        this.field_5_reserved6 = textObjectRecord.field_5_reserved6;
        this.field_8_reserved7 = textObjectRecord.field_8_reserved7;
        this._text = textObjectRecord._text;
        OperandPtg operandPtg = textObjectRecord._linkRefPtg;
        if (operandPtg != null) {
            this._unknownPreFormulaInt = textObjectRecord._unknownPreFormulaInt;
            this._linkRefPtg = operandPtg.copy();
            this._unknownPostFormulaByte = textObjectRecord._unknownPostFormulaByte;
        }
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.TEXT_OBJECT;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public TextObjectRecord copy() {
        return new TextObjectRecord(this);
    }

    public TextObjectRecord(RecordInputStream recordInputStream) {
        this.field_1_options = recordInputStream.readUShort();
        this.field_2_textOrientation = recordInputStream.readUShort();
        this.field_3_reserved4 = recordInputStream.readUShort();
        this.field_4_reserved5 = recordInputStream.readUShort();
        this.field_5_reserved6 = recordInputStream.readUShort();
        int readUShort = recordInputStream.readUShort();
        int readUShort2 = recordInputStream.readUShort();
        this.field_8_reserved7 = recordInputStream.readInt();
        if (recordInputStream.remaining() > 0) {
            if (recordInputStream.remaining() >= 11) {
                int readUShort3 = recordInputStream.readUShort();
                this._unknownPreFormulaInt = recordInputStream.readInt();
                Ptg[] readTokens = Ptg.readTokens(readUShort3, recordInputStream);
                if (readTokens.length == 1) {
                    this._linkRefPtg = (OperandPtg) readTokens[0];
                    this._unknownPostFormulaByte = recordInputStream.remaining() > 0 ? Byte.valueOf(recordInputStream.readByte()) : null;
                } else {
                    throw new RecordFormatException("Read " + readTokens.length + " tokens but expected exactly 1");
                }
            } else {
                throw new RecordFormatException("Not enough remaining data for a link formula");
            }
        } else {
            this._linkRefPtg = null;
        }
        if (recordInputStream.remaining() <= 0) {
            HSSFRichTextString hSSFRichTextString = new HSSFRichTextString(readUShort > 0 ? readRawString(recordInputStream, readUShort) : "");
            this._text = hSSFRichTextString;
            if (readUShort2 > 0) {
                processFontRuns(recordInputStream, hSSFRichTextString, readUShort2);
                return;
            }
            return;
        }
        throw new RecordFormatException("Unused " + recordInputStream.remaining() + " bytes at end of record");
    }
}
