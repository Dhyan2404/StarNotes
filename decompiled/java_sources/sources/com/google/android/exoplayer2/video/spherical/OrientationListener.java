package com.google.android.exoplayer2.video.spherical;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.opengl.Matrix;
import android.view.Display;
import androidx.annotation.BinderThread;
import com.sunia.HTREnginev2.pvg;

/* loaded from: classes5.dex */
public final class OrientationListener implements SensorEventListener {

    /* renamed from: a */
    public final float[] f28660a = new float[16];

    /* renamed from: b */
    public final float[] f28661b = new float[16];

    /* renamed from: c */
    public final float[] f28662c = new float[16];

    /* renamed from: d */
    public final float[] f28663d = new float[3];

    /* renamed from: e */
    public final Display f28664e;

    /* renamed from: f */
    public final Listener[] f28665f;

    /* renamed from: g */
    public boolean f28666g;

    /* loaded from: classes5.dex */
    public interface Listener {
        void onOrientationChange(float[] fArr, float f);
    }

    public OrientationListener(Display display, Listener... listenerArr) {
        this.f28664e = display;
        this.f28665f = listenerArr;
    }

    /* renamed from: e */
    public static void m21664e(float[] fArr) {
        Matrix.rotateM(fArr, 0, 90.0f, 1.0f, 0.0f, 0.0f);
    }

    /* renamed from: a */
    public final float m21665a(float[] fArr) {
        SensorManager.remapCoordinateSystem(fArr, 1, 131, this.f28661b);
        SensorManager.getOrientation(this.f28661b, this.f28663d);
        return this.f28663d[2];
    }

    /* renamed from: b */
    public final void m21666b(float[] fArr, float f) {
        for (Listener listener : this.f28665f) {
            listener.onOrientationChange(fArr, f);
        }
    }

    /* renamed from: c */
    public final void m21667c(float[] fArr) {
        if (!this.f28666g) {
            pvg.m56387a(this.f28662c, fArr);
            this.f28666g = true;
        }
        float[] fArr2 = this.f28661b;
        System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
        Matrix.multiplyMM(fArr, 0, this.f28661b, 0, this.f28662c, 0);
    }

    /* renamed from: d */
    public final void m21668d(float[] fArr, int i) {
        if (i != 0) {
            int i2 = 129;
            int i3 = 1;
            if (i == 1) {
                i3 = 129;
                i2 = 2;
            } else if (i == 2) {
                i3 = 130;
            } else {
                if (i != 3) {
                    throw new IllegalStateException();
                }
                i2 = 130;
            }
            float[] fArr2 = this.f28661b;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            SensorManager.remapCoordinateSystem(this.f28661b, i2, i3, fArr);
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    @BinderThread
    public void onSensorChanged(SensorEvent sensorEvent) {
        SensorManager.getRotationMatrixFromVector(this.f28660a, sensorEvent.values);
        m21668d(this.f28660a, this.f28664e.getRotation());
        float m21665a = m21665a(this.f28660a);
        m21664e(this.f28660a);
        m21667c(this.f28660a);
        m21666b(this.f28660a, m21665a);
    }
}
