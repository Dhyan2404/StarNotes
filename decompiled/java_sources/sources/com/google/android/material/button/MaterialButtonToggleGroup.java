package com.google.android.material.button;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C5139R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

/* loaded from: classes6.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: o */
    public static final String f30587o = "MButtonToggleGroup";

    /* renamed from: p */
    public static final int f30588p = C5139R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;

    /* renamed from: e */
    public final List<C5192c> f30589e;

    /* renamed from: f */
    public final C5193d f30590f;

    /* renamed from: g */
    public final LinkedHashSet<OnButtonCheckedListener> f30591g;

    /* renamed from: h */
    public final Comparator<MaterialButton> f30592h;

    /* renamed from: i */
    public Integer[] f30593i;

    /* renamed from: j */
    public boolean f30594j;

    /* renamed from: k */
    public boolean f30595k;

    /* renamed from: l */
    public boolean f30596l;

    /* renamed from: m */
    @IdRes
    public final int f30597m;

    /* renamed from: n */
    public Set<Integer> f30598n;

    /* loaded from: classes6.dex */
    public interface OnButtonCheckedListener {
        void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup, @IdRes int i, boolean z);
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$a */
    /* loaded from: classes6.dex */
    public class C5190a implements Comparator<MaterialButton> {
        public C5190a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            int compareTo = Boolean.valueOf(materialButton.isChecked()).compareTo(Boolean.valueOf(materialButton2.isChecked()));
            if (compareTo != 0) {
                return compareTo;
            }
            int compareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
            return compareTo2 != 0 ? compareTo2 : Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton)).compareTo(Integer.valueOf(MaterialButtonToggleGroup.this.indexOfChild(materialButton2)));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$b */
    /* loaded from: classes6.dex */
    public class C5191b extends AccessibilityDelegateCompat {
        public C5191b() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, MaterialButtonToggleGroup.this.m23258g(view), 1, false, ((MaterialButton) view).isChecked()));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$c */
    /* loaded from: classes6.dex */
    public static class C5192c {

        /* renamed from: e */
        public static final CornerSize f30601e = new AbsoluteCornerSize(0.0f);

        /* renamed from: a */
        public CornerSize f30602a;

        /* renamed from: b */
        public CornerSize f30603b;

        /* renamed from: c */
        public CornerSize f30604c;

        /* renamed from: d */
        public CornerSize f30605d;

        public C5192c(CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4) {
            this.f30602a = cornerSize;
            this.f30603b = cornerSize3;
            this.f30604c = cornerSize4;
            this.f30605d = cornerSize2;
        }

        /* renamed from: a */
        public static C5192c m23269a(C5192c c5192c) {
            CornerSize cornerSize = f30601e;
            return new C5192c(cornerSize, c5192c.f30605d, cornerSize, c5192c.f30604c);
        }

        /* renamed from: b */
        public static C5192c m23270b(C5192c c5192c, View view) {
            return ViewUtils.isLayoutRtl(view) ? m23271c(c5192c) : m23272d(c5192c);
        }

        /* renamed from: c */
        public static C5192c m23271c(C5192c c5192c) {
            CornerSize cornerSize = c5192c.f30602a;
            CornerSize cornerSize2 = c5192c.f30605d;
            CornerSize cornerSize3 = f30601e;
            return new C5192c(cornerSize, cornerSize2, cornerSize3, cornerSize3);
        }

        /* renamed from: d */
        public static C5192c m23272d(C5192c c5192c) {
            CornerSize cornerSize = f30601e;
            return new C5192c(cornerSize, cornerSize, c5192c.f30603b, c5192c.f30604c);
        }

        /* renamed from: e */
        public static C5192c m23273e(C5192c c5192c, View view) {
            return ViewUtils.isLayoutRtl(view) ? m23272d(c5192c) : m23271c(c5192c);
        }

        /* renamed from: f */
        public static C5192c m23274f(C5192c c5192c) {
            CornerSize cornerSize = c5192c.f30602a;
            CornerSize cornerSize2 = f30601e;
            return new C5192c(cornerSize, cornerSize2, c5192c.f30603b, cornerSize2);
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$d */
    /* loaded from: classes6.dex */
    public class C5193d implements MaterialButton.InterfaceC5189a {
        public C5193d() {
        }

        @Override // com.google.android.material.button.MaterialButton.InterfaceC5189a
        /* renamed from: a */
        public void mo23250a(@NonNull MaterialButton materialButton, boolean z) {
            MaterialButtonToggleGroup.this.invalidate();
        }

        public /* synthetic */ C5193d(MaterialButtonToggleGroup materialButtonToggleGroup, C5190a c5190a) {
            this();
        }
    }

    public MaterialButtonToggleGroup(@NonNull Context context) {
        this(context, null);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m23260i(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m23260i(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && m23260i(i2)) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: m */
    public static void m23252m(ShapeAppearanceModel.Builder builder, @Nullable C5192c c5192c) {
        if (c5192c == null) {
            builder.setAllCornerSizes(0.0f);
        } else {
            builder.setTopLeftCornerSize(c5192c.f30602a).setBottomLeftCornerSize(c5192c.f30605d).setTopRightCornerSize(c5192c.f30603b).setBottomRightCornerSize(c5192c.f30604c);
        }
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f30590f);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public void addOnButtonCheckedListener(@NonNull OnButtonCheckedListener onButtonCheckedListener) {
        this.f30591g.add(onButtonCheckedListener);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e(f30587o, "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        m23255d(materialButton.getId(), materialButton.isChecked());
        ShapeAppearanceModel shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.f30589e.add(new C5192c(shapeAppearanceModel.getTopLeftCornerSize(), shapeAppearanceModel.getBottomLeftCornerSize(), shapeAppearanceModel.getTopRightCornerSize(), shapeAppearanceModel.getBottomRightCornerSize()));
        materialButton.setEnabled(isEnabled());
        ViewCompat.setAccessibilityDelegate(materialButton, new C5191b());
    }

    /* renamed from: b */
    public final void m23253b() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i = firstVisibleChildIndex + 1; i < getChildCount(); i++) {
            MaterialButton m23257f = m23257f(i);
            int min = Math.min(m23257f.getStrokeWidth(), m23257f(i - 1).getStrokeWidth());
            LinearLayout.LayoutParams m23254c = m23254c(m23257f);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(m23254c, 0);
                MarginLayoutParamsCompat.setMarginStart(m23254c, -min);
                m23254c.topMargin = 0;
            } else {
                m23254c.bottomMargin = 0;
                m23254c.topMargin = -min;
                MarginLayoutParamsCompat.setMarginStart(m23254c, 0);
            }
            m23257f.setLayoutParams(m23254c);
        }
        m23262k(firstVisibleChildIndex);
    }

    @NonNull
    /* renamed from: c */
    public final LinearLayout.LayoutParams m23254c(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
    }

    public void check(@IdRes int i) {
        m23255d(i, true);
    }

    public void clearChecked() {
        m23264n(new HashSet());
    }

    public void clearOnButtonCheckedListeners() {
        this.f30591g.clear();
    }

    /* renamed from: d */
    public final void m23255d(@IdRes int i, boolean z) {
        if (i == -1) {
            Log.e(f30587o, "Button ID is not valid: " + i);
            return;
        }
        HashSet hashSet = new HashSet(this.f30598n);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.f30595k && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i))) {
                return;
            }
            if (!this.f30596l || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        }
        m23264n(hashSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(@NonNull Canvas canvas) {
        m23265o();
        super.dispatchDraw(canvas);
    }

    /* renamed from: e */
    public final void m23256e(@IdRes int i, boolean z) {
        Iterator<OnButtonCheckedListener> it2 = this.f30591g.iterator();
        while (it2.hasNext()) {
            it2.next().onButtonChecked(this, i, z);
        }
    }

    /* renamed from: f */
    public final MaterialButton m23257f(int i) {
        return (MaterialButton) getChildAt(i);
    }

    /* renamed from: g */
    public final int m23258g(@Nullable View view) {
        if (!(view instanceof MaterialButton)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) == view) {
                return i;
            }
            if ((getChildAt(i2) instanceof MaterialButton) && m23260i(i2)) {
                i++;
            }
        }
        return -1;
    }

    @IdRes
    public int getCheckedButtonId() {
        if (!this.f30595k || this.f30598n.isEmpty()) {
            return -1;
        }
        return this.f30598n.iterator().next().intValue();
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            int id = m23257f(i).getId();
            if (this.f30598n.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f30593i;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w(f30587o, "Child order wasn't updated");
        return i2;
    }

    @Nullable
    /* renamed from: h */
    public final C5192c m23259h(int i, int i2, int i3) {
        C5192c c5192c = this.f30589e.get(i);
        if (i2 == i3) {
            return c5192c;
        }
        boolean z = getOrientation() == 0;
        if (i == i2) {
            return z ? C5192c.m23273e(c5192c, this) : C5192c.m23274f(c5192c);
        }
        if (i == i3) {
            return z ? C5192c.m23270b(c5192c, this) : C5192c.m23269a(c5192c);
        }
        return null;
    }

    /* renamed from: i */
    public final boolean m23260i(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    public boolean isSelectionRequired() {
        return this.f30596l;
    }

    public boolean isSingleSelection() {
        return this.f30595k;
    }

    /* renamed from: j */
    public void m23261j(@NonNull MaterialButton materialButton, boolean z) {
        if (this.f30594j) {
            return;
        }
        m23255d(materialButton.getId(), z);
    }

    /* renamed from: k */
    public final void m23262k(int i) {
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m23257f(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams.topMargin = 0;
            layoutParams.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams, 0);
            layoutParams.leftMargin = 0;
            layoutParams.rightMargin = 0;
        }
    }

    /* renamed from: l */
    public final void m23263l(@IdRes int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof MaterialButton) {
            this.f30594j = true;
            ((MaterialButton) findViewById).setChecked(z);
            this.f30594j = false;
        }
    }

    /* renamed from: n */
    public final void m23264n(Set<Integer> set) {
        Set<Integer> set2 = this.f30598n;
        this.f30598n = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = m23257f(i).getId();
            m23263l(id, set.contains(Integer.valueOf(id)));
            if (set2.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                m23256e(id, set.contains(Integer.valueOf(id)));
            }
        }
        invalidate();
    }

    /* renamed from: o */
    public final void m23265o() {
        TreeMap treeMap = new TreeMap(this.f30592h);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m23257f(i), Integer.valueOf(i));
        }
        this.f30593i = (Integer[]) treeMap.values().toArray(new Integer[0]);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f30597m;
        if (i != -1) {
            m23264n(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, isSingleSelection() ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m23266p();
        m23253b();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f30589e.remove(indexOfChild);
        }
        m23266p();
        m23253b();
    }

    @VisibleForTesting
    /* renamed from: p */
    public void m23266p() {
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i = 0; i < childCount; i++) {
            MaterialButton m23257f = m23257f(i);
            if (m23257f.getVisibility() != 8) {
                ShapeAppearanceModel.Builder builder = m23257f.getShapeAppearanceModel().toBuilder();
                m23252m(builder, m23259h(i, firstVisibleChildIndex, lastVisibleChildIndex));
                m23257f.setShapeAppearanceModel(builder.build());
            }
        }
    }

    /* renamed from: q */
    public final void m23267q() {
        for (int i = 0; i < getChildCount(); i++) {
            m23257f(i).setA11yClassName((this.f30595k ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    public void removeOnButtonCheckedListener(@NonNull OnButtonCheckedListener onButtonCheckedListener) {
        this.f30591g.remove(onButtonCheckedListener);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            m23257f(i).setEnabled(z);
        }
    }

    public void setSelectionRequired(boolean z) {
        this.f30596l = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.f30595k != z) {
            this.f30595k = z;
            clearChecked();
        }
        m23267q();
    }

    public void uncheck(@IdRes int i) {
        m23255d(i, false);
    }

    public MaterialButtonToggleGroup(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialButtonToggleGroupStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonToggleGroup(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r4 = com.google.android.material.button.MaterialButtonToggleGroup.f30588p
            android.content.Context r7 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r7, r8, r9, r4)
            r6.<init>(r7, r8, r9)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            r6.f30589e = r7
            com.google.android.material.button.MaterialButtonToggleGroup$d r7 = new com.google.android.material.button.MaterialButtonToggleGroup$d
            r0 = 0
            r7.<init>(r6, r0)
            r6.f30590f = r7
            java.util.LinkedHashSet r7 = new java.util.LinkedHashSet
            r7.<init>()
            r6.f30591g = r7
            com.google.android.material.button.MaterialButtonToggleGroup$a r7 = new com.google.android.material.button.MaterialButtonToggleGroup$a
            r7.<init>()
            r6.f30592h = r7
            r7 = 0
            r6.f30594j = r7
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            r6.f30598n = r0
            android.content.Context r0 = r6.getContext()
            int[] r2 = com.google.android.material.C5139R.styleable.MaterialButtonToggleGroup
            int[] r5 = new int[r7]
            r1 = r8
            r3 = r9
            android.content.res.TypedArray r8 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r9 = com.google.android.material.C5139R.styleable.MaterialButtonToggleGroup_singleSelection
            boolean r9 = r8.getBoolean(r9, r7)
            r6.setSingleSelection(r9)
            int r9 = com.google.android.material.C5139R.styleable.MaterialButtonToggleGroup_checkedButton
            r0 = -1
            int r9 = r8.getResourceId(r9, r0)
            r6.f30597m = r9
            int r9 = com.google.android.material.C5139R.styleable.MaterialButtonToggleGroup_selectionRequired
            boolean r7 = r8.getBoolean(r9, r7)
            r6.f30596l = r7
            r7 = 1
            r6.setChildrenDrawingOrderEnabled(r7)
            int r9 = com.google.android.material.C5139R.styleable.MaterialButtonToggleGroup_android_enabled
            boolean r9 = r8.getBoolean(r9, r7)
            r6.setEnabled(r9)
            r8.recycle()
            androidx.core.view.ViewCompat.setImportantForAccessibility(r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonToggleGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}
