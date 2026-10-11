package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.C0503R;

/* loaded from: classes3.dex */
public class MockView extends View {

    /* renamed from: e */
    public Paint f4165e;

    /* renamed from: f */
    public Paint f4166f;

    /* renamed from: g */
    public Paint f4167g;

    /* renamed from: h */
    public boolean f4168h;

    /* renamed from: i */
    public boolean f4169i;

    /* renamed from: j */
    public Rect f4170j;

    /* renamed from: k */
    public int f4171k;

    /* renamed from: l */
    public int f4172l;

    /* renamed from: m */
    public int f4173m;
    protected String mText;

    /* renamed from: n */
    public int f4174n;

    public MockView(Context context) {
        super(context);
        this.f4165e = new Paint();
        this.f4166f = new Paint();
        this.f4167g = new Paint();
        this.f4168h = true;
        this.f4169i = true;
        this.mText = null;
        this.f4170j = new Rect();
        this.f4171k = Color.argb(255, 0, 0, 0);
        this.f4172l = Color.argb(255, 200, 200, 200);
        this.f4173m = Color.argb(255, 50, 50, 50);
        this.f4174n = 4;
        m2108a(context, null);
    }

    /* renamed from: a */
    public final void m2108a(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.MockView_mock_label) {
                    this.mText = obtainStyledAttributes.getString(index);
                } else if (index == C0503R.styleable.MockView_mock_showDiagonals) {
                    this.f4168h = obtainStyledAttributes.getBoolean(index, this.f4168h);
                } else if (index == C0503R.styleable.MockView_mock_diagonalsColor) {
                    this.f4171k = obtainStyledAttributes.getColor(index, this.f4171k);
                } else if (index == C0503R.styleable.MockView_mock_labelBackgroundColor) {
                    this.f4173m = obtainStyledAttributes.getColor(index, this.f4173m);
                } else if (index == C0503R.styleable.MockView_mock_labelColor) {
                    this.f4172l = obtainStyledAttributes.getColor(index, this.f4172l);
                } else if (index == C0503R.styleable.MockView_mock_showLabel) {
                    this.f4169i = obtainStyledAttributes.getBoolean(index, this.f4169i);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.mText == null) {
            try {
                this.mText = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        this.f4165e.setColor(this.f4171k);
        this.f4165e.setAntiAlias(true);
        this.f4166f.setColor(this.f4172l);
        this.f4166f.setAntiAlias(true);
        this.f4167g.setColor(this.f4173m);
        this.f4174n = Math.round(this.f4174n * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f4168h) {
            width--;
            height--;
            float f = width;
            float f2 = height;
            canvas.drawLine(0.0f, 0.0f, f, f2, this.f4165e);
            canvas.drawLine(0.0f, f2, f, 0.0f, this.f4165e);
            canvas.drawLine(0.0f, 0.0f, f, 0.0f, this.f4165e);
            canvas.drawLine(f, 0.0f, f, f2, this.f4165e);
            canvas.drawLine(f, f2, 0.0f, f2, this.f4165e);
            canvas.drawLine(0.0f, f2, 0.0f, 0.0f, this.f4165e);
        }
        String str = this.mText;
        if (str == null || !this.f4169i) {
            return;
        }
        this.f4166f.getTextBounds(str, 0, str.length(), this.f4170j);
        float width2 = (width - this.f4170j.width()) / 2.0f;
        float height2 = ((height - this.f4170j.height()) / 2.0f) + this.f4170j.height();
        this.f4170j.offset((int) width2, (int) height2);
        Rect rect = this.f4170j;
        int i = rect.left;
        int i2 = this.f4174n;
        rect.set(i - i2, rect.top - i2, rect.right + i2, rect.bottom + i2);
        canvas.drawRect(this.f4170j, this.f4167g);
        canvas.drawText(this.mText, width2, height2, this.f4166f);
    }

    public MockView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f4165e = new Paint();
        this.f4166f = new Paint();
        this.f4167g = new Paint();
        this.f4168h = true;
        this.f4169i = true;
        this.mText = null;
        this.f4170j = new Rect();
        this.f4171k = Color.argb(255, 0, 0, 0);
        this.f4172l = Color.argb(255, 200, 200, 200);
        this.f4173m = Color.argb(255, 50, 50, 50);
        this.f4174n = 4;
        m2108a(context, attrs);
    }

    public MockView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4165e = new Paint();
        this.f4166f = new Paint();
        this.f4167g = new Paint();
        this.f4168h = true;
        this.f4169i = true;
        this.mText = null;
        this.f4170j = new Rect();
        this.f4171k = Color.argb(255, 0, 0, 0);
        this.f4172l = Color.argb(255, 200, 200, 200);
        this.f4173m = Color.argb(255, 50, 50, 50);
        this.f4174n = 4;
        m2108a(context, attrs);
    }
}
