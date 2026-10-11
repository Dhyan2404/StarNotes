package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes3.dex */
public class Placeholder extends View {

    /* renamed from: e */
    public int f4664e;

    /* renamed from: f */
    public View f4665f;

    /* renamed from: g */
    public int f4666g;

    public Placeholder(Context context) {
        super(context);
        this.f4664e = -1;
        this.f4665f = null;
        this.f4666g = 4;
        m2230a(null);
    }

    /* renamed from: a */
    public final void m2230a(AttributeSet attrs) {
        super.setVisibility(this.f4666g);
        this.f4664e = -1;
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.ConstraintLayout_placeholder_content) {
                    this.f4664e = obtainStyledAttributes.getResourceId(index, this.f4664e);
                } else if (index == C0503R.styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f4666g = obtainStyledAttributes.getInt(index, this.f4666g);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public View getContent() {
        return this.f4665f;
    }

    public int getEmptyVisibility() {
        return this.f4666g;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int id) {
        View findViewById;
        if (this.f4664e == id) {
            return;
        }
        View view = this.f4665f;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f4665f.getLayoutParams()).f4296j = false;
            this.f4665f = null;
        }
        this.f4664e = id;
        if (id == -1 || (findViewById = ((View) getParent()).findViewById(id)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int visibility) {
        this.f4666g = visibility;
    }

    public void updatePostMeasure(ConstraintLayout container) {
        if (this.f4665f == null) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f4665f.getLayoutParams();
        layoutParams2.f4308v.setVisibility(0);
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = layoutParams.f4308v.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (horizontalDimensionBehaviour != dimensionBehaviour) {
            layoutParams.f4308v.setWidth(layoutParams2.f4308v.getWidth());
        }
        if (layoutParams.f4308v.getVerticalDimensionBehaviour() != dimensionBehaviour) {
            layoutParams.f4308v.setHeight(layoutParams2.f4308v.getHeight());
        }
        layoutParams2.f4308v.setVisibility(8);
    }

    public void updatePreLayout(ConstraintLayout container) {
        if (this.f4664e == -1 && !isInEditMode()) {
            setVisibility(this.f4666g);
        }
        View findViewById = container.findViewById(this.f4664e);
        this.f4665f = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).f4296j = true;
            this.f4665f.setVisibility(0);
            setVisibility(0);
        }
    }

    public Placeholder(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f4664e = -1;
        this.f4665f = null;
        this.f4666g = 4;
        m2230a(attrs);
    }

    public Placeholder(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f4664e = -1;
        this.f4665f = null;
        this.f4666g = 4;
        m2230a(attrs);
    }

    public Placeholder(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        this.f4664e = -1;
        this.f4665f = null;
        this.f4666g = 4;
        m2230a(attrs);
    }
}
