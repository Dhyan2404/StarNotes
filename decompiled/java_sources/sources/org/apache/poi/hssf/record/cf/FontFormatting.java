package org.apache.poi.hssf.record.cf;

import com.sunia.HTREnginev2.gon;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.common.Duplicatable;
import org.apache.poi.common.usermodel.GenericRecord;
import org.apache.poi.hssf.record.RecordInputStream;
import org.apache.poi.hssf.record.cf.FontFormatting;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordJsonWriter;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndian;

/* loaded from: classes12.dex */
public final class FontFormatting implements Duplicatable, GenericRecord {
    public static final int FONT_CELL_HEIGHT_PRESERVED = -1;
    private static final short FONT_WEIGHT_BOLD = 700;
    private static final short FONT_WEIGHT_NORMAL = 400;
    private static final int OFFSET_ESCAPEMENT_TYPE = 74;
    private static final int OFFSET_ESCAPEMENT_TYPE_MODIFIED = 92;
    private static final int OFFSET_FONT_COLOR_INDEX = 80;
    private static final int OFFSET_FONT_FORMATING_END = 116;
    private static final int OFFSET_FONT_HEIGHT = 64;
    private static final int OFFSET_FONT_NAME = 0;
    private static final int OFFSET_FONT_OPTIONS = 68;
    private static final int OFFSET_FONT_WEIGHT = 72;
    private static final int OFFSET_FONT_WEIGHT_MODIFIED = 100;
    private static final int OFFSET_NOT_USED1 = 104;
    private static final int OFFSET_NOT_USED2 = 108;
    private static final int OFFSET_NOT_USED3 = 112;
    private static final int OFFSET_OPTION_FLAGS = 88;
    private static final int OFFSET_UNDERLINE_TYPE = 76;
    private static final int OFFSET_UNDERLINE_TYPE_MODIFIED = 96;
    private static final int RAW_DATA_SIZE = 118;
    private final byte[] _rawData;
    private static final BitField POSTURE = BitFieldFactory.getInstance(2);
    private static final BitField OUTLINE = BitFieldFactory.getInstance(8);
    private static final BitField SHADOW = BitFieldFactory.getInstance(16);
    private static final BitField CANCELLATION = BitFieldFactory.getInstance(128);

    public FontFormatting() {
        this._rawData = new byte[118];
        setFontHeight(-1);
        setItalic(false);
        setFontWieghtModified(false);
        setOutline(false);
        setShadow(false);
        setStrikeout(false);
        setEscapementType((short) 0);
        setUnderlineType((short) 0);
        setFontColorIndex((short) -1);
        setFontStyleModified(false);
        setFontOutlineModified(false);
        setFontShadowModified(false);
        setFontCancellationModified(false);
        setEscapementTypeModified(false);
        setUnderlineTypeModified(false);
        setShort(0, 0);
        setInt(104, 1);
        setInt(108, 0);
        setInt(112, Integer.MAX_VALUE);
        setShort(116, 1);
    }

    private boolean getFontOption(BitField bitField) {
        return bitField.isSet(getInt(68));
    }

    private int getInt(int i) {
        return LittleEndian.getInt(this._rawData, i);
    }

    private boolean getOptionFlag(BitField bitField) {
        return bitField.getValue(getInt(88)) == 0;
    }

