package androidx.legacy.app;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import java.lang.reflect.Method;

@Deprecated
/* loaded from: classes3.dex */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: m */
    public static final String f7804m = "ActionBarDrawerToggle";

    /* renamed from: n */
    public static final int[] f7805n = {R.attr.homeAsUpIndicator};

    /* renamed from: o */
    public static final float f7806o = 0.33333334f;

    /* renamed from: p */
    public static final int f7807p = 16908332;

    /* renamed from: a */
    public final Activity f7808a;

    /* renamed from: b */
    public final Delegate f7809b;

    /* renamed from: c */
    public final DrawerLayout f7810c;

    /* renamed from: d */
    public boolean f7811d;

    /* renamed from: e */
    public boolean f7812e;

    /* renamed from: f */
    public Drawable f7813f;

    /* renamed from: g */
    public Drawable f7814g;

    /* renamed from: h */
    public C1135b f7815h;

    /* renamed from: i */
    public final int f7816i;

    /* renamed from: j */
    public final int f7817j;

    /* renamed from: k */
    public final int f7818k;

    /* renamed from: l */
    public C1134a f7819l;

    @Deprecated
    /* loaded from: classes3.dex */
    public interface Delegate {
        @Nullable
        Drawable getThemeUpIndicator();

        void setActionBarDescription(@StringRes int i);

        void setActionBarUpIndicator(Drawable drawable, @StringRes int i);
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public interface DelegateProvider {
        @Nullable
        Delegate getDrawerToggleDelegate();
    }

    /* renamed from: androidx.legacy.app.ActionBarDrawerToggle$a */
    /* loaded from: classes3.dex */
    public static class C1134a {

        /* renamed from: a */
        public Method f7820a;

        /* renamed from: b */
        public Method f7821b;

        /* renamed from: c */
        public ImageView f7822c;

        public C1134a(Activity activity) {
            try {
                this.f7820a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.f7821b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException unused) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById == null) {
                    return;
                }
                ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                if (viewGroup.getChildCount() != 2) {
                    return;
                }
                View childAt = viewGroup.getChildAt(0);
                childAt = childAt.getId() == 16908332 ? viewGroup.getChildAt(1) : childAt;
                if (childAt instanceof ImageView) {
                    this.f7822c = (ImageView) childAt;
                }
            }
        }
    }

    /* renamed from: androidx.legacy.app.ActionBarDrawerToggle$b */
    /* loaded from: classes3.dex */
    public class C1135b extends InsetDrawable implements Drawable.Callback {

        /* renamed from: e */
        public final boolean f7823e;

        /* renamed from: f */
        public final Rect f7824f;

        /* renamed from: g */
        public float f7825g;

        /* renamed from: h */
        public float f7826h;

        public C1135b(Drawable drawable) {
            super(drawable, 0);
            this.f7823e = true;
            this.f7824f = new Rect();
        }

        /* renamed from: a */
        public float m4872a() {
            return this.f7825g;
        }

        /* renamed from: b */
        public void m4873b(float f) {
            this.f7826h = f;
            invalidateSelf();
        }

        /* renamed from: c */
        public void m4874c(float f) {
            this.f7825g = f;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            copyBounds(this.f7824f);
            canvas.save();
            boolean z = ViewCompat.getLayoutDirection(ActionBarDrawerToggle.this.f7808a.getWindow().getDecorView()) == 1;
            int i = z ? -1 : 1;
            float width = this.f7824f.width();
            canvas.translate((-this.f7826h) * width * this.f7825g * i, 0.0f);
            if (z && !this.f7823e) {
                canvas.translate(width, 0.0f);
                canvas.scale(-1.0f, 1.0f);
            }
            super.draw(canvas);
            canvas.restore();
        }
    }

    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, @DrawableRes int i, @StringRes int i2, @StringRes int i3) {
        this(activity, drawerLayout, !m4868a(activity), i, i2, i3);
    }

    /* renamed from: a */
    public static boolean m4868a(Context context) {
        return context.getApplicationInfo().targetSdkVersion >= 21;
    }

    /* renamed from: b */
    public final Drawable m4869b() {
        Delegate delegate = this.f7809b;
        if (delegate != null) {
            return delegate.getThemeUpIndicator();
        }
        ActionBar actionBar = this.f7808a.getActionBar();
        TypedArray obtainStyledAttributes = (actionBar != null ? actionBar.getThemedContext() : this.f7808a).obtainStyledAttributes(null, f7805n, R.attr.actionBarStyle, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* renamed from: c */
    public final void m4870c(int i) {
        Delegate delegate = this.f7809b;
        if (delegate != null) {
            delegate.setActionBarDescription(i);
            return;
        }
        ActionBar actionBar = this.f7808a.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeActionContentDescription(i);
        }
    }

    /* renamed from: d */
    public final void m4871d(Drawable drawable, int i) {
        Delegate delegate = this.f7809b;
        if (delegate != null) {
            delegate.setActionBarUpIndicator(drawable, i);
            return;
        }
        ActionBar actionBar = this.f7808a.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(drawable);
            actionBar.setHomeActionContentDescription(i);
        }
    }

    public boolean isDrawerIndicatorEnabled() {
        return this.f7811d;
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.f7812e) {
            this.f7813f = m4869b();
        }
        this.f7814g = ContextCompat.getDrawable(this.f7808a, this.f7816i);
        syncState();
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerClosed(View view) {
        this.f7815h.m4874c(0.0f);
        if (this.f7811d) {
            m4870c(this.f7817j);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerOpened(View view) {
        this.f7815h.m4874c(1.0f);
        if (this.f7811d) {
            m4870c(this.f7818k);
        }
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerSlide(View view, float f) {
        float m4872a = this.f7815h.m4872a();
        this.f7815h.m4874c(f > 0.5f ? Math.max(m4872a, Math.max(0.0f, f - 0.5f) * 2.0f) : Math.min(m4872a, f * 2.0f));
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public void onDrawerStateChanged(int i) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.f7811d) {
            return false;
        }
        if (this.f7810c.isDrawerVisible(GravityCompat.START)) {
            this.f7810c.closeDrawer(GravityCompat.START);
            return true;
        }
        this.f7810c.openDrawer(GravityCompat.START);
        return true;
    }

    public void setDrawerIndicatorEnabled(boolean z) {
        if (z != this.f7811d) {
            if (z) {
                m4871d(this.f7815h, this.f7810c.isDrawerOpen(GravityCompat.START) ? this.f7818k : this.f7817j);
            } else {
                m4871d(this.f7813f, 0);
            }
            this.f7811d = z;
        }
    }

    public void setHomeAsUpIndicator(Drawable drawable) {
        if (drawable == null) {
            this.f7813f = m4869b();
            this.f7812e = false;
        } else {
            this.f7813f = drawable;
            this.f7812e = true;
        }
        if (this.f7811d) {
            return;
        }
        m4871d(this.f7813f, 0);
    }

    public void syncState() {
        if (this.f7810c.isDrawerOpen(GravityCompat.START)) {
            this.f7815h.m4874c(1.0f);
        } else {
            this.f7815h.m4874c(0.0f);
        }
        if (this.f7811d) {
            m4871d(this.f7815h, this.f7810c.isDrawerOpen(GravityCompat.START) ? this.f7818k : this.f7817j);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ActionBarDrawerToggle(Activity activity, DrawerLayout drawerLayout, boolean z, @DrawableRes int i, @StringRes int i2, @StringRes int i3) {
        this.f7811d = true;
        this.f7808a = activity;
        if (activity instanceof DelegateProvider) {
            this.f7809b = ((DelegateProvider) activity).getDrawerToggleDelegate();
        } else {
            this.f7809b = null;
        }
        this.f7810c = drawerLayout;
        this.f7816i = i;
        this.f7817j = i2;
        this.f7818k = i3;
        this.f7813f = m4869b();
        this.f7814g = ContextCompat.getDrawable(activity, i);
        C1135b c1135b = new C1135b(this.f7814g);
        this.f7815h = c1135b;
        c1135b.m4873b(z ? 0.33333334f : 0.0f);
    }

    public void setHomeAsUpIndicator(int i) {
        setHomeAsUpIndicator(i != 0 ? ContextCompat.getDrawable(this.f7808a, i) : null);
    }
}
