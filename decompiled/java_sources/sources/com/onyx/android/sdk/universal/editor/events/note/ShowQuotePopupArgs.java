package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0013\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getHitTestVirtualPage", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestVirtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "c", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "getExcerptCollection", "()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", SyncConstant.LOCAL_EXCERPT_COLLECTION_DIR_NAME, Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowQuotePopupArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo hitTestVirtualPage;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ExcerptCollectionModel excerptCollection;

    public ShowQuotePopupArgs(@NotNull BoxInfo hitTestVirtualPage, @NotNull Shape hitTestShape, @NotNull ExcerptCollectionModel excerptCollection) {
        Intrinsics.checkNotNullParameter(hitTestVirtualPage, "hitTestVirtualPage");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        Intrinsics.checkNotNullParameter(excerptCollection, "excerptCollection");
        this.hitTestVirtualPage = hitTestVirtualPage;
        this.hitTestShape = hitTestShape;
        this.excerptCollection = excerptCollection;
    }

    @NotNull
    public final ExcerptCollectionModel getExcerptCollection() {
        return this.excerptCollection;
    }

    @NotNull
    public final Shape getHitTestShape() {
        return this.hitTestShape;
    }

    @NotNull
    public final BoxInfo getHitTestVirtualPage() {
        return this.hitTestVirtualPage;
    }
}