    private short getShort(int i) {
        return LittleEndian.getShort(this._rawData, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$0() {
        return Integer.valueOf(getInt(88));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Number lambda$getGenericProperties$1() {
        return Integer.valueOf(getInt(68));
    }

    private void setFontOption(boolean z, BitField bitField) {
        setInt(68, bitField.setBoolean(getInt(68), z));
    }

    private void setFontWeight(short s) {
        setShort(72, Math.max(100, Math.min(1000, (int) s)));
    }

    private void setInt(int i, int i2) {
        LittleEndian.putInt(this._rawData, i, i2);
    }

    private void setOptionFlag(boolean z, BitField bitField) {
        setInt(88, bitField.setValue(getInt(88), !z ? 1 : 0));
    }

    private void setShort(int i, int i2) {
        LittleEndian.putShort(this._rawData, i, (short) i2);
    }

    public int getDataLength() {
        return 118;
    }

    public short getEscapementType() {
        return getShort(74);
    }

    public short getFontColorIndex() {
        return (short) getInt(80);
    }

    public int getFontHeight() {
        return getInt(64);
    }

    public short getFontWeight() {
        return getShort(72);
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("fontHeight", new Supplier() { // from class: com.sunia.HTREnginev2.opg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(FontFormatting.this.getFontHeight());
            }
        });
        Supplier supplier = new Supplier() { // from class: com.sunia.HTREnginev2.ppg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$0;
                lambda$getGenericProperties$0 = FontFormatting.this.lambda$getGenericProperties$0();
                return lambda$getGenericProperties$0;
            }
        };
        BitField bitField = POSTURE;
        BitField bitField2 = OUTLINE;
        BitField bitField3 = SHADOW;
        BitField bitField4 = CANCELLATION;
        linkedHashMap.put("options", GenericRecordUtil.getBitsAsString((Supplier<Number>) supplier, new BitField[]{bitField, bitField2, bitField3, bitField4}, new String[]{"POSTURE_MODIFIED", "OUTLINE_MODIFIED", "SHADOW_MODIFIED", "STRUCKOUT_MODIFIED"}));
        linkedHashMap.put("fontOptions", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.qpg
            @Override // java.util.function.Supplier
            public final Object get() {
                Number lambda$getGenericProperties$1;
                lambda$getGenericProperties$1 = FontFormatting.this.lambda$getGenericProperties$1();
                return lambda$getGenericProperties$1;
            }
        }, new BitField[]{bitField, bitField2, bitField3, bitField4}, new String[]{"ITALIC", "OUTLINE", "SHADOW", "STRUCKOUT"}));
        linkedHashMap.put("fontWEightModified", new Supplier() { // from class: com.sunia.HTREnginev2.rpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FontFormatting.this.isFontWeightModified());
            }
        });
        linkedHashMap.put(gon.f71259L, GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.spg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontFormatting.this.getFontWeight());
            }
        }, new int[]{400, 700}, new String[]{"NORMAL", "BOLD"}));
        linkedHashMap.put("escapementTypeModified", new Supplier() { // from class: com.sunia.HTREnginev2.tpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FontFormatting.this.isEscapementTypeModified());
            }
        });
        linkedHashMap.put("escapementType", new Supplier() { // from class: com.sunia.HTREnginev2.upg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontFormatting.this.getEscapementType());
            }
        });
        linkedHashMap.put("underlineTypeModified", new Supplier() { // from class: com.sunia.HTREnginev2.vpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(FontFormatting.this.isUnderlineTypeModified());
            }
        });
        linkedHashMap.put("underlineType", new Supplier() { // from class: com.sunia.HTREnginev2.wpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontFormatting.this.getUnderlineType());
            }
        });
        linkedHashMap.put("colorIndex", new Supplier() { // from class: com.sunia.HTREnginev2.xpg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontFormatting.this.getFontColorIndex());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public byte[] getRawRecord() {
        return this._rawData;
    }

    public short getUnderlineType() {
        return getShort(76);
    }

    public boolean isBold() {
        return getFontWeight() == 700;
    }

    public boolean isEscapementTypeModified() {
        return getInt(92) == 0;
    }

    public boolean isFontCancellationModified() {
        return getOptionFlag(CANCELLATION);
    }

    public boolean isFontOutlineModified() {
        return getOptionFlag(OUTLINE);
    }

    public boolean isFontShadowModified() {
        return getOptionFlag(SHADOW);
    }

    public boolean isFontStyleModified() {
        return getOptionFlag(POSTURE);
    }

    public boolean isFontWeightModified() {
        return getInt(100) == 0;
    }

    public boolean isItalic() {
        return getFontOption(POSTURE);
    }

    public boolean isOutlineOn() {
        return getFontOption(OUTLINE);
    }

    public boolean isShadowOn() {
        return getFontOption(SHADOW);
    }

    public boolean isStruckout() {
        return getFontOption(CANCELLATION);
    }

    public boolean isUnderlineTypeModified() {
        return getInt(96) == 0;
    }

    public void setBold(boolean z) {
        setFontWeight(z ? FONT_WEIGHT_BOLD : FONT_WEIGHT_NORMAL);
    }

    public void setEscapementType(short s) {
        setShort(74, s);
    }

    public void setEscapementTypeModified(boolean z) {
        setInt(92, !z ? 1 : 0);
    }

    public void setFontCancellationModified(boolean z) {
        setOptionFlag(z, CANCELLATION);
    }

    public void setFontColorIndex(short s) {
        setInt(80, s);
    }

    public void setFontHeight(int i) {
        setInt(64, i);
    }

    public void setFontOutlineModified(boolean z) {
        setOptionFlag(z, OUTLINE);
    }

    public void setFontShadowModified(boolean z) {
        setOptionFlag(z, SHADOW);
    }

    public void setFontStyleModified(boolean z) {
        setOptionFlag(z, POSTURE);
    }

    public void setFontWieghtModified(boolean z) {
        setInt(100, !z ? 1 : 0);
    }

    public void setItalic(boolean z) {
        setFontOption(z, POSTURE);
    }

    public void setOutline(boolean z) {
        setFontOption(z, OUTLINE);
    }

    public void setShadow(boolean z) {
        setFontOption(z, SHADOW);
    }

    public void setStrikeout(boolean z) {
        setFontOption(z, CANCELLATION);
    }

    public void setUnderlineType(short s) {
        setShort(76, s);
    }

    public void setUnderlineTypeModified(boolean z) {
        setInt(96, !z ? 1 : 0);
    }

    public String toString() {
        return GenericRecordJsonWriter.marshal(this);
    }

    @Override // org.apache.poi.common.Duplicatable
    public FontFormatting copy() {
        return new FontFormatting(this);
    }

    public FontFormatting(FontFormatting fontFormatting) {
        byte[] bArr = new byte[118];
        this._rawData = bArr;
        System.arraycopy(fontFormatting._rawData, 0, bArr, 0, 118);
    }

    public FontFormatting(RecordInputStream recordInputStream) {
        byte[] bArr = new byte[118];
        this._rawData = bArr;
        recordInputStream.readFully(bArr);
    }
}
