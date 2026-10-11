package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.SpinnerAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.ViewPropertyAnimatorCompatSet;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.DecorToolbar;
import androidx.appcompat.widget.ScrollingTabContainerView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentTransaction;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class WindowDecorActionBar extends ActionBar implements ActionBarOverlayLayout.ActionBarVisibilityCallback {

    /* renamed from: F */
    public static final String f805F = "WindowDecorActionBar";

    /* renamed from: G */
    public static final Interpolator f806G = new AccelerateInterpolator();

    /* renamed from: H */
    public static final Interpolator f807H = new DecelerateInterpolator();

    /* renamed from: I */
    public static final int f808I = -1;

    /* renamed from: J */
    public static final long f809J = 100;

    /* renamed from: K */
    public static final long f810K = 200;

    /* renamed from: A */
    public boolean f811A;

    /* renamed from: B */
    public boolean f812B;

    /* renamed from: a */
    public Context f816a;

    /* renamed from: b */
    public Context f817b;

    /* renamed from: c */
    public Activity f818c;

    /* renamed from: d */
    public ActionBarOverlayLayout f819d;

    /* renamed from: e */
    public ActionBarContainer f820e;

    /* renamed from: f */
    public DecorToolbar f821f;

    /* renamed from: g */
    public ActionBarContextView f822g;

    /* renamed from: h */
    public View f823h;

    /* renamed from: i */
    public ScrollingTabContainerView f824i;

    /* renamed from: k */
    public TabImpl f826k;

    /* renamed from: m */
    public boolean f828m;

    /* renamed from: n */
    public ActionModeImpl f829n;

    /* renamed from: o */
    public ActionMode f830o;

    /* renamed from: p */
    public ActionMode.Callback f831p;

    /* renamed from: q */
    public boolean f832q;

    /* renamed from: s */
    public boolean f834s;

    /* renamed from: v */
    public boolean f837v;

    /* renamed from: w */
    public boolean f838w;

    /* renamed from: x */
    public boolean f839x;

    /* renamed from: z */
    public ViewPropertyAnimatorCompatSet f841z;

    /* renamed from: j */
    public ArrayList<TabImpl> f825j = new ArrayList<>();

    /* renamed from: l */
    public int f827l = -1;

    /* renamed from: r */
    public ArrayList<ActionBar.OnMenuVisibilityListener> f833r = new ArrayList<>();

    /* renamed from: t */
    public int f835t = 0;

    /* renamed from: u */
    public boolean f836u = true;

    /* renamed from: y */
    public boolean f840y = true;

    /* renamed from: C */
    public final ViewPropertyAnimatorListener f813C = new C0163a();

    /* renamed from: D */
    public final ViewPropertyAnimatorListener f814D = new C0164b();

    /* renamed from: E */
    public final ViewPropertyAnimatorUpdateListener f815E = new C0165c();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public class ActionModeImpl extends ActionMode implements MenuBuilder.Callback {

        /* renamed from: g */
        public final Context f842g;

        /* renamed from: h */
        public final MenuBuilder f843h;

        /* renamed from: i */
        public ActionMode.Callback f844i;

        /* renamed from: j */
        public WeakReference<View> f845j;

        public ActionModeImpl(Context context, ActionMode.Callback callback) {
            this.f842g = context;
            this.f844i = callback;
            MenuBuilder defaultShowAsAction = new MenuBuilder(context).setDefaultShowAsAction(1);
            this.f843h = defaultShowAsAction;
            defaultShowAsAction.setCallback(this);
        }

        public boolean dispatchOnCreate() {
            this.f843h.stopDispatchingItemsChanged();
            try {
                return this.f844i.onCreateActionMode(this, this.f843h);
            } finally {
                this.f843h.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public void finish() {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.f829n != this) {
                return;
            }
            if (WindowDecorActionBar.m457b(windowDecorActionBar.f837v, windowDecorActionBar.f838w, false)) {
                this.f844i.onDestroyActionMode(this);
            } else {
                WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
                windowDecorActionBar2.f830o = this;
                windowDecorActionBar2.f831p = this.f844i;
            }
            this.f844i = null;
            WindowDecorActionBar.this.animateToMode(false);
            WindowDecorActionBar.this.f822g.closeMode();
            WindowDecorActionBar windowDecorActionBar3 = WindowDecorActionBar.this;
            windowDecorActionBar3.f819d.setHideOnContentScrollEnabled(windowDecorActionBar3.f812B);
            WindowDecorActionBar.this.f829n = null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public View getCustomView() {
            WeakReference<View> weakReference = this.f845j;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.ActionMode
        public Menu getMenu() {
            return this.f843h;
        }

        @Override // androidx.appcompat.view.ActionMode
        public MenuInflater getMenuInflater() {
            return new SupportMenuInflater(this.f842g);
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence getSubtitle() {
            return WindowDecorActionBar.this.f822g.getSubtitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public CharSequence getTitle() {
            return WindowDecorActionBar.this.f822g.getTitle();
        }

        @Override // androidx.appcompat.view.ActionMode
        public void invalidate() {
            if (WindowDecorActionBar.this.f829n != this) {
                return;
            }
            this.f843h.stopDispatchingItemsChanged();
            try {
                this.f844i.onPrepareActionMode(this, this.f843h);
            } finally {
                this.f843h.startDispatchingItemsChanged();
            }
        }

        @Override // androidx.appcompat.view.ActionMode
        public boolean isTitleOptional() {
            return WindowDecorActionBar.this.f822g.isTitleOptional();
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public void onCloseSubMenu(SubMenuBuilder subMenuBuilder) {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            ActionMode.Callback callback = this.f844i;
            if (callback != null) {
                return callback.onActionItemClicked(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            if (this.f844i == null) {
                return;
            }
            invalidate();
            WindowDecorActionBar.this.f822g.showOverflowMenu();
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            if (this.f844i == null) {
                return false;
            }
            if (!subMenuBuilder.hasVisibleItems()) {
                return true;
            }
            new MenuPopupHelper(WindowDecorActionBar.this.getThemedContext(), subMenuBuilder).show();
            return true;
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setCustomView(View view) {
            WindowDecorActionBar.this.f822g.setCustomView(view);
            this.f845j = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
            WindowDecorActionBar.this.f822g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitle(CharSequence charSequence) {
            WindowDecorActionBar.this.f822g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitleOptionalHint(boolean z) {
            super.setTitleOptionalHint(z);
            WindowDecorActionBar.this.f822g.setTitleOptional(z);
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setSubtitle(int i) {
            setSubtitle(WindowDecorActionBar.this.f816a.getResources().getString(i));
        }

        @Override // androidx.appcompat.view.ActionMode
        public void setTitle(int i) {
            setTitle(WindowDecorActionBar.this.f816a.getResources().getString(i));
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public class TabImpl extends ActionBar.Tab {

        /* renamed from: a */
        public ActionBar.TabListener f847a;

        /* renamed from: b */
        public Object f848b;

        /* renamed from: c */
        public Drawable f849c;

        /* renamed from: d */
        public CharSequence f850d;

        /* renamed from: e */
        public CharSequence f851e;

        /* renamed from: f */
        public int f852f = -1;

        /* renamed from: g */
        public View f853g;

        public TabImpl() {
        }

        public ActionBar.TabListener getCallback() {
            return this.f847a;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence getContentDescription() {
            return this.f851e;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public View getCustomView() {
            return this.f853g;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public Drawable getIcon() {
            return this.f849c;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public int getPosition() {
            return this.f852f;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public Object getTag() {
            return this.f848b;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public CharSequence getText() {
            return this.f850d;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public void select() {
            WindowDecorActionBar.this.selectTab(this);
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(int i) {
            return setContentDescription(WindowDecorActionBar.this.f816a.getResources().getText(i));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(View view) {
            this.f853g = view;
            int i = this.f852f;
            if (i >= 0) {
                WindowDecorActionBar.this.f824i.updateTab(i);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setIcon(Drawable drawable) {
            this.f849c = drawable;
            int i = this.f852f;
            if (i >= 0) {
                WindowDecorActionBar.this.f824i.updateTab(i);
            }
            return this;
        }

        public void setPosition(int i) {
            this.f852f = i;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setTabListener(ActionBar.TabListener tabListener) {
            this.f847a = tabListener;
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setTag(Object obj) {
            this.f848b = obj;
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setText(CharSequence charSequence) {
            this.f850d = charSequence;
            int i = this.f852f;
            if (i >= 0) {
                WindowDecorActionBar.this.f824i.updateTab(i);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setContentDescription(CharSequence charSequence) {
            this.f851e = charSequence;
            int i = this.f852f;
            if (i >= 0) {
                WindowDecorActionBar.this.f824i.updateTab(i);
            }
            return this;
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setCustomView(int i) {
            return setCustomView(LayoutInflater.from(WindowDecorActionBar.this.getThemedContext()).inflate(i, (ViewGroup) null));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setIcon(int i) {
            return setIcon(AppCompatResources.getDrawable(WindowDecorActionBar.this.f816a, i));
        }

        @Override // androidx.appcompat.app.ActionBar.Tab
        public ActionBar.Tab setText(int i) {
            return setText(WindowDecorActionBar.this.f816a.getResources().getText(i));
        }
    }

    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$a */
    /* loaded from: classes3.dex */
    public class C0163a extends ViewPropertyAnimatorListenerAdapter {
        public C0163a() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            View view2;
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            if (windowDecorActionBar.f836u && (view2 = windowDecorActionBar.f823h) != null) {
                view2.setTranslationY(0.0f);
                WindowDecorActionBar.this.f820e.setTranslationY(0.0f);
            }
            WindowDecorActionBar.this.f820e.setVisibility(8);
            WindowDecorActionBar.this.f820e.setTransitioning(false);
            WindowDecorActionBar windowDecorActionBar2 = WindowDecorActionBar.this;
            windowDecorActionBar2.f841z = null;
            windowDecorActionBar2.m459d();
            ActionBarOverlayLayout actionBarOverlayLayout = WindowDecorActionBar.this.f819d;
            if (actionBarOverlayLayout != null) {
                ViewCompat.requestApplyInsets(actionBarOverlayLayout);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$b */
    /* loaded from: classes3.dex */
    public class C0164b extends ViewPropertyAnimatorListenerAdapter {
        public C0164b() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            WindowDecorActionBar windowDecorActionBar = WindowDecorActionBar.this;
            windowDecorActionBar.f841z = null;
            windowDecorActionBar.f820e.requestLayout();
        }
    }

    /* renamed from: androidx.appcompat.app.WindowDecorActionBar$c */
    /* loaded from: classes3.dex */
    public class C0165c implements ViewPropertyAnimatorUpdateListener {
        public C0165c() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
        public void onAnimationUpdate(View view) {
            ((View) WindowDecorActionBar.this.f820e.getParent()).invalidate();
        }
    }

    public WindowDecorActionBar(Activity activity, boolean z) {
        this.f818c = activity;
        View decorView = activity.getWindow().getDecorView();
        m464i(decorView);
        if (z) {
            return;
        }
        this.f823h = decorView.findViewById(R.id.content);
    }

    /* renamed from: b */
    public static boolean m457b(boolean z, boolean z2, boolean z3) {
        if (z3) {
            return true;
        }
        return (z || z2) ? false : true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f833r.add(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab) {
        addTab(tab, this.f825j.isEmpty());
    }

    public void animateToMode(boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat;
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2;
        if (z) {
            m467l();
        } else {
            m463h();
        }
        if (!m466k()) {
            if (z) {
                this.f821f.setVisibility(4);
                this.f822g.setVisibility(0);
                return;
            } else {
                this.f821f.setVisibility(0);
                this.f822g.setVisibility(8);
                return;
            }
        }
        if (z) {
            viewPropertyAnimatorCompat = this.f821f.setupAnimatorToVisibility(4, 100L);
            viewPropertyAnimatorCompat2 = this.f822g.setupAnimatorToVisibility(0, 200L);
        } else {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat3 = this.f821f.setupAnimatorToVisibility(0, 200L);
            viewPropertyAnimatorCompat = this.f822g.setupAnimatorToVisibility(8, 100L);
            viewPropertyAnimatorCompat2 = viewPropertyAnimatorCompat3;
        }
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = new ViewPropertyAnimatorCompatSet();
        viewPropertyAnimatorCompatSet.playSequentially(viewPropertyAnimatorCompat, viewPropertyAnimatorCompat2);
        viewPropertyAnimatorCompatSet.start();
    }

    /* renamed from: c */
    public final void m458c() {
        if (this.f826k != null) {
            selectTab(null);
        }
        this.f825j.clear();
        ScrollingTabContainerView scrollingTabContainerView = this.f824i;
        if (scrollingTabContainerView != null) {
            scrollingTabContainerView.removeAllTabs();
        }
        this.f827l = -1;
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean collapseActionView() {
        DecorToolbar decorToolbar = this.f821f;
        if (decorToolbar == null || !decorToolbar.hasExpandedActionView()) {
            return false;
        }
        this.f821f.collapseActionView();
        return true;
    }

    /* renamed from: d */
    public void m459d() {
        ActionMode.Callback callback = this.f831p;
        if (callback != null) {
            callback.onDestroyActionMode(this.f830o);
            this.f830o = null;
            this.f831p = null;
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void dispatchMenuVisibilityChanged(boolean z) {
        if (z == this.f832q) {
            return;
        }
        this.f832q = z;
        int size = this.f833r.size();
        for (int i = 0; i < size; i++) {
            this.f833r.get(i).onMenuVisibilityChanged(z);
        }
    }

    public void doHide(boolean z) {
        View view;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f841z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
        }
        if (this.f835t != 0 || (!this.f811A && !z)) {
            this.f813C.onAnimationEnd(null);
            return;
        }
        this.f820e.setAlpha(1.0f);
        this.f820e.setTransitioning(true);
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
        float f = -this.f820e.getHeight();
        if (z) {
            this.f820e.getLocationInWindow(new int[]{0, 0});
            f -= r5[1];
        }
        ViewPropertyAnimatorCompat translationY = ViewCompat.animate(this.f820e).translationY(f);
        translationY.setUpdateListener(this.f815E);
        viewPropertyAnimatorCompatSet2.play(translationY);
        if (this.f836u && (view = this.f823h) != null) {
            viewPropertyAnimatorCompatSet2.play(ViewCompat.animate(view).translationY(f));
        }
        viewPropertyAnimatorCompatSet2.setInterpolator(f806G);
        viewPropertyAnimatorCompatSet2.setDuration(250L);
        viewPropertyAnimatorCompatSet2.setListener(this.f813C);
        this.f841z = viewPropertyAnimatorCompatSet2;
        viewPropertyAnimatorCompatSet2.start();
    }

    public void doShow(boolean z) {
        View view;
        View view2;
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f841z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
        }
        this.f820e.setVisibility(0);
        if (this.f835t == 0 && (this.f811A || z)) {
            this.f820e.setTranslationY(0.0f);
            float f = -this.f820e.getHeight();
            if (z) {
                this.f820e.getLocationInWindow(new int[]{0, 0});
                f -= r5[1];
            }
            this.f820e.setTranslationY(f);
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet2 = new ViewPropertyAnimatorCompatSet();
            ViewPropertyAnimatorCompat translationY = ViewCompat.animate(this.f820e).translationY(0.0f);
            translationY.setUpdateListener(this.f815E);
            viewPropertyAnimatorCompatSet2.play(translationY);
            if (this.f836u && (view2 = this.f823h) != null) {
                view2.setTranslationY(f);
                viewPropertyAnimatorCompatSet2.play(ViewCompat.animate(this.f823h).translationY(0.0f));
            }
            viewPropertyAnimatorCompatSet2.setInterpolator(f807H);
            viewPropertyAnimatorCompatSet2.setDuration(250L);
            viewPropertyAnimatorCompatSet2.setListener(this.f814D);
            this.f841z = viewPropertyAnimatorCompatSet2;
            viewPropertyAnimatorCompatSet2.start();
        } else {
            this.f820e.setAlpha(1.0f);
            this.f820e.setTranslationY(0.0f);
            if (this.f836u && (view = this.f823h) != null) {
                view.setTranslationY(0.0f);
            }
            this.f814D.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f819d;
        if (actionBarOverlayLayout != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    /* renamed from: e */
    public final void m460e(ActionBar.Tab tab, int i) {
        TabImpl tabImpl = (TabImpl) tab;
        if (tabImpl.getCallback() == null) {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        tabImpl.setPosition(i);
        this.f825j.add(i, tabImpl);
        int size = this.f825j.size();
        while (true) {
            i++;
            if (i >= size) {
                return;
            } else {
                this.f825j.get(i).setPosition(i);
            }
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void enableContentAnimations(boolean z) {
        this.f836u = z;
    }

    /* renamed from: f */
    public final void m461f() {
        if (this.f824i != null) {
            return;
        }
        ScrollingTabContainerView scrollingTabContainerView = new ScrollingTabContainerView(this.f816a);
        if (this.f834s) {
            scrollingTabContainerView.setVisibility(0);
            this.f821f.setEmbeddedTabView(scrollingTabContainerView);
        } else {
            if (getNavigationMode() == 2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f819d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
            this.f820e.setTabContainer(scrollingTabContainerView);
        }
        this.f824i = scrollingTabContainerView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final DecorToolbar m462g(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    @Override // androidx.appcompat.app.ActionBar
    public View getCustomView() {
        return this.f821f.getCustomView();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getDisplayOptions() {
        return this.f821f.getDisplayOptions();
    }

    @Override // androidx.appcompat.app.ActionBar
    public float getElevation() {
        return ViewCompat.getElevation(this.f820e);
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHeight() {
        return this.f820e.getHeight();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getHideOffset() {
        return this.f819d.getActionBarHideOffset();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationItemCount() {
        int navigationMode = this.f821f.getNavigationMode();
        if (navigationMode == 1) {
            return this.f821f.getDropdownItemCount();
        }
        if (navigationMode != 2) {
            return 0;
        }
        return this.f825j.size();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getNavigationMode() {
        return this.f821f.getNavigationMode();
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getSelectedNavigationIndex() {
        TabImpl tabImpl;
        int navigationMode = this.f821f.getNavigationMode();
        if (navigationMode == 1) {
            return this.f821f.getDropdownSelectedPosition();
        }
        if (navigationMode == 2 && (tabImpl = this.f826k) != null) {
            return tabImpl.getPosition();
        }
        return -1;
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getSelectedTab() {
        return this.f826k;
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getSubtitle() {
        return this.f821f.getSubtitle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab getTabAt(int i) {
        return this.f825j.get(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public int getTabCount() {
        return this.f825j.size();
    }

    @Override // androidx.appcompat.app.ActionBar
    public Context getThemedContext() {
        if (this.f817b == null) {
            TypedValue typedValue = new TypedValue();
            this.f816a.getTheme().resolveAttribute(C0118R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f817b = new ContextThemeWrapper(this.f816a, i);
            } else {
                this.f817b = this.f816a;
            }
        }
        return this.f817b;
    }

    @Override // androidx.appcompat.app.ActionBar
    public CharSequence getTitle() {
        return this.f821f.getTitle();
    }

    /* renamed from: h */
    public final void m463h() {
        if (this.f839x) {
            this.f839x = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f819d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            m468m(false);
        }
    }

    public boolean hasIcon() {
        return this.f821f.hasIcon();
    }

    public boolean hasLogo() {
        return this.f821f.hasLogo();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void hide() {
        if (this.f837v) {
            return;
        }
        this.f837v = true;
        m468m(false);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void hideForSystem() {
        if (this.f838w) {
            return;
        }
        this.f838w = true;
        m468m(true);
    }

    /* renamed from: i */
    public final void m464i(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(C0118R.id.decor_content_parent);
        this.f819d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f821f = m462g(view.findViewById(C0118R.id.action_bar));
        this.f822g = (ActionBarContextView) view.findViewById(C0118R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(C0118R.id.action_bar_container);
        this.f820e = actionBarContainer;
        DecorToolbar decorToolbar = this.f821f;
        if (decorToolbar == null || this.f822g == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f816a = decorToolbar.getContext();
        boolean z = (this.f821f.getDisplayOptions() & 4) != 0;
        if (z) {
            this.f828m = true;
        }
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(this.f816a);
        setHomeButtonEnabled(actionBarPolicy.enableHomeButtonByDefault() || z);
        m465j(actionBarPolicy.hasEmbeddedTabs());
        TypedArray obtainStyledAttributes = this.f816a.obtainStyledAttributes(null, C0118R.styleable.ActionBar, C0118R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(C0118R.styleable.ActionBar_hideOnContentScroll, false)) {
            setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            setElevation(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isHideOnContentScrollEnabled() {
        return this.f819d.isHideOnContentScrollEnabled();
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isShowing() {
        int height = getHeight();
        return this.f840y && (height == 0 || getHideOffset() < height);
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean isTitleTruncated() {
        DecorToolbar decorToolbar = this.f821f;
        return decorToolbar != null && decorToolbar.isTitleTruncated();
    }

    /* renamed from: j */
    public final void m465j(boolean z) {
        this.f834s = z;
        if (z) {
            this.f820e.setTabContainer(null);
            this.f821f.setEmbeddedTabView(this.f824i);
        } else {
            this.f821f.setEmbeddedTabView(null);
            this.f820e.setTabContainer(this.f824i);
        }
        boolean z2 = getNavigationMode() == 2;
        ScrollingTabContainerView scrollingTabContainerView = this.f824i;
        if (scrollingTabContainerView != null) {
            if (z2) {
                scrollingTabContainerView.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f819d;
                if (actionBarOverlayLayout != null) {
                    ViewCompat.requestApplyInsets(actionBarOverlayLayout);
                }
            } else {
                scrollingTabContainerView.setVisibility(8);
            }
        }
        this.f821f.setCollapsible(!this.f834s && z2);
        this.f819d.setHasNonEmbeddedTabs(!this.f834s && z2);
    }

    /* renamed from: k */
    public final boolean m466k() {
        return this.f820e.isLaidOut();
    }

    /* renamed from: l */
    public final void m467l() {
        if (this.f839x) {
            return;
        }
        this.f839x = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f819d;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        m468m(false);
    }

    /* renamed from: m */
    public final void m468m(boolean z) {
        if (m457b(this.f837v, this.f838w, this.f839x)) {
            if (this.f840y) {
                return;
            }
            this.f840y = true;
            doShow(z);
            return;
        }
        if (this.f840y) {
            this.f840y = false;
            doHide(z);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionBar.Tab newTab() {
        return new TabImpl();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void onConfigurationChanged(Configuration configuration) {
        m465j(ActionBarPolicy.get(this.f816a).hasEmbeddedTabs());
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStarted() {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = this.f841z;
        if (viewPropertyAnimatorCompatSet != null) {
            viewPropertyAnimatorCompatSet.cancel();
            this.f841z = null;
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onContentScrollStopped() {
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        Menu menu;
        ActionModeImpl actionModeImpl = this.f829n;
        if (actionModeImpl == null || (menu = actionModeImpl.getMenu()) == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i, keyEvent, 0);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void onWindowVisibilityChanged(int i) {
        this.f835t = i;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeAllTabs() {
        m458c();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeOnMenuVisibilityListener(ActionBar.OnMenuVisibilityListener onMenuVisibilityListener) {
        this.f833r.remove(onMenuVisibilityListener);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTab(ActionBar.Tab tab) {
        removeTabAt(tab.getPosition());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void removeTabAt(int i) {
        if (this.f824i == null) {
            return;
        }
        TabImpl tabImpl = this.f826k;
        int position = tabImpl != null ? tabImpl.getPosition() : this.f827l;
        this.f824i.removeTabAt(i);
        TabImpl remove = this.f825j.remove(i);
        if (remove != null) {
            remove.setPosition(-1);
        }
        int size = this.f825j.size();
        for (int i2 = i; i2 < size; i2++) {
            this.f825j.get(i2).setPosition(i2);
        }
        if (position == i) {
            selectTab(this.f825j.isEmpty() ? null : this.f825j.get(Math.max(0, i - 1)));
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public boolean requestFocus() {
        ViewGroup viewGroup = this.f821f.getViewGroup();
        if (viewGroup == null || viewGroup.hasFocus()) {
            return false;
        }
        viewGroup.requestFocus();
        return true;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void selectTab(ActionBar.Tab tab) {
        if (getNavigationMode() != 2) {
            this.f827l = tab != null ? tab.getPosition() : -1;
            return;
        }
        FragmentTransaction disallowAddToBackStack = (!(this.f818c instanceof FragmentActivity) || this.f821f.getViewGroup().isInEditMode()) ? null : ((FragmentActivity) this.f818c).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        TabImpl tabImpl = this.f826k;
        if (tabImpl != tab) {
            this.f824i.setTabSelected(tab != null ? tab.getPosition() : -1);
            TabImpl tabImpl2 = this.f826k;
            if (tabImpl2 != null) {
                tabImpl2.getCallback().onTabUnselected(this.f826k, disallowAddToBackStack);
            }
            TabImpl tabImpl3 = (TabImpl) tab;
            this.f826k = tabImpl3;
            if (tabImpl3 != null) {
                tabImpl3.getCallback().onTabSelected(this.f826k, disallowAddToBackStack);
            }
        } else if (tabImpl != null) {
            tabImpl.getCallback().onTabReselected(this.f826k, disallowAddToBackStack);
            this.f824i.animateToTab(tab.getPosition());
        }
        if (disallowAddToBackStack == null || disallowAddToBackStack.isEmpty()) {
            return;
        }
        disallowAddToBackStack.commit();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setBackgroundDrawable(Drawable drawable) {
        this.f820e.setPrimaryBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(int i) {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i, this.f821f.getViewGroup(), false));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDefaultDisplayHomeAsUpEnabled(boolean z) {
        if (this.f828m) {
            return;
        }
        setDisplayHomeAsUpEnabled(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayHomeAsUpEnabled(boolean z) {
        setDisplayOptions(z ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i) {
        if ((i & 4) != 0) {
            this.f828m = true;
        }
        this.f821f.setDisplayOptions(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowCustomEnabled(boolean z) {
        setDisplayOptions(z ? 16 : 0, 16);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowHomeEnabled(boolean z) {
        setDisplayOptions(z ? 2 : 0, 2);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayShowTitleEnabled(boolean z) {
        setDisplayOptions(z ? 8 : 0, 8);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayUseLogoEnabled(boolean z) {
        setDisplayOptions(z ? 1 : 0, 1);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setElevation(float f) {
        ViewCompat.setElevation(this.f820e, f);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHideOffset(int i) {
        if (i != 0 && !this.f819d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
        this.f819d.setActionBarHideOffset(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHideOnContentScrollEnabled(boolean z) {
        if (z && !this.f819d.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.f812B = z;
        this.f819d.setHideOnContentScrollEnabled(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(CharSequence charSequence) {
        this.f821f.setNavigationContentDescription(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(Drawable drawable) {
        this.f821f.setNavigationIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeButtonEnabled(boolean z) {
        this.f821f.setHomeButtonEnabled(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(int i) {
        this.f821f.setIcon(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar.OnNavigationListener onNavigationListener) {
        this.f821f.setDropdownParams(spinnerAdapter, new C0167b(onNavigationListener));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(int i) {
        this.f821f.setLogo(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setNavigationMode(int i) {
        ActionBarOverlayLayout actionBarOverlayLayout;
        int navigationMode = this.f821f.getNavigationMode();
        if (navigationMode == 2) {
            this.f827l = getSelectedNavigationIndex();
            selectTab(null);
            this.f824i.setVisibility(8);
        }
        if (navigationMode != i && !this.f834s && (actionBarOverlayLayout = this.f819d) != null) {
            ViewCompat.requestApplyInsets(actionBarOverlayLayout);
        }
        this.f821f.setNavigationMode(i);
        boolean z = false;
        if (i == 2) {
            m461f();
            this.f824i.setVisibility(0);
            int i2 = this.f827l;
            if (i2 != -1) {
                setSelectedNavigationItem(i2);
                this.f827l = -1;
            }
        }
        this.f821f.setCollapsible(i == 2 && !this.f834s);
        ActionBarOverlayLayout actionBarOverlayLayout2 = this.f819d;
        if (i == 2 && !this.f834s) {
            z = true;
        }
        actionBarOverlayLayout2.setHasNonEmbeddedTabs(z);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSelectedNavigationItem(int i) {
        int navigationMode = this.f821f.getNavigationMode();
        if (navigationMode == 1) {
            this.f821f.setDropdownSelectedPosition(i);
        } else {
            if (navigationMode != 2) {
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
            }
            selectTab(this.f825j.get(i));
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setShowHideAnimationEnabled(boolean z) {
        ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet;
        this.f811A = z;
        if (z || (viewPropertyAnimatorCompatSet = this.f841z) == null) {
            return;
        }
        viewPropertyAnimatorCompatSet.cancel();
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setStackedBackgroundDrawable(Drawable drawable) {
        this.f820e.setStackedBackground(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(int i) {
        setSubtitle(this.f816a.getString(i));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(int i) {
        setTitle(this.f816a.getString(i));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setWindowTitle(CharSequence charSequence) {
        this.f821f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void show() {
        if (this.f837v) {
            this.f837v = false;
            m468m(false);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.ActionBarVisibilityCallback
    public void showForSystem() {
        if (this.f838w) {
            this.f838w = false;
            m468m(true);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public ActionMode startActionMode(ActionMode.Callback callback) {
        ActionModeImpl actionModeImpl = this.f829n;
        if (actionModeImpl != null) {
            actionModeImpl.finish();
        }
        this.f819d.setHideOnContentScrollEnabled(false);
        this.f822g.killMode();
        ActionModeImpl actionModeImpl2 = new ActionModeImpl(this.f822g.getContext(), callback);
        if (!actionModeImpl2.dispatchOnCreate()) {
            return null;
        }
        this.f829n = actionModeImpl2;
        actionModeImpl2.invalidate();
        this.f822g.initForMode(actionModeImpl2);
        animateToMode(true);
        return actionModeImpl2;
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i) {
        addTab(tab, i, this.f825j.isEmpty());
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeActionContentDescription(int i) {
        this.f821f.setNavigationContentDescription(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setHomeAsUpIndicator(int i) {
        this.f821f.setNavigationIcon(i);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setIcon(Drawable drawable) {
        this.f821f.setIcon(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setLogo(Drawable drawable) {
        this.f821f.setLogo(drawable);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setSubtitle(CharSequence charSequence) {
        this.f821f.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setTitle(CharSequence charSequence) {
        this.f821f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, boolean z) {
        m461f();
        this.f824i.addTab(tab, z);
        m460e(tab, this.f825j.size());
        if (z) {
            selectTab(tab);
        }
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setDisplayOptions(int i, int i2) {
        int displayOptions = this.f821f.getDisplayOptions();
        if ((i2 & 4) != 0) {
            this.f828m = true;
        }
        this.f821f.setDisplayOptions((i & i2) | ((~i2) & displayOptions));
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view) {
        this.f821f.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void setCustomView(View view, ActionBar.LayoutParams layoutParams) {
        view.setLayoutParams(layoutParams);
        this.f821f.setCustomView(view);
    }

    @Override // androidx.appcompat.app.ActionBar
    public void addTab(ActionBar.Tab tab, int i, boolean z) {
        m461f();
        this.f824i.addTab(tab, i, z);
        m460e(tab, i);
        if (z) {
            selectTab(tab);
        }
    }

    public WindowDecorActionBar(Dialog dialog) {
        m464i(dialog.getWindow().getDecorView());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public WindowDecorActionBar(View view) {
        m464i(view);
    }
}
