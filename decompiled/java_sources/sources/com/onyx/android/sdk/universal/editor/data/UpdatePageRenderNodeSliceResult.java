package com.onyx.android.sdk.universal.editor.data;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.geometry.data.SliceInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\u000bJ\u001c\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0002J\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u0010\u0019\u001a\u00020\u0005R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/UpdatePageRenderNodeSliceResult;", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", FirebaseAnalytics.Param.SUCCESS, "", "oldContent", "Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "oldContentNote", "newContent", "newContentNote", "(Ljava/lang/String;ZLcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;Lcom/onyx/android/sdk/geometry/data/SliceInfo;)V", "getNewContent", "()Lcom/onyx/android/sdk/geometry/data/SliceInfo;", "getNewContentNote", "getOldContent", "getOldContentNote", "getPageId", "()Ljava/lang/String;", "getSuccess", Constants.BOOLEAN_VALUE_SIG, "isCacheKeyChanged", "old", "new", "isContentCacheKeyChanged", "isContentNoteCacheKeyChanged", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class UpdatePageRenderNodeSliceResult {

    @Nullable
    private final SliceInfo newContent;

    @Nullable
    private final SliceInfo newContentNote;

    @Nullable
    private final SliceInfo oldContent;

    @Nullable
    private final SliceInfo oldContentNote;

    @NotNull
    private final String pageId;
    private final boolean success;

    public UpdatePageRenderNodeSliceResult(@NotNull String pageId, boolean z, @Nullable SliceInfo sliceInfo, @Nullable SliceInfo sliceInfo2, @Nullable SliceInfo sliceInfo3, @Nullable SliceInfo sliceInfo4) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.pageId = pageId;
        this.success = z;
        this.oldContent = sliceInfo;
        this.oldContentNote = sliceInfo2;
        this.newContent = sliceInfo3;
        this.newContentNote = sliceInfo4;
    }

    private final boolean isCacheKeyChanged(SliceInfo old, SliceInfo r2) {
        String cacheKey = r2 != null ? r2.cacheKey() : null;
        String cacheKey2 = old != null ? old.cacheKey() : null;
        if (cacheKey2 == null) {
            cacheKey2 = "";
        }
        return !Intrinsics.areEqual(cacheKey, cacheKey2);
    }

    @Nullable
    public final SliceInfo getNewContent() {
        return this.newContent;
    }

    @Nullable
    public final SliceInfo getNewContentNote() {
        return this.newContentNote;
    }

    @Nullable
    public final SliceInfo getOldContent() {
        return this.oldContent;
    }

    @Nullable
    public final SliceInfo getOldContentNote() {
        return this.oldContentNote;
    }

    @NotNull
    public final String getPageId() {
        return this.pageId;
    }

    public final boolean getSuccess() {
        return this.success;
    }

    public final boolean isContentCacheKeyChanged() {
        return isCacheKeyChanged(this.oldContent, this.newContent);
    }

    public final boolean isContentNoteCacheKeyChanged() {
        return isCacheKeyChanged(this.oldContentNote, this.newContentNote);
    }
}
