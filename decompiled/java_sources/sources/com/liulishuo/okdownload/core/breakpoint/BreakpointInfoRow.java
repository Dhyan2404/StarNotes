package com.liulishuo.okdownload.core.breakpoint;

import android.database.Cursor;
import java.io.File;

/* loaded from: classes4.dex */
public class BreakpointInfoRow {

    /* renamed from: a */
    public final int f39272a;

    /* renamed from: b */
    public final String f39273b;

    /* renamed from: c */
    public final String f39274c;

    /* renamed from: d */
    public final String f39275d;

    /* renamed from: e */
    public final String f39276e;

    /* renamed from: f */
    public final boolean f39277f;

    /* renamed from: g */
    public final boolean f39278g;

    public BreakpointInfoRow(Cursor cursor) {
        this.f39272a = cursor.getInt(cursor.getColumnIndex("id"));
        this.f39273b = cursor.getString(cursor.getColumnIndex("url"));
        this.f39274c = cursor.getString(cursor.getColumnIndex(BreakpointSQLiteKey.ETAG));
        this.f39275d = cursor.getString(cursor.getColumnIndex(BreakpointSQLiteKey.PARENT_PATH));
        this.f39276e = cursor.getString(cursor.getColumnIndex(BreakpointSQLiteKey.FILENAME));
        this.f39277f = cursor.getInt(cursor.getColumnIndex(BreakpointSQLiteKey.TASK_ONLY_PARENT_PATH)) == 1;
        this.f39278g = cursor.getInt(cursor.getColumnIndex("chunked")) == 1;
    }

    public String getEtag() {
        return this.f39274c;
    }

    public String getFilename() {
        return this.f39276e;
    }

    public int getId() {
        return this.f39272a;
    }

    public String getParentPath() {
        return this.f39275d;
    }

    public String getUrl() {
        return this.f39273b;
    }

    public boolean isChunked() {
        return this.f39278g;
    }

    public boolean isTaskOnlyProvidedParentPath() {
        return this.f39277f;
    }

    public BreakpointInfo toInfo() {
        BreakpointInfo breakpointInfo = new BreakpointInfo(this.f39272a, this.f39273b, new File(this.f39275d), this.f39276e, this.f39277f);
        breakpointInfo.setEtag(this.f39274c);
        breakpointInfo.setChunked(this.f39278g);
        return breakpointInfo;
    }
}
