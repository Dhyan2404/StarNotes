package com.onyx.android.sdk.universal.editor.events.app;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u000e\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/ScaleReset;", "", "", "a", "F", "getScale", "()F", "scale", "b", "getCenterXOffset", "centerXOffset", "c", "getCenterYOffset", "centerYOffset", Constants.CONSTRUCTOR_NAME, "(FFF)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScaleReset {

    /* renamed from: a, reason: from kotlin metadata */
    public final float scale;

    /* renamed from: b, reason: from kotlin metadata */
    public final float centerXOffset;

    /* renamed from: c, reason: from kotlin metadata */
    public final float centerYOffset;

    public ScaleReset(float f, float f2, float f3) {
        this.scale = f;
        this.centerXOffset = f2;
        this.centerYOffset = f3;
    }

    public final float getCenterXOffset() {
        return this.centerXOffset;
    }

    public final float getCenterYOffset() {
        return this.centerYOffset;
    }

    public final float getScale() {
        return this.scale;
    }

    public /* synthetic */ ScaleReset(float f, float f2, float f3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, (i & 2) != 0 ? 0.0f : f2, (i & 4) != 0 ? 0.0f : f3);
    }
}
