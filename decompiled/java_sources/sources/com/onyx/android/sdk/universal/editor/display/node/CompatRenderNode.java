package com.onyx.android.sdk.universal.editor.display.node;

import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import android.util.Size;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0015\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0013¢\u0006\u0004\bA\u0010BJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\u0004H\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\bH\u0016J\u0006\u0010\u0012\u001a\u00020\u0004R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R$\u0010*\u001a\u00020$2\u0006\u0010%\u001a\u00020$8V@RX\u0096\u000e¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R$\u0010-\u001a\u00020$2\u0006\u0010%\u001a\u00020$8V@RX\u0096\u000e¢\u0006\f\n\u0004\b+\u0010'\u001a\u0004\b,\u0010)R*\u00106\u001a\u00020.2\u0006\u0010/\u001a\u00020.8V@VX\u0096\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010:\u001a\u00020.8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b7\u00101\u001a\u0004\b8\u00103\"\u0004\b9\u00105R\"\u0010>\u001a\u00020.8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b;\u00101\u001a\u0004\b<\u00103\"\u0004\b=\u00105R\u0014\u0010@\u001a\u00020\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010\u0017¨\u0006C"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode;", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "Landroid/util/Size;", "size", "", "discardDisplayList", "", "hasDisplayList", "Landroid/graphics/Canvas;", "beginRecording", "endRecording", "Landroid/graphics/Rect;", "rect", "setPosition", "clip", "setClipToBounds", IStyleSheet.CLASS_CANVAS, "drawInto", "destroy", "", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "id", "Landroid/graphics/Picture;", "b", "Landroid/graphics/Picture;", "getPicture", "()Landroid/graphics/Picture;", "setPicture", "(Landroid/graphics/Picture;)V", TemplateResourceConstant.TYPE_PICTURE, "c", "Landroid/graphics/Rect;", "nodeRect", "", "<set-?>", "d", "I", "getWidth", "()I", "width", "e", "getHeight", "height", "", "value", C6997f.f39671c, "F", "getAlpha", "()F", "setAlpha", "(F)V", "alpha", C6998g.f39679a, "getTranslationX", "setTranslationX", "translationX", C6999h.f39688c, "getTranslationY", "setTranslationY", "translationY", "getUniqueId", CouchFieldKey.KEY_UNIQUE_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCompatRenderNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompatRenderNode.kt\ncom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode\n+ 2 Canvas.kt\nandroidx/core/graphics/CanvasKt\n*L\n1#1,82:1\n47#2,8:83\n*S KotlinDebug\n*F\n+ 1 CompatRenderNode.kt\ncom/onyx/android/sdk/universal/editor/display/node/CompatRenderNode\n*L\n74#1:83,8\n*E\n"})
/* loaded from: classes8.dex */
public final class CompatRenderNode implements IRenderNode {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String id;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public Picture picture;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Rect nodeRect;

    /* renamed from: d, reason: from kotlin metadata */
    public int width;

    /* renamed from: e, reason: from kotlin metadata */
    public int height;

    /* renamed from: f, reason: from kotlin metadata */
    public float alpha;

    /* renamed from: g, reason: from kotlin metadata */
    public float translationX;

    /* renamed from: h, reason: from kotlin metadata */
    public float translationY;

    public CompatRenderNode(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.nodeRect = new Rect();
        this.alpha = 1.0f;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    @NotNull
    public Canvas beginRecording() {
        discardDisplayList();
        Picture picture = new Picture();
        this.picture = picture;
        Canvas beginRecording = picture.beginRecording(this.nodeRect.width(), this.nodeRect.height());
        Intrinsics.checkNotNullExpressionValue(beginRecording, "let(...)");
        return beginRecording;
    }

    public final void destroy() {
        discardDisplayList();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void discardDisplayList() {
        this.picture = null;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void drawInto(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Picture picture = this.picture;
        if (picture == null) {
            return;
        }
        float translationX = getTranslationX();
        float translationY = getTranslationY();
        int save = canvas.save();
        canvas.translate(translationX, translationY);
        try {
            canvas.drawPicture(picture);
        } finally {
            canvas.restoreToCount(save);
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void endRecording() {
        Picture picture = this.picture;
        if (picture != null) {
            picture.endRecording();
        }
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public float getAlpha() {
        return 1.0f;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public int getHeight() {
        return this.nodeRect.height();
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final Picture getPicture() {
        return this.picture;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public float getTranslationX() {
        return this.translationX;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public float getTranslationY() {
        return this.translationY;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    @NotNull
    public String getUniqueId() {
        return this.id;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public int getWidth() {
        return this.nodeRect.width();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public boolean hasDisplayList() {
        return this.picture != null;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setAlpha(float f) {
        this.alpha = f;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setClipToBounds(boolean clip) {
    }

    public final void setPicture(@Nullable Picture picture) {
        this.picture = picture;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setPosition(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.nodeRect.set(rect);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setTranslationX(float f) {
        this.translationX = f;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setTranslationY(float f) {
        this.translationY = f;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    @NotNull
    public Size size() {
        return new Size(getWidth(), getHeight());
    }
}
