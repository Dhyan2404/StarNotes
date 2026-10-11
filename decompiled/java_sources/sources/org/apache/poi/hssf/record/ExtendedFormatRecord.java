package org.apache.poi.hssf.record;

import com.google.android.exoplayer2.text.webvtt.WebvttDecoder;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.ExtendedFormatRecord;
import org.apache.poi.ss.util.CellUtil;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class ExtendedFormatRecord extends StandardRecord {
    public static final short ALT_BARS = 3;
    public static final short BIG_SPOTS = 9;
    public static final short BRICKS = 10;
    public static final short CENTER = 2;
    public static final short CENTER_SELECTION = 6;
    public static final short DASHED = 3;
    public static final short DASH_DOT = 9;
    public static final short DASH_DOT_DOT = 11;
    public static final short DIAMONDS = 16;
    public static final short DOTTED = 4;
    public static final short DOUBLE = 6;
    public static final short FILL = 4;
    public static final short FINE_DOTS = 2;
    public static final short GENERAL = 0;
    public static final short HAIR = 7;
    public static final short JUSTIFY = 5;
    public static final short LEFT = 1;
    public static final short MEDIUM = 2;
    public static final short MEDIUM_DASHED = 8;
    public static final short MEDIUM_DASH_DOT = 10;
    public static final short MEDIUM_DASH_DOT_DOT = 12;
    public static final short NONE = 0;
    public static final short NO_FILL = 0;
    public static final short NULL = -16;
    public static final short RIGHT = 3;
    public static final short SLANTED_DASH_DOT = 13;
    public static final short SOLID_FILL = 1;
    public static final short SPARSE_DOTS = 4;
    public static final short SQUARES = 15;
    public static final short THICK = 5;
    public static final short THICK_BACKWARD_DIAG = 7;
    public static final short THICK_FORWARD_DIAG = 8;
    public static final short THICK_HORZ_BANDS = 5;
    public static final short THICK_VERT_BANDS = 6;
    public static final short THIN = 1;
    public static final short THIN_BACKWARD_DIAG = 13;
    public static final short THIN_FORWARD_DIAG = 14;
    public static final short THIN_HORZ_BANDS = 11;
    public static final short THIN_VERT_BANDS = 12;
    public static final short VERTICAL_BOTTOM = 2;
    public static final short VERTICAL_CENTER = 1;
    public static final short VERTICAL_JUSTIFY = 3;
    public static final short VERTICAL_TOP = 0;
    public static final short XF_CELL = 0;
    public static final short XF_STYLE = 1;
    public static final short sid = 224;
    private short field_1_font_index;
    private short field_2_format_index;
    private short field_3_cell_options;
    private short field_4_alignment_options;
    private short field_5_indention_options;
    private short field_6_border_options;
    private short field_7_palette_options;
    private int field_8_adtl_palette_options;
    private short field_9_fill_palette_options;
    private static final BitField _locked = m69057bf(1);
    private static final BitField _hidden = m69057bf(2);
    private static final BitField _xf_type = m69057bf(4);
    private static final BitField _123_prefix = m69057bf(8);
    private static final BitField _parent_index = m69057bf(65520);
    private static final BitField _alignment = m69057bf(7);
    private static final BitField _wrap_text = m69057bf(8);
    private static final BitField _vertical_alignment = m69057bf(112);
    private static final BitField _justify_last = m69057bf(128);
    private static final BitField _rotation = m69057bf(65280);
    private static final BitField _indent = m69057bf(15);
    private static final BitField _shrink_to_fit = m69057bf(16);
    private static final BitField _merge_cells = m69057bf(32);
    private static final BitField _reading_order = m69057bf(192);
    private static final BitField _indent_not_parent_format = m69057bf(1024);
    private static final BitField _indent_not_parent_font = m69057bf(2048);
    private static final BitField _indent_not_parent_alignment = m69057bf(4096);
    private static final BitField _indent_not_parent_border = m69057bf(8192);
    private static final BitField _indent_not_parent_pattern = m69057bf(16384);
    private static final BitField _indent_not_parent_cell_options = m69057bf(32768);
    private static final BitField _border_left = m69057bf(15);
    private static final BitField _border_right = m69057bf(240);
    private static final BitField _border_top = m69057bf(3840);
    private static final BitField _border_bottom = m69057bf(61440);
    private static final BitField _left_border_palette_idx = m69057bf(127);
    private static final BitField _right_border_palette_idx = m69057bf(16256);
    private static final BitField _diag = m69057bf(49152);
    private static final BitField _top_border_palette_idx = m69057bf(127);
    private static final BitField _bottom_border_palette_idx = m69057bf(16256);
    private static final BitField _adtl_diag = m69057bf(2080768);
    private static final BitField _adtl_diag_line_style = m69057bf(NoteExportArgs.SAVE_PAGE_NATIVE_MEMORY_LIMIT);
    private static final BitField _adtl_fill_pattern = m69057bf(-67108864);
    private static final BitField _fill_foreground = m69057bf(127);
    private static final BitField _fill_background = m69057bf(16256);

    public ExtendedFormatRecord() {
    }

    /* renamed from: bf */
    private static BitField m69057bf(int i) {
        return BitFieldFactory.getInstance(i);
    }

    public void cloneStyleFrom(ExtendedFormatRecord extendedFormatRecord) {
        this.field_1_font_index = extendedFormatRecord.field_1_font_index;
        this.field_2_format_index = extendedFormatRecord.field_2_format_index;
        this.field_3_cell_options = extendedFormatRecord.field_3_cell_options;
        this.field_4_alignment_options = extendedFormatRecord.field_4_alignment_options;
        this.field_5_indention_options = extendedFormatRecord.field_5_indention_options;
        this.field_6_border_options = extendedFormatRecord.field_6_border_options;
        this.field_7_palette_options = extendedFormatRecord.field_7_palette_options;
        this.field_8_adtl_palette_options = extendedFormatRecord.field_8_adtl_palette_options;
        this.field_9_fill_palette_options = extendedFormatRecord.field_9_fill_palette_options;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof ExtendedFormatRecord)) {
            return Arrays.equals(stateSummary(), ((ExtendedFormatRecord) obj).stateSummary());
        }
        return false;
    }

    public boolean get123Prefix() {
        return _123_prefix.isSet(this.field_3_cell_options);
    }

    public short getAdtlDiag() {
        return (short) _adtl_diag.getValue(this.field_8_adtl_palette_options);
    }

    public short getAdtlDiagLineStyle() {
        return (short) _adtl_diag_line_style.getValue(this.field_8_adtl_palette_options);
    }

    public short getAdtlFillPattern() {
        return (short) _adtl_fill_pattern.getValue(this.field_8_adtl_palette_options);
    }

    public int getAdtlPaletteOptions() {
        return this.field_8_adtl_palette_options;
    }

    public short getAlignment() {
        return _alignment.getShortValue(this.field_4_alignment_options);
    }

    public short getAlignmentOptions() {
        return this.field_4_alignment_options;
    }

    public short getBorderBottom() {
        return _border_bottom.getShortValue(this.field_6_border_options);
    }

    public short getBorderLeft() {
        return _border_left.getShortValue(this.field_6_border_options);
    }

    public short getBorderOptions() {
        return this.field_6_border_options;
    }

    public short getBorderRight() {
        return _border_right.getShortValue(this.field_6_border_options);
    }

    public short getBorderTop() {
        return _border_top.getShortValue(this.field_6_border_options);
    }

    public short getBottomBorderPaletteIdx() {
        return (short) _bottom_border_palette_idx.getValue(this.field_8_adtl_palette_options);
    }

    public short getCellOptions() {
        return this.field_3_cell_options;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 20;
    }

    public short getDiag() {
        return _diag.getShortValue(this.field_7_palette_options);
    }

    public short getFillBackground() {
        return _fill_background.getShortValue(this.field_9_fill_palette_options);
    }

    public short getFillForeground() {
        return _fill_foreground.getShortValue(this.field_9_fill_palette_options);
    }

    public short getFillPaletteOptions() {
        return this.field_9_fill_palette_options;
    }

    public short getFontIndex() {
        return this.field_1_font_index;
    }

    public short getFormatIndex() {
        return this.field_2_format_index;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("xfType", GenericRecordUtil.getEnumBitsAsString(new Supplier() { // from class: com.sunia.HTREnginev2.a4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getXFType());
            }
        }, new int[]{0, 1}, new String[]{"CELL", WebvttDecoder.f27273w}));
        linkedHashMap.put("fontIndex", new Supplier() { // from class: com.sunia.HTREnginev2.c4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getFontIndex());
            }
        });
        linkedHashMap.put("formatIndex", new Supplier() { // from class: com.sunia.HTREnginev2.o4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getFormatIndex());
            }
        });
        linkedHashMap.put("cellOptions", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.p4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getCellOptions());
            }
        }, new BitField[]{_locked, _hidden, _123_prefix}, new String[]{"LOCKED", "HIDDEN", "LOTUS_123_PREFIX"}));
        linkedHashMap.put("parentIndex", new Supplier() { // from class: com.sunia.HTREnginev2.q4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getParentIndex());
            }
        });
        linkedHashMap.put("alignmentOptions", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.r4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getAlignmentOptions());
            }
        }, new BitField[]{_wrap_text, _justify_last}, new String[]{"WRAP_TEXT", "JUSTIFY_LAST"}));
        linkedHashMap.put(CellUtil.ALIGNMENT, new Supplier() { // from class: com.sunia.HTREnginev2.s4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getAlignment());
            }
        });
        linkedHashMap.put(CellUtil.VERTICAL_ALIGNMENT, new Supplier() { // from class: com.sunia.HTREnginev2.t4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getVerticalAlignment());
            }
        });
        linkedHashMap.put("rotation", new Supplier() { // from class: com.sunia.HTREnginev2.u4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getRotation());
            }
        });
        linkedHashMap.put("indentionOptions", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.v4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getIndentionOptions());
            }
        }, new BitField[]{_shrink_to_fit, _merge_cells, _indent_not_parent_format, _indent_not_parent_font, _indent_not_parent_alignment, _indent_not_parent_border, _indent_not_parent_pattern, _indent_not_parent_cell_options}, new String[]{"SHRINK_TO_FIT", "MERGE_CELLS", "NOT_PARENT_FORMAT", "NOT_PARENT_FONT", "NOT_PARENT_ALIGNMENT", "NOT_PARENT_BORDER", "NOT_PARENT_PATTERN", "NOT_PARENT_CELL_OPTIONS"}));
        linkedHashMap.put("indent", new Supplier() { // from class: com.sunia.HTREnginev2.l4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getIndent());
            }
        });
        linkedHashMap.put("readingOrder", new Supplier() { // from class: com.sunia.HTREnginev2.w4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getReadingOrder());
            }
        });
        linkedHashMap.put("borderOptions", new Supplier() { // from class: com.sunia.HTREnginev2.x4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getBorderOptions());
            }
        });
        linkedHashMap.put(CellUtil.BORDER_LEFT, new Supplier() { // from class: com.sunia.HTREnginev2.y4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getBorderLeft());
            }
        });
        linkedHashMap.put(CellUtil.BORDER_RIGHT, new Supplier() { // from class: com.sunia.HTREnginev2.z4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getBorderRight());
            }
        });
        linkedHashMap.put(CellUtil.BORDER_TOP, new Supplier() { // from class: com.sunia.HTREnginev2.a5g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getBorderTop());
            }
        });
        linkedHashMap.put(CellUtil.BORDER_BOTTOM, new Supplier() { // from class: com.sunia.HTREnginev2.b5g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getBorderBottom());
            }
        });
        linkedHashMap.put("paletteOptions", new Supplier() { // from class: com.sunia.HTREnginev2.c5g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getPaletteOptions());
            }
        });
        linkedHashMap.put("leftBorderPaletteIdx", new Supplier() { // from class: com.sunia.HTREnginev2.d5g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getLeftBorderPaletteIdx());
            }
        });
        linkedHashMap.put("rightBorderPaletteIdx", new Supplier() { // from class: com.sunia.HTREnginev2.b4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getRightBorderPaletteIdx());
            }
        });
        linkedHashMap.put("diag", new Supplier() { // from class: com.sunia.HTREnginev2.d4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getDiag());
            }
        });
        linkedHashMap.put("adtlPaletteOptions", new Supplier() { // from class: com.sunia.HTREnginev2.e4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(ExtendedFormatRecord.this.getAdtlPaletteOptions());
            }
        });
        linkedHashMap.put("topBorderPaletteIdx", new Supplier() { // from class: com.sunia.HTREnginev2.f4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getTopBorderPaletteIdx());
            }
        });
        linkedHashMap.put("bottomBorderPaletteIdx", new Supplier() { // from class: com.sunia.HTREnginev2.g4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getBottomBorderPaletteIdx());
            }
        });
        linkedHashMap.put("adtlDiag", new Supplier() { // from class: com.sunia.HTREnginev2.h4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getAdtlDiag());
            }
        });
        linkedHashMap.put("adtlDiagLineStyle", new Supplier() { // from class: com.sunia.HTREnginev2.i4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getAdtlDiagLineStyle());
            }
        });
        linkedHashMap.put("adtlFillPattern", new Supplier() { // from class: com.sunia.HTREnginev2.j4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getAdtlFillPattern());
            }
        });
        linkedHashMap.put("fillPaletteOptions", new Supplier() { // from class: com.sunia.HTREnginev2.k4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getFillPaletteOptions());
            }
        });
        linkedHashMap.put("fillForeground", new Supplier() { // from class: com.sunia.HTREnginev2.m4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getFillForeground());
            }
        });
        linkedHashMap.put("fillBackground", new Supplier() { // from class: com.sunia.HTREnginev2.n4g
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(ExtendedFormatRecord.this.getFillBackground());
            }
        });
        return Collections.unmodifiableMap(linkedHashMap);
    }

    public short getIndent() {
        return _indent.getShortValue(this.field_5_indention_options);
    }

    public short getIndentionOptions() {
        return this.field_5_indention_options;
    }

    public short getJustifyLast() {
        return _justify_last.getShortValue(this.field_4_alignment_options);
    }

    public short getLeftBorderPaletteIdx() {
        return _left_border_palette_idx.getShortValue(this.field_7_palette_options);
    }

    public boolean getMergeCells() {
        return _merge_cells.isSet(this.field_5_indention_options);
    }

    public short getPaletteOptions() {
        return this.field_7_palette_options;
    }

    public short getParentIndex() {
        return _parent_index.getShortValue(this.field_3_cell_options);
    }

    public short getReadingOrder() {
        return _reading_order.getShortValue(this.field_5_indention_options);
    }

    public short getRightBorderPaletteIdx() {
        return _right_border_palette_idx.getShortValue(this.field_7_palette_options);
    }

    public short getRotation() {
        return _rotation.getShortValue(this.field_4_alignment_options);
    }

    public boolean getShrinkToFit() {
        return _shrink_to_fit.isSet(this.field_5_indention_options);
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 224;
    }

    public short getTopBorderPaletteIdx() {
        return (short) _top_border_palette_idx.getValue(this.field_8_adtl_palette_options);
    }

    public short getVerticalAlignment() {
        return _vertical_alignment.getShortValue(this.field_4_alignment_options);
    }

    public boolean getWrapText() {
        return _wrap_text.isSet(this.field_4_alignment_options);
    }

    public short getXFType() {
        return _xf_type.getShortValue(this.field_3_cell_options);
    }

    public int hashCode() {
        return Objects.hash(Short.valueOf(this.field_1_font_index), Short.valueOf(this.field_2_format_index), Short.valueOf(this.field_3_cell_options), Short.valueOf(this.field_4_alignment_options), Short.valueOf(this.field_5_indention_options), Short.valueOf(this.field_6_border_options), Short.valueOf(this.field_7_palette_options), Integer.valueOf(this.field_8_adtl_palette_options), Short.valueOf(this.field_9_fill_palette_options));
    }

    public boolean isHidden() {
        return _hidden.isSet(this.field_3_cell_options);
    }

    public boolean isIndentNotParentAlignment() {
        return _indent_not_parent_alignment.isSet(this.field_5_indention_options);
    }

    public boolean isIndentNotParentBorder() {
        return _indent_not_parent_border.isSet(this.field_5_indention_options);
    }

    public boolean isIndentNotParentCellOptions() {
        return _indent_not_parent_cell_options.isSet(this.field_5_indention_options);
    }

    public boolean isIndentNotParentFont() {
        return _indent_not_parent_font.isSet(this.field_5_indention_options);
    }

    public boolean isIndentNotParentFormat() {
        return _indent_not_parent_format.isSet(this.field_5_indention_options);
    }

    public boolean isIndentNotParentPattern() {
        return _indent_not_parent_pattern.isSet(this.field_5_indention_options);
    }

    public boolean isLocked() {
        return _locked.isSet(this.field_3_cell_options);
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getFontIndex());
        littleEndianOutput.writeShort(getFormatIndex());
        littleEndianOutput.writeShort(getCellOptions());
        littleEndianOutput.writeShort(getAlignmentOptions());
        littleEndianOutput.writeShort(getIndentionOptions());
        littleEndianOutput.writeShort(getBorderOptions());
        littleEndianOutput.writeShort(getPaletteOptions());
        littleEndianOutput.writeInt(getAdtlPaletteOptions());
        littleEndianOutput.writeShort(getFillPaletteOptions());
    }

    public void set123Prefix(boolean z) {
        this.field_3_cell_options = _123_prefix.setShortBoolean(this.field_3_cell_options, z);
    }

    public void setAdtlDiag(short s) {
        this.field_8_adtl_palette_options = _adtl_diag.setValue(this.field_8_adtl_palette_options, s);
    }

    public void setAdtlDiagLineStyle(short s) {
        this.field_8_adtl_palette_options = _adtl_diag_line_style.setValue(this.field_8_adtl_palette_options, s);
    }

    public void setAdtlFillPattern(short s) {
        this.field_8_adtl_palette_options = _adtl_fill_pattern.setValue(this.field_8_adtl_palette_options, s);
    }

    public void setAdtlPaletteOptions(short s) {
        this.field_8_adtl_palette_options = s;
    }

    public void setAlignment(short s) {
        this.field_4_alignment_options = _alignment.setShortValue(this.field_4_alignment_options, s);
    }

    public void setAlignmentOptions(short s) {
        this.field_4_alignment_options = s;
    }

    public void setBorderBottom(short s) {
        this.field_6_border_options = _border_bottom.setShortValue(this.field_6_border_options, s);
    }

    public void setBorderLeft(short s) {
        this.field_6_border_options = _border_left.setShortValue(this.field_6_border_options, s);
    }

    public void setBorderOptions(short s) {
        this.field_6_border_options = s;
    }

    public void setBorderRight(short s) {
        this.field_6_border_options = _border_right.setShortValue(this.field_6_border_options, s);
    }

    public void setBorderTop(short s) {
        this.field_6_border_options = _border_top.setShortValue(this.field_6_border_options, s);
    }

    public void setBottomBorderPaletteIdx(short s) {
        this.field_8_adtl_palette_options = _bottom_border_palette_idx.setValue(this.field_8_adtl_palette_options, s);
    }

    public void setCellOptions(short s) {
        this.field_3_cell_options = s;
    }

    public void setDiag(short s) {
        this.field_7_palette_options = _diag.setShortValue(this.field_7_palette_options, s);
    }

    public void setFillBackground(short s) {
        this.field_9_fill_palette_options = _fill_background.setShortValue(this.field_9_fill_palette_options, s);
    }

    public void setFillForeground(short s) {
        this.field_9_fill_palette_options = _fill_foreground.setShortValue(this.field_9_fill_palette_options, s);
    }

    public void setFillPaletteOptions(short s) {
        this.field_9_fill_palette_options = s;
    }

    public void setFontIndex(short s) {
        this.field_1_font_index = s;
    }

    public void setFormatIndex(short s) {
        this.field_2_format_index = s;
    }

    public void setHidden(boolean z) {
        this.field_3_cell_options = _hidden.setShortBoolean(this.field_3_cell_options, z);
    }

    public void setIndent(short s) {
        this.field_5_indention_options = _indent.setShortValue(this.field_5_indention_options, s);
    }

    public void setIndentNotParentAlignment(boolean z) {
        this.field_5_indention_options = _indent_not_parent_alignment.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setIndentNotParentBorder(boolean z) {
        this.field_5_indention_options = _indent_not_parent_border.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setIndentNotParentCellOptions(boolean z) {
        this.field_5_indention_options = _indent_not_parent_cell_options.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setIndentNotParentFont(boolean z) {
        this.field_5_indention_options = _indent_not_parent_font.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setIndentNotParentFormat(boolean z) {
        this.field_5_indention_options = _indent_not_parent_format.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setIndentNotParentPattern(boolean z) {
        this.field_5_indention_options = _indent_not_parent_pattern.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setIndentionOptions(short s) {
        this.field_5_indention_options = s;
    }

    public void setJustifyLast(short s) {
        this.field_4_alignment_options = _justify_last.setShortValue(this.field_4_alignment_options, s);
    }

    public void setLeftBorderPaletteIdx(short s) {
        this.field_7_palette_options = _left_border_palette_idx.setShortValue(this.field_7_palette_options, s);
    }

    public void setLocked(boolean z) {
        this.field_3_cell_options = _locked.setShortBoolean(this.field_3_cell_options, z);
    }

    public void setMergeCells(boolean z) {
        this.field_5_indention_options = _merge_cells.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setPaletteOptions(short s) {
        this.field_7_palette_options = s;
    }

    public void setParentIndex(short s) {
        this.field_3_cell_options = _parent_index.setShortValue(this.field_3_cell_options, s);
    }

    public void setReadingOrder(short s) {
        this.field_5_indention_options = _reading_order.setShortValue(this.field_5_indention_options, s);
    }

    public void setRightBorderPaletteIdx(short s) {
        this.field_7_palette_options = _right_border_palette_idx.setShortValue(this.field_7_palette_options, s);
    }

    public void setRotation(short s) {
        this.field_4_alignment_options = _rotation.setShortValue(this.field_4_alignment_options, s);
    }

    public void setShrinkToFit(boolean z) {
        this.field_5_indention_options = _shrink_to_fit.setShortBoolean(this.field_5_indention_options, z);
    }

    public void setTopBorderPaletteIdx(short s) {
        this.field_8_adtl_palette_options = _top_border_palette_idx.setValue(this.field_8_adtl_palette_options, s);
    }

    public void setVerticalAlignment(short s) {
        this.field_4_alignment_options = _vertical_alignment.setShortValue(this.field_4_alignment_options, s);
    }

    public void setWrapText(boolean z) {
        this.field_4_alignment_options = _wrap_text.setShortBoolean(this.field_4_alignment_options, z);
    }

    public void setXFType(short s) {
        this.field_3_cell_options = _xf_type.setShortValue(this.field_3_cell_options, s);
    }

    public int[] stateSummary() {
        return new int[]{this.field_1_font_index, this.field_2_format_index, this.field_3_cell_options, this.field_4_alignment_options, this.field_5_indention_options, this.field_6_border_options, this.field_7_palette_options, this.field_8_adtl_palette_options, this.field_9_fill_palette_options};
    }

    public ExtendedFormatRecord(ExtendedFormatRecord extendedFormatRecord) {
        super(extendedFormatRecord);
        this.field_1_font_index = extendedFormatRecord.field_1_font_index;
        this.field_2_format_index = extendedFormatRecord.field_2_format_index;
        this.field_3_cell_options = extendedFormatRecord.field_3_cell_options;
        this.field_4_alignment_options = extendedFormatRecord.field_4_alignment_options;
        this.field_5_indention_options = extendedFormatRecord.field_5_indention_options;
        this.field_6_border_options = extendedFormatRecord.field_6_border_options;
        this.field_7_palette_options = extendedFormatRecord.field_7_palette_options;
        this.field_8_adtl_palette_options = extendedFormatRecord.field_8_adtl_palette_options;
        this.field_9_fill_palette_options = extendedFormatRecord.field_9_fill_palette_options;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.EXTENDED_FORMAT;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public ExtendedFormatRecord copy() {
        return new ExtendedFormatRecord(this);
    }

    public ExtendedFormatRecord(RecordInputStream recordInputStream) {
        this.field_1_font_index = recordInputStream.readShort();
        this.field_2_format_index = recordInputStream.readShort();
        this.field_3_cell_options = recordInputStream.readShort();
        this.field_4_alignment_options = recordInputStream.readShort();
        this.field_5_indention_options = recordInputStream.readShort();
        this.field_6_border_options = recordInputStream.readShort();
        this.field_7_palette_options = recordInputStream.readShort();
        this.field_8_adtl_palette_options = recordInputStream.readInt();
        this.field_9_fill_palette_options = recordInputStream.readShort();
    }
}
