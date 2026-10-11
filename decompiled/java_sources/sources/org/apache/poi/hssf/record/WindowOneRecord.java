package org.apache.poi.hssf.record;

import java.util.Map;
import java.util.function.Supplier;
import org.apache.poi.hssf.record.WindowOneRecord;
import org.apache.poi.util.BitField;
import org.apache.poi.util.BitFieldFactory;
import org.apache.poi.util.GenericRecordUtil;
import org.apache.poi.util.LittleEndianOutput;

/* loaded from: classes12.dex */
public final class WindowOneRecord extends StandardRecord {
    public static final short sid = 61;
    private short field_1_h_hold;
    private short field_2_v_hold;
    private short field_3_width;
    private short field_4_height;
    private short field_5_options;
    private int field_6_active_sheet;
    private int field_7_first_visible_tab;
    private short field_8_num_selected_tabs;
    private short field_9_tab_width_ratio;
    private static final BitField hidden = BitFieldFactory.getInstance(1);
    private static final BitField iconic = BitFieldFactory.getInstance(2);
    private static final BitField reserved = BitFieldFactory.getInstance(4);
    private static final BitField hscroll = BitFieldFactory.getInstance(8);
    private static final BitField vscroll = BitFieldFactory.getInstance(16);
    private static final BitField tabs = BitFieldFactory.getInstance(32);

    public WindowOneRecord() {
    }

