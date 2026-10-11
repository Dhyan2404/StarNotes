package com.samsung.android.sdk.penremote;

/* loaded from: classes9.dex */
public class ButtonEvent {
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_UP = 1;

    /* renamed from: c */
    public static final int f63296c = 0;

    /* renamed from: a */
    public int f63297a;

    /* renamed from: b */
    public long f63298b;

    public ButtonEvent(SpenEvent spenEvent) {
        this.f63297a = (int) spenEvent.getValue(0);
        this.f63298b = spenEvent.getTimeStamp();
    }

    public int getAction() {
        return this.f63297a;
    }

    public long getTimeStamp() {
        return this.f63298b;
    }
}
