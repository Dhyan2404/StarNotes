package com.onyx.android.sdk.universal.editor.events.note;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u000e\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0019¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u000e8\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0011\u001a\u0004\b\u0017\u0010\u0013R\u0017\u0010\u001e\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "a", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getHitTestVirtualPage", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "hitTestVirtualPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getHitTestShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "hitTestShape", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "c", "Ljava/util/List;", "getExcerptCollectionList", "()Ljava/util/List;", "excerptCollectionList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "d", "getNoteModelList", "noteModelList", "", "e", Constants.HASIDCALL_INDEX_SIG, "getShowHighlight", Constants.BOOLEAN_VALUE_SIG, "showHighlight", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;Ljava/util/List;Ljava/util/List;Z)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ShowExcerptPopupArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BoxInfo hitTestVirtualPage;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Shape hitTestShape;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<ExcerptCollectionModel> excerptCollectionList;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final List<SyncNoteModel> noteModelList;

    /* renamed from: e, reason: from kotlin metadata */
    public final boolean showHighlight;

    public ShowExcerptPopupArgs(@NotNull BoxInfo hitTestVirtualPage, @NotNull Shape hitTestShape, @NotNull List<ExcerptCollectionModel> excerptCollectionList, @NotNull List<SyncNoteModel> noteModelList, boolean z) {
        Intrinsics.checkNotNullParameter(hitTestVirtualPage, "hitTestVirtualPage");
        Intrinsics.checkNotNullParameter(hitTestShape, "hitTestShape");
        Intrinsics.checkNotNullParameter(excerptCollectionList, "excerptCollectionList");
        Intrinsics.checkNotNullParameter(noteModelList, "noteModelList");
        this.hitTestVirtualPage = hitTestVirtualPage;
        this.hitTestShape = hitTestShape;
        this.excerptCollectionList = excerptCollectionList;
        this.noteModelList = noteModelList;
        this.showHighlight = z;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final Shape getHitTestShape() {
        return this.hitTestShape;
    }

    @NotNull
    public final BoxInfo getHitTestVirtualPage() {
        return this.hitTestVirtualPage;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteModelList() {
        return this.noteModelList;
    }

    public final boolean getShowHighlight() {
        return this.showHighlight;
    }

    public /* synthetic */ ShowExcerptPopupArgs(BoxInfo boxInfo, Shape shape, List list, List list2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(boxInfo, shape, list, list2, (i & 16) != 0 ? true : z);
    }
}
