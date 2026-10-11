package com.miui.penengine.estimate;

import android.view.MotionEvent;
import androidx.annotation.NonNull;
import com.miui.penengine.p011a.C6982b;
import com.miui.penengine.p013c.C6986c;
import com.miui.penengine.p014d.C6988b;
import com.miui.penengine.p014d.C6991e;
import com.miui.penengine.p014d.InterfaceC6987a;

/* loaded from: classes7.dex */
public class MiuiMotionEventInfo {
    public static final float DEFAULT_ORIENTATION = 0.7853982f;
    public static final float DEFAULT_PRESSURE = 1.0f;
    public static final float DEFAULT_TILT = 0.5f;
    private InterfaceC6987a miuiMotionEvent;

    public MiuiMotionEventInfo(float f, float f2, long j) {
        this(f, f2, j, 2);
    }

    public static MiuiMotionEventInfo createByMotionEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 2 && action != 0 && action != 1) {
            return null;
        }
        boolean z = motionEvent.getToolType(0) == 1;
        return new MiuiMotionEventInfo(motionEvent.getX(), motionEvent.getY(), motionEvent.getEventTime(), z ? 1.0f : motionEvent.getPressure(), z ? 0.5f : motionEvent.getAxisValue(25), z ? 0.7853982f : motionEvent.getOrientation(), motionEvent.getAction(), false);
    }

    public float distanceTo(MiuiMotionEventInfo miuiMotionEventInfo) {
        if (miuiMotionEventInfo == null) {
            return 0.0f;
        }
        return (float) C6986c.m31272a(miuiMotionEventInfo.getX(), miuiMotionEventInfo.getY(), getX(), getY());
    }

    public Object getMiuiMotionEvent() {
        if (C6982b.m31249h()) {
            return this.miuiMotionEvent.mo31285e();
        }
        return null;
    }

    public int getMotionAction() {
        return this.miuiMotionEvent.mo31287g();
    }

    public float getOrientation() {
        return this.miuiMotionEvent.mo31283c();
    }

    public float getPressure() {
        return this.miuiMotionEvent.mo31282b();
    }

    public float getTilt() {
        return this.miuiMotionEvent.mo31288h();
    }

    public long getTime() {
        return this.miuiMotionEvent.mo31289i();
    }

    public float getX() {
        return this.miuiMotionEvent.mo31281a();
    }

    public float getY() {
        return this.miuiMotionEvent.mo31286f();
    }

    public boolean isHistoryPoint() {
        return this.miuiMotionEvent.mo31284d();
    }

    public float timeDifferenceTo(MiuiMotionEventInfo miuiMotionEventInfo) {
        if (miuiMotionEventInfo == null) {
            return 0.0f;
        }
        return (float) Math.abs(miuiMotionEventInfo.getTime() - getTime());
    }

    @NonNull
    public String toString() {
        float x = getX();
        float y = getY();
        long time = getTime();
        float tilt = getTilt();
        return "MiuiMotionEventInfo{x=" + x + ", y=" + y + ", time=" + time + ", pressure=" + getPressure() + ", tilt=" + tilt + ", motionAction=" + getMotionAction() + ", historyPoint=" + isHistoryPoint() + '}';
    }

    public MiuiMotionEventInfo(float f, float f2, long j, float f3, float f4, float f5, int i, boolean z) {
        this.miuiMotionEvent = C6982b.m31249h() ? new C6991e(f, f2, j, f3, f4, f5, i, z) : new C6988b(f, f2, j, f3, f4, f5, i, z);
    }

    public static MiuiMotionEventInfo createByMotionEvent(MotionEvent motionEvent, int i) {
        if (motionEvent.getAction() != 2) {
            return null;
        }
        boolean z = motionEvent.getToolType(0) == 1;
        return new MiuiMotionEventInfo(motionEvent.getHistoricalX(i), motionEvent.getHistoricalY(i), motionEvent.getHistoricalEventTime(i), z ? 1.0f : motionEvent.getHistoricalPressure(i), z ? 0.5f : motionEvent.getHistoricalAxisValue(25, i), z ? 0.7853982f : motionEvent.getHistoricalOrientation(i), 2, true);
    }

    public MiuiMotionEventInfo(float f, float f2, long j, int i) {
        this(f, f2, j, 1.0f, 0.5f, 0.7853982f, i, false);
    }

    public MiuiMotionEventInfo(Object obj) {
        if (C6982b.m31249h()) {
            this.miuiMotionEvent = new C6991e(obj);
        }
    }
}
