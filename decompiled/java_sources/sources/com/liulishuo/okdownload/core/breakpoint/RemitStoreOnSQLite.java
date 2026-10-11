package com.liulishuo.okdownload.core.breakpoint;

import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.OkDownload;
import com.liulishuo.okdownload.core.breakpoint.RemitSyncExecutor;
import com.liulishuo.okdownload.core.cause.EndCause;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class RemitStoreOnSQLite implements RemitSyncExecutor.InterfaceC6961a, DownloadStore {

    /* renamed from: e */
    public static final String f39295e = "RemitStoreOnSQLite";

    /* renamed from: a */
    @NonNull
    public final C6962a f39296a;

    /* renamed from: b */
    @NonNull
    public final BreakpointStoreOnSQLite f39297b;

    /* renamed from: c */
    @NonNull
    public final BreakpointSQLiteHelper f39298c;

    /* renamed from: d */
    @NonNull
    public final DownloadStore f39299d;

    public RemitStoreOnSQLite(@NonNull BreakpointStoreOnSQLite breakpointStoreOnSQLite) {
        this.f39296a = new C6962a(this);
        this.f39297b = breakpointStoreOnSQLite;
        this.f39299d = breakpointStoreOnSQLite.onCache;
        this.f39298c = breakpointStoreOnSQLite.helper;
    }

    public static void setRemitToDBDelayMillis(int i) {
        BreakpointStore breakpointStore = OkDownload.with().breakpointStore();
        if (breakpointStore instanceof RemitStoreOnSQLite) {
            ((RemitStoreOnSQLite) breakpointStore).f39296a.f39309b = Math.max(0, i);
        } else {
            throw new IllegalStateException("The current store is " + breakpointStore + " not RemitStoreOnSQLite!");
        }
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    @NonNull
    public BreakpointInfo createAndInsert(@NonNull DownloadTask downloadTask) throws IOException {
        return this.f39296a.m31003c(downloadTask.getId()) ? this.f39299d.createAndInsert(downloadTask) : this.f39297b.createAndInsert(downloadTask);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    @Nullable
    public BreakpointInfo findAnotherInfoFromCompare(@NonNull DownloadTask downloadTask, @NonNull BreakpointInfo breakpointInfo) {
        return this.f39297b.findAnotherInfoFromCompare(downloadTask, breakpointInfo);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public int findOrCreateId(@NonNull DownloadTask downloadTask) {
        return this.f39297b.findOrCreateId(downloadTask);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    @Nullable
    public BreakpointInfo get(int i) {
        return this.f39297b.get(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    @Nullable
    public BreakpointInfo getAfterCompleted(int i) {
        return null;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    @Nullable
    public String getResponseFilename(String str) {
        return this.f39297b.getResponseFilename(str);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public boolean isFileDirty(int i) {
        return this.f39297b.isFileDirty(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public boolean isOnlyMemoryCache() {
        return false;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public boolean markFileClear(int i) {
        return this.f39297b.markFileClear(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public boolean markFileDirty(int i) {
        return this.f39297b.markFileDirty(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public void onSyncToFilesystemSuccess(@NonNull BreakpointInfo breakpointInfo, int i, long j) throws IOException {
        if (this.f39296a.m31003c(breakpointInfo.getId())) {
            this.f39299d.onSyncToFilesystemSuccess(breakpointInfo, i, j);
        } else {
            this.f39297b.onSyncToFilesystemSuccess(breakpointInfo, i, j);
        }
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public void onTaskEnd(int i, @NonNull EndCause endCause, @Nullable Exception exc) {
        this.f39299d.onTaskEnd(i, endCause, exc);
        if (endCause == EndCause.COMPLETED) {
            this.f39296a.m31001a(i);
        } else {
            this.f39296a.m31002b(i);
        }
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.DownloadStore
    public void onTaskStart(int i) {
        this.f39297b.onTaskStart(i);
        this.f39296a.m31004d(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public void remove(int i) {
        this.f39299d.remove(i);
        this.f39296a.m31001a(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.RemitSyncExecutor.InterfaceC6961a
    public void removeInfo(int i) {
        this.f39298c.removeInfo(i);
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.RemitSyncExecutor.InterfaceC6961a
    public void syncCacheToDB(List<Integer> list) throws IOException {
        SQLiteDatabase writableDatabase = this.f39298c.getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Iterator<Integer> it2 = list.iterator();
            while (it2.hasNext()) {
                syncCacheToDB(it2.next().intValue());
            }
            writableDatabase.setTransactionSuccessful();
        } finally {
            writableDatabase.endTransaction();
        }
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.BreakpointStore
    public boolean update(@NonNull BreakpointInfo breakpointInfo) throws IOException {
        return this.f39296a.m31003c(breakpointInfo.getId()) ? this.f39299d.update(breakpointInfo) : this.f39297b.update(breakpointInfo);
    }

    public RemitStoreOnSQLite(@NonNull C6962a c6962a, @NonNull BreakpointStoreOnSQLite breakpointStoreOnSQLite, @NonNull DownloadStore downloadStore, @NonNull BreakpointSQLiteHelper breakpointSQLiteHelper) {
        this.f39296a = c6962a;
        this.f39297b = breakpointStoreOnSQLite;
        this.f39299d = downloadStore;
        this.f39298c = breakpointSQLiteHelper;
    }

    @Override // com.liulishuo.okdownload.core.breakpoint.RemitSyncExecutor.InterfaceC6961a
    public void syncCacheToDB(int i) throws IOException {
        this.f39298c.removeInfo(i);
        BreakpointInfo breakpointInfo = this.f39299d.get(i);
        if (breakpointInfo == null || breakpointInfo.getFilename() == null || breakpointInfo.getTotalOffset() <= 0) {
            return;
        }
        this.f39298c.insert(breakpointInfo);
    }
}
