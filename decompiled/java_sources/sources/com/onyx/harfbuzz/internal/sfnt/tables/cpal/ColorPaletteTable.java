package com.onyx.harfbuzz.internal.sfnt.tables.cpal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.internal.sfnt.DataTable;
import com.onyx.harfbuzz.internal.sfnt.SfntTable;
import com.onyx.harfbuzz.internal.sfnt.SfntTag;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public final class ColorPaletteTable {

    /* renamed from: b */
    public static final int f62825b = 0;

    /* renamed from: c */
    public static final int f62826c = 2;

    /* renamed from: d */
    public static final int f62827d = 4;

    /* renamed from: e */
    public static final int f62828e = 6;

    /* renamed from: f */
    public static final int f62829f = 8;

    /* renamed from: g */
    public static final int f62830g = 12;

    /* renamed from: h */
    public static final int f62831h = 0;

    /* renamed from: i */
    public static final int f62832i = 4;

    /* renamed from: j */
    public static final int f62833j = 8;

    /* renamed from: a */
    @NonNull
    public final SfntTable f62834a;

    public ColorPaletteTable(@NonNull SfntTable sfntTable) {
        this.f62834a = sfntTable;
    }

    @Nullable
    public static ColorPaletteTable from(@NonNull HBTypeface hBTypeface) {
        Preconditions.checkNotNull(hBTypeface);
        byte[] tableData = hBTypeface.getTableData(SfntTag.make("CPAL"));
        if (tableData != null) {
            return new ColorPaletteTable(new DataTable(tableData));
        }
        return null;
    }

    public int colorRecordIndexAt(int i) {
        return this.f62834a.readUInt16((i * 2) + 12);
    }

    @NonNull
    public ColorRecordsArray colorRecords() {
        SfntTable sfntTable = this.f62834a;
        return new ColorRecordsArray(sfntTable.subTable(sfntTable.readOffset32(8)));
    }

    public int numColorRecords() {
        return this.f62834a.readUInt16(6);
    }

    public int numPaletteEntries() {
        return this.f62834a.readUInt16(2);
    }

    public int numPalettes() {
        return this.f62834a.readUInt16(4);
    }

    @Nullable
    public PaletteLabelsArray paletteEntryLabels() {
        if (version() < 1) {
            return null;
        }
        int readOffset32 = this.f62834a.readOffset32((numColorRecords() * 2) + 12 + 8);
        if (readOffset32 == 0) {
            return null;
        }
        return new PaletteLabelsArray(this.f62834a.subTable(readOffset32));
    }

    @Nullable
    public PaletteLabelsArray paletteLabels() {
        if (version() < 1) {
            return null;
        }
        int readOffset32 = this.f62834a.readOffset32((numColorRecords() * 2) + 12 + 4);
        if (readOffset32 == 0) {
            return null;
        }
        return new PaletteLabelsArray(this.f62834a.subTable(readOffset32));
    }

    @Nullable
    public PaletteTypesArray paletteTypes() {
        if (version() < 1) {
            return null;
        }
        int readOffset32 = this.f62834a.readOffset32((numColorRecords() * 2) + 12 + 0);
        if (readOffset32 == 0) {
            return null;
        }
        return new PaletteTypesArray(this.f62834a.subTable(readOffset32));
    }

    public int version() {
        return this.f62834a.readUInt16(0);
    }
}
