package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatButton;
import androidx.constraintlayout.widget.C0503R;

/* loaded from: classes3.dex */
public class MotionButton extends AppCompatButton {

    /* renamed from: h */
    public float f4175h;

    /* renamed from: i */
    public float f4176i;

    /* renamed from: j */
    public Path f4177j;

    /* renamed from: k */
    public ViewOutlineProvider f4178k;

    /* renamed from: l */
    public RectF f4179l;

    /* renamed from: androidx.constraintlayout.utils.widget.MotionButton$a */
    /* loaded from: classes3.dex */
    public class C0490a extends ViewOutlineProvider {
        public C0490a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionButton.this.getWidth(), MotionButton.this.getHeight(), (Math.min(r3, r4) * MotionButton.this.f4175h) / 2.0f);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.MotionButton$b */
    /* loaded from: classes3.dex */
    public class C0491b extends ViewOutlineProvider {
        public C0491b() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionButton.this.getWidth(), MotionButton.this.getHeight(), MotionButton.this.f4176i);
        }
    }

    public MotionButton(Context context) {
        super(context);
        this.f4175h = 0.0f;
        this.f4176i = Float.NaN;
        m2111c(context, null);
    }

    /* renamed from: c */
    public final void m2111c(Context context, AttributeSet attrs) {
        setPadding(0, 0, 0, 0);
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ImageFilterView_round) {
                    setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == C0503R.styleable.ImageFilterView_roundPercent) {
                    setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    public float getRound() {
        return this.f4176i;
    }

    public float getRoundPercent() {
        return this.f4175h;
    }

    @RequiresApi(21)
    public void setRound(float round) {
        if (Float.isNaN(round)) {
            this.f4176i = round;
            float f = this.f4175h;
            this.f4175h = -1.0f;
            setRoundPercent(f);
            return;
        }
        boolean z = this.f4176i != round;
        this.f4176i = round;
        if (round != 0.0f) {
            if (this.f4177j == null) {
                this.f4177j = new Path();
            }
            if (this.f4179l == null) {
                this.f4179l = new RectF();
            }
            if (this.f4178k == null) {
                C0491b c0491b = new C0491b();
                this.f4178k = c0491b;
                setOutlineProvider(c0491b);
            }
            setClipToOutline(true);
            this.f4179l.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f4177j.reset();
            Path path = this.f4177j;
            RectF rectF = this.f4179l;
            float f2 = this.f4176i;
            path.addRoundRect(rectF, f2, f2, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    @RequiresApi(21)
    public void setRoundPercent(float round) {
        boolean z = this.f4175h != round;
        this.f4175h = round;
        if (round != 0.0f) {
            if (this.f4177j == null) {
                this.f4177j = new Path();
            }
            if (this.f4179l == null) {
                this.f4179l = new RectF();
            }
            if (this.f4178k == null) {
                C0490a c0490a = new C0490a();
                this.f4178k = c0490a;
                setOutlineProvider(c0490a);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f4175h) / 2.0f;
            this.f4179l.set(0.0f, 0.0f, width, height);
            this.f4177j.reset();
            this.f4177j.addRoundRect(this.f4179l, min, min, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z) {
            invalidateOutline();
        }
    }

    public MotionButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f4175h = 0.0f;
        this.f4176i = Float.NaN;
        m2111c(context, attrs);
    }

    public MotionButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4175h = 0.0f;
        this.f4176i = Float.NaN;
        m2111c(context, attrs);
    }
}
