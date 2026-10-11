package com.miui.penengine.p015e;

import android.view.MotionEvent;
import androidx.core.view.InputDeviceCompat;

/* renamed from: com.miui.penengine.e.h */
/* loaded from: classes7.dex */
public class C6999h {

    /* renamed from: c */
    public static final String f39688c = "h";

    /* renamed from: a */
    public int f39689a = 0;

    /* renamed from: b */
    public C6995d f39690b = null;

    /* renamed from: a */
    public boolean m31343a(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & InputDeviceCompat.SOURCE_JOYSTICK) != 16777232 || motionEvent.getAction() != 2) {
            return false;
        }
        int axisValue = (int) (motionEvent.getAxisValue(17) * 360.0f);
        this.f39689a = axisValue;
        C6995d c6995d = this.f39690b;
        if (c6995d == null) {
            return true;
        }
        c6995d.m31326a(axisValue);
        return true;
    }

    /* renamed from: a */
    public int m31341a() {
        return this.f39689a;
    }

    /* renamed from: a */
    public void m31342a(C6995d c6995d) {
        this.f39690b = c6995d;
    }
}
