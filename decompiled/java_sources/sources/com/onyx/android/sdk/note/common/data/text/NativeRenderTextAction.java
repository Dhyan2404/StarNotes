package com.onyx.android.sdk.note.common.data.text;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import com.onegravity.rteditor.RTEditText;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0000H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002R\"\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/NativeRenderTextAction;", "", "", "render", "a", "Lcom/onegravity/rteditor/RTEditText;", "textRender", "", "b", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "setRenderContext", "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NativeRenderTextAction {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RenderContext renderContext;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Shape textShape;

    public NativeRenderTextAction(@NotNull RenderContext renderContext, @NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.renderContext = renderContext;
        this.textShape = textShape;
    }

    /* renamed from: a */
    public final NativeRenderTextAction m33708a() {
        int roundToInt;
        int roundToInt2;
        RTEditText renderView = TextRenderCacheManager.INSTANCE.getRenderView(this.textShape);
        RectF originRect = this.textShape.getOriginRect();
        roundToInt = MathKt__MathJVMKt.roundToInt(originRect.width());
        roundToInt2 = MathKt__MathJVMKt.roundToInt(originRect.height());
        renderView.setLayoutParams(new ViewGroup.LayoutParams(roundToInt, roundToInt2));
        Debug.INSTANCE.m32035d(NativeRenderTextAction.class, "text shape origin render size, w=" + roundToInt + ", h=" + roundToInt2, new Object[0]);
        renderView.measure(View.MeasureSpec.makeMeasureSpec(roundToInt, 1073741824), View.MeasureSpec.makeMeasureSpec(roundToInt2, 1073741824));
        renderView.layout(0, 0, renderView.getMeasuredWidth(), renderView.getMeasuredHeight());
        m33709b(renderView);
        return this;
    }

    /* renamed from: b */
    public final void m33709b(RTEditText textRender) {
        this.renderContext.getCanvas().save();
        Matrix matrix = new Matrix();
        matrix.postTranslate(this.textShape.getOriginRect().left, this.textShape.getOriginRect().top);
        matrix.postConcat(this.textShape.getRenderMatrix(this.renderContext));
        this.renderContext.getCanvas().concat(matrix);
        textRender.draw(this.renderContext.getCanvas());
        this.renderContext.getCanvas().restore();
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    public final boolean render() {
        Benchmark benchmark = new Benchmark();
        m33708a();
        benchmark.report("text render finish");
        return true;
    }

    public final void setRenderContext(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "<set-?>");
        this.renderContext = renderContext;
    }
}
