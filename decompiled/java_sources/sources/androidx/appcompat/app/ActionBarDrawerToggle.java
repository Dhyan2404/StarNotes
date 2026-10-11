package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes3.dex */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: a */
    public final Delegate f569a;

    /* renamed from: b */
    public final DrawerLayout f570b;

    /* renamed from: c */
    public DrawerArrowDrawable f571c;

    /* renamed from: d */
    public boolean f572d;

    /* renamed from: e */
    public Drawable f573e;

    /* renamed from: f */
    public boolean f574f;

    /* renamed from: g */
    public boolean f575g;

    /* renamed from: h */
    public final int f576h;

    /* renamed from: i */
    public final int f577i;

    /* renamed from: j */
    public View.OnClickListener f578j;

    /* renamed from: k */
    public boolean f579k;

    /* loaded from: classes3.dex */
    public interface Delegate {
        Context getActionBarThemedContext();

        Drawable getThemeUpIndicator();

        boolean isNavigationVisible();

        void setActionBarDescription(@StringRes int i);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
    }

    /* loaded from: classes3.dex */
    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    /* renamed from: androidx.appcompat.app.ActionBarDrawerToggle$a */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC0119a implements View.OnClickListener {
        public ViewOnClickListenerC0119a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ActionBarDrawerToggle actionBarDrawerToggle = ActionBarDrawerToggle.this;
            if (actionBarDrawerToggle.f574f) {
                actionBarDrawerToggle.m287e();
                return;
            }
            View.OnClickListener onClickListener = actionBarDrawerToggle.f578j;
            if (onClickListener != null) {
                onClickListener.onClick(view);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.ActionBarDrawerToggle$b */
    /* loaded from: classes3.dex */
    public static class C0120b implements Delegate {

        /* renamed from: a */
        public final Activity f581a;

        public C0120b(Activity activity) {
            this.f581a = activity;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            android.app.ActionBar actionBar = this.f581a.getActionBar();
            return actionBar != null ? actionBar.getThemedContext() : this.f581a;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TypedArray obtainStyledAttributes = getActionBarThemedContext().obtainStyledAttributes(null, new int[]{R.attr.homeAsUpIndicator}, R.attr.actionBarStyle, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            android.app.ActionBar actionBar = this.f581a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i) {
            android.app.ActionBar actionBar = this.f581a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i) {
            android.app.ActionBar actionBar = this.f581a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.ActionBarDrawerToggle$c */
    /* loaded from: classes3.dex */
    public static class C0121c implements Delegate {

        /* renamed from: a */
        public final Toolbar f582a;

        /* renamed from: b */
        public final Drawable f583b;

        /* renamed from: c */
        public final CharSequence f584c;

        public C0121c(Toolbar toolbar) {
            this.f582a = toolbar;
            this.f583b = toolbar.getNavigationIcon();
            this.f584c = toolbar.getNavigationContentDescription();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return this.f582a.getContext();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            return this.f583b;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            return true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(@StringRes int i) {
            if (i == 0) {
                this.f582a.setNavigationContentDescription(this.f584c);
            } else {
                this.f582a.setNavigationContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, @StringRes int i) {
            this.f582a.setNavigationIcon(drawable);
            setActionBarDescription(i);
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @StringRes int i, @StringRes int i2) {
        this(activity, null, drawerLayout, null, i, i2);
    }

    /* renamed from: a */
    public Drawable m283a() {
        return this.f569a.getThemeUpIndicator();
    }

    /* renamed from: b */
    public void m284b(int i) {
        this.f569a.setActionBarDescription(i);
    }

    /* renamed from: c */
    public void m285c(Drawable drawable, int i) {
        if (!this.f579k && !this.f569a.isNavigationVisible()) {
            Log.w(androidx.legacy.app.ActionBarDrawerToggle.f7804m, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.f579k = true;
        }
        this.f569a.setActionBarUpIndicator(drawable, i);
    }

    /* renamed from: d */
    public final void m286d(float f) {
        if (f == 1.0f) {
            this.f571c.setVerticalMirror(true);
        } else if (f == 0.0f) {
            this.f571c.setVerticalMirror(false);
        }
        this.f571c.setProgress(f);
    }

    /* renamed from: e */
    public void m287e() {
        int drawerLockMode = this.f570b.getDrawerLockMode(GravityCompat.START);
        if (this.f570b.isDrawerVisible(GravityCompat.START) && drawerLockMode != 2) {
            this.f570b.closeDrawer(GravityCompat.START);
        } else if (drawerLockMode != 1) {
            this.f570b.openDrawer(GravityCompat.START);
        }
    }

    @NonNull
    public DrawerArrowDrawable getDrawerArrowDrawable() {
        return this.f571c;
    }

    public View.OnClickListener getToolbarNavigationClickListener() {
        return this.f578j;
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.f574f;
    }

    public boolean isDrawerSlideAnimationEnabled() {
        return this.f572d;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f575g) {
            this.f573e = m283a();
        }
        syncState();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        m286d(0.0f);
        if (this.f574f) {
            m284b(this.f576h);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        m286d(1.0f);
        if (this.f574f) {
            m284b(this.f577i);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f) {
        if (this.f572d) {
            m286d(Math.min(1.0f, Math.max(0.0f, f)));
        } else {
            m286d(0.0f);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.f574f) {
            return false;
        }
        m287e();
        return true;
    }

    public void setDrawerArrowDrawable(@NonNull DrawerArrowDrawable drawerArrowDrawable) {
        this.f571c = drawerArrowDrawable;
        syncState();
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.f574f) {
            if (z) {
                m285c(this.f571c, this.f570b.isDrawerOpen(GravityCompat.START) ? this.f577i : this.f576h);
            } else {
                m285c(this.f573e, 0);
            }
            this.f574f = z;
        }
    }

    public void setDrawerSlideAnimationEnabled(boolean z) {
        this.f572d = z;
        if (z) {
            return;
        }
        m286d(0.0f);
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.f573e = m283a();
            this.f575g = false;
        } else {
            this.f573e = drawable;
            this.f575g = true;
        }
        if (this.f574f) {
            return;
        }
        m285c(this.f573e, 0);
    }

    public void setToolbarNavigationClickListener(View.OnClickListener onClickListener) {
        this.f578j = onClickListener;
    }

    public void syncState() {
        if (this.f570b.isDrawerOpen(GravityCompat.START)) {
            m286d(1.0f);
        } else {
            m286d(0.0f);
        }
        if (this.f574f) {
            m285c(this.f571c, this.f570b.isDrawerOpen(GravityCompat.START) ? this.f577i : this.f576h);
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, @StringRes int i, @StringRes int i2) {
        this(activity, toolbar, drawerLayout, null, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ActionBarDrawerToggle(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, DrawerArrowDrawable drawerArrowDrawable, @StringRes int i, @StringRes int i2) {
        this.f572d = true;
        this.f574f = true;
        this.f579k = false;
        if (toolbar != null) {
            this.f569a = new C0121c(toolbar);
            toolbar.setNavigationOnClickListener(new ViewOnClickListenerC0119a());
        } else if (activity instanceof DelegateProvider) {
            this.f569a = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.f569a = new C0120b(activity);
        }
        this.f570b = drawerLayout;
        this.f576h = i;
        this.f577i = i2;
        if (drawerArrowDrawable == null) {
            this.f571c = new DrawerArrowDrawable(this.f569a.getActionBarThemedContext());
        } else {
            this.f571c = drawerArrowDrawable;
        }
        this.f573e = m283a();
    }

    public void setHomeAsUpIndicator(int i) {
        setHomeAsUpIndicator(i != 0 ? this.f570b.getResources().getDrawable(i) : null);
    }
}
