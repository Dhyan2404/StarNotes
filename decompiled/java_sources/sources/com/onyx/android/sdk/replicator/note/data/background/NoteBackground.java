package com.onyx.android.sdk.replicator.note.data.background;

import androidx.core.app.NotificationCompat;
import com.alibaba.fastjson2.annotation.JSONCreator;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007\b\u0017¢\u0006\u0002\u0010\u0002B\u001b\b\u0016\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u0004\u0018\u00010\tJ\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0005J\u0006\u0010\u0013\u001a\u00020\u0006J\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\fJ\u0010\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0000J\u0010\u0010\u001b\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\tJ\u000e\u0010\u001d\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0006J\u001a\u0010\u001e\u001a\u00020\u00192\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u000e\u0010 \u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\fR\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;", "Ljava/io/Serializable;", "()V", "pageBKGroundMap", "", "", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "(Ljava/util/Map;)V", "bkGroundConfig", "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;", "docBKGround", "useDocBKGround", "", "equals", Constants.ATTRVAL_OTHER, "", "getBkGroundConfig", "getBkGroundRes", CouchFieldKey.KEY_TOC_PAGE_ID, "getDocBKGround", "getPageBKGroundMap", "hashCode", "", "isUseDocBKGround", "merge", "", NotificationCompat.WearableExtender.f5054t, "setBkGroundConfig", AbstractLogger.CONFIG, "setDocBKGround", "setPageBKGroundMap", "value", "setUseDocBKGround", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteBackground implements Serializable {

    @Nullable
    private BKGroundConfig bkGroundConfig;

    @NotNull
    private BkGroundRes docBKGround;

    @NotNull
    private Map<String, BkGroundRes> pageBKGroundMap;
    private boolean useDocBKGround;

    @JSONCreator
    public NoteBackground() {
        this.pageBKGroundMap = new HashMap();
        this.docBKGround = BkGroundRes.INSTANCE.create();
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoteBackground)) {
            return false;
        }
        NoteBackground noteBackground = (NoteBackground) other;
        return Intrinsics.areEqual(this.pageBKGroundMap, noteBackground.pageBKGroundMap) && Intrinsics.areEqual(this.docBKGround, noteBackground.docBKGround) && this.useDocBKGround == noteBackground.useDocBKGround && Intrinsics.areEqual(this.bkGroundConfig, noteBackground.bkGroundConfig);
    }

    @Nullable
    public final BKGroundConfig getBkGroundConfig() {
        return this.bkGroundConfig;
    }

    @NotNull
    public final BkGroundRes getBkGroundRes(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        BkGroundRes bkGroundRes = this.pageBKGroundMap.get(pageId);
        return bkGroundRes == null ? this.docBKGround : bkGroundRes;
    }

    @NotNull
    public final BkGroundRes getDocBKGround() {
        return this.docBKGround;
    }

    @NotNull
    public final Map<String, BkGroundRes> getPageBKGroundMap() {
        return this.pageBKGroundMap;
    }

    public int hashCode() {
        int hashCode = ((((this.pageBKGroundMap.hashCode() * 31) + this.docBKGround.hashCode()) * 31) + Boolean.hashCode(this.useDocBKGround)) * 31;
        BKGroundConfig bKGroundConfig = this.bkGroundConfig;
        return hashCode + (bKGroundConfig != null ? bKGroundConfig.hashCode() : 0);
    }

    /* renamed from: isUseDocBKGround, reason: from getter */
    public final boolean getUseDocBKGround() {
        return this.useDocBKGround;
    }

    public final void merge(@Nullable NoteBackground background) {
        if (background == null) {
            return;
        }
        if (background.getUseDocBKGround()) {
            setDocBKGround(background.docBKGround);
            setUseDocBKGround(background.getUseDocBKGround());
        }
        this.pageBKGroundMap.putAll(background.pageBKGroundMap);
    }

    public final void setBkGroundConfig(@Nullable BKGroundConfig config) {
        this.bkGroundConfig = config;
    }

    public final void setDocBKGround(@NotNull BkGroundRes docBKGround) {
        Intrinsics.checkNotNullParameter(docBKGround, "docBKGround");
        this.docBKGround = docBKGround;
    }

    public final void setPageBKGroundMap(@NotNull Map<String, BkGroundRes> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.pageBKGroundMap = value;
    }

    public final void setUseDocBKGround(boolean useDocBKGround) {
        this.useDocBKGround = useDocBKGround;
        this.docBKGround.setGlobal(useDocBKGround);
    }

    public NoteBackground(@NotNull Map<String, BkGroundRes> pageBKGroundMap) {
        Intrinsics.checkNotNullParameter(pageBKGroundMap, "pageBKGroundMap");
        this.pageBKGroundMap = new HashMap();
        this.docBKGround = BkGroundRes.INSTANCE.create();
        this.pageBKGroundMap = pageBKGroundMap;
    }
}
