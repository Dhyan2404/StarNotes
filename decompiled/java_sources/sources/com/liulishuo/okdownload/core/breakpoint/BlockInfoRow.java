package com.liulishuo.okdownload.core.breakpoint;

import android.database.Cursor;

/* loaded from: classes4.dex */
public class BlockInfoRow {

    /* renamed from: a */
    public final int f39259a;

    /* renamed from: b */
    public final long f39260b;

    /* renamed from: c */
    public final long f39261c;

    /* renamed from: d */
    public final long f39262d;

    public BlockInfoRow(Cursor cursor) {
        this.f39259a = cursor.getInt(cursor.getColumnIndex(BreakpointSQLiteKey.HOST_ID));
        this.f39260b = cursor.getInt(cursor.getColumnIndex(BreakpointSQLiteKey.START_OFFSET));
        this.f39261c = cursor.getInt(cursor.getColumnIndex("content_length"));
        this.f39262d = cursor.getInt(cursor.getColumnIndex(BreakpointSQLiteKey.CURRENT_OFFSET));
    }

    public int getBreakpointId() {
        return this.f39259a;
    }

    public long getContentLength() {
        return this.f39261c;
    }

    public long getCurrentOffset() {
        return this.f39262d;
    }

    public long getStartOffset() {
        return this.f39260b;
    }

    public BlockInfo toInfo() {
        return new BlockInfo(this.f39260b, this.f39261c, this.f39262d);
    }
}
