package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.core.widget.PopupWindowCompat;
import com.sunia.HTREnginev2.C14234pc;
import com.sunia.HTREnginev2.jjf;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class ListPopupWindow implements ShowableListMenu {

    /* renamed from: A0 */
    public static Method f1730A0 = null;

    /* renamed from: B0 */
    public static Method f1731B0 = null;

    /* renamed from: C0 */
    public static Method f1732C0 = null;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    public static final int WRAP_CONTENT = -2;

    /* renamed from: x0 */
    public static final String f1733x0 = "ListPopupWindow";

    /* renamed from: y0 */
    public static final boolean f1734y0 = false;

    /* renamed from: z0 */
    public static final int f1735z0 = 250;

    /* renamed from: J */
    public final RunnableC0259j f1736J;

    /* renamed from: O */
    public final ViewOnTouchListenerC0258i f1737O;

    /* renamed from: Q */
    public final C0257h f1738Q;

    /* renamed from: Z */
    public final RunnableC0255f f1739Z;

    /* renamed from: e */
    public Context f1740e;

    /* renamed from: f */
    public ListAdapter f1741f;

    /* renamed from: g */
    public jjf f1742g;

    /* renamed from: h */
    public int f1743h;

    /* renamed from: i */
    public int f1744i;

    /* renamed from: j */
    public int f1745j;

    /* renamed from: k */
    public int f1746k;

    /* renamed from: k0 */
    public Runnable f1747k0;

    /* renamed from: l */
    public int f1748l;

    /* renamed from: m */
    public boolean f1749m;

    /* renamed from: n */
    public boolean f1750n;

    /* renamed from: o */
    public boolean f1751o;

    /* renamed from: p */
    public int f1752p;

    /* renamed from: q */
    public boolean f1753q;

    /* renamed from: q0 */
    public final Handler f1754q0;

    /* renamed from: r */
    public boolean f1755r;

    /* renamed from: s */
    public int f1756s;

    /* renamed from: t */
    public View f1757t;

    /* renamed from: t0 */
    public final Rect f1758t0;

    /* renamed from: u */
    public int f1759u;

    /* renamed from: u0 */
    public Rect f1760u0;

    /* renamed from: v */
    public DataSetObserver f1761v;

    /* renamed from: v0 */
    public boolean f1762v0;

    /* renamed from: w */
    public View f1763w;

    /* renamed from: w0 */
    public PopupWindow f1764w0;

    /* renamed from: x */
    public Drawable f1765x;

    /* renamed from: y */
    public AdapterView.OnItemClickListener f1766y;

    /* renamed from: z */
    public AdapterView.OnItemSelectedListener f1767z;

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$a */
    /* loaded from: classes3.dex */
    public class C0250a extends ForwardingListener {
        public C0250a(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public ListPopupWindow getPopup() {
            return ListPopupWindow.this;
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$b */
    /* loaded from: classes3.dex */
    public class RunnableC0251b implements Runnable {
        public RunnableC0251b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View anchorView = ListPopupWindow.this.getAnchorView();
            if (anchorView == null || anchorView.getWindowToken() == null) {
                return;
            }
            ListPopupWindow.this.show();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$c */
    /* loaded from: classes3.dex */
    public class C0252c implements AdapterView.OnItemSelectedListener {
        public C0252c() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            jjf jjfVar;
            if (i == -1 || (jjfVar = ListPopupWindow.this.f1742g) == null) {
                return;
            }
            jjfVar.setListSelectionHidden(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.appcompat.widget.ListPopupWindow$d */
    /* loaded from: classes3.dex */
    public static class C0253d {
        @DoNotInline
        /* renamed from: a */
        public static int m826a(PopupWindow popupWindow, View view, int i, boolean z) {
            return popupWindow.getMaxAvailableHeight(view, i, z);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.appcompat.widget.ListPopupWindow$e */
    /* loaded from: classes3.dex */
    public static class C0254e {
        @DoNotInline
        /* renamed from: a */
        public static void m827a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        @DoNotInline
        /* renamed from: b */
        public static void m828b(PopupWindow popupWindow, boolean z) {
            popupWindow.setIsClippedToScreen(z);
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$f */
    /* loaded from: classes3.dex */
    public class RunnableC0255f implements Runnable {
        public RunnableC0255f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ListPopupWindow.this.clearListSelection();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$g */
    /* loaded from: classes3.dex */
    public class C0256g extends DataSetObserver {
        public C0256g() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (ListPopupWindow.this.isShowing()) {
                ListPopupWindow.this.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$h */
    /* loaded from: classes3.dex */
    public class C0257h implements AbsListView.OnScrollListener {
        public C0257h() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || ListPopupWindow.this.isInputMethodNotNeeded() || ListPopupWindow.this.f1764w0.getContentView() == null) {
                return;
            }
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            listPopupWindow.f1754q0.removeCallbacks(listPopupWindow.f1736J);
            ListPopupWindow.this.f1736J.run();
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$i */
    /* loaded from: classes3.dex */
    public class ViewOnTouchListenerC0258i implements View.OnTouchListener {
        public ViewOnTouchListenerC0258i() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && (popupWindow = ListPopupWindow.this.f1764w0) != null && popupWindow.isShowing() && x >= 0 && x < ListPopupWindow.this.f1764w0.getWidth() && y >= 0 && y < ListPopupWindow.this.f1764w0.getHeight()) {
                ListPopupWindow listPopupWindow = ListPopupWindow.this;
                listPopupWindow.f1754q0.postDelayed(listPopupWindow.f1736J, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            ListPopupWindow listPopupWindow2 = ListPopupWindow.this;
            listPopupWindow2.f1754q0.removeCallbacks(listPopupWindow2.f1736J);
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$j */
    /* loaded from: classes3.dex */
    public class RunnableC0259j implements Runnable {
        public RunnableC0259j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            jjf jjfVar = ListPopupWindow.this.f1742g;
            if (jjfVar == null || !jjfVar.isAttachedToWindow() || ListPopupWindow.this.f1742g.getCount() <= ListPopupWindow.this.f1742g.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.f1742g.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.f1756s) {
                listPopupWindow.f1764w0.setInputMethodMode(2);
                ListPopupWindow.this.show();
            }
        }
    }

    public ListPopupWindow(@NonNull Context context) {
        this(context, null, C0118R.attr.listPopupWindowStyle);
    }

    /* renamed from: i */
    public static boolean m818i(int i) {
        return i == 66 || i == 23;
    }

    public void clearListSelection() {
        jjf jjfVar = this.f1742g;
        if (jjfVar != null) {
            jjfVar.setListSelectionHidden(true);
            jjfVar.requestLayout();
        }
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new C0250a(view);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        this.f1764w0.dismiss();
        m822j();
        this.f1764w0.setContentView(null);
        this.f1742g = null;
        this.f1754q0.removeCallbacks(this.f1736J);
    }

    /* renamed from: f */
    public final int m819f() {
        int i;
        int i2;
        int makeMeasureSpec;
        int i3;
        if (this.f1742g == null) {
            Context context = this.f1740e;
            this.f1747k0 = new RunnableC0251b();
            jjf mo820g = mo820g(context, !this.f1762v0);
            this.f1742g = mo820g;
            Drawable drawable = this.f1765x;
            if (drawable != null) {
                mo820g.setSelector(drawable);
            }
            this.f1742g.setAdapter(this.f1741f);
            this.f1742g.setOnItemClickListener(this.f1766y);
            this.f1742g.setFocusable(true);
            this.f1742g.setFocusableInTouchMode(true);
            this.f1742g.setOnItemSelectedListener(new C0252c());
            this.f1742g.setOnScrollListener(this.f1738Q);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f1767z;
            if (onItemSelectedListener != null) {
                this.f1742g.setOnItemSelectedListener(onItemSelectedListener);
            }
            View view = this.f1742g;
            View view2 = this.f1757t;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                int i4 = this.f1759u;
                if (i4 == 0) {
                    linearLayout.addView(view2);
                    linearLayout.addView(view, layoutParams);
                } else if (i4 != 1) {
                    Log.e(f1733x0, "Invalid hint position " + this.f1759u);
                } else {
                    linearLayout.addView(view, layoutParams);
                    linearLayout.addView(view2);
                }
                int i5 = this.f1744i;
                if (i5 >= 0) {
                    i3 = Integer.MIN_VALUE;
                } else {
                    i5 = 0;
                    i3 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i5, i3), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                i = view2.getMeasuredHeight() + layoutParams2.topMargin + layoutParams2.bottomMargin;
                view = linearLayout;
            } else {
                i = 0;
            }
            this.f1764w0.setContentView(view);
        } else {
            View view3 = this.f1757t;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                i = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                i = 0;
            }
        }
        Drawable background = this.f1764w0.getBackground();
        if (background != null) {
            background.getPadding(this.f1758t0);
            Rect rect = this.f1758t0;
            int i6 = rect.top;
            i2 = rect.bottom + i6;
            if (!this.f1749m) {
                this.f1746k = -i6;
            }
        } else {
            this.f1758t0.setEmpty();
            i2 = 0;
        }
        int m821h = m821h(getAnchorView(), this.f1746k, this.f1764w0.getInputMethodMode() == 2);
        if (this.f1753q || this.f1743h == -1) {
            return m821h + i2;
        }
        int i7 = this.f1744i;
        if (i7 == -2) {
            int i8 = this.f1740e.getResources().getDisplayMetrics().widthPixels;
            Rect rect2 = this.f1758t0;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i8 - (rect2.left + rect2.right), Integer.MIN_VALUE);
        } else if (i7 != -1) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
        } else {
            int i9 = this.f1740e.getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = this.f1758t0;
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9 - (rect3.left + rect3.right), 1073741824);
        }
        int measureHeightOfChildrenCompat = this.f1742g.measureHeightOfChildrenCompat(makeMeasureSpec, 0, -1, m821h - i, -1);
        if (measureHeightOfChildrenCompat > 0) {
            i += i2 + this.f1742g.getPaddingTop() + this.f1742g.getPaddingBottom();
        }
        return measureHeightOfChildrenCompat + i;
    }

    @NonNull
    /* renamed from: g */
    public jjf mo820g(Context context, boolean z) {
        return new jjf(context, z);
    }

    @Nullable
    public View getAnchorView() {
        return this.f1763w;
    }

    @StyleRes
    public int getAnimationStyle() {
        return this.f1764w0.getAnimationStyle();
    }

    @Nullable
    public Drawable getBackground() {
        return this.f1764w0.getBackground();
    }

    @Nullable
    public Rect getEpicenterBounds() {
        if (this.f1760u0 != null) {
            return new Rect(this.f1760u0);
        }
        return null;
    }

    public int getHeight() {
        return this.f1743h;
    }

    public int getHorizontalOffset() {
        return this.f1745j;
    }

    public int getInputMethodMode() {
        return this.f1764w0.getInputMethodMode();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    @Nullable
    public ListView getListView() {
        return this.f1742g;
    }

    public int getPromptPosition() {
        return this.f1759u;
    }

    @Nullable
    public Object getSelectedItem() {
        if (isShowing()) {
            return this.f1742g.getSelectedItem();
        }
        return null;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.f1742g.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.f1742g.getSelectedItemPosition();
        }
        return -1;
    }

    @Nullable
    public View getSelectedView() {
        if (isShowing()) {
            return this.f1742g.getSelectedView();
        }
        return null;
    }

    public int getSoftInputMode() {
        return this.f1764w0.getSoftInputMode();
    }

    public int getVerticalOffset() {
        if (this.f1749m) {
            return this.f1746k;
        }
        return 0;
    }

    public int getWidth() {
        return this.f1744i;
    }

    /* renamed from: h */
    public final int m821h(View view, int i, boolean z) {
        return C0253d.m826a(this.f1764w0, view, i, z);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isDropDownAlwaysVisible() {
        return this.f1753q;
    }

    public boolean isInputMethodNotNeeded() {
        return this.f1764w0.getInputMethodMode() == 2;
    }

    public boolean isModal() {
        return this.f1762v0;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.f1764w0.isShowing();
    }

    /* renamed from: j */
    public final void m822j() {
        View view = this.f1757t;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f1757t);
            }
        }
    }

    /* renamed from: k */
    public void m823k(int i) {
        this.f1756s = i;
    }

    /* renamed from: l */
    public final void m824l(boolean z) {
        C0254e.m828b(this.f1764w0, z);
    }

    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        int i2;
        int i3;
        if (isShowing() && i != 62 && (this.f1742g.getSelectedItemPosition() >= 0 || !m818i(i))) {
            int selectedItemPosition = this.f1742g.getSelectedItemPosition();
            boolean z = !this.f1764w0.isAboveAnchor();
            ListAdapter listAdapter = this.f1741f;
            if (listAdapter != null) {
                boolean areAllItemsEnabled = listAdapter.areAllItemsEnabled();
                i2 = areAllItemsEnabled ? 0 : this.f1742g.lookForSelectablePosition(0, true);
                i3 = areAllItemsEnabled ? listAdapter.getCount() - 1 : this.f1742g.lookForSelectablePosition(listAdapter.getCount() - 1, false);
            } else {
                i2 = Integer.MAX_VALUE;
                i3 = Integer.MIN_VALUE;
            }
            if ((z && i == 19 && selectedItemPosition <= i2) || (!z && i == 20 && selectedItemPosition >= i3)) {
                clearListSelection();
                this.f1764w0.setInputMethodMode(1);
                show();
                return true;
            }
            this.f1742g.setListSelectionHidden(false);
            if (this.f1742g.onKeyDown(i, keyEvent)) {
                this.f1764w0.setInputMethodMode(2);
                this.f1742g.requestFocusFromTouch();
                show();
                if (i == 19 || i == 20 || i == 23 || i == 66) {
                    return true;
                }
            } else if (z && i == 20) {
                if (selectedItemPosition == i3) {
                    return true;
                }
            } else if (!z && i == 19 && selectedItemPosition == i2) {
                return true;
            }
        }
        return false;
    }

    public boolean onKeyPreIme(int i, @NonNull KeyEvent keyEvent) {
        if (i != 4 || !isShowing()) {
            return false;
        }
        View view = this.f1763w;
        if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
            KeyEvent.DispatcherState keyDispatcherState = view.getKeyDispatcherState();
            if (keyDispatcherState != null) {
                keyDispatcherState.startTracking(keyEvent, this);
            }
            return true;
        }
        if (keyEvent.getAction() != 1) {
            return false;
        }
        KeyEvent.DispatcherState keyDispatcherState2 = view.getKeyDispatcherState();
        if (keyDispatcherState2 != null) {
            keyDispatcherState2.handleUpEvent(keyEvent);
        }
        if (!keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        dismiss();
        return true;
    }

    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        if (!isShowing() || this.f1742g.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean onKeyUp = this.f1742g.onKeyUp(i, keyEvent);
        if (onKeyUp && m818i(i)) {
            dismiss();
        }
        return onKeyUp;
    }

    public boolean performItemClick(int i) {
        if (!isShowing()) {
            return false;
        }
        if (this.f1766y == null) {
            return true;
        }
        jjf jjfVar = this.f1742g;
        this.f1766y.onItemClick(jjfVar, jjfVar.getChildAt(i - jjfVar.getFirstVisiblePosition()), i, jjfVar.getAdapter().getItemId(i));
        return true;
    }

    public void postShow() {
        this.f1754q0.post(this.f1747k0);
    }

    public void setAdapter(@Nullable ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.f1761v;
        if (dataSetObserver == null) {
            this.f1761v = new C0256g();
        } else {
            ListAdapter listAdapter2 = this.f1741f;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1741f = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f1761v);
        }
        jjf jjfVar = this.f1742g;
        if (jjfVar != null) {
            jjfVar.setAdapter(this.f1741f);
        }
    }

    public void setAnchorView(@Nullable View view) {
        this.f1763w = view;
    }

    public void setAnimationStyle(@StyleRes int i) {
        this.f1764w0.setAnimationStyle(i);
    }

    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        this.f1764w0.setBackgroundDrawable(drawable);
    }

    public void setContentWidth(int i) {
        Drawable background = this.f1764w0.getBackground();
        if (background == null) {
            setWidth(i);
            return;
        }
        background.getPadding(this.f1758t0);
        Rect rect = this.f1758t0;
        this.f1744i = rect.left + rect.right + i;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setDropDownAlwaysVisible(boolean z) {
        this.f1753q = z;
    }

    public void setDropDownGravity(int i) {
        this.f1752p = i;
    }

    public void setEpicenterBounds(@Nullable Rect rect) {
        this.f1760u0 = rect != null ? new Rect(rect) : null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setForceIgnoreOutsideTouch(boolean z) {
        this.f1755r = z;
    }

    public void setHeight(int i) {
        if (i < 0 && -2 != i && -1 != i) {
            throw new IllegalArgumentException("Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT.");
        }
        this.f1743h = i;
    }

    public void setHorizontalOffset(int i) {
        this.f1745j = i;
    }

    public void setInputMethodMode(int i) {
        this.f1764w0.setInputMethodMode(i);
    }

    public void setListSelector(Drawable drawable) {
        this.f1765x = drawable;
    }

    public void setModal(boolean z) {
        this.f1762v0 = z;
        this.f1764w0.setFocusable(z);
    }

    public void setOnDismissListener(@Nullable PopupWindow.OnDismissListener onDismissListener) {
        this.f1764w0.setOnDismissListener(onDismissListener);
    }

    public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.f1766y = onItemClickListener;
    }

    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.f1767z = onItemSelectedListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setOverlapAnchor(boolean z) {
        this.f1751o = true;
        this.f1750n = z;
    }

    public void setPromptPosition(int i) {
        this.f1759u = i;
    }

    public void setPromptView(@Nullable View view) {
        boolean isShowing = isShowing();
        if (isShowing) {
            m822j();
        }
        this.f1757t = view;
        if (isShowing) {
            show();
        }
    }

    public void setSelection(int i) {
        jjf jjfVar = this.f1742g;
        if (!isShowing() || jjfVar == null) {
            return;
        }
        jjfVar.setListSelectionHidden(false);
        jjfVar.setSelection(i);
        if (jjfVar.getChoiceMode() != 0) {
            jjfVar.setItemChecked(i, true);
        }
    }

    public void setSoftInputMode(int i) {
        this.f1764w0.setSoftInputMode(i);
    }

    public void setVerticalOffset(int i) {
        this.f1746k = i;
        this.f1749m = true;
    }

    public void setWidth(int i) {
        this.f1744i = i;
    }

    public void setWindowLayoutType(int i) {
        this.f1748l = i;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        int m819f = m819f();
        boolean isInputMethodNotNeeded = isInputMethodNotNeeded();
        PopupWindowCompat.setWindowLayoutType(this.f1764w0, this.f1748l);
        if (this.f1764w0.isShowing()) {
            if (getAnchorView().isAttachedToWindow()) {
                int i = this.f1744i;
                if (i == -1) {
                    i = -1;
                } else if (i == -2) {
                    i = getAnchorView().getWidth();
                }
                int i2 = this.f1743h;
                if (i2 == -1) {
                    if (!isInputMethodNotNeeded) {
                        m819f = -1;
                    }
                    if (isInputMethodNotNeeded) {
                        this.f1764w0.setWidth(this.f1744i == -1 ? -1 : 0);
                        this.f1764w0.setHeight(0);
                    } else {
                        this.f1764w0.setWidth(this.f1744i == -1 ? -1 : 0);
                        this.f1764w0.setHeight(-1);
                    }
                } else if (i2 != -2) {
                    m819f = i2;
                }
                this.f1764w0.setOutsideTouchable((this.f1755r || this.f1753q) ? false : true);
                this.f1764w0.update(getAnchorView(), this.f1745j, this.f1746k, i < 0 ? -1 : i, m819f < 0 ? -1 : m819f);
                return;
            }
            return;
        }
        int i3 = this.f1744i;
        if (i3 == -1) {
            i3 = -1;
        } else if (i3 == -2) {
            i3 = getAnchorView().getWidth();
        }
        int i4 = this.f1743h;
        if (i4 == -1) {
            m819f = -1;
        } else if (i4 != -2) {
            m819f = i4;
        }
        this.f1764w0.setWidth(i3);
        this.f1764w0.setHeight(m819f);
        m824l(true);
        this.f1764w0.setOutsideTouchable((this.f1755r || this.f1753q) ? false : true);
        this.f1764w0.setTouchInterceptor(this.f1737O);
        if (this.f1751o) {
            PopupWindowCompat.setOverlapAnchor(this.f1764w0, this.f1750n);
        }
        C0254e.m827a(this.f1764w0, this.f1760u0);
        PopupWindowCompat.showAsDropDown(this.f1764w0, getAnchorView(), this.f1745j, this.f1746k, this.f1752p);
        this.f1742g.setSelection(-1);
        if (!this.f1762v0 || this.f1742g.isInTouchMode()) {
            clearListSelection();
        }
        if (this.f1762v0) {
            return;
        }
        this.f1754q0.post(this.f1739Z);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        this.f1743h = -2;
        this.f1744i = -2;
        this.f1748l = 1002;
        this.f1752p = 0;
        this.f1753q = false;
        this.f1755r = false;
        this.f1756s = Integer.MAX_VALUE;
        this.f1759u = 0;
        this.f1736J = new RunnableC0259j();
        this.f1737O = new ViewOnTouchListenerC0258i();
        this.f1738Q = new C0257h();
        this.f1739Z = new RunnableC0255f();
        this.f1758t0 = new Rect();
        this.f1740e = context;
        this.f1754q0 = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0118R.styleable.ListPopupWindow, i, i2);
        this.f1745j = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.f1746k = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1749m = true;
        }
        obtainStyledAttributes.recycle();
        C14234pc c14234pc = new C14234pc(context, attributeSet, i, i2);
        this.f1764w0 = c14234pc;
        c14234pc.setInputMethodMode(1);
    }
}
