package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.FontRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class FontRecord extends StandardRecord {
    public static final short SS_NONE = 0;
    public static final short SS_SUB = 2;
    public static final short SS_SUPER = 1;
    public static final byte U_DOUBLE = 2;
    public static final byte U_DOUBLE_ACCOUNTING = 34;
    public static final byte U_NONE = 0;
    public static final byte U_SINGLE = 1;
    public static final byte U_SINGLE_ACCOUNTING = 33;
    public static final short sid = 49;
    private String field_11_font_name;
    private short field_1_font_height;
    private short field_2_attributes;
    private short field_3_color_palette_index;
    private short field_4_bold_weight;
    private short field_5_super_sub_script;
    private byte field_6_underline;
    private byte field_7_family;
    private byte field_8_charset;
    private byte field_9_zero;
    private static final BitField italic = BitFieldFactory.getInstance(2);
    private static final BitField strikeout = BitFieldFactory.getInstance(8);
    private static final BitField macoutline = BitFieldFactory.getInstance(16);
    private static final BitField macshadow = BitFieldFactory.getInstance(32);

    public FontRecord() {
    }

    public void cloneStyleFrom(FontRecord fontRecord) {
        this.field_1_font_height = fontRecord.field_1_font_height;
        this.field_2_attributes = fontRecord.field_2_attributes;
        this.field_3_color_palette_index = fontRecord.field_3_color_palette_index;
        this.field_4_bold_weight = fontRecord.field_4_bold_weight;
        this.field_5_super_sub_script = fontRecord.field_5_super_sub_script;
        this.field_6_underline = fontRecord.field_6_underline;
        this.field_7_family = fontRecord.field_7_family;
        this.field_8_charset = fontRecord.field_8_charset;
        this.field_9_zero = fontRecord.field_9_zero;
        this.field_11_font_name = fontRecord.field_11_font_name;
    }

    public boolean equals(Object obj) {
        return (obj instanceof FontRecord) && sameProperties((FontRecord) obj);
    }

    public short getAttributes() {
        return this.field_2_attributes;
    }

    public short getBoldWeight() {
        return this.field_4_bold_weight;
    }

    public byte getCharset() {
        return this.field_8_charset;
    }

    public short getColorPaletteIndex() {
        return this.field_3_color_palette_index;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        int length = this.field_11_font_name.length();
        if (length < 1) {
            return 16;
        }
        return (length * (StringUtil.hasMultibyte(this.field_11_font_name) ? 2 : 1)) + 16;
    }

    public byte getFamily() {
        return this.field_7_family;
    }

    public short getFontHeight() {
        return this.field_1_font_height;
    }

    public String getFontName() {
        return this.field_11_font_name;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("fontHeight", new Supplier() { // from class: com.sunia.HTREnginev2.wrg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontRecord.this.getFontHeight());
            }
        }, "attributes", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.xrg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontRecord.this.getAttributes());
            }
        }, new BitField[]{italic, strikeout, macoutline, macshadow}, new String[]{"ITALIC", "STRIKEOUT", "MACOUTLINE", "MACSHADOW"}), "colorPalette", new Supplier() { // from class: com.sunia.HTREnginev2.yrg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontRecord.this.getColorPaletteIndex());
            }
        }, "boldWeight", new Supplier() { // from class: com.sunia.HTREnginev2.zrg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontRecord.this.getBoldWeight());
            }
        }, "superSubScript", new Supplier() { // from class: com.sunia.HTREnginev2.asg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(FontRecord.this.getSuperSubScript());
            }
        }, "underline", new Supplier() { // from class: com.sunia.HTREnginev2.bsg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(FontRecord.this.getUnderline());
            }
        }, "family", new Supplier() { // from class: com.sunia.HTREnginev2.csg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(FontRecord.this.getFamily());
            }
        }, "charset", new Supplier() { // from class: com.sunia.HTREnginev2.dsg
            @Override // java.util.function.Supplier
            public final Object get() {
                return Byte.valueOf(FontRecord.this.getCharset());
            }
        }, "fontName", new Supplier() { // from class: com.sunia.HTREnginev2.esg
            @Override // java.util.function.Supplier
            public final Object get() {
                return FontRecord.this.getFontName();
            }
        });
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 49;
    }

    public short getSuperSubScript() {
        return this.field_5_super_sub_script;
    }

    public byte getUnderline() {
        return this.field_6_underline;
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_font_height), Short.valueOf(this.field_2_attributes), Short.valueOf(this.field_3_color_palette_index), Short.valueOf(this.field_4_bold_weight), Short.valueOf(this.field_5_super_sub_script), Byte.valueOf(this.field_6_underline), Byte.valueOf(this.field_7_family), Byte.valueOf(this.field_8_charset), Byte.valueOf(this.field_9_zero), this.field_11_font_name);
    }

    public boolean isItalic() {
        return italic.isSet(this.field_2_attributes);
    }

    public boolean isMacoutlined() {
        return macoutline.isSet(this.field_2_attributes);
    }

    public boolean isMacshadowed() {
        return macshadow.isSet(this.field_2_attributes);
    }

    public boolean isStruckout() {
        return strikeout.isSet(this.field_2_attributes);
    }

    public boolean sameProperties(FontRecord fontRecord) {
        return this.field_1_font_height == fontRecord.field_1_font_height && this.field_2_attributes == fontRecord.field_2_attributes && this.field_3_color_palette_index == fontRecord.field_3_color_palette_index && this.field_4_bold_weight == fontRecord.field_4_bold_weight && this.field_5_super_sub_script == fontRecord.field_5_super_sub_script && this.field_6_underline == fontRecord.field_6_underline && this.field_7_family == fontRecord.field_7_family && this.field_8_charset == fontRecord.field_8_charset && this.field_9_zero == fontRecord.field_9_zero && Objects.equals(this.field_11_font_name, fontRecord.field_11_font_name);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getFontHeight());
        littleEndianOutput.writeShort(getAttributes());
        littleEndianOutput.writeShort(getColorPaletteIndex());
        littleEndianOutput.writeShort(getBoldWeight());
        littleEndianOutput.writeShort(getSuperSubScript());
        littleEndianOutput.writeByte(getUnderline());
        littleEndianOutput.writeByte(getFamily());
        littleEndianOutput.writeByte(getCharset());
        littleEndianOutput.writeByte(this.field_9_zero);
        int length = this.field_11_font_name.length();
        littleEndianOutput.writeByte(length);
        boolean hasMultibyte = StringUtil.hasMultibyte(this.field_11_font_name);
        littleEndianOutput.writeByte(hasMultibyte ? 1 : 0);
        if (length > 0) {
            if (hasMultibyte) {
                StringUtil.putUnicodeLE(this.field_11_font_name, littleEndianOutput);
            } else {
                StringUtil.putCompressedUnicode(this.field_11_font_name, littleEndianOutput);
            }
        }
    }

    public void setAttributes(short s) {
        this.field_2_attributes = s;
    }

    public void setBoldWeight(short s) {
        this.field_4_bold_weight = s;
    }

    public void setCharset(byte b) {
        this.field_8_charset = b;
    }

    public void setColorPaletteIndex(short s) {
        this.field_3_color_palette_index = s;
    }

    public void setFamily(byte b) {
        this.field_7_family = b;
    }

    public void setFontHeight(short s) {
        this.field_1_font_height = s;
    }

    public void setFontName(String str) {
        this.field_11_font_name = str;
    }

    public void setItalic(boolean z) {
        this.field_2_attributes = italic.setShortBoolean(this.field_2_attributes, z);
    }

    public void setMacoutline(boolean z) {
        this.field_2_attributes = macoutline.setShortBoolean(this.field_2_attributes, z);
    }

    public void setMacshadow(boolean z) {
        this.field_2_attributes = macshadow.setShortBoolean(this.field_2_attributes, z);
    }

    public void setStrikeout(boolean z) {
        this.field_2_attributes = strikeout.setShortBoolean(this.field_2_attributes, z);
    }

    public void setSuperSubScript(short s) {
        this.field_5_super_sub_script = s;
    }

    public void setUnderline(byte b) {
        this.field_6_underline = b;
    }

    public FontRecord(FontRecord fontRecord) {
        super(fontRecord);
        this.field_1_font_height = fontRecord.field_1_font_height;
        this.field_2_attributes = fontRecord.field_2_attributes;
        this.field_3_color_palette_index = fontRecord.field_3_color_palette_index;
        this.field_4_bold_weight = fontRecord.field_4_bold_weight;
        this.field_5_super_sub_script = fontRecord.field_5_super_sub_script;
        this.field_6_underline = fontRecord.field_6_underline;
        this.field_7_family = fontRecord.field_7_family;
        this.field_8_charset = fontRecord.field_8_charset;
        this.field_9_zero = fontRecord.field_9_zero;
        this.field_11_font_name = fontRecord.field_11_font_name;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.FONT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public FontRecord copy() {
        return new FontRecord(this);
    }

    public FontRecord(RecordInputStream recordInputStream) {
        this.field_1_font_height = recordInputStream.readShort();
        this.field_2_attributes = recordInputStream.readShort();
        this.field_3_color_palette_index = recordInputStream.readShort();
        this.field_4_bold_weight = recordInputStream.readShort();
        this.field_5_super_sub_script = recordInputStream.readShort();
        this.field_6_underline = recordInputStream.readByte();
        this.field_7_family = recordInputStream.readByte();
        this.field_8_charset = recordInputStream.readByte();
        this.field_9_zero = recordInputStream.readByte();
        int readUByte = recordInputStream.readUByte();
        int readUByte2 = recordInputStream.readUByte();
        if (readUByte <= 0) {
            this.field_11_font_name = "";
        } else if (readUByte2 == 0) {
            this.field_11_font_name = recordInputStream.readCompressedUnicode(readUByte);
        } else {
            this.field_11_font_name = recordInputStream.readUnicodeLEString(readUByte);
        }
    }
}
