package com.onyx.android.sdk.replicator.note.data.pen;

import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tHÆ\u0003J=\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0006HÖ\u0001J\t\u0010%\u001a\u00020&HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\f\"\u0004\b\u0018\u0010\u000eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/pen/PenInfo;", "", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "", ApiBroadCastReceiver.ARGS_ERASER_WIDTH, ApiBroadCastReceiver.ARGS_STROKE_COLOR, "", "currentShapeType", "penData", "Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;", "(FFIILcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V", "getCurrentShapeType", "()I", "setCurrentShapeType", "(I)V", "getEraserWidth", "()F", "setEraserWidth", "(F)V", "getPenData", "()Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;", "setPenData", "(Lcom/onyx/android/sdk/replicator/note/data/pen/NotePenInfo;)V", "getStrokeColor", "setStrokeColor", "getStrokeWidth", "setStrokeWidth", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class PenInfo {
    private int currentShapeType;
    private float eraserWidth;

    @Nullable
    private NotePenInfo penData;
    private int strokeColor;
    private float strokeWidth;

    public PenInfo() {
        this(0.0f, 0.0f, 0, 0, null, 31, null);
    }

    public static /* synthetic */ PenInfo copy$default(PenInfo penInfo, float f, float f2, int i, int i2, NotePenInfo notePenInfo, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            f = penInfo.strokeWidth;
        }
        if ((i3 & 2) != 0) {
            f2 = penInfo.eraserWidth;
        }
        float f3 = f2;
        if ((i3 & 4) != 0) {
            i = penInfo.strokeColor;
        }
        int i4 = i;
        if ((i3 & 8) != 0) {
            i2 = penInfo.currentShapeType;
        }
        int i5 = i2;
        if ((i3 & 16) != 0) {
            notePenInfo = penInfo.penData;
        }
        return penInfo.copy(f, f3, i4, i5, notePenInfo);
    }

    /* renamed from: component1, reason: from getter */
    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    /* renamed from: component2, reason: from getter */
    public final float getEraserWidth() {
        return this.eraserWidth;
    }

    /* renamed from: component3, reason: from getter */
    public final int getStrokeColor() {
        return this.strokeColor;
    }

    /* renamed from: component4, reason: from getter */
    public final int getCurrentShapeType() {
        return this.currentShapeType;
    }

    @Nullable
    /* renamed from: component5, reason: from getter */
    public final NotePenInfo getPenData() {
        return this.penData;
    }

    @NotNull
    public final PenInfo copy(float strokeWidth, float eraserWidth, int strokeColor, int currentShapeType, @Nullable NotePenInfo penData) {
        return new PenInfo(strokeWidth, eraserWidth, strokeColor, currentShapeType, penData);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PenInfo)) {
            return false;
        }
        PenInfo penInfo = (PenInfo) other;
        return Float.compare(this.strokeWidth, penInfo.strokeWidth) == 0 && Float.compare(this.eraserWidth, penInfo.eraserWidth) == 0 && this.strokeColor == penInfo.strokeColor && this.currentShapeType == penInfo.currentShapeType && Intrinsics.areEqual(this.penData, penInfo.penData);
    }

    public final int getCurrentShapeType() {
        return this.currentShapeType;
    }

    public final float getEraserWidth() {
        return this.eraserWidth;
    }

    @Nullable
    public final NotePenInfo getPenData() {
        return this.penData;
    }

    public final int getStrokeColor() {
        return this.strokeColor;
    }

    public final float getStrokeWidth() {
        return this.strokeWidth;
    }

    public int hashCode() {
        int hashCode = ((((((Float.hashCode(this.strokeWidth) * 31) + Float.hashCode(this.eraserWidth)) * 31) + Integer.hashCode(this.strokeColor)) * 31) + Integer.hashCode(this.currentShapeType)) * 31;
        NotePenInfo notePenInfo = this.penData;
        return hashCode + (notePenInfo == null ? 0 : notePenInfo.hashCode());
    }

    public final void setCurrentShapeType(int i) {
        this.currentShapeType = i;
    }

    public final void setEraserWidth(float f) {
        this.eraserWidth = f;
    }

    public final void setPenData(@Nullable NotePenInfo notePenInfo) {
        this.penData = notePenInfo;
    }

    public final void setStrokeColor(int i) {
        this.strokeColor = i;
    }

    public final void setStrokeWidth(float f) {
        this.strokeWidth = f;
    }

    @NotNull
    public String toString() {
        return "PenInfo(strokeWidth=" + this.strokeWidth + ", eraserWidth=" + this.eraserWidth + ", strokeColor=" + this.strokeColor + ", currentShapeType=" + this.currentShapeType + ", penData=" + this.penData + ')';
    }

    public PenInfo(float f, float f2, int i, int i2, @Nullable NotePenInfo notePenInfo) {
        this.strokeWidth = f;
        this.eraserWidth = f2;
        this.strokeColor = i;
        this.currentShapeType = i2;
        this.penData = notePenInfo;
    }

    public /* synthetic */ PenInfo(float f, float f2, int i, int i2, NotePenInfo notePenInfo, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0.0f : f, (i3 & 2) != 0 ? 0.0f : f2, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2, (i3 & 16) != 0 ? null : notePenInfo);
    }
}
