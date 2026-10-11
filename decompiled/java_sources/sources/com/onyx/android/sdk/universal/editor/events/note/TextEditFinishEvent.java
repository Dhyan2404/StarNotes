package com.onyx.android.sdk.universal.editor.events.note;

import android.graphics.RectF;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0018\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b&\u0010'J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J3\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u0006HÆ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\"\u0010\f\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001f\u001a\u0004\b#\u0010!\"\u0004\b$\u0010%¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/note/TextEditFinishEvent;", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "component1", "Landroid/graphics/RectF;", "component2", "", "component3", "component4", "shape", "renderRect", "renderShapes", "saveShape", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/Shape;", "b", "Landroid/graphics/RectF;", "getRenderRect", "()Landroid/graphics/RectF;", "setRenderRect", "(Landroid/graphics/RectF;)V", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "getRenderShapes", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, "d", "getSaveShape", "setSaveShape", "(Z)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/common/shape/Shape;Landroid/graphics/RectF;ZZ)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class TextEditFinishEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final Shape shape;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public RectF renderRect;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final boolean renderShapes;

    /* renamed from: d, reason: from kotlin metadata and from toString */
    public boolean saveShape;

    public TextEditFinishEvent(@NotNull Shape shape, @Nullable RectF rectF, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        this.shape = shape;
        this.renderRect = rectF;
        this.renderShapes = z;
        this.saveShape = z2;
    }

    public static /* synthetic */ TextEditFinishEvent copy$default(TextEditFinishEvent textEditFinishEvent, Shape shape, RectF rectF, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            shape = textEditFinishEvent.shape;
        }
        if ((i & 2) != 0) {
            rectF = textEditFinishEvent.renderRect;
        }
        if ((i & 4) != 0) {
            z = textEditFinishEvent.renderShapes;
        }
        if ((i & 8) != 0) {
            z2 = textEditFinishEvent.saveShape;
        }
        return textEditFinishEvent.copy(shape, rectF, z, z2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final Shape getShape() {
        return this.shape;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final RectF getRenderRect() {
        return this.renderRect;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getRenderShapes() {
        return this.renderShapes;
    }

    /* renamed from: component4, reason: from getter */
    public final boolean getSaveShape() {
        return this.saveShape;
    }

    @NotNull
    public final TextEditFinishEvent copy(@NotNull Shape shape, @Nullable RectF renderRect, boolean renderShapes, boolean saveShape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return new TextEditFinishEvent(shape, renderRect, renderShapes, saveShape);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextEditFinishEvent)) {
            return false;
        }
        TextEditFinishEvent textEditFinishEvent = (TextEditFinishEvent) other;
        return Intrinsics.areEqual(this.shape, textEditFinishEvent.shape) && Intrinsics.areEqual(this.renderRect, textEditFinishEvent.renderRect) && this.renderShapes == textEditFinishEvent.renderShapes && this.saveShape == textEditFinishEvent.saveShape;
    }

    @Nullable
    public final RectF getRenderRect() {
        return this.renderRect;
    }

    public final boolean getRenderShapes() {
        return this.renderShapes;
    }

    public final boolean getSaveShape() {
        return this.saveShape;
    }

    @NotNull
    public final Shape getShape() {
        return this.shape;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.shape.hashCode() * 31;
        RectF rectF = this.renderRect;
        int hashCode2 = (hashCode + (rectF == null ? 0 : rectF.hashCode())) * 31;
        boolean z = this.renderShapes;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode2 + i) * 31;
        boolean z2 = this.saveShape;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public final void setRenderRect(@Nullable RectF rectF) {
        this.renderRect = rectF;
    }

    public final void setSaveShape(boolean z) {
        this.saveShape = z;
    }

    @NotNull
    public String toString() {
        return "TextEditFinishEvent(shape=" + this.shape + ", renderRect=" + this.renderRect + ", renderShapes=" + this.renderShapes + ", saveShape=" + this.saveShape + ')';
    }

    public /* synthetic */ TextEditFinishEvent(Shape shape, RectF rectF, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(shape, (i & 2) != 0 ? null : rectF, (i & 4) != 0 ? true : z, (i & 8) != 0 ? true : z2);
    }
}
