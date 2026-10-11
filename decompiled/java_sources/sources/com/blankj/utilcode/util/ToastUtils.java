package com.blankj.utilcode.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.blankj.utilcode.C1794R;
import com.blankj.utilcode.util.Utils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public final class ToastUtils {

    /* renamed from: l */
    public static final String f14157l = "TAG_TOAST";

    /* renamed from: m */
    public static final int f14158m = -16777217;

    /* renamed from: n */
    public static final String f14159n = "toast null";

    /* renamed from: o */
    public static final String f14160o = "toast nothing";

    /* renamed from: p */
    public static final ToastUtils f14161p = make();

    /* renamed from: q */
    public static WeakReference<InterfaceC1881e> f14162q;

    /* renamed from: a */
    public String f14163a;

    /* renamed from: b */
    public int f14164b = -1;

    /* renamed from: c */
    public int f14165c = -1;

    /* renamed from: d */
    public int f14166d = -1;

    /* renamed from: e */
    public int f14167e = -16777217;

    /* renamed from: f */
    public int f14168f = -1;

    /* renamed from: g */
    public int f14169g = -16777217;

    /* renamed from: h */
    public int f14170h = -1;

    /* renamed from: i */
    public boolean f14171i = false;

    /* renamed from: j */
    public Drawable[] f14172j = new Drawable[4];

    /* renamed from: k */
    public boolean f14173k = false;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface MODE {
        public static final String DARK = "dark";
        public static final String LIGHT = "light";
    }

    /* loaded from: classes3.dex */
    public static final class UtilsMaxWidthRelativeLayout extends RelativeLayout {

        /* renamed from: e */
        public static final int f14174e = C1887b.m8537w(80.0f);

        public UtilsMaxWidthRelativeLayout(Context context) {
            super(context);
        }

        @Override // android.widget.RelativeLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(C1887b.m8451K() - f14174e, Integer.MIN_VALUE), i2);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public UtilsMaxWidthRelativeLayout(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ToastUtils$a */
    /* loaded from: classes3.dex */
    public static class RunnableC1877a implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (ToastUtils.f14162q != null) {
                InterfaceC1881e interfaceC1881e = (InterfaceC1881e) ToastUtils.f14162q.get();
                if (interfaceC1881e != null) {
                    interfaceC1881e.cancel();
                }
                WeakReference unused = ToastUtils.f14162q = null;
            }
        }
    }

    /* renamed from: com.blankj.utilcode.util.ToastUtils$b */
    /* loaded from: classes3.dex */
    public static class RunnableC1878b implements Runnable {

        /* renamed from: f */
        public final /* synthetic */ View f14176f;

        /* renamed from: g */
        public final /* synthetic */ CharSequence f14177g;

        /* renamed from: h */
        public final /* synthetic */ int f14178h;

        public RunnableC1878b(View view, CharSequence charSequence, int i) {
            this.f14176f = view;
            this.f14177g = charSequence;
            this.f14178h = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            ToastUtils.cancel();
            InterfaceC1881e m8371n = ToastUtils.m8371n(ToastUtils.this);
            WeakReference unused = ToastUtils.f14162q = new WeakReference(m8371n);
            View view = this.f14176f;
            if (view != null) {
                m8371n.mo8377a(view);
            } else {
                m8371n.mo8378b(this.f14177g);
            }
            m8371n.mo8384c(this.f14178h);
        }
    }

    /* renamed from: com.blankj.utilcode.util.ToastUtils$c */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1879c implements InterfaceC1881e {

        /* renamed from: a */
        public Toast f14179a = new Toast(Utils.getApp());

        /* renamed from: b */
        public ToastUtils f14180b;

        /* renamed from: c */
        public View f14181c;

        public AbstractC1879c(ToastUtils toastUtils) {
            this.f14180b = toastUtils;
            if (toastUtils.f14164b == -1 && this.f14180b.f14165c == -1 && this.f14180b.f14166d == -1) {
                return;
            }
            this.f14179a.setGravity(this.f14180b.f14164b, this.f14180b.f14165c, this.f14180b.f14166d);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        /* renamed from: a */
        public void mo8377a(View view) {
            this.f14181c = view;
            this.f14179a.setView(view);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        /* renamed from: b */
        public void mo8378b(CharSequence charSequence) {
            View m8376r = this.f14180b.m8376r(charSequence);
            if (m8376r != null) {
                mo8377a(m8376r);
                m8380e();
                return;
            }
            View view = this.f14179a.getView();
            this.f14181c = view;
            if (view == null || view.findViewById(R.id.message) == null) {
                mo8377a(C1887b.m8446H0(C1794R.layout.utils_toast_view));
            }
            TextView textView = (TextView) this.f14181c.findViewById(R.id.message);
            textView.setText(charSequence);
            if (this.f14180b.f14169g != -16777217) {
                textView.setTextColor(this.f14180b.f14169g);
            }
            if (this.f14180b.f14170h != -1) {
                textView.setTextSize(this.f14180b.f14170h);
            }
            m8381f(textView);
            m8380e();
        }

        @Override // com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        @CallSuper
        public void cancel() {
            Toast toast = this.f14179a;
            if (toast != null) {
                toast.cancel();
            }
            this.f14179a = null;
            this.f14181c = null;
        }

        /* renamed from: d */
        public View m8379d(int i) {
            Bitmap m8503g1 = C1887b.m8503g1(this.f14181c);
            ImageView imageView = new ImageView(Utils.getApp());
            imageView.setTag(ToastUtils.f14157l + i);
            imageView.setImageBitmap(m8503g1);
            return imageView;
        }

        /* renamed from: e */
        public final void m8380e() {
            if (C1887b.m8542y0()) {
                mo8377a(m8379d(-1));
            }
        }

        /* renamed from: f */
        public final void m8381f(TextView textView) {
            if (this.f14180b.f14168f != -1) {
                this.f14181c.setBackgroundResource(this.f14180b.f14168f);
                textView.setBackgroundColor(0);
                return;
            }
            if (this.f14180b.f14167e != -16777217) {
                Drawable background = this.f14181c.getBackground();
                Drawable background2 = textView.getBackground();
                if (background != null && background2 != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f14180b.f14167e, PorterDuff.Mode.SRC_IN));
                    textView.setBackgroundColor(0);
                } else if (background != null) {
                    background.mutate().setColorFilter(new PorterDuffColorFilter(this.f14180b.f14167e, PorterDuff.Mode.SRC_IN));
                } else if (background2 != null) {
                    background2.mutate().setColorFilter(new PorterDuffColorFilter(this.f14180b.f14167e, PorterDuff.Mode.SRC_IN));
                } else {
                    this.f14181c.setBackgroundColor(this.f14180b.f14167e);
                }
            }
        }
    }

    /* renamed from: com.blankj.utilcode.util.ToastUtils$d */
    /* loaded from: classes3.dex */
    public static final class C1880d extends AbstractC1879c {

        /* renamed from: f */
        public static int f14182f;

        /* renamed from: d */
        public Utils.ActivityLifecycleCallbacks f14183d;

        /* renamed from: e */
        public InterfaceC1881e f14184e;

        /* renamed from: com.blankj.utilcode.util.ToastUtils$d$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C1880d.this.cancel();
            }
        }

        /* renamed from: com.blankj.utilcode.util.ToastUtils$d$b */
        /* loaded from: classes3.dex */
        public class b extends Utils.ActivityLifecycleCallbacks {

            /* renamed from: a */
            public final /* synthetic */ int f14186a;

            public b(int i) {
                this.f14186a = i;
            }

            @Override // com.blankj.utilcode.util.Utils.ActivityLifecycleCallbacks
            public void onActivityCreated(@NonNull Activity activity) {
                if (C1880d.this.m8385i()) {
                    C1880d.this.m8388l(activity, this.f14186a, false);
                }
            }
        }

        public C1880d(ToastUtils toastUtils) {
            super(toastUtils);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        /* renamed from: c */
        public void mo8384c(int i) {
            if (this.f14179a == null) {
                return;
            }
            if (!C1887b.m8528r0()) {
                this.f14184e = m8387k(i);
                return;
            }
            boolean z = false;
            for (Activity activity : C1887b.m8449J()) {
                if (C1887b.m8524p0(activity)) {
                    if (z) {
                        m8388l(activity, f14182f, true);
                    } else {
                        this.f14184e = m8389m(activity, i);
                        z = true;
                    }
                }
            }
            if (!z) {
                this.f14184e = m8387k(i);
                return;
            }
            m8386j();
            C1887b.m8476W0(new a(), i == 0 ? 2000L : 3500L);
            f14182f++;
        }

        @Override // com.blankj.utilcode.util.ToastUtils.AbstractC1879c, com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        public void cancel() {
            Window window;
            if (m8385i()) {
                m8390n();
                for (Activity activity : C1887b.m8449J()) {
                    if (C1887b.m8524p0(activity) && (window = activity.getWindow()) != null) {
                        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                        StringBuilder sb = new StringBuilder();
                        sb.append(ToastUtils.f14157l);
                        sb.append(f14182f - 1);
                        View findViewWithTag = viewGroup.findViewWithTag(sb.toString());
                        if (findViewWithTag != null) {
                            try {
                                viewGroup.removeView(findViewWithTag);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            InterfaceC1881e interfaceC1881e = this.f14184e;
            if (interfaceC1881e != null) {
                interfaceC1881e.cancel();
                this.f14184e = null;
            }
            super.cancel();
        }

        /* renamed from: i */
        public final boolean m8385i() {
            return this.f14183d != null;
        }

        /* renamed from: j */
        public final void m8386j() {
            b bVar = new b(f14182f);
            this.f14183d = bVar;
            C1887b.m8486b(bVar);
        }

        /* renamed from: k */
        public final InterfaceC1881e m8387k(int i) {
            C1882f c1882f = new C1882f(this.f14180b);
            c1882f.f14179a = this.f14179a;
            c1882f.mo8384c(i);
            return c1882f;
        }

        /* renamed from: l */
        public final void m8388l(Activity activity, int i, boolean z) {
            Window window = activity.getWindow();
            if (window != null) {
                ViewGroup viewGroup = (ViewGroup) window.getDecorView();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = this.f14179a.getGravity();
                layoutParams.bottomMargin = this.f14179a.getYOffset() + C1887b.m8484a0();
                layoutParams.topMargin = this.f14179a.getYOffset() + C1887b.m8496e0();
                layoutParams.leftMargin = this.f14179a.getXOffset();
                View m8379d = m8379d(i);
                if (z) {
                    m8379d.setAlpha(0.0f);
                    m8379d.animate().alpha(1.0f).setDuration(200L).start();
                }
                viewGroup.addView(m8379d, layoutParams);
            }
        }

        /* renamed from: m */
        public final InterfaceC1881e m8389m(Activity activity, int i) {
            C1883g c1883g = new C1883g(this.f14180b, activity.getWindowManager(), 99);
            c1883g.f14181c = m8379d(-1);
            c1883g.f14179a = this.f14179a;
            c1883g.mo8384c(i);
            return c1883g;
        }

        /* renamed from: n */
        public final void m8390n() {
            C1887b.m8470T0(this.f14183d);
            this.f14183d = null;
        }
    }

    /* renamed from: com.blankj.utilcode.util.ToastUtils$e */
    /* loaded from: classes3.dex */
    public interface InterfaceC1881e {
        /* renamed from: a */
        void mo8377a(View view);

        /* renamed from: b */
        void mo8378b(CharSequence charSequence);

        /* renamed from: c */
        void mo8384c(int i);

        void cancel();
    }

    /* renamed from: com.blankj.utilcode.util.ToastUtils$f */
    /* loaded from: classes3.dex */
    public static final class C1882f extends AbstractC1879c {

        /* renamed from: com.blankj.utilcode.util.ToastUtils$f$a */
        /* loaded from: classes3.dex */
        public static class a extends Handler {

            /* renamed from: a */
            public Handler f14188a;

            public a(Handler handler) {
                this.f14188a = handler;
            }

            @Override // android.os.Handler
            public void dispatchMessage(@NonNull Message message) {
                try {
                    this.f14188a.dispatchMessage(message);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            @Override // android.os.Handler
            public void handleMessage(@NonNull Message message) {
                this.f14188a.handleMessage(message);
            }
        }

        public C1882f(ToastUtils toastUtils) {
            super(toastUtils);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        /* renamed from: c */
        public void mo8384c(int i) {
            Toast toast = this.f14179a;
            if (toast == null) {
                return;
            }
            toast.setDuration(i);
            this.f14179a.show();
        }
    }

    public static void cancel() {
        C1887b.m8474V0(new RunnableC1877a());
    }

    @NonNull
    public static ToastUtils getDefaultMaker() {
        return f14161p;
    }

    /* renamed from: m */
    public static CharSequence m8370m(CharSequence charSequence) {
        return charSequence == null ? f14159n : charSequence.length() == 0 ? f14160o : charSequence;
    }

    @NonNull
    public static ToastUtils make() {
        return new ToastUtils();
    }

    /* renamed from: n */
    public static InterfaceC1881e m8371n(ToastUtils toastUtils) {
        return (toastUtils.f14173k || !NotificationManagerCompat.from(Utils.getApp()).areNotificationsEnabled() || C1887b.m8538w0()) ? C1887b.m8538w0() ? new C1883g(toastUtils, 2038) : new C1880d(toastUtils) : new C1882f(toastUtils);
    }

    /* renamed from: o */
    public static void m8372o(@NonNull View view, int i, ToastUtils toastUtils) {
        m8373p(view, null, i, toastUtils);
    }

    /* renamed from: p */
    public static void m8373p(@Nullable View view, @Nullable CharSequence charSequence, int i, @NonNull ToastUtils toastUtils) {
        C1887b.m8474V0(new RunnableC1878b(view, charSequence, i));
    }

    /* renamed from: q */
    public static void m8374q(@Nullable CharSequence charSequence, int i, ToastUtils toastUtils) {
        m8373p(null, m8370m(charSequence), i, toastUtils);
    }

    public static void showLong(@Nullable CharSequence charSequence) {
        m8374q(charSequence, 1, f14161p);
    }

    public static void showShort(@Nullable CharSequence charSequence) {
        m8374q(charSequence, 0, f14161p);
    }

    /* renamed from: l */
    public final int m8375l() {
        return this.f14171i ? 1 : 0;
    }

    /* renamed from: r */
    public final View m8376r(CharSequence charSequence) {
        if (!MODE.DARK.equals(this.f14163a) && !MODE.LIGHT.equals(this.f14163a)) {
            Drawable[] drawableArr = this.f14172j;
            if (drawableArr[0] == null && drawableArr[1] == null && drawableArr[2] == null && drawableArr[3] == null) {
                return null;
            }
        }
        View m8446H0 = C1887b.m8446H0(C1794R.layout.utils_toast_view);
        TextView textView = (TextView) m8446H0.findViewById(R.id.message);
        if (MODE.DARK.equals(this.f14163a)) {
            ((GradientDrawable) m8446H0.getBackground().mutate()).setColor(Color.parseColor("#BB000000"));
            textView.setTextColor(-1);
        }
        textView.setText(charSequence);
        if (this.f14172j[0] != null) {
            View findViewById = m8446H0.findViewById(C1794R.id.utvLeftIconView);
            ViewCompat.setBackground(findViewById, this.f14172j[0]);
            findViewById.setVisibility(0);
        }
        if (this.f14172j[1] != null) {
            View findViewById2 = m8446H0.findViewById(C1794R.id.utvTopIconView);
            ViewCompat.setBackground(findViewById2, this.f14172j[1]);
            findViewById2.setVisibility(0);
        }
        if (this.f14172j[2] != null) {
            View findViewById3 = m8446H0.findViewById(C1794R.id.utvRightIconView);
            ViewCompat.setBackground(findViewById3, this.f14172j[2]);
            findViewById3.setVisibility(0);
        }
        if (this.f14172j[3] != null) {
            View findViewById4 = m8446H0.findViewById(C1794R.id.utvBottomIconView);
            ViewCompat.setBackground(findViewById4, this.f14172j[3]);
            findViewById4.setVisibility(0);
        }
        return m8446H0;
    }

    @NonNull
    public final ToastUtils setBgColor(@ColorInt int i) {
        this.f14167e = i;
        return this;
    }

    @NonNull
    public final ToastUtils setBgResource(@DrawableRes int i) {
        this.f14168f = i;
        return this;
    }

    @NonNull
    public final ToastUtils setBottomIcon(int i) {
        return setBottomIcon(ContextCompat.getDrawable(Utils.getApp(), i));
    }

    @NonNull
    public final ToastUtils setDurationIsLong(boolean z) {
        this.f14171i = z;
        return this;
    }

    @NonNull
    public final ToastUtils setGravity(int i, int i2, int i3) {
        this.f14164b = i;
        this.f14165c = i2;
        this.f14166d = i3;
        return this;
    }

    @NonNull
    public final ToastUtils setLeftIcon(@DrawableRes int i) {
        return setLeftIcon(ContextCompat.getDrawable(Utils.getApp(), i));
    }

    @NonNull
    public final ToastUtils setMode(String str) {
        this.f14163a = str;
        return this;
    }

    @NonNull
    public final ToastUtils setNotUseSystemToast() {
        this.f14173k = true;
        return this;
    }

    @NonNull
    public final ToastUtils setRightIcon(@DrawableRes int i) {
        return setRightIcon(ContextCompat.getDrawable(Utils.getApp(), i));
    }

    @NonNull
    public final ToastUtils setTextColor(@ColorInt int i) {
        this.f14169g = i;
        return this;
    }

    @NonNull
    public final ToastUtils setTextSize(int i) {
        this.f14170h = i;
        return this;
    }

    @NonNull
    public final ToastUtils setTopIcon(@DrawableRes int i) {
        return setTopIcon(ContextCompat.getDrawable(Utils.getApp(), i));
    }

    public final void show(@Nullable CharSequence charSequence) {
        m8374q(charSequence, m8375l(), this);
    }

    public static void showLong(@StringRes int i) {
        m8374q(C1887b.m8499f0(i), 1, f14161p);
    }

    public static void showShort(@StringRes int i) {
        m8374q(C1887b.m8499f0(i), 0, f14161p);
    }

    @NonNull
    public final ToastUtils setBottomIcon(@Nullable Drawable drawable) {
        this.f14172j[3] = drawable;
        return this;
    }

    @NonNull
    public final ToastUtils setLeftIcon(@Nullable Drawable drawable) {
        this.f14172j[0] = drawable;
        return this;
    }

    @NonNull
    public final ToastUtils setRightIcon(@Nullable Drawable drawable) {
        this.f14172j[2] = drawable;
        return this;
    }

    @NonNull
    public final ToastUtils setTopIcon(@Nullable Drawable drawable) {
        this.f14172j[1] = drawable;
        return this;
    }

    public final void show(@StringRes int i) {
        m8374q(C1887b.m8499f0(i), m8375l(), this);
    }

    public static void showLong(@StringRes int i, Object... objArr) {
        m8374q(C1887b.m8502g0(i, objArr), 1, f14161p);
    }

    public static void showShort(@StringRes int i, Object... objArr) {
        m8374q(C1887b.m8502g0(i, objArr), 0, f14161p);
    }

    public final void show(@StringRes int i, Object... objArr) {
        m8374q(C1887b.m8502g0(i, objArr), m8375l(), this);
    }

    /* renamed from: com.blankj.utilcode.util.ToastUtils$g */
    /* loaded from: classes3.dex */
    public static final class C1883g extends AbstractC1879c {

        /* renamed from: d */
        public WindowManager f14189d;

        /* renamed from: e */
        public WindowManager.LayoutParams f14190e;

        /* renamed from: com.blankj.utilcode.util.ToastUtils$g$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C1883g.this.cancel();
            }
        }

        public C1883g(ToastUtils toastUtils, int i) {
            super(toastUtils);
            this.f14190e = new WindowManager.LayoutParams();
            this.f14189d = (WindowManager) Utils.getApp().getSystemService("window");
            this.f14190e.type = i;
        }

        @Override // com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        /* renamed from: c */
        public void mo8384c(int i) {
            if (this.f14179a == null) {
                return;
            }
            WindowManager.LayoutParams layoutParams = this.f14190e;
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation.Toast;
            layoutParams.setTitle("ToastWithoutNotification");
            WindowManager.LayoutParams layoutParams2 = this.f14190e;
            layoutParams2.flags = 152;
            layoutParams2.packageName = Utils.getApp().getPackageName();
            this.f14190e.gravity = this.f14179a.getGravity();
            WindowManager.LayoutParams layoutParams3 = this.f14190e;
            int i2 = layoutParams3.gravity;
            if ((i2 & 7) == 7) {
                layoutParams3.horizontalWeight = 1.0f;
            }
            if ((i2 & 112) == 112) {
                layoutParams3.verticalWeight = 1.0f;
            }
            layoutParams3.x = this.f14179a.getXOffset();
            this.f14190e.y = this.f14179a.getYOffset();
            this.f14190e.horizontalMargin = this.f14179a.getHorizontalMargin();
            this.f14190e.verticalMargin = this.f14179a.getVerticalMargin();
            try {
                WindowManager windowManager = this.f14189d;
                if (windowManager != null) {
                    windowManager.addView(this.f14181c, this.f14190e);
                }
            } catch (Exception unused) {
            }
            C1887b.m8476W0(new a(), i == 0 ? 2000L : 3500L);
        }

        @Override // com.blankj.utilcode.util.ToastUtils.AbstractC1879c, com.blankj.utilcode.util.ToastUtils.InterfaceC1881e
        public void cancel() {
            try {
                WindowManager windowManager = this.f14189d;
                if (windowManager != null) {
                    windowManager.removeViewImmediate(this.f14181c);
                    this.f14189d = null;
                }
            } catch (Exception unused) {
            }
            super.cancel();
        }

        public C1883g(ToastUtils toastUtils, WindowManager windowManager, int i) {
            super(toastUtils);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            this.f14190e = layoutParams;
            this.f14189d = windowManager;
            layoutParams.type = i;
        }
    }

    public static void showLong(@Nullable String str, Object... objArr) {
        m8374q(C1887b.m8441F(str, objArr), 1, f14161p);
    }

    public static void showShort(@Nullable String str, Object... objArr) {
        m8374q(C1887b.m8441F(str, objArr), 0, f14161p);
    }

    public final void show(@Nullable String str, Object... objArr) {
        m8374q(C1887b.m8441F(str, objArr), m8375l(), this);
    }

    public final void show(@NonNull View view) {
        m8372o(view, m8375l(), this);
    }
}
