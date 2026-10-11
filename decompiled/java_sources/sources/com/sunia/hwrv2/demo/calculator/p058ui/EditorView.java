package com.sunia.hwrv2.demo.calculator.p058ui;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.widget.FrameLayout;
import com.sunia.HTREnginev2.C14270q;
import com.sunia.HTREnginev2.InterfaceC13547c1;
import com.sunia.calculatorv2.ink.editor.IEditor;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import java.util.EnumSet;

/* loaded from: classes10.dex */
public class EditorView extends FrameLayout implements InterfaceC13547c1 {
    private BackgroundView backgroundView;
    private boolean canScale;
    private CaptureView captureView;
    private C14270q editor;
    private ScaleGestureDetector mScaleDetector;
    private final ScaleGestureDetector.OnScaleGestureListener mScaleGestureListener;
    private ModelView modelView;
    private final long timeOrigin;

    /* loaded from: classes10.dex */
    public class BackgroundView extends View {
        public BackgroundView(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (EditorView.this.editor != null) {
                EditorView.this.editor.m56523a(canvas);
            }
        }
    }

    /* loaded from: classes10.dex */
    public class CaptureView extends View {
        public CaptureView(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            if (EditorView.this.editor != null) {
                EditorView.this.editor.m56530b(canvas);
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int i = 0;
            if (EditorView.this.editor == null) {
                return false;
            }
            int toolType = motionEvent.getToolType(0);
            int pointerId = motionEvent.getPointerId(0);
            boolean z = true;
            if (EditorView.this.canScale) {
                EditorView.this.mScaleDetector.onTouchEvent(motionEvent);
                if (EditorView.this.mScaleDetector.isInProgress()) {
                    EditorView.this.editor.m56522a(pointerId);
                    return true;
                }
            }
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            float pressure = motionEvent.getPressure();
            int i2 = 25;
            float axisValue = motionEvent.getAxisValue(25);
            float orientation = motionEvent.getOrientation();
            long eventTime = motionEvent.getEventTime() + EditorView.this.timeOrigin;
            int action = motionEvent.getAction();
            if (action == 0) {
                EditorView.this.editor.m56535c(x, y, eventTime, pressure, axisValue, orientation, toolType, pointerId);
                return true;
            }
            if (action == 1) {
                EditorView.this.editor.m56529b(x, y, eventTime, pressure, axisValue, orientation, toolType, pointerId);
                return true;
            }
            if (action != 2) {
                if (action == 3) {
                    EditorView.this.editor.m56522a(pointerId);
                }
                return true;
            }
            int historySize = motionEvent.getHistorySize();
            while (i < historySize) {
                EditorView.this.editor.m56521a(motionEvent.getHistoricalX(i), motionEvent.getHistoricalY(i), motionEvent.getHistoricalEventTime(i) + EditorView.this.timeOrigin, motionEvent.getHistoricalPressure(i), motionEvent.getHistoricalAxisValue(i2, i), motionEvent.getHistoricalOrientation(i), toolType, pointerId, true);
                i++;
                historySize = historySize;
                i2 = i2;
                z = z;
            }
            boolean z2 = z;
            EditorView.this.editor.m56521a(x, y, eventTime, pressure, axisValue, orientation, toolType, pointerId, false);
            return z2;
        }
    }

    /* loaded from: classes10.dex */
    public class ModelView extends View {
        public ModelView(Context context) {
            super(context);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (EditorView.this.editor != null) {
                EditorView.this.editor.m56536c(canvas);
            }
        }
    }

    public EditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.canScale = false;
        ScaleGestureDetector.SimpleOnScaleGestureListener simpleOnScaleGestureListener = new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: com.sunia.hwrv2.demo.calculator.ui.EditorView.1
            private float lastFocusX = Float.NaN;
            private float lastFocusY = Float.NaN;

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                float f;
                float f2;
                float focusX = scaleGestureDetector.getFocusX();
                float focusY = scaleGestureDetector.getFocusY();
                float scaleFactor = scaleGestureDetector.getScaleFactor();
                if (scaleFactor >= 0.2d && scaleFactor <= 5.0f) {
                    float f3 = focusX - this.lastFocusX;
                    float f4 = focusY - this.lastFocusY;
                    if (Float.isNaN(f3)) {
                        f = 0.0f;
                        f2 = 0.0f;
                    } else {
                        f = f3;
                        f2 = f4;
                    }
                    EditorView.this.editor.m56520a(f, f2, scaleFactor, focusX, focusY);
                }
                this.lastFocusX = focusX;
                this.lastFocusY = focusY;
                return true;
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
                if (!scaleGestureDetector.isInProgress()) {
                    return true;
                }
                this.lastFocusX = scaleGestureDetector.getFocusX();
                this.lastFocusY = scaleGestureDetector.getFocusY();
                return true;
            }

            @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
            public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
                this.lastFocusY = Float.NaN;
                this.lastFocusX = Float.NaN;
            }
        };
        this.mScaleGestureListener = simpleOnScaleGestureListener;
        ScaleGestureDetector scaleGestureDetector = new ScaleGestureDetector(context, simpleOnScaleGestureListener);
        this.mScaleDetector = scaleGestureDetector;
        scaleGestureDetector.setQuickScaleEnabled(false);
        this.mScaleDetector.setStylusScaleEnabled(false);
        BackgroundView backgroundView = new BackgroundView(context);
        this.backgroundView = backgroundView;
        addView(backgroundView);
        ModelView modelView = new ModelView(context);
        this.modelView = modelView;
        addView(modelView);
        CaptureView captureView = new CaptureView(context);
        this.captureView = captureView;
        addView(captureView);
        this.timeOrigin = System.currentTimeMillis() - SystemClock.uptimeMillis();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13547c1
    public float getDpiX() {
        return Resources.getSystem().getDisplayMetrics().xdpi;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13547c1
    public float getDpiY() {
        return Resources.getSystem().getDisplayMetrics().ydpi;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13547c1
    public void invalidate(EnumSet<InterfaceC13547c1.a> enumSet) {
        if (enumSet.contains(InterfaceC13547c1.a.BACKGROUND)) {
            this.backgroundView.postInvalidate();
        }
        if (enumSet.contains(InterfaceC13547c1.a.MODEL)) {
            this.modelView.postInvalidate();
        }
        if (enumSet.contains(InterfaceC13547c1.a.CAPTURE)) {
            this.captureView.postInvalidateOnAnimation();
        }
    }

    public boolean isCanScale() {
        return this.canScale;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        invalidate(InterfaceC13547c1.f66341d);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        C14270q c14270q = this.editor;
        if (c14270q != null) {
            c14270q.m56526a(new BoundBox(0.0f, i, 0.0f, i2));
        }
    }

    public void setCanScale(boolean z) {
        this.canScale = z;
    }

    public void setEditor(IEditor iEditor) {
        C14270q c14270q = (C14270q) iEditor;
        this.editor = c14270q;
        c14270q.m56526a(new BoundBox(0.0f, getWidth(), 0.0f, getHeight()));
        this.editor.setRenderTarget(this);
        invalidate(InterfaceC13547c1.f66341d);
    }
}