    public int getActiveSheetIndex() {
        return this.field_6_active_sheet;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public int getDataSize() {
        return 18;
    }

    public boolean getDisplayHorizontalScrollbar() {
        return hscroll.isSet(this.field_5_options);
    }

    public boolean getDisplayTabs() {
        return tabs.isSet(this.field_5_options);
    }

    public boolean getDisplayVerticalScrollbar() {
        return vscroll.isSet(this.field_5_options);
    }

    public int getFirstVisibleTab() {
        return this.field_7_first_visible_tab;
    }

    @Override // org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return GenericRecordUtil.getGenericProperties("horizontalHold", new Supplier() { // from class: com.sunia.HTREnginev2.j9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(WindowOneRecord.this.getHorizontalHold());
            }
        }, "verticalHold", new Supplier() { // from class: com.sunia.HTREnginev2.k9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(WindowOneRecord.this.getVerticalHold());
            }
        }, "width", new Supplier() { // from class: com.sunia.HTREnginev2.l9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(WindowOneRecord.this.getWidth());
            }
        }, "options", GenericRecordUtil.getBitsAsString((Supplier<Number>) new Supplier() { // from class: com.sunia.HTREnginev2.m9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(WindowOneRecord.this.getOptions());
            }
        }, new BitField[]{hidden, iconic, reserved, hscroll, vscroll, tabs}, new String[]{"HIDDEN", "ICONIC", "RESERVED", "HSCROLL", "VSCROLL", "TABS"}), "activeSheetIndex", new Supplier() { // from class: com.sunia.HTREnginev2.n9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(WindowOneRecord.this.getActiveSheetIndex());
            }
        }, "firstVisibleTab", new Supplier() { // from class: com.sunia.HTREnginev2.o9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(WindowOneRecord.this.getFirstVisibleTab());
            }
        }, "numSelectedTabs", new Supplier() { // from class: com.sunia.HTREnginev2.p9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(WindowOneRecord.this.getNumSelectedTabs());
            }
        }, "tabWidthRatio", new Supplier() { // from class: com.sunia.HTREnginev2.q9o
            @Override // java.util.function.Supplier
            public final Object get() {
                return Short.valueOf(WindowOneRecord.this.getTabWidthRatio());
            }
        });
    }

    public short getHeight() {
        return this.field_4_height;
    }

    public boolean getHidden() {
        return hidden.isSet(this.field_5_options);
    }

    public short getHorizontalHold() {
        return this.field_1_h_hold;
    }

    public boolean getIconic() {
        return iconic.isSet(this.field_5_options);
    }

    public short getNumSelectedTabs() {
        return this.field_8_num_selected_tabs;
    }

    public short getOptions() {
        return this.field_5_options;
    }

    @Override // org.apache.poi.hssf.record.Record
    public short getSid() {
        return (short) 61;
    }

    public short getTabWidthRatio() {
        return this.field_9_tab_width_ratio;
    }

    public short getVerticalHold() {
        return this.field_2_v_hold;
    }

    public short getWidth() {
        return this.field_3_width;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord
    public void serialize(LittleEndianOutput littleEndianOutput) {
        littleEndianOutput.writeShort(getHorizontalHold());
        littleEndianOutput.writeShort(getVerticalHold());
        littleEndianOutput.writeShort(getWidth());
        littleEndianOutput.writeShort(getHeight());
        littleEndianOutput.writeShort(getOptions());
        littleEndianOutput.writeShort(getActiveSheetIndex());
        littleEndianOutput.writeShort(getFirstVisibleTab());
        littleEndianOutput.writeShort(getNumSelectedTabs());
        littleEndianOutput.writeShort(getTabWidthRatio());
    }

    public void setActiveSheetIndex(int i) {
        this.field_6_active_sheet = i;
    }

    public void setDisplayHorizonalScrollbar(boolean z) {
        this.field_5_options = hscroll.setShortBoolean(this.field_5_options, z);
    }

    public void setDisplayTabs(boolean z) {
        this.field_5_options = tabs.setShortBoolean(this.field_5_options, z);
    }

    public void setDisplayVerticalScrollbar(boolean z) {
        this.field_5_options = vscroll.setShortBoolean(this.field_5_options, z);
    }

    public void setFirstVisibleTab(int i) {
        this.field_7_first_visible_tab = i;
    }

    public void setHeight(short s) {
        this.field_4_height = s;
    }

    public void setHidden(boolean z) {
        this.field_5_options = hidden.setShortBoolean(this.field_5_options, z);
    }

    public void setHorizontalHold(short s) {
        this.field_1_h_hold = s;
    }

    public void setIconic(boolean z) {
        this.field_5_options = iconic.setShortBoolean(this.field_5_options, z);
    }

    public void setNumSelectedTabs(short s) {
        this.field_8_num_selected_tabs = s;
    }

    public void setOptions(short s) {
        this.field_5_options = s;
    }

    public void setTabWidthRatio(short s) {
        this.field_9_tab_width_ratio = s;
    }

    public void setVerticalHold(short s) {
        this.field_2_v_hold = s;
    }

    public void setWidth(short s) {
        this.field_3_width = s;
    }

    public WindowOneRecord(WindowOneRecord windowOneRecord) {
        super(windowOneRecord);
        this.field_1_h_hold = windowOneRecord.field_1_h_hold;
        this.field_2_v_hold = windowOneRecord.field_2_v_hold;
        this.field_3_width = windowOneRecord.field_3_width;
        this.field_4_height = windowOneRecord.field_4_height;
        this.field_5_options = windowOneRecord.field_5_options;
        this.field_6_active_sheet = windowOneRecord.field_6_active_sheet;
        this.field_7_first_visible_tab = windowOneRecord.field_7_first_visible_tab;
        this.field_8_num_selected_tabs = windowOneRecord.field_8_num_selected_tabs;
        this.field_9_tab_width_ratio = windowOneRecord.field_9_tab_width_ratio;
    }

    @Override // org.apache.poi.hssf.record.Record, org.apache.poi.common.usermodel.GenericRecord
    public HSSFRecordTypes getGenericRecordType() {
        return HSSFRecordTypes.WINDOW_ONE;
    }

    @Override // org.apache.poi.hssf.record.StandardRecord, org.apache.poi.hssf.record.Record, org.apache.poi.common.Duplicatable
    public WindowOneRecord copy() {
        return new WindowOneRecord(this);
    }

    public WindowOneRecord(RecordInputStream recordInputStream) {
        this.field_1_h_hold = recordInputStream.readShort();
        this.field_2_v_hold = recordInputStream.readShort();
        this.field_3_width = recordInputStream.readShort();
        this.field_4_height = recordInputStream.readShort();
        this.field_5_options = recordInputStream.readShort();
        this.field_6_active_sheet = recordInputStream.readShort();
        this.field_7_first_visible_tab = recordInputStream.readShort();
        this.field_8_num_selected_tabs = recordInputStream.readShort();
        this.field_9_tab_width_ratio = recordInputStream.readShort();
    }
}
