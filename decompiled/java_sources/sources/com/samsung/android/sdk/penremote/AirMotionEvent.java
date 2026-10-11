package com.samsung.android.sdk.penremote;

/* loaded from: classes9.dex */
public class AirMotionEvent {

    /* renamed from: d */
    public static final int f63291d = 0;

    /* renamed from: e */
    public static final int f63292e = 1;

    /* renamed from: a */
    public float f63293a;

    /* renamed from: b */
    public float f63294b;

    /* renamed from: c */
    public long f63295c;

    public AirMotionEvent(SpenEvent spenEvent) {
        this.f63293a = spenEvent.getValue(0);
        this.f63294b = spenEvent.getValue(1);
        this.f63295c = spenEvent.getTimeStamp();
    }

    public float getDeltaX() {
        return this.f63293a;
    }

    public float getDeltaY() {
        return this.f63294b;
    }

    public long getTimeStamp() {
        return this.f63295c;
    }
}
