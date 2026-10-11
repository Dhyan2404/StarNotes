package com.onyx.android.sdk.textbox.event;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u001e\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u0016\u0012\u0006\u0010!\u001a\u00020\u0016¢\u0006\u0004\b2\u00103J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\bR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0004\u0010\u0015R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b\n\u0010&R\"\u0010\u000b\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010#\u001a\u0004\b(\u0010%\"\u0004\b\f\u0010&R\"\u0010\r\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010#\u001a\u0004\b*\u0010%\"\u0004\b\u000e\u0010&R\"\u0010\u000f\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010#\u001a\u0004\b,\u0010%\"\u0004\b\u0010\u0010&R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b\u0007\u00101¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/event/TextBoxTransformEvent;", "", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "transformType", "setTransformType", "", "angle", "setAngle", "", "textWidth", "setTextWidth", "textHeight", "setTextHeight", "minWidth", "setMinWidth", "minHeight", "setMinHeight", "a", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "getTransformType", "()Lcom/onyx/android/sdk/textbox/data/TransformType;", "(Lcom/onyx/android/sdk/textbox/data/TransformType;)V", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "b", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getMovePoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setMovePoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "movePoint", "c", "getLastPoint", "setLastPoint", "lastPoint", "d", "I", "getTextWidth", "()I", "(I)V", "e", "getTextHeight", C6997f.f39671c, "getMinWidth", C6998g.f39679a, "getMinHeight", C6999h.f39688c, "F", "getAngle", "()F", "(F)V", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class TextBoxTransformEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public TransformType transformType;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public TouchPoint movePoint;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public TouchPoint lastPoint;

    /* renamed from: d, reason: from kotlin metadata */
    public int textWidth;

    /* renamed from: e, reason: from kotlin metadata */
    public int textHeight;

    /* renamed from: f, reason: from kotlin metadata */
    public int minWidth;

    /* renamed from: g, reason: from kotlin metadata */
    public int minHeight;

    /* renamed from: h, reason: from kotlin metadata */
    public float angle;

    public TextBoxTransformEvent(@NotNull TouchPoint movePoint, @NotNull TouchPoint lastPoint) {
        Intrinsics.checkNotNullParameter(movePoint, "movePoint");
        Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
        this.movePoint = movePoint;
        this.lastPoint = lastPoint;
    }

    public final float getAngle() {
        return this.angle;
    }

    @NotNull
    public final TouchPoint getLastPoint() {
        return this.lastPoint;
    }

    public final int getMinHeight() {
        return this.minHeight;
    }

    public final int getMinWidth() {
        return this.minWidth;
    }

    @NotNull
    public final TouchPoint getMovePoint() {
        return this.movePoint;
    }

    public final int getTextHeight() {
        return this.textHeight;
    }

    public final int getTextWidth() {
        return this.textWidth;
    }

    @Nullable
    public final TransformType getTransformType() {
        return this.transformType;
    }

    /* renamed from: setAngle, reason: collision with other method in class */
    public final void m72404setAngle(float f) {
        this.angle = f;
    }

    public final void setLastPoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.lastPoint = touchPoint;
    }

    /* renamed from: setMinHeight, reason: collision with other method in class */
    public final void m72405setMinHeight(int i) {
        this.minHeight = i;
    }

    /* renamed from: setMinWidth, reason: collision with other method in class */
    public final void m72406setMinWidth(int i) {
        this.minWidth = i;
    }

    public final void setMovePoint(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "<set-?>");
        this.movePoint = touchPoint;
    }

    /* renamed from: setTextHeight, reason: collision with other method in class */
    public final void m72407setTextHeight(int i) {
        this.textHeight = i;
    }

    /* renamed from: setTextWidth, reason: collision with other method in class */
    public final void m72408setTextWidth(int i) {
        this.textWidth = i;
    }

    /* renamed from: setTransformType, reason: collision with other method in class */
    public final void m72409setTransformType(@Nullable TransformType transformType) {
        this.transformType = transformType;
    }

    @NotNull
    public final TextBoxTransformEvent setAngle(float angle) {
        this.angle = angle;
        return this;
    }

    @NotNull
    public final TextBoxTransformEvent setMinHeight(int minHeight) {
        this.minHeight = minHeight;
        return this;
    }

    @NotNull
    public final TextBoxTransformEvent setMinWidth(int minWidth) {
        this.minWidth = minWidth;
        return this;
    }

    @NotNull
    public final TextBoxTransformEvent setTextHeight(int textHeight) {
        this.textHeight = textHeight;
        return this;
    }

    @NotNull
    public final TextBoxTransformEvent setTextWidth(int textWidth) {
        this.textWidth = textWidth;
        return this;
    }

    @NotNull
    public final TextBoxTransformEvent setTransformType(@Nullable TransformType transformType) {
        this.transformType = transformType;
        return this;
    }
}
