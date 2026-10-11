package com.onyx.android.sdk.note.common.data;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.data.line.LineStyle;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.pen.PenAttrs;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b)\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\bL\u0010MJ\u000e\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0000J\b\u0010\u0005\u001a\u00020\u0000H\u0016J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\t\u001a\u00020\bJ\u0006\u0010\u000b\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\fJ\t\u0010\u000f\u001a\u00020\u000eHÆ\u0003J\t\u0010\u0011\u001a\u00020\u0010HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0010HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0010HÆ\u0003J\t\u0010\u0014\u001a\u00020\u000eHÆ\u0003J\t\u0010\u0015\u001a\u00020\u0010HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0017HÆ\u0003J]\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0019\u001a\u00020\u000e2\b\b\u0002\u0010\u001a\u001a\u00020\u00102\b\b\u0002\u0010\u001b\u001a\u00020\u00102\b\b\u0002\u0010\u001c\u001a\u00020\u00102\b\b\u0002\u0010\u001d\u001a\u00020\u000e2\b\b\u0002\u0010\u001e\u001a\u00020\u00102\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0017HÆ\u0001J\t\u0010#\u001a\u00020\"HÖ\u0001J\t\u0010$\u001a\u00020\u0010HÖ\u0001J\u0013\u0010'\u001a\u00020\f2\b\u0010&\u001a\u0004\u0018\u00010%HÖ\u0003R\"\u0010\u0019\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010\u001a\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\"\u0010\u001b\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b4\u0010/\u001a\u0004\b5\u00101\"\u0004\b6\u00103R\"\u0010\u001c\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010/\u001a\u0004\b8\u00101\"\u0004\b9\u00103R\"\u0010\u001d\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010)\u001a\u0004\b;\u0010+\"\u0004\b<\u0010-R\"\u0010\u001e\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010/\u001a\u0004\b>\u00101\"\u0004\b?\u00103R$\u0010\u001f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER$\u0010 \u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010K¨\u0006N"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "", "attrs", "", "copyFrom", "clone", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "copyPenAttrs", "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;", "getLineStyle", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "getShapeLineStyle", "", "isAreaEraser", "", "component1", "", "component2", "component3", "component4", "component5", "component6", "component7", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "component8", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, ApiBroadCastReceiver.ARGS_STROKE_COLOR, "lineStyleType", "currentShapeType", ApiBroadCastReceiver.ARGS_ERASER_WIDTH, "currentEraseType", "penAttrs", "penArgs", "copy", "", "toString", "hashCode", "", Constants.ATTRVAL_OTHER, "equals", "e", "F", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", C6997f.f39671c, "I", "getStrokeColor", "()I", "setStrokeColor", "(I)V", C6998g.f39679a, "getLineStyleType", "setLineStyleType", C6999h.f39688c, "getCurrentShapeType", "setCurrentShapeType", "i", "getEraserWidth", "setEraserWidth", "j", "getCurrentEraseType", "setCurrentEraseType", C4921e.f26537n, "Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "getPenAttrs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;", "setPenAttrs", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;)V", "l", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenArgs", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "setPenArgs", "(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(FIIIFILcom/onyx/android/sdk/replicator/note/data/pen/PenAttrs;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class NoteDrawingArgs implements Cloneable {

    /* renamed from: e, reason: from kotlin metadata and from toString */
    public float strokeWidth;

    /* renamed from: f, reason: from kotlin metadata and from toString */
    public int strokeColor;

    /* renamed from: g, reason: from kotlin metadata and from toString */
    public int lineStyleType;

    /* renamed from: h, reason: from kotlin metadata and from toString */
    public int currentShapeType;

    /* renamed from: i, reason: from kotlin metadata and from toString */
    public float eraserWidth;

    /* renamed from: j, reason: from kotlin metadata and from toString */
    public int currentEraseType;

    /* renamed from: k, reason: from kotlin metadata and from toString */
    @Nullable
    public PenAttrs penAttrs;

    /* renamed from: l, reason: from kotlin metadata and from toString */
    @Nullable
    public PenArgs penArgs;

    public NoteDrawingArgs() {
        this(0.0f, 0, 0, 0, 0.0f, 0, null, null, 255, null);
    }

    /* renamed from: component1, reason: from getter */
    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    /* renamed from: component2, reason: from getter */
    public final int getStrokeColor() {
        return this.strokeColor;
    }

    /* renamed from: component3, reason: from getter */
    public final int getLineStyleType() {
        return this.lineStyleType;
    }

    /* renamed from: component4, reason: from getter */
    public final int getCurrentShapeType() {
        return this.currentShapeType;
    }

    /* renamed from: component5, reason: from getter */
    public final float getEraserWidth() {
        return this.eraserWidth;
    }

    /* renamed from: component6, reason: from getter */
    public final int getCurrentEraseType() {
        return this.currentEraseType;
    }

    @Nullable
    /* renamed from: component7, reason: from getter */
    public final PenAttrs getPenAttrs() {
        return this.penAttrs;
    }

    @Nullable
    /* renamed from: component8, reason: from getter */
    public final PenArgs getPenArgs() {
        return this.penArgs;
    }

    @NotNull
    public final NoteDrawingArgs copy(float strokeWidth, int strokeColor, int lineStyleType, int currentShapeType, float eraserWidth, int currentEraseType, @Nullable PenAttrs penAttrs, @Nullable PenArgs penArgs) {
        return new NoteDrawingArgs(strokeWidth, strokeColor, lineStyleType, currentShapeType, eraserWidth, currentEraseType, penAttrs, penArgs);
    }

    public final void copyFrom(@NotNull NoteDrawingArgs attrs) {
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.strokeWidth = attrs.strokeWidth;
        this.strokeColor = attrs.strokeColor;
        this.lineStyleType = attrs.lineStyleType;
        this.currentShapeType = attrs.currentShapeType;
        this.eraserWidth = attrs.eraserWidth;
        this.currentEraseType = attrs.currentEraseType;
        this.penAttrs = attrs.penAttrs;
        this.penArgs = attrs.penArgs;
    }

    @Nullable
    public final PenAttrs copyPenAttrs() {
        PenAttrs penAttrs = this.penAttrs;
        if (penAttrs == null) {
            return null;
        }
        PenAttrs.Companion companion = PenAttrs.INSTANCE;
        Intrinsics.checkNotNull(penAttrs);
        return companion.copy(penAttrs);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof NoteDrawingArgs)) {
            return false;
        }
        NoteDrawingArgs noteDrawingArgs = (NoteDrawingArgs) other;
        return Float.compare(this.strokeWidth, noteDrawingArgs.strokeWidth) == 0 && this.strokeColor == noteDrawingArgs.strokeColor && this.lineStyleType == noteDrawingArgs.lineStyleType && this.currentShapeType == noteDrawingArgs.currentShapeType && Float.compare(this.eraserWidth, noteDrawingArgs.eraserWidth) == 0 && this.currentEraseType == noteDrawingArgs.currentEraseType && Intrinsics.areEqual(this.penAttrs, noteDrawingArgs.penAttrs) && Intrinsics.areEqual(this.penArgs, noteDrawingArgs.penArgs);
    }

    public final int getCurrentEraseType() {
        return this.currentEraseType;
    }

    public final int getCurrentShapeType() {
        return this.currentShapeType;
    }

    public final float getEraserWidth() {
        return this.eraserWidth;
    }

    @NotNull
    public final LineStyle getLineStyle() {
        return getShapeLineStyle().getLineStyle();
    }

    public final int getLineStyleType() {
        return this.lineStyleType;
    }

    @Nullable
    public final PenArgs getPenArgs() {
        return this.penArgs;
    }

    @Nullable
    public final PenAttrs getPenAttrs() {
        return this.penAttrs;
    }

    @NotNull
    public final ShapeLineStyle getShapeLineStyle() {
        return ShapeTypes.INSTANCE.isGraphicalShape(this.currentShapeType) ? new ShapeLineStyle() : new ShapeLineStyle();
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    public int hashCode() {
        int hashCode = ((((((((((Float.hashCode(this.strokeWidth) * 31) + Integer.hashCode(this.strokeColor)) * 31) + Integer.hashCode(this.lineStyleType)) * 31) + Integer.hashCode(this.currentShapeType)) * 31) + Float.hashCode(this.eraserWidth)) * 31) + Integer.hashCode(this.currentEraseType)) * 31;
        PenAttrs penAttrs = this.penAttrs;
        int hashCode2 = (hashCode + (penAttrs == null ? 0 : penAttrs.hashCode())) * 31;
        PenArgs penArgs = this.penArgs;
        return hashCode2 + (penArgs != null ? penArgs.hashCode() : 0);
    }

    public final boolean isAreaEraser() {
        return this.currentEraseType == 2;
    }

    public final void setCurrentEraseType(int i) {
        this.currentEraseType = i;
    }

    public final void setCurrentShapeType(int i) {
        this.currentShapeType = i;
    }

    public final void setEraserWidth(float f) {
        this.eraserWidth = f;
    }

    public final void setLineStyleType(int i) {
        this.lineStyleType = i;
    }

    public final void setPenArgs(@Nullable PenArgs penArgs) {
        this.penArgs = penArgs;
    }

    public final void setPenAttrs(@Nullable PenAttrs penAttrs) {
        this.penAttrs = penAttrs;
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    @NotNull
    public String toString() {
        return "NoteDrawingArgs(strokeWidth=" + this.strokeWidth + ", strokeColor=" + this.strokeColor + ", lineStyleType=" + this.lineStyleType + ", currentShapeType=" + this.currentShapeType + ", eraserWidth=" + this.eraserWidth + ", currentEraseType=" + this.currentEraseType + ", penAttrs=" + this.penAttrs + ", penArgs=" + this.penArgs + ')';
    }

    public NoteDrawingArgs(float f, int i, int i2, int i3, float f2, int i4, @Nullable PenAttrs penAttrs, @Nullable PenArgs penArgs) {
        this.strokeWidth = f;
        this.strokeColor = i;
        this.lineStyleType = i2;
        this.currentShapeType = i3;
        this.eraserWidth = f2;
        this.currentEraseType = i4;
        this.penAttrs = penAttrs;
        this.penArgs = penArgs;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NoteDrawingArgs m72293clone() throws CloneNotSupportedException {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.data.NoteDrawingArgs");
        return (NoteDrawingArgs) clone;
    }

    public /* synthetic */ NoteDrawingArgs(float f, int i, int i2, int i3, float f2, int i4, PenAttrs penAttrs, PenArgs penArgs, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this((i5 & 1) != 0 ? 10.0f : f, (i5 & 2) != 0 ? -16777216 : i, (i5 & 4) != 0 ? 0 : i2, (i5 & 8) != 0 ? 5 : i3, (i5 & 16) != 0 ? 20.0f : f2, (i5 & 32) != 0 ? 1 : i4, (i5 & 64) != 0 ? null : penAttrs, (i5 & 128) == 0 ? penArgs : null);
    }
}
