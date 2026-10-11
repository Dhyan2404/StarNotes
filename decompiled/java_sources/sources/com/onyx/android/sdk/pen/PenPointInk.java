package com.onyx.android.sdk.pen;

import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u0017\u0010\r\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/pen/PenPointInk;", "", "", "a", "F", "getX", "()F", "x", "b", "getY", "y", "c", "getSize", "size", Constants.CONSTRUCTOR_NAME, "(FFF)V", "sdk-pen_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PenPointInk {

    /* renamed from: a, reason: from kotlin metadata */
    public final float x;

    /* renamed from: b, reason: from kotlin metadata */
    public final float y;

    /* renamed from: c, reason: from kotlin metadata */
    public final float size;

    public PenPointInk(float f, float f2, float f3) {
        this.x = f;
        this.y = f2;
        this.size = f3;
    }

    public final float getSize() {
        return this.size;
    }

    public final float getX() {
        return this.x;
    }

    public final float getY() {
        return this.y;
    }
}
