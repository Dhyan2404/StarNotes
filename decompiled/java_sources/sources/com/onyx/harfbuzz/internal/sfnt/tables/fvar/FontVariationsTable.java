package com.onyx.harfbuzz.internal.sfnt.tables.fvar;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.internal.sfnt.DataTable;
import com.onyx.harfbuzz.internal.sfnt.SfntTable;
import com.onyx.harfbuzz.internal.sfnt.SfntTag;
import com.onyx.harfbuzz.utils.Preconditions;

/* loaded from: classes9.dex */
public final class FontVariationsTable {

    /* renamed from: c */
    public static final int f62838c = 0;

    /* renamed from: d */
    public static final int f62839d = 2;

    /* renamed from: e */
    public static final int f62840e = 4;

    /* renamed from: f */
    public static final int f62841f = 8;

    /* renamed from: g */
    public static final int f62842g = 10;

    /* renamed from: h */
    public static final int f62843h = 12;

    /* renamed from: i */
    public static final int f62844i = 14;

    /* renamed from: a */
    @NonNull
    public final SfntTable f62845a;

    /* renamed from: b */
    public int f62846b;

    public FontVariationsTable(@NonNull SfntTable sfntTable, int i) {
        this.f62845a = sfntTable;
        this.f62846b = i;
    }

    @Nullable
    public static FontVariationsTable from(@NonNull HBTypeface hBTypeface) {
        Preconditions.checkNotNull(hBTypeface);
        byte[] tableData = hBTypeface.getTableData(SfntTag.make("fvar"));
        if (tableData != null) {
            return new FontVariationsTable(new DataTable(tableData), tableData.length);
        }
        return null;
    }

    /* renamed from: a */
    public final int m52085a(int i, int i2, int i3) {
        int instanceCount = instanceCount();
        int i4 = 0;
        for (int i5 = 0; i5 < instanceCount; i5++) {
            if (InstanceRecord.checkBounds((i5 * i2) + i, i3, this.f62846b)) {
                i4++;
            }
        }
        return i4;
    }

    public int axesArrayOffset() {
        return this.f62845a.readUInt16(4);
    }

    public int axisCount() {
        return this.f62845a.readUInt16(8);
    }

    @NonNull
    public VariationAxisRecord[] axisRecords() {
        int axesArrayOffset = axesArrayOffset();
        int axisCount = axisCount();
        int axisSize = axisSize();
        VariationAxisRecord[] variationAxisRecordArr = new VariationAxisRecord[axisCount];
        for (int i = 0; i < axisCount; i++) {
            variationAxisRecordArr[i] = new VariationAxisRecord(this.f62845a.subTable((i * axisSize) + axesArrayOffset));
        }
        return variationAxisRecordArr;
    }

    public int axisSize() {
        return this.f62845a.readUInt16(10);
    }

    public int instanceCount() {
        return this.f62845a.readUInt16(12);
    }

    @NonNull
    public InstanceRecord[] instanceRecords() {
        int axesArrayOffset = axesArrayOffset();
        int axisCount = axisCount();
        int axisSize = axesArrayOffset + (axisSize() * axisCount);
        int instanceSize = instanceSize();
        int m52085a = m52085a(axisSize, instanceSize, axisCount);
        InstanceRecord[] instanceRecordArr = new InstanceRecord[m52085a];
        for (int i = 0; i < m52085a; i++) {
            instanceRecordArr[i] = new InstanceRecord(this.f62845a.subTable((i * instanceSize) + axisSize), axisCount, instanceSize);
        }
        return instanceRecordArr;
    }

    public int instanceSize() {
        return this.f62845a.readUInt16(14);
    }

    public int majorVersion() {
        return this.f62845a.readUInt16(0);
    }

    public int minorVersion() {
        return this.f62845a.readUInt16(2);
    }
}
