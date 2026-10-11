package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import com.onyx.engine.sdk.archive.ArchiveFormatCode;
import com.sunia.HTREnginev2.C13604d6;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ActionBarContainer extends FrameLayout {

    /* renamed from: e */
    public boolean f1312e;

    /* renamed from: f */
    public View f1313f;

    /* renamed from: g */
    public View f1314g;

    /* renamed from: h */
    public View f1315h;

    /* renamed from: i */
    public Drawable f1316i;

    /* renamed from: j */
    public Drawable f1317j;

    /* renamed from: k */
    public Drawable f1318k;

    /* renamed from: l */
    public boolean f1319l;

    /* renamed from: m */
    public boolean f1320m;

    /* renamed from: n */
    public int f1321n;

    @RequiresApi(21)
    /* renamed from: androidx.appcompat.widget.ActionBarContainer$a */
    /* loaded from: classes3.dex */
    public static class C0204a {
        /* renamed from: a */
        public static void m640a(ActionBarContainer actionBarContainer) {
            actionBarContainer.invalidateOutline();
        }
    }

    public ActionBarContainer(Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final int m638a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    /* renamed from: b */
    public final boolean m639b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f1316i;
        if (drawable != null && drawable.isStateful()) {
            this.f1316i.setState(getDrawableState());
        }
        Drawable drawable2 = this.f1317j;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f1317j.setState(getDrawableState());
        }
        Drawable drawable3 = this.f1318k;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f1318k.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f1313f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1316i;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1317j;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f1318k;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f1314g = findViewById(C0118R.id.action_bar);
        this.f1315h = findViewById(C0118R.id.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1312e || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Drawable drawable;
        super.onLayout(z, i, i2, i3, i4);
        View view = this.f1313f;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view.layout(i, measuredHeight2 - i5, i3, measuredHeight - i5);
        }
        if (this.f1319l) {
            Drawable drawable2 = this.f1318k;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
            z2 = z3;
        } else {
            if (this.f1316i != null) {
                if (this.f1314g.getVisibility() == 0) {
                    this.f1316i.setBounds(this.f1314g.getLeft(), this.f1314g.getTop(), this.f1314g.getRight(), this.f1314g.getBottom());
                } else {
                    View view2 = this.f1315h;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f1316i.setBounds(0, 0, 0, 0);
                    } else {
                        this.f1316i.setBounds(this.f1315h.getLeft(), this.f1315h.getTop(), this.f1315h.getRight(), this.f1315h.getBottom());
                    }
                }
                z3 = true;
            }
            this.f1320m = z4;
            if (z4 && (drawable = this.f1317j) != null) {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
            z2 = z3;
        }
        if (z2) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.f1314g == null && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && (i3 = this.f1321n) >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(i3, View.MeasureSpec.getSize(i2)), Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
        if (this.f1314g == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i2);
        View view = this.f1313f;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!m639b(this.f1314g) ? m638a(this.f1314g) : !m639b(this.f1315h) ? m638a(this.f1315h) : 0) + m638a(this.f1313f), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i2) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f1316i;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f1316i);
        }
        this.f1316i = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f1314g;
            if (view != null) {
                this.f1316i.setBounds(view.getLeft(), this.f1314g.getTop(), this.f1314g.getRight(), this.f1314g.getBottom());
            }
        }
        boolean z = true;
        if (!this.f1319l ? this.f1316i != null || this.f1317j != null : this.f1318k != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        C0204a.m640a(this);
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1318k;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1318k);
        }
        this.f1318k = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1319l && (drawable2 = this.f1318k) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f1319l ? !(this.f1316i != null || this.f1317j != null) : this.f1318k == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        C0204a.m640a(this);
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f1317j;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1317j);
        }
        this.f1317j = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f1320m && (drawable2 = this.f1317j) != null) {
                drawable2.setBounds(this.f1313f.getLeft(), this.f1313f.getTop(), this.f1313f.getRight(), this.f1313f.getBottom());
            }
        }
        boolean z = true;
        if (!this.f1319l ? this.f1316i != null || this.f1317j != null : this.f1318k != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        C0204a.m640a(this);
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        View view = this.f1313f;
        if (view != null) {
            removeView(view);
        }
        this.f1313f = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f1312e = z;
        setDescendantFocusability(z ? ArchiveFormatCode.ARCHIVE_FORMAT_EMPTY : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f1316i;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        Drawable drawable2 = this.f1317j;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        Drawable drawable3 = this.f1318k;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public boolean verifyDrawable(@NonNull Drawable drawable) {
        return (drawable == this.f1316i && !this.f1319l) || (drawable == this.f1317j && this.f1320m) || ((drawable == this.f1318k && this.f1319l) || super.verifyDrawable(drawable));
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new C13604d6(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0118R.styleable.ActionBar);
        this.f1316i = obtainStyledAttributes.getDrawable(C0118R.styleable.ActionBar_background);
        this.f1317j = obtainStyledAttributes.getDrawable(C0118R.styleable.ActionBar_backgroundStacked);
        this.f1321n = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.ActionBar_height, -1);
        boolean z = true;
        if (getId() == C0118R.id.split_action_bar) {
            this.f1319l = true;
            this.f1318k = obtainStyledAttributes.getDrawable(C0118R.styleable.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        if (!this.f1319l ? this.f1316i != null || this.f1317j != null : this.f1318k != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }
}
