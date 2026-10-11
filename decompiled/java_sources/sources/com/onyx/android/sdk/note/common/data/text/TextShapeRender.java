package com.onyx.android.sdk.note.common.data.text;

import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\r¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\"\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/text/TextShapeRender;", "", "", "render", "a", "b", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "setRenderContext", "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V", "renderContext", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "textShape", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextShapeRender {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RenderContext renderContext;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Shape textShape;

    public TextShapeRender(@NotNull RenderContext renderContext, @NotNull Shape textShape) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(textShape, "textShape");
        this.renderContext = renderContext;
        this.textShape = textShape;
    }

    /* renamed from: a */
    public final boolean m33727a() {
        return new NativeRenderTextAction(this.renderContext, this.textShape).render();
    }

    /* renamed from: b */
    public final boolean m33728b() {
        return new WebRenderTextAction(this.renderContext, this.textShape).render();
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    public final boolean render() {
        return m33727a();
    }

    public final void setRenderContext(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "<set-?>");
        this.renderContext = renderContext;
    }
}
