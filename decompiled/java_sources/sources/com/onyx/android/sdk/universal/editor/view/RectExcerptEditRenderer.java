package com.onyx.android.sdk.universal.editor.view;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.data.RectExcerptEditContext;
import com.onyx.android.sdk.universal.editor.display.RenderManager;
import com.onyx.android.sdk.universal.editor.display.SelectionRectRender;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.helper.SelectionManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0013\u001a\u00020\u0011¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0012R\u001b\u0010\f\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u0016R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/view/RectExcerptEditRenderer;", "", "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;", "editContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "initByShape", Constants.CLEAR_ATTRIBUTES, "lowLatencyRender", "c", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "Lcom/onyx/android/sdk/universal/editor/helper/SelectionManager;", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "b", "Lkotlin/Lazy;", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RectExcerptEditRenderer {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy renderContext;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public RectExcerptEditContext editContext;

    public RectExcerptEditRenderer(@NotNull EditorBundle editorBundle) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<RenderContext>() { // from class: com.onyx.android.sdk.universal.editor.view.RectExcerptEditRenderer$renderContext$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final RenderContext invoke() {
                return new RenderContext(new Paint(), new Matrix());
            }
        });
        this.renderContext = lazy;
    }

    /* renamed from: a */
    public final SelectionManager m41545a(RenderContext renderContext, BoxInfo virtualBoxInfo) {
        SelectionManager selectionManager = new SelectionManager(this.editorBundle, renderContext, virtualBoxInfo);
        selectionManager.getSelectionRect().setCustomSelectionMinSize(ResManager.INSTANCE.getDimens(C8045R.dimen.excerpt_rect_selection_min_size));
        return selectionManager;
    }

    /* renamed from: b */
    public final RenderContext m41546b() {
        return (RenderContext) this.renderContext.getValue();
    }

    /* renamed from: c */
    public final void m41547c(RectExcerptEditContext editContext, Shape shape) {
        NotePage notePage = editContext.getNotePage();
        if (notePage == null) {
            return;
        }
        m41546b().getRenderMeasure().setPageInfo(notePage.getPageInfo());
        m41546b().clearSelectionRect();
        m41546b().getSelectionArgs().setSelectionType(2);
        m41546b().setRenderScale(editContext.getVirtualBoxInfo().getActualScale());
        RectF copy = RectFKt.copy(editContext.getVirtualBoxInfo().getOriginRectFWithMargin());
        SelectionRect buildSelectionRect = SelectionRect.INSTANCE.buildSelectionRect(CollectionKt.asList(shape), m41546b(), null, false);
        Intrinsics.checkNotNull(buildSelectionRect);
        if (EditorBundleKt.getUiFeature(this.editorBundle).supportRectExcerptLimitRect()) {
            buildSelectionRect.setScaleInUnRotateLimitRect(false);
            buildSelectionRect.setLimitRect(copy);
        }
        m41546b().setSelectionRect(buildSelectionRect);
    }

    public final void clear() {
        RenderManager.removeRenderer$default(EditorBundleKt.renderManager(this.editorBundle), RenderManager.RENDER_KEY_TRANSFORM, false, 2, null);
    }

    public final void initByShape(@NotNull RectExcerptEditContext editContext, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(editContext, "editContext");
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.editContext = editContext;
        editContext.setSelectionManager(m41545a(m41546b(), editContext.getVirtualBoxInfo()));
        m41547c(editContext, shape);
    }

    public final void lowLatencyRender() {
        final BoxInfo noteInfo;
        RectExcerptEditContext rectExcerptEditContext = this.editContext;
        if (rectExcerptEditContext == null || (noteInfo = rectExcerptEditContext.getVirtualBoxInfo().getNoteInfo()) == null) {
            return;
        }
        final SelectionRectRender selectionRectRender = new SelectionRectRender(this.editorBundle, m41546b(), rectExcerptEditContext.getVirtualBoxInfo(), rectExcerptEditContext.getTransformShapes());
        selectionRectRender.setRenderingShapes(true);
        RenderManager.addRenderer$default(EditorBundleKt.renderManager(this.editorBundle), RenderManager.RENDER_KEY_TRANSFORM, new RenderManager.Renderer() { // from class: com.onyx.android.sdk.universal.editor.view.RectExcerptEditRenderer$lowLatencyRender$1
            @Override // com.onyx.android.sdk.universal.editor.display.RenderManager.Renderer
            public void onDraw(@NotNull Canvas canvas) {
                Intrinsics.checkNotNullParameter(canvas, "canvas");
                SelectionRectRender.this.renderNote(canvas, noteInfo);
            }
        }, false, 4, null);
    }
}
