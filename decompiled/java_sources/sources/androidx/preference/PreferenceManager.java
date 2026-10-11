package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import com.sunia.HTREnginev2.v6l;

/* loaded from: classes3.dex */
public class PreferenceManager {
    public static final String KEY_HAS_SET_DEFAULT_VALUES = "_has_set_default_values";

    /* renamed from: o */
    public static final int f8914o = 0;

    /* renamed from: p */
    public static final int f8915p = 1;

    /* renamed from: a */
    public Context f8916a;

    /* renamed from: c */
    @Nullable
    public SharedPreferences f8918c;

    /* renamed from: d */
    @Nullable
    public PreferenceDataStore f8919d;

    /* renamed from: e */
    @Nullable
    public SharedPreferences.Editor f8920e;

    /* renamed from: f */
    public boolean f8921f;

    /* renamed from: g */
    public String f8922g;

    /* renamed from: h */
    public int f8923h;

    /* renamed from: j */
    public PreferenceScreen f8925j;

    /* renamed from: k */
    public PreferenceComparisonCallback f8926k;

    /* renamed from: l */
    public OnPreferenceTreeClickListener f8927l;

    /* renamed from: m */
    public OnDisplayPreferenceDialogListener f8928m;

    /* renamed from: n */
    public OnNavigateToScreenListener f8929n;

    /* renamed from: b */
    public long f8917b = 0;

    /* renamed from: i */
    public int f8924i = 0;

    /* loaded from: classes3.dex */
    public interface OnDisplayPreferenceDialogListener {
        void onDisplayPreferenceDialog(Preference preference);
    }

    /* loaded from: classes3.dex */
    public interface OnNavigateToScreenListener {
        void onNavigateToScreen(PreferenceScreen preferenceScreen);
    }

    /* loaded from: classes3.dex */
    public interface OnPreferenceTreeClickListener {
        boolean onPreferenceTreeClick(Preference preference);
    }

    /* loaded from: classes3.dex */
    public static abstract class PreferenceComparisonCallback {
        public abstract boolean arePreferenceContentsTheSame(Preference preference, Preference preference2);

        public abstract boolean arePreferenceItemsTheSame(Preference preference, Preference preference2);
    }

    /* loaded from: classes3.dex */
    public static class SimplePreferenceComparisonCallback extends PreferenceComparisonCallback {
        @Override // androidx.preference.PreferenceManager.PreferenceComparisonCallback
        public boolean arePreferenceContentsTheSame(Preference preference, Preference preference2) {
            if (preference.getClass() != preference2.getClass()) {
                return false;
            }
            if ((preference == preference2 && preference.m5294n()) || !TextUtils.equals(preference.getTitle(), preference2.getTitle()) || !TextUtils.equals(preference.getSummary(), preference2.getSummary())) {
                return false;
            }
            Drawable icon = preference.getIcon();
            Drawable icon2 = preference2.getIcon();
            if ((icon != icon2 && (icon == null || !icon.equals(icon2))) || preference.isEnabled() != preference2.isEnabled() || preference.isSelectable() != preference2.isSelectable()) {
                return false;
            }
            if (!(preference instanceof TwoStatePreference) || ((TwoStatePreference) preference).isChecked() == ((TwoStatePreference) preference2).isChecked()) {
                return !(preference instanceof DropDownPreference) || preference == preference2;
            }
            return false;
        }

