package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ActivityChooserView extends ViewGroup implements ActivityChooserModel.ActivityChooserModelClient {

    /* renamed from: e */
    public final C0226f f1454e;

    /* renamed from: f */
    public final ViewOnClickListenerC0227g f1455f;

    /* renamed from: g */
    public final View f1456g;

    /* renamed from: h */
    public final Drawable f1457h;

    /* renamed from: i */
    public final FrameLayout f1458i;

    /* renamed from: j */
    public final ImageView f1459j;

    /* renamed from: k */
    public final FrameLayout f1460k;

    /* renamed from: l */
    public final ImageView f1461l;

    /* renamed from: m */
    public final int f1462m;

    /* renamed from: n */
    public ActionProvider f1463n;

    /* renamed from: o */
    public final DataSetObserver f1464o;

    /* renamed from: p */
    public final ViewTreeObserver.OnGlobalLayoutListener f1465p;

    /* renamed from: q */
    public ListPopupWindow f1466q;

    /* renamed from: r */
    public PopupWindow.OnDismissListener f1467r;

    /* renamed from: s */
    public boolean f1468s;

    /* renamed from: t */
    public int f1469t;

    /* renamed from: u */
    public boolean f1470u;

    /* renamed from: v */
    public int f1471v;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: e */
        public static final int[] f1472e = {R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, f1472e);
            setBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$a */
    /* loaded from: classes3.dex */
    public class C0221a extends DataSetObserver {
        public C0221a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.f1454e.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            super.onInvalidated();
            ActivityChooserView.this.f1454e.notifyDataSetInvalidated();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$b */
    /* loaded from: classes3.dex */
    public class ViewTreeObserverOnGlobalLayoutListenerC0222b implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserverOnGlobalLayoutListenerC0222b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (ActivityChooserView.this.isShowingPopup()) {
                if (!ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                    return;
                }
                ActivityChooserView.this.getListPopupWindow().show();
                ActionProvider actionProvider = ActivityChooserView.this.f1463n;
                if (actionProvider != null) {
                    actionProvider.subUiVisibilityChanged(true);
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$c */
    /* loaded from: classes3.dex */
    public class C0223c extends View.AccessibilityDelegate {
        public C0223c() {
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCanOpenPopup(true);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$d */
    /* loaded from: classes3.dex */
    public class C0224d extends ForwardingListener {
        public C0224d(View view) {
            super(view);
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public ShowableListMenu getPopup() {
            return ActivityChooserView.this.getListPopupWindow();
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStarted() {
            ActivityChooserView.this.showPopup();
            return true;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public boolean onForwardingStopped() {
            ActivityChooserView.this.dismissPopup();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$e */
    /* loaded from: classes3.dex */
    public class C0225e extends DataSetObserver {
        public C0225e() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            ActivityChooserView.this.m704b();
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$f */
    /* loaded from: classes3.dex */
    public class C0226f extends BaseAdapter {

        /* renamed from: k */
        public static final int f1478k = Integer.MAX_VALUE;

        /* renamed from: l */
        public static final int f1479l = 4;

        /* renamed from: m */
        public static final int f1480m = 0;

        /* renamed from: n */
        public static final int f1481n = 1;

        /* renamed from: o */
        public static final int f1482o = 3;

        /* renamed from: e */
        public ActivityChooserModel f1483e;

        /* renamed from: f */
        public int f1484f = 4;

        /* renamed from: g */
        public boolean f1485g;

        /* renamed from: h */
        public boolean f1486h;

        /* renamed from: i */
        public boolean f1487i;

        public C0226f() {
        }

        /* renamed from: a */
        public int m705a() {
            return this.f1483e.m685f();
        }

        /* renamed from: b */
        public ActivityChooserModel m706b() {
            return this.f1483e;
        }

        /* renamed from: c */
        public ResolveInfo m707c() {
            return this.f1483e.m687h();
        }

        /* renamed from: d */
        public int m708d() {
            return this.f1483e.m689j();
        }

        /* renamed from: e */
        public boolean m709e() {
            return this.f1485g;
        }

        /* renamed from: f */
        public int m710f() {
            int i = this.f1484f;
            this.f1484f = Integer.MAX_VALUE;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int count = getCount();
            int i2 = 0;
            View view = null;
            for (int i3 = 0; i3 < count; i3++) {
                view = getView(i3, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i2 = Math.max(i2, view.getMeasuredWidth());
            }
            this.f1484f = i;
            return i2;
        }

        /* renamed from: g */
        public void m711g(ActivityChooserModel activityChooserModel) {
            ActivityChooserModel m706b = ActivityChooserView.this.f1454e.m706b();
            if (m706b != null && ActivityChooserView.this.isShown()) {
                m706b.unregisterObserver(ActivityChooserView.this.f1464o);
            }
            this.f1483e = activityChooserModel;
            if (activityChooserModel != null && ActivityChooserView.this.isShown()) {
                activityChooserModel.registerObserver(ActivityChooserView.this.f1464o);
            }
            notifyDataSetChanged();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int m685f = this.f1483e.m685f();
            if (!this.f1485g && this.f1483e.m687h() != null) {
                m685f--;
            }
            int min = Math.min(m685f, this.f1484f);
            return this.f1487i ? min + 1 : min;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (!this.f1485g && this.f1483e.m687h() != null) {
                i++;
            }
            return this.f1483e.m684e(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            return (this.f1487i && i == getCount() - 1) ? 1 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                if (view != null && view.getId() == 1) {
                    return view;
                }
                View inflate = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(C0118R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
                inflate.setId(1);
                ((TextView) inflate.findViewById(C0118R.id.title)).setText(ActivityChooserView.this.getContext().getString(C0118R.string.abc_activity_chooser_view_see_all));
                return inflate;
            }
            if (view == null || view.getId() != C0118R.id.list_item) {
                view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(C0118R.layout.abc_activity_chooser_view_list_item, viewGroup, false);
            }
            PackageManager packageManager = ActivityChooserView.this.getContext().getPackageManager();
            ImageView imageView = (ImageView) view.findViewById(C0118R.id.icon);
            ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
            imageView.setImageDrawable(resolveInfo.loadIcon(packageManager));
            ((TextView) view.findViewById(C0118R.id.title)).setText(resolveInfo.loadLabel(packageManager));
            if (this.f1485g && i == 0 && this.f1486h) {
                view.setActivated(true);
            } else {
                view.setActivated(false);
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 3;
        }

        /* renamed from: h */
        public void m712h(int i) {
            if (this.f1484f != i) {
                this.f1484f = i;
                notifyDataSetChanged();
            }
        }

        /* renamed from: i */
        public void m713i(boolean z, boolean z2) {
            if (this.f1485g == z && this.f1486h == z2) {
                return;
            }
            this.f1485g = z;
            this.f1486h = z2;
            notifyDataSetChanged();
        }

        /* renamed from: j */
        public void m714j(boolean z) {
            if (this.f1487i != z) {
                this.f1487i = z;
                notifyDataSetChanged();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$g */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC0227g implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        public ViewOnClickListenerC0227g() {
        }

        /* renamed from: a */
        public final void m715a() {
            PopupWindow.OnDismissListener onDismissListener = ActivityChooserView.this.f1467r;
            if (onDismissListener != null) {
                onDismissListener.onDismiss();
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f1460k) {
                if (view != activityChooserView.f1458i) {
                    throw new IllegalArgumentException();
                }
                activityChooserView.f1468s = false;
                activityChooserView.m703a(activityChooserView.f1469t);
                return;
            }
            activityChooserView.dismissPopup();
            Intent m682b = ActivityChooserView.this.f1454e.m706b().m682b(ActivityChooserView.this.f1454e.m706b().m686g(ActivityChooserView.this.f1454e.m707c()));
            if (m682b != null) {
                m682b.addFlags(524288);
                ActivityChooserView.this.getContext().startActivity(m682b);
            }
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            m715a();
            ActionProvider actionProvider = ActivityChooserView.this.f1463n;
            if (actionProvider != null) {
                actionProvider.subUiVisibilityChanged(false);
            }
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            int itemViewType = ((C0226f) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    throw new IllegalArgumentException();
                }
                ActivityChooserView.this.m703a(Integer.MAX_VALUE);
                return;
            }
            ActivityChooserView.this.dismissPopup();
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (activityChooserView.f1468s) {
                if (i > 0) {
                    activityChooserView.f1454e.m706b().m697r(i);
                    return;
                }
                return;
            }
            if (!activityChooserView.f1454e.m709e()) {
                i++;
            }
            Intent m682b = ActivityChooserView.this.f1454e.m706b().m682b(i);
            if (m682b != null) {
                m682b.addFlags(524288);
                ActivityChooserView.this.getContext().startActivity(m682b);
            }
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            ActivityChooserView activityChooserView = ActivityChooserView.this;
            if (view != activityChooserView.f1460k) {
                throw new IllegalArgumentException();
            }
            if (activityChooserView.f1454e.getCount() > 0) {
                ActivityChooserView activityChooserView2 = ActivityChooserView.this;
                activityChooserView2.f1468s = true;
                activityChooserView2.m703a(activityChooserView2.f1469t);
            }
            return true;
        }
    }

    public ActivityChooserView(@NonNull Context context) {
        this(context, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [boolean, int] */
    /* renamed from: a */
    public void m703a(int i) {
        if (this.f1454e.m706b() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.f1465p);
        ?? r0 = this.f1460k.getVisibility() == 0 ? 1 : 0;
        int m705a = this.f1454e.m705a();
        if (i == Integer.MAX_VALUE || m705a <= i + r0) {
            this.f1454e.m714j(false);
            this.f1454e.m712h(i);
        } else {
            this.f1454e.m714j(true);
            this.f1454e.m712h(i - 1);
        }
        ListPopupWindow listPopupWindow = getListPopupWindow();
        if (listPopupWindow.isShowing()) {
            return;
        }
        if (this.f1468s || r0 == 0) {
            this.f1454e.m713i(true, r0);
        } else {
            this.f1454e.m713i(false, false);
        }
        listPopupWindow.setContentWidth(Math.min(this.f1454e.m710f(), this.f1462m));
        listPopupWindow.show();
        ActionProvider actionProvider = this.f1463n;
        if (actionProvider != null) {
            actionProvider.subUiVisibilityChanged(true);
        }
        listPopupWindow.getListView().setContentDescription(getContext().getString(C0118R.string.abc_activitychooserview_choose_application));
        listPopupWindow.getListView().setSelector(new ColorDrawable(0));
    }

    /* renamed from: b */
    public void m704b() {
        if (this.f1454e.getCount() > 0) {
            this.f1458i.setEnabled(true);
        } else {
            this.f1458i.setEnabled(false);
        }
        int m705a = this.f1454e.m705a();
        int m708d = this.f1454e.m708d();
        if (m705a == 1 || (m705a > 1 && m708d > 0)) {
            this.f1460k.setVisibility(0);
            ResolveInfo m707c = this.f1454e.m707c();
            PackageManager packageManager = getContext().getPackageManager();
            this.f1461l.setImageDrawable(m707c.loadIcon(packageManager));
            if (this.f1471v != 0) {
                this.f1460k.setContentDescription(getContext().getString(this.f1471v, m707c.loadLabel(packageManager)));
            }
        } else {
            this.f1460k.setVisibility(8);
        }
        if (this.f1460k.getVisibility() == 0) {
            this.f1456g.setBackgroundDrawable(this.f1457h);
        } else {
            this.f1456g.setBackgroundDrawable(null);
        }
    }

    public boolean dismissPopup() {
        if (!isShowingPopup()) {
            return true;
        }
        getListPopupWindow().dismiss();
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        viewTreeObserver.removeGlobalOnLayoutListener(this.f1465p);
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public ActivityChooserModel getDataModel() {
        return this.f1454e.m706b();
    }

    public ListPopupWindow getListPopupWindow() {
        if (this.f1466q == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.f1466q = listPopupWindow;
            listPopupWindow.setAdapter(this.f1454e);
            this.f1466q.setAnchorView(this);
            this.f1466q.setModal(true);
            this.f1466q.setOnItemClickListener(this.f1455f);
            this.f1466q.setOnDismissListener(this.f1455f);
        }
        return this.f1466q;
    }

    public boolean isShowingPopup() {
        return getListPopupWindow().isShowing();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ActivityChooserModel m706b = this.f1454e.m706b();
        if (m706b != null) {
            m706b.registerObserver(this.f1464o);
        }
        this.f1470u = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActivityChooserModel m706b = this.f1454e.m706b();
        if (m706b != null) {
            m706b.unregisterObserver(this.f1464o);
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f1465p);
        }
        if (isShowingPopup()) {
            dismissPopup();
        }
        this.f1470u = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.f1456g.layout(0, 0, i3 - i, i4 - i2);
        if (isShowingPopup()) {
            return;
        }
        dismissPopup();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        View view = this.f1456g;
        if (this.f1460k.getVisibility() != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    @Override // androidx.appcompat.widget.ActivityChooserModel.ActivityChooserModelClient
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        this.f1454e.m711g(activityChooserModel);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.f1471v = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.f1459j.setContentDescription(getContext().getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.f1459j.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.f1469t = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f1467r = onDismissListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setProvider(ActionProvider actionProvider) {
        this.f1463n = actionProvider;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.f1470u) {
            return false;
        }
        this.f1468s = false;
        m703a(this.f1469t);
        return true;
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1464o = new C0221a();
        this.f1465p = new ViewTreeObserverOnGlobalLayoutListenerC0222b();
        this.f1469t = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0118R.styleable.ActivityChooserView, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C0118R.styleable.ActivityChooserView, attributeSet, obtainStyledAttributes, i, 0);
        this.f1469t = obtainStyledAttributes.getInt(C0118R.styleable.ActivityChooserView_initialActivityCount, 4);
        Drawable drawable = obtainStyledAttributes.getDrawable(C0118R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(getContext()).inflate(C0118R.layout.abc_activity_chooser_view, (ViewGroup) this, true);
        ViewOnClickListenerC0227g viewOnClickListenerC0227g = new ViewOnClickListenerC0227g();
        this.f1455f = viewOnClickListenerC0227g;
        View findViewById = findViewById(C0118R.id.activity_chooser_view_content);
        this.f1456g = findViewById;
        this.f1457h = findViewById.getBackground();
        FrameLayout frameLayout = (FrameLayout) findViewById(C0118R.id.default_activity_button);
        this.f1460k = frameLayout;
        frameLayout.setOnClickListener(viewOnClickListenerC0227g);
        frameLayout.setOnLongClickListener(viewOnClickListenerC0227g);
        this.f1461l = (ImageView) frameLayout.findViewById(C0118R.id.image);
        FrameLayout frameLayout2 = (FrameLayout) findViewById(C0118R.id.expand_activities_button);
        frameLayout2.setOnClickListener(viewOnClickListenerC0227g);
        frameLayout2.setAccessibilityDelegate(new C0223c());
        frameLayout2.setOnTouchListener(new C0224d(frameLayout2));
        this.f1458i = frameLayout2;
        ImageView imageView = (ImageView) frameLayout2.findViewById(C0118R.id.image);
        this.f1459j = imageView;
        imageView.setImageDrawable(drawable);
        C0226f c0226f = new C0226f();
        this.f1454e = c0226f;
        c0226f.registerDataSetObserver(new C0225e());
        Resources resources = context.getResources();
        this.f1462m = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(C0118R.dimen.abc_config_prefDialogWidth));
    }
}
