package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.p035db.model.ExcerptCollectionModel;
import com.onyx.android.sdk.replicator.note.p035db.model.SyncNoteModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010 \u001a\u00020\u0012J\b\u0010!\u001a\u00020\"H\u0016J\u0014\u0010#\u001a\u00020\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00120%R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R*\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u00042\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00120\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0007R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;", "", "()V", "excerptCollectionList", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;", "getExcerptCollectionList", "()Ljava/util/List;", "noteModelList", "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;", "getNoteModelList", "notePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "getNotePage", "()Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "setNotePage", "(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V", "originalExcerptShape", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getOriginalExcerptShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "setOriginalExcerptShape", "(Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "<set-?>", "transformShapes", "getTransformShapes", "virtualBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "ensureTransformShape", Constants.RESET, "", "setTransformShapes", "shapeList", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public class BaseExcerptEditContext {

    @Nullable
    private NotePage notePage;

    @Nullable
    private Shape originalExcerptShape;
    public BoxInfo virtualBoxInfo;

    @NotNull
    private List<Shape> transformShapes = new ArrayList();

    @NotNull
    private final List<ExcerptCollectionModel> excerptCollectionList = new ArrayList();

    @NotNull
    private final List<SyncNoteModel> noteModelList = new ArrayList();

    @NotNull
    public final Shape ensureTransformShape() {
        Object first;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.transformShapes);
        return (Shape) first;
    }

    @NotNull
    public final List<ExcerptCollectionModel> getExcerptCollectionList() {
        return this.excerptCollectionList;
    }

    @NotNull
    public final List<SyncNoteModel> getNoteModelList() {
        return this.noteModelList;
    }

    @Nullable
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @Nullable
    public final Shape getOriginalExcerptShape() {
        return this.originalExcerptShape;
    }

    @NotNull
    public final List<Shape> getTransformShapes() {
        return this.transformShapes;
    }

    @NotNull
    public final BoxInfo getVirtualBoxInfo() {
        BoxInfo boxInfo = this.virtualBoxInfo;
        if (boxInfo != null) {
            return boxInfo;
        }
        Intrinsics.throwUninitializedPropertyAccessException("virtualBoxInfo");
        return null;
    }

    public void reset() {
        this.transformShapes.clear();
        this.originalExcerptShape = null;
    }

    public final void setNotePage(@Nullable NotePage notePage) {
        this.notePage = notePage;
    }

    public final void setOriginalExcerptShape(@Nullable Shape shape) {
        this.originalExcerptShape = shape;
    }

    public final void setTransformShapes(@NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.transformShapes.clear();
        this.transformShapes.addAll(shapeList);
    }

    public final void setVirtualBoxInfo(@NotNull BoxInfo boxInfo) {
        Intrinsics.checkNotNullParameter(boxInfo, "<set-?>");
        this.virtualBoxInfo = boxInfo;
    }
}
