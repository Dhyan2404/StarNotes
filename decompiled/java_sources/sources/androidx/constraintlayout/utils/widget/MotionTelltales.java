package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.ViewParent;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0503R;

/* loaded from: classes3.dex */
public class MotionTelltales extends MockView {

    /* renamed from: v */
    public static final String f4236v = "MotionTelltales";

    /* renamed from: o */
    public Paint f4237o;

    /* renamed from: p */
    public MotionLayout f4238p;

    /* renamed from: q */
    public float[] f4239q;

    /* renamed from: r */
    public Matrix f4240r;

    /* renamed from: s */
    public int f4241s;

    /* renamed from: t */
    public int f4242t;

    /* renamed from: u */
    public float f4243u;

    public MotionTelltales(Context context) {
        super(context);
        this.f4237o = new Paint();
        this.f4239q = new float[2];
        this.f4240r = new Matrix();
        this.f4241s = 0;
        this.f4242t = -65281;
        this.f4243u = 0.25f;
        m2123a(context, null);
    }

    /* renamed from: a */
    private void m2123a(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.MotionTelltales);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.MotionTelltales_telltales_tailColor) {
                    this.f4242t = obtainStyledAttributes.getColor(index, this.f4242t);
                } else if (index == C0503R.styleable.MotionTelltales_telltales_velocityMode) {
                    this.f4241s = obtainStyledAttributes.getInt(index, this.f4241s);
                } else if (index == C0503R.styleable.MotionTelltales_telltales_tailScale) {
                    this.f4243u = obtainStyledAttributes.getFloat(index, this.f4243u);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f4237o.setColor(this.f4242t);
        this.f4237o.setStrokeWidth(5.0f);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.constraintlayout.utils.widget.MockView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getMatrix().invert(this.f4240r);
        if (this.f4238p == null) {
            ViewParent parent = getParent();
            if (parent instanceof MotionLayout) {
                this.f4238p = (MotionLayout) parent;
                return;
            }
            return;
        }
        int width = getWidth();
        int height = getHeight();
        float[] fArr = {0.1f, 0.25f, 0.5f, 0.75f, 0.9f};
        for (int i = 0; i < 5; i++) {
            float f = fArr[i];
            for (int i2 = 0; i2 < 5; i2++) {
                float f2 = fArr[i2];
                this.f4238p.getViewVelocity(this, f2, f, this.f4239q, this.f4241s);
                this.f4240r.mapVectors(this.f4239q);
                float f3 = width * f2;
                float f4 = height * f;
                float[] fArr2 = this.f4239q;
                float f5 = fArr2[0];
                float f6 = this.f4243u;
                float f7 = f4 - (fArr2[1] * f6);
                this.f4240r.mapVectors(fArr2);
                canvas.drawLine(f3, f4, f3 - (f5 * f6), f7, this.f4237o);
            }
        }
    }

    @Override // android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        postInvalidate();
    }

    public void setText(CharSequence text) {
        this.mText = text.toString();
        requestLayout();
    }

    public MotionTelltales(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f4237o = new Paint();
        this.f4239q = new float[2];
        this.f4240r = new Matrix();
        this.f4241s = 0;
        this.f4242t = -65281;
        this.f4243u = 0.25f;
        m2123a(context, attrs);
    }

    public MotionTelltales(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4237o = new Paint();
        this.f4239q = new float[2];
        this.f4240r = new Matrix();
        this.f4241s = 0;
        this.f4242t = -65281;
        this.f4243u = 0.25f;
        m2123a(context, attrs);
    }
}
