package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0118R;

/* loaded from: classes3.dex */
public class ContextThemeWrapper extends ContextWrapper {

    /* renamed from: f */
    public static Configuration f972f;

    /* renamed from: a */
    public int f973a;

    /* renamed from: b */
    public Resources.Theme f974b;

    /* renamed from: c */
    public LayoutInflater f975c;

    /* renamed from: d */
    public Configuration f976d;

    /* renamed from: e */
    public Resources f977e;

    public ContextThemeWrapper() {
        super(null);
    }

    @RequiresApi(26)
    /* renamed from: c */
    public static boolean m549c(Configuration configuration) {
        if (configuration == null) {
            return true;
        }
        if (f972f == null) {
            Configuration configuration2 = new Configuration();
            configuration2.fontScale = 0.0f;
            f972f = configuration2;
        }
        return configuration.equals(f972f);
    }

    /* renamed from: a */
    public final Resources m550a() {
        if (this.f977e == null) {
            Configuration configuration = this.f976d;
            if (configuration == null || m549c(configuration)) {
                this.f977e = super.getResources();
            } else {
                this.f977e = createConfigurationContext(this.f976d).getResources();
            }
        }
        return this.f977e;
    }

    public void applyOverrideConfiguration(Configuration configuration) {
        if (this.f977e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f976d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f976d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* renamed from: b */
    public final void m551b() {
        boolean z = this.f974b == null;
        if (z) {
            this.f974b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f974b.setTo(theme);
            }
        }
        onApplyThemeResource(this.f974b, this.f973a, z);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m550a();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f975c == null) {
            this.f975c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f975c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f974b;
        if (theme != null) {
            return theme;
        }
        if (this.f973a == 0) {
            this.f973a = C0118R.style.Theme_AppCompat_Light;
        }
        m551b();
        return this.f974b;
    }

    public int getThemeResId() {
        return this.f973a;
    }

    public void onApplyThemeResource(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f973a != i) {
            this.f973a = i;
            m551b();
        }
    }

    public ContextThemeWrapper(Context context, @StyleRes int i) {
        super(context);
        this.f973a = i;
    }

    public ContextThemeWrapper(Context context, Resources.Theme theme) {
        super(context);
        this.f974b = theme;
    }
}