        @Override // androidx.preference.PreferenceManager.PreferenceComparisonCallback
        public boolean arePreferenceItemsTheSame(Preference preference, Preference preference2) {
            return preference.mo5285e() == preference2.mo5285e();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PreferenceManager(Context context) {
        this.f8916a = context;
        setSharedPreferencesName(m5329b(context));
    }

    /* renamed from: a */
    public static int m5328a() {
        return 0;
    }

    /* renamed from: b */
    public static String m5329b(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public static SharedPreferences getDefaultSharedPreferences(Context context) {
        return context.getSharedPreferences(m5329b(context), m5328a());
    }

    public static void setDefaultValues(Context context, int i, boolean z) {
        setDefaultValues(context, m5329b(context), m5328a(), i, z);
    }

    /* renamed from: c */
    public SharedPreferences.Editor m5330c() {
        if (this.f8919d != null) {
            return null;
        }
        if (!this.f8921f) {
            return getSharedPreferences().edit();
        }
        if (this.f8920e == null) {
            this.f8920e = getSharedPreferences().edit();
        }
        return this.f8920e;
    }

    public PreferenceScreen createPreferenceScreen(Context context) {
        PreferenceScreen preferenceScreen = new PreferenceScreen(context, null);
        preferenceScreen.onAttachedToHierarchy(this);
        return preferenceScreen;
    }

    /* renamed from: d */
    public long m5331d() {
        long j;
        synchronized (this) {
            j = this.f8917b;
            this.f8917b = 1 + j;
        }
        return j;
    }

    /* renamed from: e */
    public final void m5332e(boolean z) {
        SharedPreferences.Editor editor;
        if (!z && (editor = this.f8920e) != null) {
            editor.apply();
        }
        this.f8921f = z;
    }

    /* renamed from: f */
    public boolean m5333f() {
        return !this.f8921f;
    }

    @Nullable
    public <T extends Preference> T findPreference(@NonNull CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.f8925j;
        if (preferenceScreen == null) {
            return null;
        }
        return (T) preferenceScreen.findPreference(charSequence);
    }

    public Context getContext() {
        return this.f8916a;
    }

    public OnDisplayPreferenceDialogListener getOnDisplayPreferenceDialogListener() {
        return this.f8928m;
    }

    public OnNavigateToScreenListener getOnNavigateToScreenListener() {
        return this.f8929n;
    }

    public OnPreferenceTreeClickListener getOnPreferenceTreeClickListener() {
        return this.f8927l;
    }

    public PreferenceComparisonCallback getPreferenceComparisonCallback() {
        return this.f8926k;
    }

    @Nullable
    public PreferenceDataStore getPreferenceDataStore() {
        return this.f8919d;
    }

    public PreferenceScreen getPreferenceScreen() {
        return this.f8925j;
    }

    public SharedPreferences getSharedPreferences() {
        if (getPreferenceDataStore() != null) {
            return null;
        }
        if (this.f8918c == null) {
            this.f8918c = (this.f8924i != 1 ? this.f8916a : ContextCompat.createDeviceProtectedStorageContext(this.f8916a)).getSharedPreferences(this.f8922g, this.f8923h);
        }
        return this.f8918c;
    }

    public int getSharedPreferencesMode() {
        return this.f8923h;
    }

    public String getSharedPreferencesName() {
        return this.f8922g;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PreferenceScreen inflateFromResource(Context context, int i, PreferenceScreen preferenceScreen) {
        m5332e(true);
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) new v6l(context, this).m57745e(i, preferenceScreen);
        preferenceScreen2.onAttachedToHierarchy(this);
        m5332e(false);
        return preferenceScreen2;
    }

    public boolean isStorageDefault() {
        return this.f8924i == 0;
    }

    public boolean isStorageDeviceProtected() {
        return this.f8924i == 1;
    }

    public void setOnDisplayPreferenceDialogListener(OnDisplayPreferenceDialogListener onDisplayPreferenceDialogListener) {
        this.f8928m = onDisplayPreferenceDialogListener;
    }

    public void setOnNavigateToScreenListener(OnNavigateToScreenListener onNavigateToScreenListener) {
        this.f8929n = onNavigateToScreenListener;
    }

    public void setOnPreferenceTreeClickListener(OnPreferenceTreeClickListener onPreferenceTreeClickListener) {
        this.f8927l = onPreferenceTreeClickListener;
    }

    public void setPreferenceComparisonCallback(PreferenceComparisonCallback preferenceComparisonCallback) {
        this.f8926k = preferenceComparisonCallback;
    }

    public void setPreferenceDataStore(PreferenceDataStore preferenceDataStore) {
        this.f8919d = preferenceDataStore;
    }

    public boolean setPreferences(PreferenceScreen preferenceScreen) {
        PreferenceScreen preferenceScreen2 = this.f8925j;
        if (preferenceScreen == preferenceScreen2) {
            return false;
        }
        if (preferenceScreen2 != null) {
            preferenceScreen2.onDetached();
        }
        this.f8925j = preferenceScreen;
        return true;
    }

    public void setSharedPreferencesMode(int i) {
        this.f8923h = i;
        this.f8918c = null;
    }

    public void setSharedPreferencesName(String str) {
        this.f8922g = str;
        this.f8918c = null;
    }

    public void setStorageDefault() {
        this.f8924i = 0;
        this.f8918c = null;
    }

    public void setStorageDeviceProtected() {
        this.f8924i = 1;
        this.f8918c = null;
    }

    public void showDialog(Preference preference) {
        OnDisplayPreferenceDialogListener onDisplayPreferenceDialogListener = this.f8928m;
        if (onDisplayPreferenceDialogListener != null) {
            onDisplayPreferenceDialogListener.onDisplayPreferenceDialog(preference);
        }
    }

    public static void setDefaultValues(Context context, String str, int i, int i2, boolean z) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(KEY_HAS_SET_DEFAULT_VALUES, 0);
        if (z || !sharedPreferences.getBoolean(KEY_HAS_SET_DEFAULT_VALUES, false)) {
            PreferenceManager preferenceManager = new PreferenceManager(context);
            preferenceManager.setSharedPreferencesName(str);
            preferenceManager.setSharedPreferencesMode(i);
            preferenceManager.inflateFromResource(context, i2, null);
            sharedPreferences.edit().putBoolean(KEY_HAS_SET_DEFAULT_VALUES, true).apply();
        }
    }
}
