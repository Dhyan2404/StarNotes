package com.onyx.android.sdk.replicator.note.data.background;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u0004\u0018\u00010\u0004J\b\u0010\n\u001a\u0004\u0018\u00010\u0006J\b\u0010\u000b\u001a\u0004\u0018\u00010\bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\bR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;", "", "()V", "bkGroundRes", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;", "documentId", "", "getBkGroundRes", "getConfig", "getDocumentId", "setBkGroundRes", "setConfig", "setDocumentId", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class BkGroundBean {

    @Nullable
    private BkGroundRes bkGroundRes;

    @Nullable
    private BKGroundConfig config;

    @Nullable
    private String documentId;

    @Nullable
    public final BkGroundRes getBkGroundRes() {
        return this.bkGroundRes;
    }

    @Nullable
    public final BKGroundConfig getConfig() {
        return this.config;
    }

    @Nullable
    public final String getDocumentId() {
        return this.documentId;
    }

    @NotNull
    public final BkGroundBean setBkGroundRes(@Nullable BkGroundRes bkGroundRes) {
        this.bkGroundRes = bkGroundRes;
        return this;
    }

    @NotNull
    public final BkGroundBean setConfig(@Nullable BKGroundConfig config) {
        this.config = config;
        return this;
    }

    @NotNull
    public final BkGroundBean setDocumentId(@Nullable String documentId) {
        this.documentId = documentId;
        return this;
    }
}
