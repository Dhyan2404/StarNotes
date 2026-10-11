package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0118R;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.FitWindowsViewGroup;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NavUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.LayoutInflaterCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.utils.ResourceManager;
import com.sunia.HTREnginev2.C13821hc;
import com.sunia.HTREnginev2.C13871ic;
import com.sunia.HTREnginev2.lon;
import com.sunia.HTREnginev2.n1j;
import com.sunia.HTREnginev2.owi;
import java.lang.Thread;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {

    /* renamed from: d1 */
    public static final SimpleArrayMap<String, Integer> f685d1 = new SimpleArrayMap<>();

    /* renamed from: e1 */
    public static final boolean f686e1 = false;

    /* renamed from: f1 */
    public static final int[] f687f1 = {R.attr.windowBackground};

    /* renamed from: g1 */
    public static final boolean f688g1 = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: h1 */
    public static boolean f689h1 = false;

    /* renamed from: i1 */
    public static final String f690i1 = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";

    /* renamed from: A0 */
    public boolean f691A0;

    /* renamed from: B0 */
    public boolean f692B0;

    /* renamed from: C0 */
    public boolean f693C0;

    /* renamed from: D0 */
    public boolean f694D0;

    /* renamed from: E0 */
    public boolean f695E0;

    /* renamed from: F0 */
    public boolean f696F0;

    /* renamed from: G0 */
    public PanelFeatureState[] f697G0;

    /* renamed from: H0 */
    public PanelFeatureState f698H0;

    /* renamed from: I0 */
    public boolean f699I0;

    /* renamed from: J */
    public C0160u f700J;

    /* renamed from: J0 */
    public boolean f701J0;

    /* renamed from: K0 */
    public boolean f702K0;

    /* renamed from: L0 */
    public boolean f703L0;

    /* renamed from: M0 */
    public Configuration f704M0;

    /* renamed from: N0 */
    public int f705N0;

    /* renamed from: O */
    public ActionMode f706O;

    /* renamed from: O0 */
    public int f707O0;

    /* renamed from: P0 */
    public int f708P0;

    /* renamed from: Q */
    public ActionBarContextView f709Q;

    /* renamed from: Q0 */
    public boolean f710Q0;

    /* renamed from: R0 */
    public AbstractC0157r f711R0;

    /* renamed from: S0 */
    public AbstractC0157r f712S0;

    /* renamed from: T0 */
    public boolean f713T0;

    /* renamed from: U0 */
    public int f714U0;

    /* renamed from: V0 */
    public final Runnable f715V0;

    /* renamed from: W0 */
    public boolean f716W0;

    /* renamed from: X0 */
    public Rect f717X0;

    /* renamed from: Y0 */
    public Rect f718Y0;

    /* renamed from: Z */
    public PopupWindow f719Z;

    /* renamed from: Z0 */
    public AppCompatViewInflater f720Z0;

    /* renamed from: a1 */
    public owi f721a1;

    /* renamed from: b1 */
    public OnBackInvokedDispatcher f722b1;

    /* renamed from: c1 */
    public OnBackInvokedCallback f723c1;

    /* renamed from: k0 */
    public Runnable f724k0;

    /* renamed from: q */
    public final Object f725q;

    /* renamed from: q0 */
    public ViewPropertyAnimatorCompat f726q0;

    /* renamed from: r */
    public final Context f727r;

    /* renamed from: s */
    public Window f728s;

    /* renamed from: t */
    public C0155p f729t;

    /* renamed from: t0 */
    public boolean f730t0;

    /* renamed from: u */
    public final AppCompatCallback f731u;

    /* renamed from: u0 */
    public boolean f732u0;

    /* renamed from: v */
    public ActionBar f733v;

    /* renamed from: v0 */
    public ViewGroup f734v0;

    /* renamed from: w */
    public MenuInflater f735w;

    /* renamed from: w0 */
    public TextView f736w0;

    /* renamed from: x */
    public CharSequence f737x;

    /* renamed from: x0 */
    public View f738x0;

    /* renamed from: y */
    public DecorContentParent f739y;

    /* renamed from: y0 */
    public boolean f740y0;

    /* renamed from: z */
    public C0149j f741z;

    /* renamed from: z0 */
    public boolean f742z0;

    /* loaded from: classes3.dex */
    public static final class PanelFeatureState {

        /* renamed from: a */
        public int f743a;

        /* renamed from: b */
        public int f744b;

        /* renamed from: c */
        public int f745c;

        /* renamed from: d */
        public int f746d;

        /* renamed from: e */
        public int f747e;

        /* renamed from: f */
        public int f748f;

        /* renamed from: g */
        public ViewGroup f749g;

        /* renamed from: h */
        public View f750h;

        /* renamed from: i */
        public View f751i;

        /* renamed from: j */
        public MenuBuilder f752j;

        /* renamed from: k */
        public ListMenuPresenter f753k;

        /* renamed from: l */
        public Context f754l;

        /* renamed from: m */
        public boolean f755m;

        /* renamed from: n */
        public boolean f756n;

        /* renamed from: o */
        public boolean f757o;

        /* renamed from: p */
        public boolean f758p = false;

        /* renamed from: q */
        public boolean f759q;
        public boolean qwertyMode;

        /* renamed from: r */
        public boolean f760r;

        /* renamed from: s */
        public Bundle f761s;

        /* renamed from: t */
        public Bundle f762t;

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes3.dex */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new C0139a();
            int featureId;
            boolean isOpen;
            Bundle menuState;

            /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$a */
            /* loaded from: classes3.dex */
            public class C0139a implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.Creator
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* renamed from: b, reason: merged with bridge method [inline-methods] */
                public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.readFromParcel(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* renamed from: c, reason: merged with bridge method [inline-methods] */
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            }

            public static SavedState readFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                boolean z = parcel.readInt() == 1;
                savedState.isOpen = z;
                if (z) {
                    savedState.menuState = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }
        }

        public PanelFeatureState(int i) {
            this.f743a = i;
        }

        /* renamed from: a */
        public void m413a() {
            Bundle bundle;
            MenuBuilder menuBuilder = this.f752j;
            if (menuBuilder == null || (bundle = this.f761s) == null) {
                return;
            }
            menuBuilder.restorePresenterStates(bundle);
            this.f761s = null;
        }

        /* renamed from: b */
        public MenuView m414b(MenuPresenter.Callback callback) {
            if (this.f752j == null) {
                return null;
            }
            if (this.f753k == null) {
                ListMenuPresenter listMenuPresenter = new ListMenuPresenter(this.f754l, C0118R.layout.abc_list_menu_item_layout);
                this.f753k = listMenuPresenter;
                listMenuPresenter.setCallback(callback);
                this.f752j.addMenuPresenter(this.f753k);
            }
            return this.f753k.getMenuView(this.f749g);
        }

        /* renamed from: c */
        public void m415c(Parcelable parcelable) {
            SavedState savedState = (SavedState) parcelable;
            this.f743a = savedState.featureId;
            this.f760r = savedState.isOpen;
            this.f761s = savedState.menuState;
            this.f750h = null;
            this.f749g = null;
        }

        public void clearMenuPresenters() {
            MenuBuilder menuBuilder = this.f752j;
            if (menuBuilder != null) {
                menuBuilder.removeMenuPresenter(this.f753k);
            }
            this.f753k = null;
        }

        /* renamed from: d */
        public Parcelable m416d() {
            SavedState savedState = new SavedState();
            savedState.featureId = this.f743a;
            savedState.isOpen = this.f757o;
            if (this.f752j != null) {
                Bundle bundle = new Bundle();
                savedState.menuState = bundle;
                this.f752j.savePresenterStates(bundle);
            }
            return savedState;
        }

        /* renamed from: e */
        public void m417e(MenuBuilder menuBuilder) {
            ListMenuPresenter listMenuPresenter;
            MenuBuilder menuBuilder2 = this.f752j;
            if (menuBuilder == menuBuilder2) {
                return;
            }
            if (menuBuilder2 != null) {
                menuBuilder2.removeMenuPresenter(this.f753k);
            }
            this.f752j = menuBuilder;
            if (menuBuilder == null || (listMenuPresenter = this.f753k) == null) {
                return;
            }
            menuBuilder.addMenuPresenter(listMenuPresenter);
        }

        /* renamed from: f */
        public void m418f(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = context.getResources().newTheme();
            newTheme.setTo(context.getTheme());
            newTheme.resolveAttribute(C0118R.attr.actionBarPopupTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                newTheme.applyStyle(i, true);
            }
            newTheme.resolveAttribute(C0118R.attr.panelMenuListTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                newTheme.applyStyle(i2, true);
            } else {
                newTheme.applyStyle(C0118R.style.Theme_AppCompat_CompactMenu, true);
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
            contextThemeWrapper.getTheme().setTo(newTheme);
            this.f754l = contextThemeWrapper;
            TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(C0118R.styleable.AppCompatTheme);
            this.f744b = obtainStyledAttributes.getResourceId(C0118R.styleable.AppCompatTheme_panelBackground, 0);
            this.f748f = obtainStyledAttributes.getResourceId(C0118R.styleable.AppCompatTheme_android_windowAnimationStyle, 0);
            obtainStyledAttributes.recycle();
        }

        public boolean hasPanelItems() {
            if (this.f750h == null) {
                return false;
            }
            return this.f751i != null || this.f753k.getAdapter().getCount() > 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$a */
    /* loaded from: classes3.dex */
    public class C0140a implements Thread.UncaughtExceptionHandler {

        /* renamed from: a */
        public final /* synthetic */ Thread.UncaughtExceptionHandler f763a;

        public C0140a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f763a = uncaughtExceptionHandler;
        }

        /* renamed from: a */
        public final boolean m422a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains(ResourceManager.f46830c) || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(@NonNull Thread thread, @NonNull Throwable th) {
            if (!m422a(th)) {
                this.f763a.uncaughtException(thread, th);
                return;
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + AppCompatDelegateImpl.f690i1);
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.f763a.uncaughtException(thread, notFoundException);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$b */
    /* loaded from: classes3.dex */
    public class RunnableC0141b implements Runnable {
        public RunnableC0141b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.f714U0 & 1) != 0) {
                appCompatDelegateImpl.m363I(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.f714U0 & 4096) != 0) {
                appCompatDelegateImpl2.m363I(108);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.f713T0 = false;
            appCompatDelegateImpl3.f714U0 = 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$c */
    /* loaded from: classes3.dex */
    public class C0142c implements OnApplyWindowInsetsListener {
        public C0142c() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int m359F0 = AppCompatDelegateImpl.this.m359F0(windowInsetsCompat, null);
            if (systemWindowInsetTop != m359F0) {
                windowInsetsCompat = windowInsetsCompat.replaceSystemWindowInsets(windowInsetsCompat.getSystemWindowInsetLeft(), m359F0, windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
            }
            return ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$d */
    /* loaded from: classes3.dex */
    public class C0143d implements FitWindowsViewGroup.OnFitSystemWindowsListener {
        public C0143d() {
        }

        @Override // androidx.appcompat.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
        public void onFitSystemWindows(Rect rect) {
            rect.top = AppCompatDelegateImpl.this.m359F0(null, rect);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$e */
    /* loaded from: classes3.dex */
    public class C0144e implements ContentFrameLayout.OnAttachListener {
        public C0144e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
        public void onAttachedFromWindow() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
        public void onDetachedFromWindow() {
            AppCompatDelegateImpl.this.m360G();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f */
    /* loaded from: classes3.dex */
    public class RunnableC0145f implements Runnable {

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$f$a */
        /* loaded from: classes3.dex */
        public class a extends ViewPropertyAnimatorListenerAdapter {
            public a() {
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.f709Q.setAlpha(1.0f);
                AppCompatDelegateImpl.this.f726q0.setListener(null);
                AppCompatDelegateImpl.this.f726q0 = null;
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view) {
                AppCompatDelegateImpl.this.f709Q.setVisibility(0);
            }
        }

        public RunnableC0145f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            appCompatDelegateImpl.f719Z.showAtLocation(appCompatDelegateImpl.f709Q, 55, 0, 0);
            AppCompatDelegateImpl.this.m364J();
            if (!AppCompatDelegateImpl.this.m404v0()) {
                AppCompatDelegateImpl.this.f709Q.setAlpha(1.0f);
                AppCompatDelegateImpl.this.f709Q.setVisibility(0);
            } else {
                AppCompatDelegateImpl.this.f709Q.setAlpha(0.0f);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.f726q0 = ViewCompat.animate(appCompatDelegateImpl2.f709Q).alpha(1.0f);
                AppCompatDelegateImpl.this.f726q0.setListener(new a());
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$g */
    /* loaded from: classes3.dex */
    public class C0146g extends ViewPropertyAnimatorListenerAdapter {
        public C0146g() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            AppCompatDelegateImpl.this.f709Q.setAlpha(1.0f);
            AppCompatDelegateImpl.this.f726q0.setListener(null);
            AppCompatDelegateImpl.this.f726q0 = null;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AppCompatDelegateImpl.this.f709Q.setVisibility(0);
            if (AppCompatDelegateImpl.this.f709Q.getParent() instanceof View) {
                ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f709Q.getParent());
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$h */
    /* loaded from: classes3.dex */
    public class C0147h implements ActionBarDrawerToggle.Delegate {
        public C0147h() {
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Context getActionBarThemedContext() {
            return AppCompatDelegateImpl.this.m368O();
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public Drawable getThemeUpIndicator() {
            TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getActionBarThemedContext(), (AttributeSet) null, new int[]{C0118R.attr.homeAsUpIndicator});
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public boolean isNavigationVisible() {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            return (supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarDescription(int i) {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // androidx.appcompat.app.ActionBarDrawerToggle.Delegate
        public void setActionBarUpIndicator(Drawable drawable, int i) {
            ActionBar supportActionBar = AppCompatDelegateImpl.this.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setHomeAsUpIndicator(drawable);
                supportActionBar.setHomeActionContentDescription(i);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$i */
    /* loaded from: classes3.dex */
    public interface InterfaceC0148i {
        /* renamed from: a */
        boolean mo423a(int i);

        @Nullable
        View onCreatePanelView(int i);
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$j */
    /* loaded from: classes3.dex */
    public final class C0149j implements MenuPresenter.Callback {
        public C0149j() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImpl.this.m348A(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            Window.Callback m377X = AppCompatDelegateImpl.this.m377X();
            if (m377X == null) {
                return true;
            }
            m377X.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$k */
    /* loaded from: classes3.dex */
    public class C0150k implements ActionMode.Callback {

        /* renamed from: a */
        public ActionMode.Callback f773a;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$k$a */
        /* loaded from: classes3.dex */
        public class a extends ViewPropertyAnimatorListenerAdapter {
            public a() {
            }

            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view) {
                AppCompatDelegateImpl.this.f709Q.setVisibility(8);
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                PopupWindow popupWindow = appCompatDelegateImpl.f719Z;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (appCompatDelegateImpl.f709Q.getParent() instanceof View) {
                    ViewCompat.requestApplyInsets((View) AppCompatDelegateImpl.this.f709Q.getParent());
                }
                AppCompatDelegateImpl.this.f709Q.killMode();
                AppCompatDelegateImpl.this.f726q0.setListener(null);
                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl2.f726q0 = null;
                ViewCompat.requestApplyInsets(appCompatDelegateImpl2.f734v0);
            }
        }

        public C0150k(ActionMode.Callback callback) {
            this.f773a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.f773a.onActionItemClicked(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.f773a.onCreateActionMode(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
            this.f773a.onDestroyActionMode(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.f719Z != null) {
                appCompatDelegateImpl.f728s.getDecorView().removeCallbacks(AppCompatDelegateImpl.this.f724k0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl2.f709Q != null) {
                appCompatDelegateImpl2.m364J();
                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                appCompatDelegateImpl3.f726q0 = ViewCompat.animate(appCompatDelegateImpl3.f709Q).alpha(0.0f);
                AppCompatDelegateImpl.this.f726q0.setListener(new a());
            }
            AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
            AppCompatCallback appCompatCallback = appCompatDelegateImpl4.f731u;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl4.f706O);
            }
            AppCompatDelegateImpl appCompatDelegateImpl5 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl5.f706O = null;
            ViewCompat.requestApplyInsets(appCompatDelegateImpl5.f734v0);
            AppCompatDelegateImpl.this.m355D0();
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            ViewCompat.requestApplyInsets(AppCompatDelegateImpl.this.f734v0);
            return this.f773a.onPrepareActionMode(actionMode, menu);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$l */
    /* loaded from: classes3.dex */
    public static class C0151l {
        @DoNotInline
        /* renamed from: a */
        public static boolean m424a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        @DoNotInline
        /* renamed from: b */
        public static String m425b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    @RequiresApi(24)
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$m */
    /* loaded from: classes3.dex */
    public static class C0152m {
        @DoNotInline
        /* renamed from: a */
        public static void m426a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        @DoNotInline
        /* renamed from: b */
        public static LocaleListCompat m427b(Configuration configuration) {
            return LocaleListCompat.forLanguageTags(configuration.getLocales().toLanguageTags());
        }

        @DoNotInline
        /* renamed from: c */
        public static void m428c(LocaleListCompat localeListCompat) {
            LocaleList.setDefault(LocaleList.forLanguageTags(localeListCompat.toLanguageTags()));
        }

        @DoNotInline
        /* renamed from: d */
        public static void m429d(Configuration configuration, LocaleListCompat localeListCompat) {
            configuration.setLocales(LocaleList.forLanguageTags(localeListCompat.toLanguageTags()));
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$n */
    /* loaded from: classes3.dex */
    public static class C0153n {
        /* renamed from: a */
        public static void m430a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            int i = configuration.colorMode & 3;
            int i2 = configuration2.colorMode;
            if (i != (i2 & 3)) {
                configuration3.colorMode |= i2 & 3;
            }
            int i3 = configuration.colorMode & 12;
            int i4 = configuration2.colorMode;
            if (i3 != (i4 & 12)) {
                configuration3.colorMode |= i4 & 12;
            }
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$o */
    /* loaded from: classes3.dex */
    public static class C0154o {
        @DoNotInline
        /* renamed from: a */
        public static OnBackInvokedDispatcher m431a(Activity activity) {
            OnBackInvokedDispatcher onBackInvokedDispatcher;
            onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
            return onBackInvokedDispatcher;
        }

        @DoNotInline
        /* renamed from: b */
        public static OnBackInvokedCallback m432b(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: com.sunia.HTREnginev2.lc
                public final void onBackInvoked() {
                    AppCompatDelegateImpl.this.m384e0();
                }
            };
            C13871ic.m54700a(obj).registerOnBackInvokedCallback(1000000, onBackInvokedCallback);
            return onBackInvokedCallback;
        }

        @DoNotInline
        /* renamed from: c */
        public static void m433c(Object obj, Object obj2) {
            C13871ic.m54700a(obj).unregisterOnBackInvokedCallback(C13821hc.m54448a(obj2));
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$p */
    /* loaded from: classes3.dex */
    public class C0155p extends WindowCallbackWrapper {

        /* renamed from: f */
        public InterfaceC0148i f776f;

        /* renamed from: g */
        public boolean f777g;

        /* renamed from: h */
        public boolean f778h;

        /* renamed from: i */
        public boolean f779i;

        public C0155p(Window.Callback callback) {
            super(callback);
        }

        /* renamed from: a */
        public boolean m434a(Window.Callback callback, KeyEvent keyEvent) {
            try {
                this.f778h = true;
                return callback.dispatchKeyEvent(keyEvent);
            } finally {
                this.f778h = false;
            }
        }

        /* renamed from: b */
        public void m435b(Window.Callback callback) {
            try {
                this.f777g = true;
                callback.onContentChanged();
            } finally {
                this.f777g = false;
            }
        }

        /* renamed from: c */
        public void m436c(Window.Callback callback, int i, Menu menu) {
            try {
                this.f779i = true;
                callback.onPanelClosed(i, menu);
            } finally {
                this.f779i = false;
            }
        }

        /* renamed from: d */
        public void m437d(@Nullable InterfaceC0148i interfaceC0148i) {
            this.f776f = interfaceC0148i;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return this.f778h ? getWrapped().dispatchKeyEvent(keyEvent) : AppCompatDelegateImpl.this.m362H(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || AppCompatDelegateImpl.this.m387h0(keyEvent.getKeyCode(), keyEvent);
        }

        /* renamed from: e */
        public final android.view.ActionMode m438e(ActionMode.Callback callback) {
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(AppCompatDelegateImpl.this.f727r, callback);
            androidx.appcompat.view.ActionMode startSupportActionMode = AppCompatDelegateImpl.this.startSupportActionMode(callbackWrapper);
            if (startSupportActionMode != null) {
                return callbackWrapper.getActionModeWrapper(startSupportActionMode);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onContentChanged() {
            if (this.f777g) {
                getWrapped().onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i, Menu menu) {
            if (i != 0 || (menu instanceof MenuBuilder)) {
                return super.onCreatePanelMenu(i, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            View onCreatePanelView;
            InterfaceC0148i interfaceC0148i = this.f776f;
            return (interfaceC0148i == null || (onCreatePanelView = interfaceC0148i.onCreatePanelView(i)) == null) ? super.onCreatePanelView(i) : onCreatePanelView;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            AppCompatDelegateImpl.this.m390k0(i);
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public void onPanelClosed(int i, Menu menu) {
            if (this.f779i) {
                getWrapped().onPanelClosed(i, menu);
            } else {
                super.onPanelClosed(i, menu);
                AppCompatDelegateImpl.this.m391l0(i);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(true);
            }
            InterfaceC0148i interfaceC0148i = this.f776f;
            boolean z = interfaceC0148i != null && interfaceC0148i.mo423a(i);
            if (!z) {
                z = super.onPreparePanel(i, view, menu);
            }
            if (menuBuilder != null) {
                menuBuilder.setOverrideVisibleItems(false);
            }
            return z;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(24)
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            MenuBuilder menuBuilder;
            PanelFeatureState m374U = AppCompatDelegateImpl.this.m374U(0, true);
            if (m374U == null || (menuBuilder = m374U.f752j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        @RequiresApi(23)
        public android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (AppCompatDelegateImpl.this.isHandleNativeActionModesEnabled() && i == 0) {
                return m438e(callback);
            }
            return super.onWindowStartingActionMode(callback, i);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$q */
    /* loaded from: classes3.dex */
    public class C0156q extends AbstractC0157r {

        /* renamed from: c */
        public final PowerManager f781c;

        public C0156q(@NonNull Context context) {
            super();
            this.f781c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0157r
        /* renamed from: b */
        public IntentFilter mo439b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0157r
        /* renamed from: c */
        public int mo440c() {
            return C0151l.m424a(this.f781c) ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0157r
        /* renamed from: e */
        public void mo441e() {
            AppCompatDelegateImpl.this.applyDayNight();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$r */
    /* loaded from: classes3.dex */
    public abstract class AbstractC0157r {

        /* renamed from: a */
        public BroadcastReceiver f783a;

        /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$r$a */
        /* loaded from: classes3.dex */
        public class a extends BroadcastReceiver {
            public a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                AbstractC0157r.this.mo441e();
            }
        }

        public AbstractC0157r() {
        }

        /* renamed from: a */
        public void m442a() {
            BroadcastReceiver broadcastReceiver = this.f783a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.f727r.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f783a = null;
            }
        }

        @Nullable
        /* renamed from: b */
        public abstract IntentFilter mo439b();

        /* renamed from: c */
        public abstract int mo440c();

        /* renamed from: d */
        public boolean m443d() {
            return this.f783a != null;
        }

        /* renamed from: e */
        public abstract void mo441e();

        /* renamed from: f */
        public void m444f() {
            m442a();
            IntentFilter mo439b = mo439b();
            if (mo439b == null || mo439b.countActions() == 0) {
                return;
            }
            if (this.f783a == null) {
                this.f783a = new a();
            }
            AppCompatDelegateImpl.this.f727r.registerReceiver(this.f783a, mo439b);
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$s */
    /* loaded from: classes3.dex */
    public class C0158s extends AbstractC0157r {

        /* renamed from: c */
        public final lon f786c;

        public C0158s(@NonNull lon lonVar) {
            super();
            this.f786c = lonVar;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0157r
        /* renamed from: b */
        public IntentFilter mo439b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0157r
        /* renamed from: c */
        public int mo440c() {
            return this.f786c.m55488d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AbstractC0157r
        /* renamed from: e */
        public void mo441e() {
            AppCompatDelegateImpl.this.applyDayNight();
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$t */
    /* loaded from: classes3.dex */
    public class C0159t extends ContentFrameLayout {
        public C0159t(Context context) {
            super(context);
        }

        /* renamed from: a */
        public final boolean m445a(int i, int i2) {
            return i < -5 || i2 < -5 || i > getWidth() + 5 || i2 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.m362H(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !m445a((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            AppCompatDelegateImpl.this.m352C(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i) {
            setBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i));
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$u */
    /* loaded from: classes3.dex */
    public final class C0160u implements MenuPresenter.Callback {
        public C0160u() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(@NonNull MenuBuilder menuBuilder, boolean z) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z2 = rootMenu != menuBuilder;
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (z2) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState m367M = appCompatDelegateImpl.m367M(menuBuilder);
            if (m367M != null) {
                if (!z2) {
                    AppCompatDelegateImpl.this.m354D(m367M, z);
                } else {
                    AppCompatDelegateImpl.this.m411z(m367M.f743a, m367M, rootMenu);
                    AppCompatDelegateImpl.this.m354D(m367M, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(@NonNull MenuBuilder menuBuilder) {
            Window.Callback m377X;
            if (menuBuilder != menuBuilder.getRootMenu()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.f691A0 || (m377X = appCompatDelegateImpl.m377X()) == null || AppCompatDelegateImpl.this.f703L0) {
                return true;
            }
            m377X.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    public AppCompatDelegateImpl(Activity activity, AppCompatCallback appCompatCallback) {
        this(activity, null, appCompatCallback, activity);
    }

    @NonNull
    /* renamed from: N */
    public static Configuration m347N(@NonNull Configuration configuration, @Nullable Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f = configuration.fontScale;
            float f2 = configuration2.fontScale;
            if (f != f2) {
                configuration3.fontScale = f2;
            }
            int i = configuration.mcc;
            int i2 = configuration2.mcc;
            if (i != i2) {
                configuration3.mcc = i2;
            }
            int i3 = configuration.mnc;
            int i4 = configuration2.mnc;
            if (i3 != i4) {
                configuration3.mnc = i4;
            }
            C0152m.m426a(configuration, configuration2, configuration3);
            int i5 = configuration.touchscreen;
            int i6 = configuration2.touchscreen;
            if (i5 != i6) {
                configuration3.touchscreen = i6;
            }
            int i7 = configuration.keyboard;
            int i8 = configuration2.keyboard;
            if (i7 != i8) {
                configuration3.keyboard = i8;
            }
            int i9 = configuration.keyboardHidden;
            int i10 = configuration2.keyboardHidden;
            if (i9 != i10) {
                configuration3.keyboardHidden = i10;
            }
            int i11 = configuration.navigation;
            int i12 = configuration2.navigation;
            if (i11 != i12) {
                configuration3.navigation = i12;
            }
            int i13 = configuration.navigationHidden;
            int i14 = configuration2.navigationHidden;
            if (i13 != i14) {
                configuration3.navigationHidden = i14;
            }
            int i15 = configuration.orientation;
            int i16 = configuration2.orientation;
            if (i15 != i16) {
                configuration3.orientation = i16;
            }
            int i17 = configuration.screenLayout & 15;
            int i18 = configuration2.screenLayout;
            if (i17 != (i18 & 15)) {
                configuration3.screenLayout |= i18 & 15;
            }
            int i19 = configuration.screenLayout & 192;
            int i20 = configuration2.screenLayout;
            if (i19 != (i20 & 192)) {
                configuration3.screenLayout |= i20 & 192;
            }
            int i21 = configuration.screenLayout & 48;
            int i22 = configuration2.screenLayout;
            if (i21 != (i22 & 48)) {
                configuration3.screenLayout |= i22 & 48;
            }
            int i23 = configuration.screenLayout & 768;
            int i24 = configuration2.screenLayout;
            if (i23 != (i24 & 768)) {
                configuration3.screenLayout |= i24 & 768;
            }
            C0153n.m430a(configuration, configuration2, configuration3);
            int i25 = configuration.uiMode & 15;
            int i26 = configuration2.uiMode;
            if (i25 != (i26 & 15)) {
                configuration3.uiMode |= i26 & 15;
            }
            int i27 = configuration.uiMode & 48;
            int i28 = configuration2.uiMode;
            if (i27 != (i28 & 48)) {
                configuration3.uiMode |= i28 & 48;
            }
            int i29 = configuration.screenWidthDp;
            int i30 = configuration2.screenWidthDp;
            if (i29 != i30) {
                configuration3.screenWidthDp = i30;
            }
            int i31 = configuration.screenHeightDp;
            int i32 = configuration2.screenHeightDp;
            if (i31 != i32) {
                configuration3.screenHeightDp = i32;
            }
            int i33 = configuration.smallestScreenWidthDp;
            int i34 = configuration2.smallestScreenWidthDp;
            if (i33 != i34) {
                configuration3.smallestScreenWidthDp = i34;
            }
            int i35 = configuration.densityDpi;
            int i36 = configuration2.densityDpi;
            if (i35 != i36) {
                configuration3.densityDpi = i36;
            }
        }
        return configuration3;
    }

    /* renamed from: A */
    public void m348A(@NonNull MenuBuilder menuBuilder) {
        if (this.f696F0) {
            return;
        }
        this.f696F0 = true;
        this.f739y.dismissPopups();
        Window.Callback m377X = m377X();
        if (m377X != null && !this.f703L0) {
            m377X.onPanelClosed(108, menuBuilder);
        }
        this.f696F0 = false;
    }

    @Nullable
    /* renamed from: A0 */
    public final AppCompatActivity m349A0() {
        for (Context context = this.f727r; context != null; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof AppCompatActivity) {
                return (AppCompatActivity) context;
            }
            if (!(context instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    /* renamed from: B */
    public final void m350B() {
        AbstractC0157r abstractC0157r = this.f711R0;
        if (abstractC0157r != null) {
            abstractC0157r.m442a();
        }
        AbstractC0157r abstractC0157r2 = this.f712S0;
        if (abstractC0157r2 != null) {
            abstractC0157r2.m442a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: B0 */
    public final void m351B0(Configuration configuration) {
        Activity activity = (Activity) this.f725q;
        if (activity instanceof LifecycleOwner) {
            if (((LifecycleOwner) activity).getLifecycle().getState().isAtLeast(Lifecycle.State.CREATED)) {
                activity.onConfigurationChanged(configuration);
            }
        } else {
            if (!this.f702K0 || this.f703L0) {
                return;
            }
            activity.onConfigurationChanged(configuration);
        }
    }

    /* renamed from: C */
    public void m352C(int i) {
        m354D(m374U(i, true), true);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bb  */
    /* renamed from: C0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m353C0(int r10, @androidx.annotation.Nullable androidx.core.os.LocaleListCompat r11, boolean r12) {
        /*
            r9 = this;
            android.content.Context r1 = r9.f727r
            r4 = 0
            r5 = 0
            r0 = r9
            r2 = r10
            r3 = r11
            android.content.res.Configuration r0 = r0.m356E(r1, r2, r3, r4, r5)
            android.content.Context r1 = r9.f727r
            int r1 = r9.m369P(r1)
            android.content.res.Configuration r2 = r9.f704M0
            if (r2 != 0) goto L1f
            android.content.Context r2 = r9.f727r
            android.content.res.Resources r2 = r2.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
        L1f:
            int r3 = r2.uiMode
            r3 = r3 & 48
            int r4 = r0.uiMode
            r4 = r4 & 48
            androidx.core.os.LocaleListCompat r2 = r9.m373T(r2)
            r5 = 0
            if (r11 != 0) goto L30
            r6 = r5
            goto L34
        L30:
            androidx.core.os.LocaleListCompat r6 = r9.m373T(r0)
        L34:
            r7 = 0
            if (r3 == r4) goto L3a
            r3 = 512(0x200, float:7.175E-43)
            goto L3b
        L3a:
            r3 = r7
        L3b:
            if (r6 == 0) goto L47
            boolean r2 = r2.equals(r6)
            if (r2 != 0) goto L47
            r2 = r3 | 4
            r3 = r2 | 8192(0x2000, float:1.14794E-41)
        L47:
            int r2 = ~r1
            r2 = r2 & r3
            r8 = 1
            if (r2 == 0) goto L8e
            if (r12 == 0) goto L8e
            boolean r12 = r9.f701J0
            if (r12 == 0) goto L8e
            boolean r12 = androidx.appcompat.app.AppCompatDelegateImpl.f688g1
            if (r12 != 0) goto L5a
            boolean r12 = r9.f702K0
            if (r12 == 0) goto L8e
        L5a:
            java.lang.Object r12 = r9.f725q
            boolean r2 = r12 instanceof android.app.Activity
            if (r2 == 0) goto L8e
            android.app.Activity r12 = (android.app.Activity) r12
            boolean r12 = r12.isChild()
            if (r12 != 0) goto L8e
            int r12 = android.os.Build.VERSION.SDK_INT
            r2 = 31
            if (r12 < r2) goto L85
            r12 = r3 & 8192(0x2000, float:1.14794E-41)
            if (r12 == 0) goto L85
            java.lang.Object r12 = r9.f725q
            android.app.Activity r12 = (android.app.Activity) r12
            android.view.Window r12 = r12.getWindow()
            android.view.View r12 = r12.getDecorView()
            int r0 = r0.getLayoutDirection()
            r12.setLayoutDirection(r0)
        L85:
            java.lang.Object r12 = r9.f725q
            android.app.Activity r12 = (android.app.Activity) r12
            androidx.core.app.ActivityCompat.recreate(r12)
            r12 = r8
            goto L8f
        L8e:
            r12 = r7
        L8f:
            if (r12 != 0) goto L9c
            if (r3 == 0) goto L9c
            r12 = r3 & r1
            if (r12 != r3) goto L98
            r7 = r8
        L98:
            r9.m357E0(r4, r6, r7, r5)
            goto L9d
        L9c:
            r8 = r12
        L9d:
            if (r8 == 0) goto Lb9
            java.lang.Object r12 = r9.f725q
            boolean r0 = r12 instanceof androidx.appcompat.app.AppCompatActivity
            if (r0 == 0) goto Lb9
            r0 = r3 & 512(0x200, float:7.175E-43)
            if (r0 == 0) goto Lae
            androidx.appcompat.app.AppCompatActivity r12 = (androidx.appcompat.app.AppCompatActivity) r12
            r12.onNightModeChanged(r10)
        Lae:
            r10 = r3 & 4
            if (r10 == 0) goto Lb9
            java.lang.Object r10 = r9.f725q
            androidx.appcompat.app.AppCompatActivity r10 = (androidx.appcompat.app.AppCompatActivity) r10
            r10.onLocalesChanged(r11)
        Lb9:
            if (r6 == 0) goto Lcc
            android.content.Context r10 = r9.f727r
            android.content.res.Resources r10 = r10.getResources()
            android.content.res.Configuration r10 = r10.getConfiguration()
            androidx.core.os.LocaleListCompat r10 = r9.m373T(r10)
            r9.m402u0(r10)
        Lcc:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m353C0(int, androidx.core.os.LocaleListCompat, boolean):boolean");
    }

    /* renamed from: D */
    public void m354D(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z && panelFeatureState.f743a == 0 && (decorContentParent = this.f739y) != null && decorContentParent.isOverflowMenuShowing()) {
            m348A(panelFeatureState.f752j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f727r.getSystemService("window");
        if (windowManager != null && panelFeatureState.f757o && (viewGroup = panelFeatureState.f749g) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                m411z(panelFeatureState.f743a, panelFeatureState, null);
            }
        }
        panelFeatureState.f755m = false;
        panelFeatureState.f756n = false;
        panelFeatureState.f757o = false;
        panelFeatureState.f750h = null;
        panelFeatureState.f758p = true;
        if (this.f698H0 == panelFeatureState) {
            this.f698H0 = null;
        }
        if (panelFeatureState.f743a == 0) {
            m355D0();
        }
    }

    /* renamed from: D0 */
    public void m355D0() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean m408x0 = m408x0();
            if (m408x0 && this.f723c1 == null) {
                this.f723c1 = C0154o.m432b(this.f722b1, this);
            } else {
                if (m408x0 || (onBackInvokedCallback = this.f723c1) == null) {
                    return;
                }
                C0154o.m433c(this.f722b1, onBackInvokedCallback);
                this.f723c1 = null;
            }
        }
    }

    @NonNull
    /* renamed from: E */
    public final Configuration m356E(@NonNull Context context, int i, @Nullable LocaleListCompat localeListCompat, @Nullable Configuration configuration, boolean z) {
        int i2 = i != 1 ? i != 2 ? z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (localeListCompat != null) {
            m400t0(configuration2, localeListCompat);
        }
        return configuration2;
    }

    /* renamed from: E0 */
    public final void m357E0(int i, @Nullable LocaleListCompat localeListCompat, boolean z, @Nullable Configuration configuration) {
        Resources resources = this.f727r.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i | (resources.getConfiguration().uiMode & (-49));
        if (localeListCompat != null) {
            m400t0(configuration2, localeListCompat);
        }
        resources.updateConfiguration(configuration2, null);
        int i2 = this.f707O0;
        if (i2 != 0) {
            this.f727r.setTheme(i2);
            this.f727r.getTheme().applyStyle(this.f707O0, true);
        }
        if (z && (this.f725q instanceof Activity)) {
            m351B0(configuration2);
        }
    }

    /* renamed from: F */
    public final ViewGroup m358F() {
        ViewGroup viewGroup;
        TypedArray obtainStyledAttributes = this.f727r.obtainStyledAttributes(C0118R.styleable.AppCompatTheme);
        if (!obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(C0118R.styleable.AppCompatTheme_windowNoTitle, false)) {
            requestWindowFeature(1);
        } else if (obtainStyledAttributes.getBoolean(C0118R.styleable.AppCompatTheme_windowActionBar, false)) {
            requestWindowFeature(108);
        }
        if (obtainStyledAttributes.getBoolean(C0118R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            requestWindowFeature(109);
        }
        if (obtainStyledAttributes.getBoolean(C0118R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            requestWindowFeature(10);
        }
        this.f694D0 = obtainStyledAttributes.getBoolean(C0118R.styleable.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        m366L();
        this.f728s.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f727r);
        if (this.f695E0) {
            viewGroup = this.f693C0 ? (ViewGroup) from.inflate(C0118R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(C0118R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.f694D0) {
            viewGroup = (ViewGroup) from.inflate(C0118R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f692B0 = false;
            this.f691A0 = false;
        } else if (this.f691A0) {
            TypedValue typedValue = new TypedValue();
            this.f727r.getTheme().resolveAttribute(C0118R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new ContextThemeWrapper(this.f727r, typedValue.resourceId) : this.f727r).inflate(C0118R.layout.abc_screen_toolbar, (ViewGroup) null);
            DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(C0118R.id.decor_content_parent);
            this.f739y = decorContentParent;
            decorContentParent.setWindowCallback(m377X());
            if (this.f692B0) {
                this.f739y.initFeature(109);
            }
            if (this.f740y0) {
                this.f739y.initFeature(2);
            }
            if (this.f742z0) {
                this.f739y.initFeature(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f691A0 + ", windowActionBarOverlay: " + this.f692B0 + ", android:windowIsFloating: " + this.f694D0 + ", windowActionModeOverlay: " + this.f693C0 + ", windowNoTitle: " + this.f695E0 + " }");
        }
        ViewCompat.setOnApplyWindowInsetsListener(viewGroup, new C0142c());
        if (this.f739y == null) {
            this.f736w0 = (TextView) viewGroup.findViewById(C0118R.id.title);
        }
        ViewUtils.makeOptionalFitsSystemWindows(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(C0118R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f728s.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f728s.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new C0144e());
        return viewGroup;
    }

    /* renamed from: F0 */
    public final int m359F0(@Nullable WindowInsetsCompat windowInsetsCompat, @Nullable Rect rect) {
        boolean z;
        boolean z2;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f709Q;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f709Q.getLayoutParams();
            if (this.f709Q.isShown()) {
                if (this.f717X0 == null) {
                    this.f717X0 = new Rect();
                    this.f718Y0 = new Rect();
                }
                Rect rect2 = this.f717X0;
                Rect rect3 = this.f718Y0;
                if (windowInsetsCompat == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom());
                }
                ViewUtils.computeFitSystemWindows(this.f734v0, rect2, rect3);
                int i = rect2.top;
                int i2 = rect2.left;
                int i3 = rect2.right;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.f734v0);
                int systemWindowInsetLeft = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetLeft();
                int systemWindowInsetRight = rootWindowInsets == null ? 0 : rootWindowInsets.getSystemWindowInsetRight();
                if (marginLayoutParams.topMargin == i && marginLayoutParams.leftMargin == i2 && marginLayoutParams.rightMargin == i3) {
                    z2 = false;
                } else {
                    marginLayoutParams.topMargin = i;
                    marginLayoutParams.leftMargin = i2;
                    marginLayoutParams.rightMargin = i3;
                    z2 = true;
                }
                if (i <= 0 || this.f738x0 != null) {
                    View view = this.f738x0;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i4 = marginLayoutParams2.height;
                        int i5 = marginLayoutParams.topMargin;
                        if (i4 != i5 || marginLayoutParams2.leftMargin != systemWindowInsetLeft || marginLayoutParams2.rightMargin != systemWindowInsetRight) {
                            marginLayoutParams2.height = i5;
                            marginLayoutParams2.leftMargin = systemWindowInsetLeft;
                            marginLayoutParams2.rightMargin = systemWindowInsetRight;
                            this.f738x0.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f727r);
                    this.f738x0 = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = systemWindowInsetLeft;
                    layoutParams.rightMargin = systemWindowInsetRight;
                    this.f734v0.addView(this.f738x0, -1, layoutParams);
                }
                View view3 = this.f738x0;
                r5 = view3 != null;
                if (r5 && view3.getVisibility() != 0) {
                    m361G0(this.f738x0);
                }
                if (!this.f693C0 && r5) {
                    systemWindowInsetTop = 0;
                }
                z = r5;
                r5 = z2;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z = false;
            } else {
                z = false;
                r5 = false;
            }
            if (r5) {
                this.f709Q.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.f738x0;
        if (view4 != null) {
            view4.setVisibility(z ? 0 : 8);
        }
        return systemWindowInsetTop;
    }

    /* renamed from: G */
    public void m360G() {
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent = this.f739y;
        if (decorContentParent != null) {
            decorContentParent.dismissPopups();
        }
        if (this.f719Z != null) {
            this.f728s.getDecorView().removeCallbacks(this.f724k0);
            if (this.f719Z.isShowing()) {
                try {
                    this.f719Z.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.f719Z = null;
        }
        m364J();
        PanelFeatureState m374U = m374U(0, false);
        if (m374U == null || (menuBuilder = m374U.f752j) == null) {
            return;
        }
        menuBuilder.close();
    }

    /* renamed from: G0 */
    public final void m361G0(View view) {
        view.setBackgroundColor((ViewCompat.getWindowSystemUiVisibility(view) & 8192) != 0 ? ContextCompat.getColor(this.f727r, C0118R.color.abc_decor_view_status_guard_light) : ContextCompat.getColor(this.f727r, C0118R.color.abc_decor_view_status_guard));
    }

    /* renamed from: H */
    public boolean m362H(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f725q;
        if (((obj instanceof KeyEventDispatcher.Component) || (obj instanceof AppCompatDialog)) && (decorView = this.f728s.getDecorView()) != null && KeyEventDispatcher.dispatchBeforeHierarchy(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.f729t.m434a(this.f728s.getCallback(), keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? m385f0(keyCode, keyEvent) : m388i0(keyCode, keyEvent);
    }

    /* renamed from: I */
    public void m363I(int i) {
        PanelFeatureState m374U;
        PanelFeatureState m374U2 = m374U(i, true);
        if (m374U2.f752j != null) {
            Bundle bundle = new Bundle();
            m374U2.f752j.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                m374U2.f762t = bundle;
            }
            m374U2.f752j.stopDispatchingItemsChanged();
            m374U2.f752j.clear();
        }
        m374U2.f759q = true;
        m374U2.f758p = true;
        if ((i != 108 && i != 0) || this.f739y == null || (m374U = m374U(0, false)) == null) {
            return;
        }
        m374U.f755m = false;
        m396q0(m374U, null);
    }

    /* renamed from: J */
    public void m364J() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f726q0;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
    }

    /* renamed from: K */
    public final void m365K() {
        if (this.f732u0) {
            return;
        }
        this.f734v0 = m358F();
        CharSequence m376W = m376W();
        if (!TextUtils.isEmpty(m376W)) {
            DecorContentParent decorContentParent = this.f739y;
            if (decorContentParent != null) {
                decorContentParent.setWindowTitle(m376W);
            } else if (m394o0() != null) {
                m394o0().setWindowTitle(m376W);
            } else {
                TextView textView = this.f736w0;
                if (textView != null) {
                    textView.setText(m376W);
                }
            }
        }
        m403v();
        m392m0(this.f734v0);
        this.f732u0 = true;
        PanelFeatureState m374U = m374U(0, false);
        if (this.f703L0) {
            return;
        }
        if (m374U == null || m374U.f752j == null) {
            m382c0(108);
        }
    }

    /* renamed from: L */
    public final void m366L() {
        if (this.f728s == null) {
            Object obj = this.f725q;
            if (obj instanceof Activity) {
                m405w(((Activity) obj).getWindow());
            }
        }
        if (this.f728s == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* renamed from: M */
    public PanelFeatureState m367M(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.f697G0;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.f752j == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    /* renamed from: O */
    public final Context m368O() {
        ActionBar supportActionBar = getSupportActionBar();
        Context themedContext = supportActionBar != null ? supportActionBar.getThemedContext() : null;
        return themedContext == null ? this.f727r : themedContext;
    }

    /* renamed from: P */
    public final int m369P(Context context) {
        if (!this.f710Q0 && (this.f725q instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return 0;
            }
            try {
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.f725q.getClass()), 269221888);
                if (activityInfo != null) {
                    this.f708P0 = activityInfo.configChanges;
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.d(AppCompatDelegate.f670f, "Exception while getting ActivityInfo", e);
                this.f708P0 = 0;
            }
        }
        this.f710Q0 = true;
        return this.f708P0;
    }

    /* renamed from: Q */
    public final AbstractC0157r m370Q(@NonNull Context context) {
        if (this.f712S0 == null) {
            this.f712S0 = new C0156q(context);
        }
        return this.f712S0;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting
    /* renamed from: R */
    public final AbstractC0157r m371R() {
        return m372S(this.f727r);
    }

    /* renamed from: S */
    public final AbstractC0157r m372S(@NonNull Context context) {
        if (this.f711R0 == null) {
            this.f711R0 = new C0158s(lon.m55484a(context));
        }
        return this.f711R0;
    }

    /* renamed from: T */
    public LocaleListCompat m373T(Configuration configuration) {
        return C0152m.m427b(configuration);
    }

    /* renamed from: U */
    public PanelFeatureState m374U(int i, boolean z) {
        PanelFeatureState[] panelFeatureStateArr = this.f697G0;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.f697G0 = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState(i);
        panelFeatureStateArr[i] = panelFeatureState2;
        return panelFeatureState2;
    }

    /* renamed from: V */
    public ViewGroup m375V() {
        return this.f734v0;
    }

    /* renamed from: W */
    public final CharSequence m376W() {
        Object obj = this.f725q;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.f737x;
    }

    /* renamed from: X */
    public final Window.Callback m377X() {
        return this.f728s.getCallback();
    }

    /* renamed from: Y */
    public final void m378Y() {
        m365K();
        if (this.f691A0 && this.f733v == null) {
            Object obj = this.f725q;
            if (obj instanceof Activity) {
                this.f733v = new WindowDecorActionBar((Activity) this.f725q, this.f692B0);
            } else if (obj instanceof Dialog) {
                this.f733v = new WindowDecorActionBar((Dialog) this.f725q);
            }
            ActionBar actionBar = this.f733v;
            if (actionBar != null) {
                actionBar.setDefaultDisplayHomeAsUpEnabled(this.f716W0);
            }
        }
    }

    /* renamed from: Z */
    public final boolean m379Z(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.f751i;
        if (view != null) {
            panelFeatureState.f750h = view;
            return true;
        }
        if (panelFeatureState.f752j == null) {
            return false;
        }
        if (this.f700J == null) {
            this.f700J = new C0160u();
        }
        View view2 = (View) panelFeatureState.m414b(this.f700J);
        panelFeatureState.f750h = view2;
        return view2 != null;
    }

    /* renamed from: a0 */
    public final boolean m380a0(PanelFeatureState panelFeatureState) {
        panelFeatureState.m418f(m368O());
        panelFeatureState.f749g = new C0159t(panelFeatureState.f754l);
        panelFeatureState.f745c = 81;
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m365K();
        ((ViewGroup) this.f734v0.findViewById(R.id.content)).addView(view, layoutParams);
        this.f729t.m435b(this.f728s.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean applyDayNight() {
        return m399t(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @NonNull
    @CallSuper
    public Context attachBaseContext2(@NonNull Context context) {
        this.f701J0 = true;
        int m383d0 = m383d0(context, m409y());
        if (AppCompatDelegate.m330k(context)) {
            AppCompatDelegate.m338s(context);
        }
        LocaleListCompat m407x = m407x(context);
        if (context instanceof android.view.ContextThemeWrapper) {
            try {
                ((android.view.ContextThemeWrapper) context).applyOverrideConfiguration(m356E(context, m383d0, m407x, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(m356E(context, m383d0, m407x, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f688g1) {
            return super.attachBaseContext2(context);
        }
        Configuration configuration = new Configuration();
        configuration.uiMode = -1;
        configuration.fontScale = 0.0f;
        Configuration configuration2 = context.createConfigurationContext(configuration).getResources().getConfiguration();
        Configuration configuration3 = context.getResources().getConfiguration();
        configuration2.uiMode = configuration3.uiMode;
        Configuration m356E = m356E(context, m383d0, m407x, !configuration2.equals(configuration3) ? m347N(configuration2, configuration3) : null, true);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, C0118R.style.Theme_AppCompat_Empty);
        contextThemeWrapper.applyOverrideConfiguration(m356E);
        boolean z = false;
        try {
            z = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z) {
            ResourcesCompat.ThemeCompat.rebase(contextThemeWrapper.getTheme());
        }
        return super.attachBaseContext2(contextThemeWrapper);
    }

    /* renamed from: b0 */
    public final boolean m381b0(PanelFeatureState panelFeatureState) {
        Resources.Theme theme;
        Context context = this.f727r;
        int i = panelFeatureState.f743a;
        if ((i == 0 || i == 108) && this.f739y != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme2 = context.getTheme();
            theme2.resolveAttribute(C0118R.attr.actionBarTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                theme = context.getResources().newTheme();
                theme.setTo(theme2);
                theme.applyStyle(typedValue.resourceId, true);
                theme.resolveAttribute(C0118R.attr.actionBarWidgetTheme, typedValue, true);
            } else {
                theme2.resolveAttribute(C0118R.attr.actionBarWidgetTheme, typedValue, true);
                theme = null;
            }
            if (typedValue.resourceId != 0) {
                if (theme == null) {
                    theme = context.getResources().newTheme();
                    theme.setTo(theme2);
                }
                theme.applyStyle(typedValue.resourceId, true);
            }
            if (theme != null) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(theme);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        panelFeatureState.m417e(menuBuilder);
        return true;
    }

    /* renamed from: c0 */
    public final void m382c0(int i) {
        this.f714U0 = (1 << i) | this.f714U0;
        if (this.f713T0) {
            return;
        }
        ViewCompat.postOnAnimation(this.f728s.getDecorView(), this.f715V0);
        this.f713T0 = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public View createView(View view, String str, @NonNull Context context, @NonNull AttributeSet attributeSet) {
        boolean z;
        boolean z2 = false;
        if (this.f720Z0 == null) {
            TypedArray obtainStyledAttributes = this.f727r.obtainStyledAttributes(C0118R.styleable.AppCompatTheme);
            String string = obtainStyledAttributes.getString(C0118R.styleable.AppCompatTheme_viewInflaterClass);
            obtainStyledAttributes.recycle();
            if (string == null) {
                this.f720Z0 = new AppCompatViewInflater();
            } else {
                try {
                    this.f720Z0 = (AppCompatViewInflater) this.f727r.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i(AppCompatDelegate.f670f, "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f720Z0 = new AppCompatViewInflater();
                }
            }
        }
        boolean z3 = f686e1;
        if (z3) {
            if (this.f721a1 == null) {
                this.f721a1 = new owi();
            }
            if (this.f721a1.m56175a(attributeSet)) {
                z = true;
                return this.f720Z0.createView(view, str, context, attributeSet, z, z3, true, VectorEnabledTintResources.shouldBeUsed());
            }
            if (!(attributeSet instanceof XmlPullParser)) {
                z2 = m406w0((ViewParent) view);
            } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                z2 = true;
            }
        }
        z = z2;
        return this.f720Z0.createView(view, str, context, attributeSet, z, z3, true, VectorEnabledTintResources.shouldBeUsed());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    /* renamed from: d */
    public boolean mo339d() {
        if (AppCompatDelegate.m330k(this.f727r) && AppCompatDelegate.m328i() != null && !AppCompatDelegate.m328i().equals(AppCompatDelegate.m329j())) {
            m340g(this.f727r);
        }
        return m399t(true);
    }

    /* renamed from: d0 */
    public int m383d0(@NonNull Context context, int i) {
        if (i == -100) {
            return -1;
        }
        if (i != -1) {
            if (i == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                    return -1;
                }
                return m372S(context).mo440c();
            }
            if (i != 1 && i != 2) {
                if (i == 3) {
                    return m370Q(context).mo440c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i;
    }

    /* renamed from: e0 */
    public boolean m384e0() {
        boolean z = this.f699I0;
        this.f699I0 = false;
        PanelFeatureState m374U = m374U(0, false);
        if (m374U != null && m374U.f757o) {
            if (!z) {
                m354D(m374U, true);
            }
            return true;
        }
        androidx.appcompat.view.ActionMode actionMode = this.f706O;
        if (actionMode != null) {
            actionMode.finish();
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        return supportActionBar != null && supportActionBar.collapseActionView();
    }

    /* renamed from: f0 */
    public boolean m385f0(int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.f699I0 = (keyEvent.getFlags() & 128) != 0;
        } else if (i == 82) {
            m386g0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @Nullable
    public <T extends View> T findViewById(@IdRes int i) {
        m365K();
        return (T) this.f728s.findViewById(i);
    }

    /* renamed from: g0 */
    public final boolean m386g0(int i, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        PanelFeatureState m374U = m374U(i, true);
        if (m374U.f757o) {
            return false;
        }
        return m396q0(m374U, keyEvent);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public Context getContextForDelegate() {
        return this.f727r;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBarDrawerToggle.Delegate getDrawerToggleDelegate() {
        return new C0147h();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public int getLocalNightMode() {
        return this.f705N0;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public MenuInflater getMenuInflater() {
        if (this.f735w == null) {
            m378Y();
            ActionBar actionBar = this.f733v;
            this.f735w = new SupportMenuInflater(actionBar != null ? actionBar.getThemedContext() : this.f727r);
        }
        return this.f735w;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public ActionBar getSupportActionBar() {
        m378Y();
        return this.f733v;
    }

    /* renamed from: h0 */
    public boolean m387h0(int i, KeyEvent keyEvent) {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null && supportActionBar.onKeyShortcut(i, keyEvent)) {
            return true;
        }
        PanelFeatureState panelFeatureState = this.f698H0;
        if (panelFeatureState != null && m395p0(panelFeatureState, keyEvent.getKeyCode(), keyEvent, 1)) {
            PanelFeatureState panelFeatureState2 = this.f698H0;
            if (panelFeatureState2 != null) {
                panelFeatureState2.f756n = true;
            }
            return true;
        }
        if (this.f698H0 == null) {
            PanelFeatureState m374U = m374U(0, true);
            m396q0(m374U, keyEvent);
            boolean m395p0 = m395p0(m374U, keyEvent.getKeyCode(), keyEvent, 1);
            m374U.f755m = false;
            if (m395p0) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean hasWindowFeature(int i) {
        int m398s0 = m398s0(i);
        return (m398s0 != 1 ? m398s0 != 2 ? m398s0 != 5 ? m398s0 != 10 ? m398s0 != 108 ? m398s0 != 109 ? false : this.f692B0 : this.f691A0 : this.f693C0 : this.f742z0 : this.f740y0 : this.f695E0) || this.f728s.hasFeature(i);
    }

    /* renamed from: i0 */
    public boolean m388i0(int i, KeyEvent keyEvent) {
        if (i != 4) {
            if (i == 82) {
                m389j0(0, keyEvent);
                return true;
            }
        } else if (m384e0()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.f727r);
        if (from.getFactory() == null) {
            LayoutInflaterCompat.setFactory2(from, this);
        } else {
            if (from.getFactory2() instanceof AppCompatDelegateImpl) {
                return;
            }
            Log.i(AppCompatDelegate.f670f, "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void invalidateOptionsMenu() {
        if (m394o0() == null || getSupportActionBar().invalidateOptionsMenu()) {
            return;
        }
        m382c0(0);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean isHandleNativeActionModesEnabled() {
        return this.f730t0;
    }

    /* renamed from: j0 */
    public final boolean m389j0(int i, KeyEvent keyEvent) {
        boolean z;
        DecorContentParent decorContentParent;
        if (this.f706O != null) {
            return false;
        }
        boolean z2 = true;
        PanelFeatureState m374U = m374U(i, true);
        if (i != 0 || (decorContentParent = this.f739y) == null || !decorContentParent.canShowOverflowMenu() || ViewConfiguration.get(this.f727r).hasPermanentMenuKey()) {
            boolean z3 = m374U.f757o;
            if (z3 || m374U.f756n) {
                m354D(m374U, true);
                z2 = z3;
            } else {
                if (m374U.f755m) {
                    if (m374U.f759q) {
                        m374U.f755m = false;
                        z = m396q0(m374U, keyEvent);
                    } else {
                        z = true;
                    }
                    if (z) {
                        m393n0(m374U, keyEvent);
                    }
                }
                z2 = false;
            }
        } else if (this.f739y.isOverflowMenuShowing()) {
            z2 = this.f739y.hideOverflowMenu();
        } else {
            if (!this.f703L0 && m396q0(m374U, keyEvent)) {
                z2 = this.f739y.showOverflowMenu();
            }
            z2 = false;
        }
        if (z2) {
            AudioManager audioManager = (AudioManager) this.f727r.getApplicationContext().getSystemService("audio");
            if (audioManager != null) {
                audioManager.playSoundEffect(0);
            } else {
                Log.w(AppCompatDelegate.f670f, "Couldn't get audio manager");
            }
        }
        return z2;
    }

    /* renamed from: k0 */
    public void m390k0(int i) {
        ActionBar supportActionBar;
        if (i != 108 || (supportActionBar = getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.dispatchMenuVisibilityChanged(true);
    }

    /* renamed from: l0 */
    public void m391l0(int i) {
        if (i == 108) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.dispatchMenuVisibilityChanged(false);
                return;
            }
            return;
        }
        if (i == 0) {
            PanelFeatureState m374U = m374U(i, true);
            if (m374U.f757o) {
                m354D(m374U, false);
            }
        }
    }

    /* renamed from: m0 */
    public void m392m0(ViewGroup viewGroup) {
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* renamed from: n0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m393n0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r13, android.view.KeyEvent r14) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m393n0(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    /* renamed from: o0 */
    public final ActionBar m394o0() {
        return this.f733v;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onConfigurationChanged(Configuration configuration) {
        ActionBar supportActionBar;
        if (this.f691A0 && this.f732u0 && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        AppCompatDrawableManager.get().onConfigurationChanged(this.f727r);
        this.f704M0 = new Configuration(this.f727r.getResources().getConfiguration());
        m401u(false, false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onCreate(Bundle bundle) {
        String str;
        this.f701J0 = true;
        m399t(false);
        m366L();
        Object obj = this.f725q;
        if (obj instanceof Activity) {
            try {
                str = NavUtils.getParentActivityName((Activity) obj);
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                ActionBar m394o0 = m394o0();
                if (m394o0 == null) {
                    this.f716W0 = true;
                } else {
                    m394o0.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            AppCompatDelegate.m324c(this);
        }
        this.f704M0 = new Configuration(this.f727r.getResources().getConfiguration());
        this.f702K0 = true;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(view, str, context, attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDestroy() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f725q
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L9
            androidx.appcompat.app.AppCompatDelegate.m333n(r3)
        L9:
            boolean r0 = r3.f713T0
            if (r0 == 0) goto L18
            android.view.Window r0 = r3.f728s
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.f715V0
            r0.removeCallbacks(r1)
        L18:
            r0 = 1
            r3.f703L0 = r0
            int r0 = r3.f705N0
            r1 = -100
            if (r0 == r1) goto L45
            java.lang.Object r0 = r3.f725q
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L45
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L45
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f685d1
            java.lang.Object r1 = r3.f725q
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f705N0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L54
        L45:
            androidx.collection.SimpleArrayMap<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.AppCompatDelegateImpl.f685d1
            java.lang.Object r1 = r3.f725q
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L54:
            androidx.appcompat.app.ActionBar r0 = r3.f733v
            if (r0 == 0) goto L5b
            r0.mo282a()
        L5b:
            r3.m350B()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.onDestroy():void");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        PanelFeatureState m367M;
        Window.Callback m377X = m377X();
        if (m377X == null || this.f703L0 || (m367M = m367M(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return m377X.onMenuItemSelected(m367M.f743a, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
        m397r0(true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostCreate(Bundle bundle) {
        m365K();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onPostResume() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onSaveInstanceState(Bundle bundle) {
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStart() {
        m401u(true, false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void onStop() {
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    /* renamed from: p0 */
    public final boolean m395p0(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        MenuBuilder menuBuilder;
        boolean z = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f755m || m396q0(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.f752j) != null) {
            z = menuBuilder.performShortcut(i, keyEvent, i2);
        }
        if (z && (i2 & 1) == 0 && this.f739y == null) {
            m354D(panelFeatureState, true);
        }
        return z;
    }

    /* renamed from: q0 */
    public final boolean m396q0(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (this.f703L0) {
            return false;
        }
        if (panelFeatureState.f755m) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.f698H0;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            m354D(panelFeatureState2, false);
        }
        Window.Callback m377X = m377X();
        if (m377X != null) {
            panelFeatureState.f751i = m377X.onCreatePanelView(panelFeatureState.f743a);
        }
        int i = panelFeatureState.f743a;
        boolean z = i == 0 || i == 108;
        if (z && (decorContentParent3 = this.f739y) != null) {
            decorContentParent3.setMenuPrepared();
        }
        if (panelFeatureState.f751i == null && (!z || !(m394o0() instanceof C0168c))) {
            MenuBuilder menuBuilder = panelFeatureState.f752j;
            if (menuBuilder == null || panelFeatureState.f759q) {
                if (menuBuilder == null && (!m381b0(panelFeatureState) || panelFeatureState.f752j == null)) {
                    return false;
                }
                if (z && this.f739y != null) {
                    if (this.f741z == null) {
                        this.f741z = new C0149j();
                    }
                    this.f739y.setMenu(panelFeatureState.f752j, this.f741z);
                }
                panelFeatureState.f752j.stopDispatchingItemsChanged();
                if (!m377X.onCreatePanelMenu(panelFeatureState.f743a, panelFeatureState.f752j)) {
                    panelFeatureState.m417e(null);
                    if (z && (decorContentParent = this.f739y) != null) {
                        decorContentParent.setMenu(null, this.f741z);
                    }
                    return false;
                }
                panelFeatureState.f759q = false;
            }
            panelFeatureState.f752j.stopDispatchingItemsChanged();
            Bundle bundle = panelFeatureState.f762t;
            if (bundle != null) {
                panelFeatureState.f752j.restoreActionViewStates(bundle);
                panelFeatureState.f762t = null;
            }
            if (!m377X.onPreparePanel(0, panelFeatureState.f751i, panelFeatureState.f752j)) {
                if (z && (decorContentParent2 = this.f739y) != null) {
                    decorContentParent2.setMenu(null, this.f741z);
                }
                panelFeatureState.f752j.startDispatchingItemsChanged();
                return false;
            }
            boolean z2 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.qwertyMode = z2;
            panelFeatureState.f752j.setQwertyMode(z2);
            panelFeatureState.f752j.startDispatchingItemsChanged();
        }
        panelFeatureState.f755m = true;
        panelFeatureState.f756n = false;
        this.f698H0 = panelFeatureState;
        return true;
    }

    /* renamed from: r0 */
    public final void m397r0(boolean z) {
        DecorContentParent decorContentParent = this.f739y;
        if (decorContentParent == null || !decorContentParent.canShowOverflowMenu() || (ViewConfiguration.get(this.f727r).hasPermanentMenuKey() && !this.f739y.isOverflowMenuShowPending())) {
            PanelFeatureState m374U = m374U(0, true);
            m374U.f758p = true;
            m354D(m374U, false);
            m393n0(m374U, null);
            return;
        }
        Window.Callback m377X = m377X();
        if (this.f739y.isOverflowMenuShowing() && z) {
            this.f739y.hideOverflowMenu();
            if (this.f703L0) {
                return;
            }
            m377X.onPanelClosed(108, m374U(0, true).f752j);
            return;
        }
        if (m377X == null || this.f703L0) {
            return;
        }
        if (this.f713T0 && (this.f714U0 & 1) != 0) {
            this.f728s.getDecorView().removeCallbacks(this.f715V0);
            this.f715V0.run();
        }
        PanelFeatureState m374U2 = m374U(0, true);
        MenuBuilder menuBuilder = m374U2.f752j;
        if (menuBuilder == null || m374U2.f759q || !m377X.onPreparePanel(0, m374U2.f751i, menuBuilder)) {
            return;
        }
        m377X.onMenuOpened(108, m374U2.f752j);
        this.f739y.showOverflowMenu();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public boolean requestWindowFeature(int i) {
        int m398s0 = m398s0(i);
        if (this.f695E0 && m398s0 == 108) {
            return false;
        }
        if (this.f691A0 && m398s0 == 1) {
            this.f691A0 = false;
        }
        if (m398s0 == 1) {
            m412z0();
            this.f695E0 = true;
            return true;
        }
        if (m398s0 == 2) {
            m412z0();
            this.f740y0 = true;
            return true;
        }
        if (m398s0 == 5) {
            m412z0();
            this.f742z0 = true;
            return true;
        }
        if (m398s0 == 10) {
            m412z0();
            this.f693C0 = true;
            return true;
        }
        if (m398s0 == 108) {
            m412z0();
            this.f691A0 = true;
            return true;
        }
        if (m398s0 != 109) {
            return this.f728s.requestFeature(m398s0);
        }
        m412z0();
        this.f692B0 = true;
        return true;
    }

    /* renamed from: s0 */
    public final int m398s0(int i) {
        if (i == 8) {
            Log.i(AppCompatDelegate.f670f, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i != 9) {
            return i;
        }
        Log.i(AppCompatDelegate.f670f, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view) {
        m365K();
        ViewGroup viewGroup = (ViewGroup) this.f734v0.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f729t.m435b(this.f728s.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setHandleNativeActionModesEnabled(boolean z) {
        this.f730t0 = z;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setLocalNightMode(int i) {
        if (this.f705N0 != i) {
            this.f705N0 = i;
            if (this.f701J0) {
                applyDayNight();
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    @RequiresApi(33)
    public void setOnBackInvokedDispatcher(@Nullable OnBackInvokedDispatcher onBackInvokedDispatcher) {
        OnBackInvokedCallback onBackInvokedCallback;
        super.setOnBackInvokedDispatcher(onBackInvokedDispatcher);
        OnBackInvokedDispatcher onBackInvokedDispatcher2 = this.f722b1;
        if (onBackInvokedDispatcher2 != null && (onBackInvokedCallback = this.f723c1) != null) {
            C0154o.m433c(onBackInvokedDispatcher2, onBackInvokedCallback);
            this.f723c1 = null;
        }
        if (onBackInvokedDispatcher == null) {
            Object obj = this.f725q;
            if ((obj instanceof Activity) && ((Activity) obj).getWindow() != null) {
                this.f722b1 = C0154o.m431a((Activity) this.f725q);
                m355D0();
            }
        }
        this.f722b1 = onBackInvokedDispatcher;
        m355D0();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setSupportActionBar(Toolbar toolbar) {
        if (this.f725q instanceof Activity) {
            ActionBar supportActionBar = getSupportActionBar();
            if (supportActionBar instanceof WindowDecorActionBar) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f735w = null;
            if (supportActionBar != null) {
                supportActionBar.mo282a();
            }
            this.f733v = null;
            if (toolbar != null) {
                C0168c c0168c = new C0168c(toolbar, m376W(), this.f729t);
                this.f733v = c0168c;
                this.f729t.m437d(c0168c.f862c);
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.f729t.m437d(null);
            }
            invalidateOptionsMenu();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setTheme(@StyleRes int i) {
        this.f707O0 = i;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void setTitle(CharSequence charSequence) {
        this.f737x = charSequence;
        DecorContentParent decorContentParent = this.f739y;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
            return;
        }
        if (m394o0() != null) {
            m394o0().setWindowTitle(charSequence);
            return;
        }
        TextView textView = this.f736w0;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public androidx.appcompat.view.ActionMode startSupportActionMode(@NonNull ActionMode.Callback callback) {
        AppCompatCallback appCompatCallback;
        if (callback == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        androidx.appcompat.view.ActionMode actionMode = this.f706O;
        if (actionMode != null) {
            actionMode.finish();
        }
        C0150k c0150k = new C0150k(callback);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            androidx.appcompat.view.ActionMode startActionMode = supportActionBar.startActionMode(c0150k);
            this.f706O = startActionMode;
            if (startActionMode != null && (appCompatCallback = this.f731u) != null) {
                appCompatCallback.onSupportActionModeStarted(startActionMode);
            }
        }
        if (this.f706O == null) {
            this.f706O = m410y0(c0150k);
        }
        m355D0();
        return this.f706O;
    }

    /* renamed from: t */
    public final boolean m399t(boolean z) {
        return m401u(z, true);
    }

    /* renamed from: t0 */
    public void m400t0(Configuration configuration, @NonNull LocaleListCompat localeListCompat) {
        C0152m.m429d(configuration, localeListCompat);
    }

    /* renamed from: u */
    public final boolean m401u(boolean z, boolean z2) {
        if (this.f703L0) {
            return false;
        }
        int m409y = m409y();
        int m383d0 = m383d0(this.f727r, m409y);
        LocaleListCompat m407x = Build.VERSION.SDK_INT < 33 ? m407x(this.f727r) : null;
        if (!z2 && m407x != null) {
            m407x = m373T(this.f727r.getResources().getConfiguration());
        }
        boolean m353C0 = m353C0(m383d0, m407x, z);
        if (m409y == 0) {
            m372S(this.f727r).m444f();
        } else {
            AbstractC0157r abstractC0157r = this.f711R0;
            if (abstractC0157r != null) {
                abstractC0157r.m442a();
            }
        }
        if (m409y == 3) {
            m370Q(this.f727r).m444f();
        } else {
            AbstractC0157r abstractC0157r2 = this.f712S0;
            if (abstractC0157r2 != null) {
                abstractC0157r2.m442a();
            }
        }
        return m353C0;
    }

    /* renamed from: u0 */
    public void m402u0(LocaleListCompat localeListCompat) {
        C0152m.m428c(localeListCompat);
    }

    /* renamed from: v */
    public final void m403v() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.f734v0.findViewById(R.id.content);
        View decorView = this.f728s.getDecorView();
        contentFrameLayout.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes = this.f727r.obtainStyledAttributes(C0118R.styleable.AppCompatTheme);
        obtainStyledAttributes.getValue(C0118R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout.getMinWidthMajor());
        obtainStyledAttributes.getValue(C0118R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout.getMinWidthMinor());
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes.getValue(C0118R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout.getFixedWidthMajor());
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes.getValue(C0118R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout.getFixedWidthMinor());
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes.getValue(C0118R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout.getFixedHeightMajor());
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes.getValue(C0118R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout.getFixedHeightMinor());
        }
        obtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    /* renamed from: v0 */
    public final boolean m404v0() {
        ViewGroup viewGroup;
        return this.f732u0 && (viewGroup = this.f734v0) != null && viewGroup.isLaidOut();
    }

    /* renamed from: w */
    public final void m405w(@NonNull Window window) {
        if (this.f728s != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof C0155p) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        C0155p c0155p = new C0155p(callback);
        this.f729t = c0155p;
        window.setCallback(c0155p);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.f727r, (AttributeSet) null, f687f1);
        Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            window.setBackgroundDrawable(drawableIfKnown);
        }
        obtainStyledAttributes.recycle();
        this.f728s = window;
        if (Build.VERSION.SDK_INT < 33 || this.f722b1 != null) {
            return;
        }
        setOnBackInvokedDispatcher(null);
    }

    /* renamed from: w0 */
    public final boolean m406w0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.f728s.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || ((View) viewParent).isAttachedToWindow()) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    @Nullable
    /* renamed from: x */
    public LocaleListCompat m407x(@NonNull Context context) {
        LocaleListCompat m328i;
        if (Build.VERSION.SDK_INT >= 33 || (m328i = AppCompatDelegate.m328i()) == null) {
            return null;
        }
        LocaleListCompat m373T = m373T(context.getApplicationContext().getResources().getConfiguration());
        LocaleListCompat m55705c = n1j.m55705c(m328i, m373T);
        return m55705c.isEmpty() ? m373T : m55705c;
    }

    /* renamed from: x0 */
    public boolean m408x0() {
        if (this.f722b1 == null) {
            return false;
        }
        PanelFeatureState m374U = m374U(0, false);
        return (m374U != null && m374U.f757o) || this.f706O != null;
    }

    /* renamed from: y */
    public final int m409y() {
        int i = this.f705N0;
        return i != -100 ? i : AppCompatDelegate.getDefaultNightMode();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0029  */
    /* renamed from: y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.appcompat.view.ActionMode m410y0(@androidx.annotation.NonNull androidx.appcompat.view.ActionMode.Callback r8) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.m410y0(androidx.appcompat.view.ActionMode$Callback):androidx.appcompat.view.ActionMode");
    }

    /* renamed from: z */
    public void m411z(int i, PanelFeatureState panelFeatureState, Menu menu) {
        if (menu == null) {
            if (panelFeatureState == null && i >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.f697G0;
                if (i < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.f752j;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.f757o) && !this.f703L0) {
            this.f729t.m436c(this.f728s.getCallback(), i, menu);
        }
    }

    /* renamed from: z0 */
    public final void m412z0() {
        if (this.f732u0) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public AppCompatDelegateImpl(Dialog dialog, AppCompatCallback appCompatCallback) {
        this(dialog.getContext(), dialog.getWindow(), appCompatCallback, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback) {
        this(context, window, appCompatCallback, context);
    }

    public AppCompatDelegateImpl(Context context, Activity activity, AppCompatCallback appCompatCallback) {
        this(context, null, appCompatCallback, activity);
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        SimpleArrayMap<String, Integer> simpleArrayMap;
        Integer num;
        AppCompatActivity m349A0;
        this.f726q0 = null;
        this.f730t0 = true;
        this.f705N0 = -100;
        this.f715V0 = new RunnableC0141b();
        this.f727r = context;
        this.f731u = appCompatCallback;
        this.f725q = obj;
        if (this.f705N0 == -100 && (obj instanceof Dialog) && (m349A0 = m349A0()) != null) {
            this.f705N0 = m349A0.getDelegate().getLocalNightMode();
        }
        if (this.f705N0 == -100 && (num = (simpleArrayMap = f685d1).get(obj.getClass().getName())) != null) {
            this.f705N0 = num.intValue();
            simpleArrayMap.remove(obj.getClass().getName());
        }
        if (window != null) {
            m405w(window);
        }
        AppCompatDrawableManager.preload();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(int i) {
        m365K();
        ViewGroup viewGroup = (ViewGroup) this.f734v0.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f727r).inflate(i, viewGroup);
        this.f729t.m435b(this.f728s.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m365K();
        ViewGroup viewGroup = (ViewGroup) this.f734v0.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f729t.m435b(this.f728s.getCallback());
    }
}
