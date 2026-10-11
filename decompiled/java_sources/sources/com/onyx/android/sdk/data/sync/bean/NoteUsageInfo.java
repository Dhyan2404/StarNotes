package com.onyx.android.sdk.data.sync.bean;

import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\b¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;", "", "()V", "docCount", "", "getDocCount", "()I", "setDocCount", "(I)V", "docCountIncludeDustbin", "getDocCountIncludeDustbin", "setDocCountIncludeDustbin", "docHistoryCount", "getDocHistoryCount", "setDocHistoryCount", "folderCount", "getFolderCount", "setFolderCount", "folderCountIncludeDustbin", "getFolderCountIncludeDustbin", "setFolderCountIncludeDustbin", "folderHistoryCount", "getFolderHistoryCount", "setFolderHistoryCount", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NoteUsageInfo {
    private int docCount;
    private int docCountIncludeDustbin;
    private int docHistoryCount;
    private int folderCount;
    private int folderCountIncludeDustbin;
    private int folderHistoryCount;

    public final int getDocCount() {
        return this.docCount;
    }

    public final int getDocCountIncludeDustbin() {
        return this.docCountIncludeDustbin;
    }

    public final int getDocHistoryCount() {
        return this.docHistoryCount;
    }

    public final int getFolderCount() {
        return this.folderCount;
    }

    public final int getFolderCountIncludeDustbin() {
        return this.folderCountIncludeDustbin;
    }

    public final int getFolderHistoryCount() {
        return this.folderHistoryCount;
    }

    public final void setDocCount(int i) {
        this.docCount = i;
    }

    public final void setDocCountIncludeDustbin(int i) {
        this.docCountIncludeDustbin = i;
    }

    public final void setDocHistoryCount(int i) {
        this.docHistoryCount = i;
    }

    public final void setFolderCount(int i) {
        this.folderCount = i;
    }

    public final void setFolderCountIncludeDustbin(int i) {
        this.folderCountIncludeDustbin = i;
    }

    public final void setFolderHistoryCount(int i) {
        this.folderHistoryCount = i;
    }
}
