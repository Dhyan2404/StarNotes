package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.BinderThread;
import com.google.android.exoplayer2.video.spherical.OrientationListener;

/* loaded from: classes5.dex */
public final class TouchTracker extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener, OrientationListener.Listener {

    /* renamed from: k */
    public static final float f28705k = 45.0f;

    /* renamed from: g */
    public final Listener f28708g;

    /* renamed from: h */
    public final float f28709h;

    /* renamed from: i */
    public final GestureDetector f28710i;

    /* renamed from: e */
    public final PointF f28706e = new PointF();

    /* renamed from: f */
    public final PointF f28707f = new PointF();

    /* renamed from: j */
    public volatile float f28711j = 3.1415927f;

    /* loaded from: classes5.dex */
    public interface Listener {
        void onScrollChange(PointF pointF);

        default boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }
    }

    public TouchTracker(Context context, Listener listener, float f) {
        this.f28708g = listener;
        this.f28709h = f;
        this.f28710i = new GestureDetector(context, this);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.f28706e.set(motionEvent.getX(), motionEvent.getY());
        return true;
    }

    @Override // com.google.android.exoplayer2.video.spherical.OrientationListener.Listener
    @BinderThread
    public void onOrientationChange(float[] fArr, float f) {
        this.f28711j = -f;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        float x = (motionEvent2.getX() - this.f28706e.x) / this.f28709h;
        float y = motionEvent2.getY();
        PointF pointF = this.f28706e;
        float f3 = (y - pointF.y) / this.f28709h;
        pointF.set(motionEvent2.getX(), motionEvent2.getY());
        double d = this.f28711j;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        PointF pointF2 = this.f28707f;
        pointF2.x -= (cos * x) - (sin * f3);
        float f4 = pointF2.y + (sin * x) + (cos * f3);
        pointF2.y = f4;
        pointF2.y = Math.max(-45.0f, Math.min(45.0f, f4));
        this.f28708g.onScrollChange(this.f28707f);
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.f28708g.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.f28710i.onTouchEvent(motionEvent);
    }
}
