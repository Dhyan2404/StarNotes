package com.onyx.android.sdk.universal.editor.display.node;

import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RenderNode;
import android.util.Size;
import androidx.annotation.RequiresApi;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(29)
@Metadata(m61527d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0012¢\u0006\u0004\b1\u00102J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\rH\u0016R\u0017\u0010\u0017\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0016R$\u0010$\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R$\u0010'\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b%\u0010!\"\u0004\b&\u0010#R$\u0010*\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b(\u0010!\"\u0004\b)\u0010#R\u0014\u0010.\u001a\u00020+8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0014\u00100\u001a\u00020+8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u0010-¨\u00063"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/display/node/NativeRenderNode;", "Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;", "Landroid/util/Size;", "size", "", "discardDisplayList", "", "hasDisplayList", "Landroid/graphics/Rect;", "rect", "setPosition", "clip", "setClipToBounds", "Landroid/graphics/Canvas;", "beginRecording", "endRecording", IStyleSheet.CLASS_CANVAS, "drawInto", "", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "id", "Landroid/graphics/RenderNode;", "b", "Landroid/graphics/RenderNode;", "renderNode", "getUniqueId", CouchFieldKey.KEY_UNIQUE_ID, "", "value", "getTranslationX", "()F", "setTranslationX", "(F)V", "translationX", "getTranslationY", "setTranslationY", "translationY", "getAlpha", "setAlpha", "alpha", "", "getWidth", "()I", "width", "getHeight", "height", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NativeRenderNode implements IRenderNode {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String id;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RenderNode renderNode;

    public NativeRenderNode(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.renderNode = new RenderNode(id);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    @NotNull
    public Canvas beginRecording() {
        RecordingCanvas beginRecording = this.renderNode.beginRecording();
        Intrinsics.checkNotNullExpressionValue(beginRecording, "beginRecording(...)");
        return beginRecording;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void discardDisplayList() {
        this.renderNode.discardDisplayList();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void drawInto(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.drawRenderNode(this.renderNode);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void endRecording() {
        this.renderNode.endRecording();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public float getAlpha() {
        return this.renderNode.getAlpha();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public int getHeight() {
        return this.renderNode.getHeight();
    }

    @NotNull
    public final String getId() {
        return this.id;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public float getTranslationX() {
        return this.renderNode.getTranslationX();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public float getTranslationY() {
        return this.renderNode.getTranslationY();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    @NotNull
    public String getUniqueId() {
        return this.id;
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public int getWidth() {
        return this.renderNode.getWidth();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public boolean hasDisplayList() {
        return this.renderNode.hasDisplayList();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setAlpha(float f) {
        this.renderNode.getAlpha();
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setClipToBounds(boolean clip) {
        this.renderNode.setClipToBounds(clip);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setPosition(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.renderNode.setPosition(rect);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setTranslationX(float f) {
        this.renderNode.setTranslationX(f);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    public void setTranslationY(float f) {
        this.renderNode.setTranslationY(f);
    }

    @Override // com.onyx.android.sdk.universal.editor.display.node.IRenderNode
    @NotNull
    public Size size() {
        return new Size(getWidth(), getHeight());
    }
}
