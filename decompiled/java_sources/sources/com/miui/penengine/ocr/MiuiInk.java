package com.miui.penengine.ocr;

import android.graphics.PointF;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes7.dex */
public class MiuiInk {
    private final List<List<PointF>> strokes;

    /* loaded from: classes7.dex */
    public static class Builder {
        private final List<List<PointF>> strokes = new LinkedList();

        public Builder addStroke(Stroke stroke) {
            this.strokes.add(stroke.m31451b());
            return this;
        }

        public MiuiInk build() {
            return new MiuiInk(new ArrayList(this.strokes));
        }
    }

    /* loaded from: classes7.dex */
    public static class Stroke {

        /* renamed from: a */
        public final List<PointF> f39836a;

        /* loaded from: classes7.dex */
        public static class Builder {
            private final List<PointF> points = new LinkedList();

            public Builder addPoint(MotionEvent motionEvent) {
                this.points.add(new PointF(motionEvent.getX(), motionEvent.getY()));
                return this;
            }

            public Stroke build() {
                return new Stroke(new ArrayList(this.points));
            }
        }

        public Stroke(List<PointF> list) {
            this.f39836a = list;
        }

        /* renamed from: a */
        public static Builder m31450a() {
            return new Builder();
        }

        /* renamed from: b */
        public List<PointF> m31451b() {
            return this.f39836a;
        }
    }

    private MiuiInk(List<List<PointF>> list) {
        this.strokes = list;
    }

    public static Builder builder() {
        return new Builder();
    }

    public List<List<PointF>> getStrokes() {
        return this.strokes;
    }

    public int getStrokesCount() {
        return this.strokes.size();
    }
}
