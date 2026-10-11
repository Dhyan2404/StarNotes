package com.sunia.HTREnginev2.sdk;

import android.view.MotionEvent;

/* loaded from: classes10.dex */
public class RecognizePoint implements Cloneable {
    public static final int ACTION_DOWN = 0;
    public static final int ACTION_MOVE = 1;
    public static final int ACTION_UP = 2;
    public int action;

    /* renamed from: id */
    public long f84036id;

    @Deprecated
    public float offsetX;

    @Deprecated
    public float offsetY;

    /* renamed from: p */
    public float f84037p;

    /* renamed from: t */
    public long f84038t;

    /* renamed from: x */
    public float f84039x;

    /* renamed from: y */
    public float f84040y;

    public RecognizePoint() {
        this(0.0f, 0.0f);
    }

    public static int androidAction2HWRAction(int i) {
        if (i == 0) {
            return 0;
        }
        return i == 1 ? 2 : 1;
    }

    public static RecognizePoint motionEventToRecognizePoint(MotionEvent motionEvent) {
        RecognizePoint recognizePoint = new RecognizePoint();
        recognizePoint.f84039x = motionEvent.getX();
        recognizePoint.f84040y = motionEvent.getY();
        recognizePoint.f84037p = motionEvent.getPressure();
        recognizePoint.f84038t = motionEvent.getEventTime();
        recognizePoint.action = androidAction2HWRAction(motionEvent.getAction());
        return recognizePoint;
    }

    public RecognizePoint down() {
        this.action = 0;
        return this;
    }

    public RecognizePoint move() {
        this.action = 1;
        return this;
    }

    @Deprecated
    public void offset(float f, float f2) {
        this.f84039x += f;
        this.f84040y += f2;
    }

    public void setOffset(float f, float f2) {
        this.offsetX += f;
        this.offsetY += f2;
    }

    public String toString() {
        return "RecognizePoint{ACTION_DOWN=0, ACTION_MOVE=1, ACTION_UP=2, x=" + this.f84039x + ", y=" + this.f84040y + ", t=" + this.f84038t + ", action=" + this.action + ", id=" + this.f84036id + '}';
    }

    /* renamed from: up */
    public RecognizePoint m57152up() {
        this.action = 2;
        return this;
    }

    public RecognizePoint(float f, float f2) {
        this(f, f2, 0L);
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public RecognizePoint m72429clone() {
        try {
            RecognizePoint recognizePoint = (RecognizePoint) super.clone();
            recognizePoint.f84039x = this.f84039x;
            recognizePoint.f84040y = this.f84040y;
            recognizePoint.f84038t = this.f84038t;
            recognizePoint.action = this.action;
            recognizePoint.f84036id = this.f84036id;
            return recognizePoint;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public RecognizePoint(float f, float f2, long j) {
        this(f, f2, j, 2);
    }

    public RecognizePoint(float f, float f2, long j, int i) {
        this(f, f2, 0.0f, j, i);
    }

    public RecognizePoint(float f, float f2, float f3, long j, int i) {
        this.f84039x = f;
        this.f84040y = f2;
        this.f84038t = j;
        this.f84037p = f3;
        this.action = androidAction2HWRAction(i);
    }
}
