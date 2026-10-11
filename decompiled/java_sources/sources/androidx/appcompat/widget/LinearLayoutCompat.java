package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.core.app.NotificationCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.motion.MotionUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;

/* loaded from: classes3.dex */
public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;

    /* renamed from: t */
    public static final int f1697t = 4;

    /* renamed from: u */
    public static final int f1698u = 0;

    /* renamed from: v */
    public static final int f1699v = 1;

    /* renamed from: w */
    public static final int f1700w = 2;

    /* renamed from: x */
    public static final int f1701x = 3;

    /* renamed from: y */
    public static final String f1702y = "androidx.appcompat.widget.LinearLayoutCompat";

    /* renamed from: e */
    public boolean f1703e;

    /* renamed from: f */
    public int f1704f;

    /* renamed from: g */
    public int f1705g;

    /* renamed from: h */
    public int f1706h;

    /* renamed from: i */
    public int f1707i;

    /* renamed from: j */
    public int f1708j;

    /* renamed from: k */
    public float f1709k;

    /* renamed from: l */
    public boolean f1710l;

    /* renamed from: m */
    public int[] f1711m;

    /* renamed from: n */
    public int[] f1712n;

    /* renamed from: o */
    public Drawable f1713o;

    /* renamed from: p */
    public int f1714p;

    /* renamed from: q */
    public int f1715q;

    /* renamed from: r */
    public int f1716r;

    /* renamed from: s */
    public int f1717s;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface DividerMode {
    }

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<LinearLayoutCompat> {

        /* renamed from: a */
        public boolean f1718a = false;

        /* renamed from: b */
        public int f1719b;

        /* renamed from: c */
        public int f1720c;

        /* renamed from: d */
        public int f1721d;

        /* renamed from: e */
        public int f1722e;

        /* renamed from: f */
        public int f1723f;

        /* renamed from: g */
        public int f1724g;

        /* renamed from: h */
        public int f1725h;

        /* renamed from: i */
        public int f1726i;

        /* renamed from: j */
        public int f1727j;

        /* renamed from: androidx.appcompat.widget.LinearLayoutCompat$InspectionCompanion$a */
        /* loaded from: classes3.dex */
        public class C0248a implements IntFunction<String> {
            public C0248a() {
            }

            @Override // java.util.function.IntFunction
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public String apply(int i) {
                return i != 0 ? i != 1 ? String.valueOf(i) : "vertical" : "horizontal";
            }
        }

        /* renamed from: androidx.appcompat.widget.LinearLayoutCompat$InspectionCompanion$b */
        /* loaded from: classes3.dex */
        public class C0249b implements IntFunction<Set<String>> {
            public C0249b() {
            }

            @Override // java.util.function.IntFunction
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Set<String> apply(int i) {
                HashSet hashSet = new HashSet();
                if (i == 0) {
                    hashSet.add("none");
                }
                if (i == 1) {
                    hashSet.add("beginning");
                }
                if (i == 2) {
                    hashSet.add("middle");
                }
                if (i == 4) {
                    hashSet.add("end");
                }
                return hashSet;
            }
        }

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1719b = propertyMapper.mapBoolean("baselineAligned", R.attr.baselineAligned);
            this.f1720c = propertyMapper.mapInt("baselineAlignedChildIndex", R.attr.baselineAlignedChildIndex);
            this.f1721d = propertyMapper.mapGravity(NotificationCompat.WearableExtender.f5060z, R.attr.gravity);
            this.f1722e = propertyMapper.mapIntEnum("orientation", R.attr.orientation, new C0248a());
            this.f1723f = propertyMapper.mapFloat("weightSum", R.attr.weightSum);
            this.f1724g = propertyMapper.mapObject("divider", C0118R.attr.divider);
            this.f1725h = propertyMapper.mapInt("dividerPadding", C0118R.attr.dividerPadding);
            this.f1726i = propertyMapper.mapBoolean("measureWithLargestChild", C0118R.attr.measureWithLargestChild);
            this.f1727j = propertyMapper.mapIntFlag("showDividers", C0118R.attr.showDividers, new C0249b());
            this.f1718a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull PropertyReader propertyReader) {
            if (this.f1718a) {
                propertyReader.readBoolean(this.f1719b, linearLayoutCompat.isBaselineAligned());
                propertyReader.readInt(this.f1720c, linearLayoutCompat.getBaselineAlignedChildIndex());
                propertyReader.readGravity(this.f1721d, linearLayoutCompat.getGravity());
                propertyReader.readIntEnum(this.f1722e, linearLayoutCompat.getOrientation());
                propertyReader.readFloat(this.f1723f, linearLayoutCompat.getWeightSum());
                propertyReader.readObject(this.f1724g, linearLayoutCompat.getDividerDrawable());
                propertyReader.readInt(this.f1725h, linearLayoutCompat.getDividerPadding());
                propertyReader.readBoolean(this.f1726i, linearLayoutCompat.isMeasureWithLargestChildEnabled());
                propertyReader.readIntFlag(this.f1727j, linearLayoutCompat.getShowDividers());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public void m799a(Canvas canvas) {
        int right;
        int left;
        int i;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View m808j = m808j(i2);
            if (m808j != null && m808j.getVisibility() != 8 && hasDividerBeforeChildAt(i2)) {
                LayoutParams layoutParams = (LayoutParams) m808j.getLayoutParams();
                m802d(canvas, isLayoutRtl ? m808j.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin : (m808j.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.f1714p);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View m808j2 = m808j(virtualChildCount - 1);
            if (m808j2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) m808j2.getLayoutParams();
                if (isLayoutRtl) {
                    left = m808j2.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i = this.f1714p;
                    right = left - i;
                } else {
                    right = m808j2.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            } else if (isLayoutRtl) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.f1714p;
                right = left - i;
            }
            m802d(canvas, right);
        }
    }

    /* renamed from: b */
    public void m800b(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View m808j = m808j(i);
            if (m808j != null && m808j.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                m801c(canvas, (m808j.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) m808j.getLayoutParams())).topMargin) - this.f1715q);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View m808j2 = m808j(virtualChildCount - 1);
            m801c(canvas, m808j2 == null ? (getHeight() - getPaddingBottom()) - this.f1715q : m808j2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) m808j2.getLayoutParams())).bottomMargin);
        }
    }

    /* renamed from: c */
    public void m801c(Canvas canvas, int i) {
        this.f1713o.setBounds(getPaddingLeft() + this.f1717s, i, (getWidth() - getPaddingRight()) - this.f1717s, this.f1715q + i);
        this.f1713o.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* renamed from: d */
    public void m802d(Canvas canvas, int i) {
        this.f1713o.setBounds(i, getPaddingTop() + this.f1717s, this.f1714p + i, (getHeight() - getPaddingBottom()) - this.f1717s);
        this.f1713o.draw(canvas);
    }

    /* renamed from: e */
    public final void m803e(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m808j = m808j(i3);
            if (m808j.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) m808j.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).height == -1) {
                    int i4 = ((LinearLayout.LayoutParams) layoutParams).width;
                    ((LinearLayout.LayoutParams) layoutParams).width = m808j.getMeasuredWidth();
                    measureChildWithMargins(m808j, i2, 0, makeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) layoutParams).width = i4;
                }
            }
        }
    }

    /* renamed from: f */
    public final void m804f(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View m808j = m808j(i3);
            if (m808j.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) m808j.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).width == -1) {
                    int i4 = ((LinearLayout.LayoutParams) layoutParams).height;
                    ((LinearLayout.LayoutParams) layoutParams).height = m808j.getMeasuredHeight();
                    measureChildWithMargins(m808j, makeMeasureSpec, 0, i2, 0);
                    ((LinearLayout.LayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    /* renamed from: g */
    public int m805g(View view, int i) {
        return 0;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f1704f < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f1704f;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f1704f == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.f1705g;
        if (this.f1706h == 1 && (i = this.f1707i & 112) != 48) {
            if (i == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1708j) / 2;
            } else if (i == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1708j;
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1704f;
    }

    public Drawable getDividerDrawable() {
        return this.f1713o;
    }

    public int getDividerPadding() {
        return this.f1717s;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.f1714p;
    }

    @GravityInt
    public int getGravity() {
        return this.f1707i;
    }

    public int getOrientation() {
        return this.f1706h;
    }

    public int getShowDividers() {
        return this.f1716r;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1709k;
    }

    /* renamed from: h */
    public int m806h(View view) {
        return 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.f1716r & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.f1716r & 4) != 0;
        }
        if ((this.f1716r & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public int m807i(View view) {
        return 0;
    }

    public boolean isBaselineAligned() {
        return this.f1703e;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.f1710l;
    }

    /* renamed from: j */
    public View m808j(int i) {
        return getChildAt(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m809k(int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m809k(int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x009f  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m810l(int r18, int r19, int r20, int r21) {
        /*
            r17 = this;
            r6 = r17
            int r7 = r17.getPaddingLeft()
            int r0 = r20 - r18
            int r1 = r17.getPaddingRight()
            int r8 = r0 - r1
            int r0 = r0 - r7
            int r1 = r17.getPaddingRight()
            int r9 = r0 - r1
            int r10 = r17.getVirtualChildCount()
            int r0 = r6.f1707i
            r1 = r0 & 112(0x70, float:1.57E-43)
            r2 = 8388615(0x800007, float:1.1754953E-38)
            r11 = r0 & r2
            r0 = 16
            if (r1 == r0) goto L3b
            r0 = 80
            if (r1 == r0) goto L2f
            int r0 = r17.getPaddingTop()
            goto L47
        L2f:
            int r0 = r17.getPaddingTop()
            int r0 = r0 + r21
            int r0 = r0 - r19
            int r1 = r6.f1708j
            int r0 = r0 - r1
            goto L47
        L3b:
            int r0 = r17.getPaddingTop()
            int r1 = r21 - r19
            int r2 = r6.f1708j
            int r1 = r1 - r2
            int r1 = r1 / 2
            int r0 = r0 + r1
        L47:
            r1 = 0
            r12 = r1
        L49:
            if (r12 >= r10) goto Lcb
            android.view.View r13 = r6.m808j(r12)
            r14 = 1
            if (r13 != 0) goto L59
            int r1 = r6.m813o(r12)
            int r0 = r0 + r1
            goto Lc7
        L59:
            int r1 = r13.getVisibility()
            r2 = 8
            if (r1 == r2) goto Lc7
            int r4 = r13.getMeasuredWidth()
            int r15 = r13.getMeasuredHeight()
            android.view.ViewGroup$LayoutParams r1 = r13.getLayoutParams()
            r5 = r1
            androidx.appcompat.widget.LinearLayoutCompat$LayoutParams r5 = (androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) r5
            int r1 = r5.gravity
            if (r1 >= 0) goto L75
            r1 = r11
        L75:
            int r2 = r17.getLayoutDirection()
            int r1 = androidx.core.view.GravityCompat.getAbsoluteGravity(r1, r2)
            r1 = r1 & 7
            if (r1 == r14) goto L8d
            r2 = 5
            if (r1 == r2) goto L88
            int r1 = r5.leftMargin
            int r1 = r1 + r7
            goto L98
        L88:
            int r1 = r8 - r4
            int r2 = r5.rightMargin
            goto L97
        L8d:
            int r1 = r9 - r4
            int r1 = r1 / 2
            int r1 = r1 + r7
            int r2 = r5.leftMargin
            int r1 = r1 + r2
            int r2 = r5.rightMargin
        L97:
            int r1 = r1 - r2
        L98:
            r2 = r1
            boolean r1 = r6.hasDividerBeforeChildAt(r12)
            if (r1 == 0) goto La2
            int r1 = r6.f1715q
            int r0 = r0 + r1
        La2:
            int r1 = r5.topMargin
            int r16 = r0 + r1
            int r0 = r6.m806h(r13)
            int r3 = r16 + r0
            r0 = r17
            r1 = r13
            r14 = r5
            r5 = r15
            r0.m815q(r1, r2, r3, r4, r5)
            int r0 = r14.bottomMargin
            int r15 = r15 + r0
            int r0 = r6.m807i(r13)
            int r15 = r15 + r0
            int r16 = r16 + r15
            int r0 = r6.m805g(r13, r12)
            int r12 = r12 + r0
            r0 = r16
            r1 = 1
            goto Lc8
        Lc7:
            r1 = r14
        Lc8:
            int r12 = r12 + r1
            goto L49
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m810l(int, int, int, int):void");
    }

    /* renamed from: m */
    public void m811m(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:195:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01d8  */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m812n(int r39, int r40) {
        /*
            Method dump skipped, instructions count: 1291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m812n(int, int):void");
    }

    /* renamed from: o */
    public int m813o(int i) {
        return 0;
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        if (this.f1713o == null) {
            return;
        }
        if (this.f1706h == 1) {
            m800b(canvas);
        } else {
            m799a(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(f1702y);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f1702y);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f1706h == 1) {
            m810l(i, i2, i3, i4);
        } else {
            m809k(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.f1706h == 1) {
            m814p(i, i2);
        } else {
            m812n(i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:158:0x0325  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m814p(int r34, int r35) {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.m814p(int, int):void");
    }

    /* renamed from: q */
    public final void m815q(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setBaselineAligned(boolean z) {
        this.f1703e = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f1704f = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + MotionUtils.f31762d);
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f1713o) {
            return;
        }
        this.f1713o = drawable;
        if (drawable != null) {
            this.f1714p = drawable.getIntrinsicWidth();
            this.f1715q = drawable.getIntrinsicHeight();
        } else {
            this.f1714p = 0;
            this.f1715q = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f1717s = i;
    }

    public void setGravity(@GravityInt int i) {
        if (this.f1707i != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f1707i = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i3 = this.f1707i;
        if ((8388615 & i3) != i2) {
            this.f1707i = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f1710l = z;
    }

    public void setOrientation(int i) {
        if (this.f1706h != i) {
            this.f1706h = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f1716r) {
            requestLayout();
        }
        this.f1716r = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f1707i;
        if ((i3 & 112) != i2) {
            this.f1707i = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f1709k = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.f1706h;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1703e = true;
        this.f1704f = -1;
        this.f1705g = 0;
        this.f1707i = 8388659;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0118R.styleable.LinearLayoutCompat, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C0118R.styleable.LinearLayoutCompat, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        int i2 = obtainStyledAttributes.getInt(C0118R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(C0118R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(C0118R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.f1709k = obtainStyledAttributes.getFloat(C0118R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1704f = obtainStyledAttributes.getInt(C0118R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1710l = obtainStyledAttributes.getBoolean(C0118R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(C0118R.styleable.LinearLayoutCompat_divider));
        this.f1716r = obtainStyledAttributes.getInt(C0118R.styleable.LinearLayoutCompat_showDividers, 0);
        this.f1717s = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }
}
