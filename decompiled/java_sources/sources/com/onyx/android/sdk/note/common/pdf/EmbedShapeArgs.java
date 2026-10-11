package com.onyx.android.sdk.note.common.pdf;

import android.graphics.Matrix;
import android.graphics.Rect;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.background.BkGroundBean;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b1\u00102J\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0005\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006J\u0014\u0010\n\u001a\u00020\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000bJ\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013J\u0006\u0010\u0016\u001a\u00020\u0013J\u000e\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0007R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\r\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\"\u00100\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u001e\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;", "", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;", "getBkGroundBean", "bkGroundBean", "setBkGroundBean", "Lio/reactivex/rxjava3/functions/Predicate;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShapeFilter", "shapeFilter", "setShapeFilter", "", "isWriteOnlyVisible", "writeOnlyVisible", "setWriteOnlyVisible", "Landroid/graphics/Matrix;", "getRenderMatrix", "renderMatrix", "setRenderMatrix", "Landroid/graphics/Rect;", "embedRect", "setEmbedRect", "getEmbedRect", "shape", "testShapeFilter", "a", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundBean;", "b", "Lio/reactivex/rxjava3/functions/Predicate;", "c", Constants.HASIDCALL_INDEX_SIG, "d", "Landroid/graphics/Matrix;", "e", "Landroid/graphics/Rect;", "", C6997f.f39671c, "I", "getPageIndex", "()I", "setPageIndex", "(I)V", "pageIndex", C6998g.f39679a, "getRenderOutOfPageShape", Constants.BOOLEAN_VALUE_SIG, "setRenderOutOfPageShape", "(Z)V", "renderOutOfPageShape", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class EmbedShapeArgs {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public BkGroundBean bkGroundBean;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Predicate<Shape> shapeFilter;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean writeOnlyVisible;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public Matrix renderMatrix;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Rect embedRect = new Rect();

    /* renamed from: f, reason: from kotlin metadata */
    public int pageIndex = -1;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean renderOutOfPageShape = true;

    @Nullable
    public final BkGroundBean getBkGroundBean() {
        return this.bkGroundBean;
    }

    @NotNull
    public final Rect getEmbedRect() {
        return this.embedRect;
    }

    public final int getPageIndex() {
        return this.pageIndex;
    }

    @Nullable
    public final Matrix getRenderMatrix() {
        return this.renderMatrix;
    }

    public final boolean getRenderOutOfPageShape() {
        return this.renderOutOfPageShape;
    }

    @Nullable
    public final Predicate<Shape> getShapeFilter() {
        return this.shapeFilter;
    }

    /* renamed from: isWriteOnlyVisible, reason: from getter */
    public final boolean getWriteOnlyVisible() {
        return this.writeOnlyVisible;
    }

    @NotNull
    public final EmbedShapeArgs setBkGroundBean(@Nullable BkGroundBean bkGroundBean) {
        this.bkGroundBean = bkGroundBean;
        return this;
    }

    @NotNull
    public final EmbedShapeArgs setEmbedRect(@NotNull Rect embedRect) {
        Intrinsics.checkNotNullParameter(embedRect, "embedRect");
        this.embedRect = embedRect;
        return this;
    }

    public final void setPageIndex(int i) {
        this.pageIndex = i;
    }

    @NotNull
    public final EmbedShapeArgs setRenderMatrix(@Nullable Matrix renderMatrix) {
        this.renderMatrix = renderMatrix;
        return this;
    }

    public final void setRenderOutOfPageShape(boolean z) {
        this.renderOutOfPageShape = z;
    }

    @NotNull
    public final EmbedShapeArgs setShapeFilter(@NotNull Predicate<Shape> shapeFilter) {
        Intrinsics.checkNotNullParameter(shapeFilter, "shapeFilter");
        this.shapeFilter = shapeFilter;
        return this;
    }

    @NotNull
    public final EmbedShapeArgs setWriteOnlyVisible(boolean writeOnlyVisible) {
        this.writeOnlyVisible = writeOnlyVisible;
        return this;
    }

    public final boolean testShapeFilter(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (getShapeFilter() == null) {
            return true;
        }
        return !RxjavaKt.testSafety(r1, shape);
    }
}
