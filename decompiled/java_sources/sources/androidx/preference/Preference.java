package androidx.preference;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class Preference implements Comparable<Preference> {
    public static final int DEFAULT_ORDER = Integer.MAX_VALUE;

    /* renamed from: I0 */
    public static final String f8761I0 = "Preference";

    /* renamed from: A0 */
    public InterfaceC1252b f8762A0;

    /* renamed from: B0 */
    public List<Preference> f8763B0;

    /* renamed from: C0 */
    public PreferenceGroup f8764C0;

    /* renamed from: D0 */
    public boolean f8765D0;

    /* renamed from: E0 */
    public boolean f8766E0;

    /* renamed from: F0 */
    public ViewOnCreateContextMenuListenerC1253c f8767F0;

    /* renamed from: G0 */
    public SummaryProvider f8768G0;

    /* renamed from: H0 */
    public final View.OnClickListener f8769H0;

    /* renamed from: J */
    public Object f8770J;

    /* renamed from: O */
    public boolean f8771O;

    /* renamed from: Q */
    public boolean f8772Q;

    /* renamed from: Z */
    public boolean f8773Z;

    /* renamed from: e */
    public Context f8774e;

    /* renamed from: f */
    @Nullable
    public PreferenceManager f8775f;

    /* renamed from: g */
    @Nullable
    public PreferenceDataStore f8776g;

    /* renamed from: h */
    public long f8777h;

    /* renamed from: i */
    public boolean f8778i;

    /* renamed from: j */
    public OnPreferenceChangeListener f8779j;

    /* renamed from: k */
    public OnPreferenceClickListener f8780k;

    /* renamed from: k0 */
    public boolean f8781k0;

    /* renamed from: l */
    public int f8782l;

    /* renamed from: m */
    public int f8783m;

    /* renamed from: n */
    public CharSequence f8784n;

    /* renamed from: o */
    public CharSequence f8785o;

    /* renamed from: p */
    public int f8786p;

    /* renamed from: q */
    public Drawable f8787q;

    /* renamed from: q0 */
    public boolean f8788q0;

    /* renamed from: r */
    public String f8789r;

    /* renamed from: s */
    public Intent f8790s;

    /* renamed from: t */
    public String f8791t;

    /* renamed from: t0 */
    public boolean f8792t0;

    /* renamed from: u */
    public Bundle f8793u;

    /* renamed from: u0 */
    public boolean f8794u0;

    /* renamed from: v */
    public boolean f8795v;

    /* renamed from: v0 */
    public boolean f8796v0;

    /* renamed from: w */
    public boolean f8797w;

    /* renamed from: w0 */
    public boolean f8798w0;

    /* renamed from: x */
    public boolean f8799x;

    /* renamed from: x0 */
    public boolean f8800x0;

    /* renamed from: y */
    public boolean f8801y;

    /* renamed from: y0 */
    public int f8802y0;

    /* renamed from: z */
    public String f8803z;

    /* renamed from: z0 */
    public int f8804z0;

    /* loaded from: classes3.dex */
    public static class BaseSavedState extends AbsSavedState {
        public static final Parcelable.Creator<BaseSavedState> CREATOR = new C1250a();

        /* renamed from: androidx.preference.Preference$BaseSavedState$a */
        /* loaded from: classes3.dex */
        public static class C1250a implements Parcelable.Creator<BaseSavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public BaseSavedState[] newArray(int i) {
                return new BaseSavedState[i];
            }
        }

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnPreferenceChangeListener {
        boolean onPreferenceChange(Preference preference, Object obj);
    }

    /* loaded from: classes3.dex */
    public interface OnPreferenceClickListener {
        boolean onPreferenceClick(Preference preference);
    }

    /* loaded from: classes3.dex */
    public interface SummaryProvider<T extends Preference> {
        CharSequence provideSummary(T t);
    }

    /* renamed from: androidx.preference.Preference$a */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC1251a implements View.OnClickListener {
        public ViewOnClickListenerC1251a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Preference.this.performClick(view);
        }
    }

    /* renamed from: androidx.preference.Preference$b */
    /* loaded from: classes3.dex */
    public interface InterfaceC1252b {
        void onPreferenceChange(Preference preference);

        void onPreferenceHierarchyChange(Preference preference);

        void onPreferenceVisibilityChange(Preference preference);
    }

    /* renamed from: androidx.preference.Preference$c */
    /* loaded from: classes3.dex */
    public static class ViewOnCreateContextMenuListenerC1253c implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {

        /* renamed from: e */
        public final Preference f8806e;

        public ViewOnCreateContextMenuListenerC1253c(Preference preference) {
            this.f8806e = preference;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            CharSequence summary = this.f8806e.getSummary();
            if (!this.f8806e.isCopyingEnabled() || TextUtils.isEmpty(summary)) {
                return;
            }
            contextMenu.setHeaderTitle(summary);
            contextMenu.add(0, 0, 0, C1271R.string.copy).setOnMenuItemClickListener(this);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            ClipboardManager clipboardManager = (ClipboardManager) this.f8806e.getContext().getSystemService("clipboard");
            CharSequence summary = this.f8806e.getSummary();
            clipboardManager.setPrimaryClip(ClipData.newPlainText(Preference.f8761I0, summary));
            Toast.makeText(this.f8806e.getContext(), this.f8806e.getContext().getString(C1271R.string.preference_copied, summary), 0).show();
            return true;
        }
    }

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f8782l = Integer.MAX_VALUE;
        this.f8783m = 0;
        this.f8795v = true;
        this.f8797w = true;
        this.f8801y = true;
        this.f8771O = true;
        this.f8772Q = true;
        this.f8773Z = true;
        this.f8781k0 = true;
        this.f8788q0 = true;
        this.f8794u0 = true;
        this.f8800x0 = true;
        this.f8802y0 = C1271R.layout.preference;
        this.f8769H0 = new ViewOnClickListenerC1251a();
        this.f8774e = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1271R.styleable.Preference, i, i2);
        this.f8786p = TypedArrayUtils.getResourceId(obtainStyledAttributes, C1271R.styleable.Preference_icon, C1271R.styleable.Preference_android_icon, 0);
        this.f8789r = TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.Preference_key, C1271R.styleable.Preference_android_key);
        this.f8784n = TypedArrayUtils.getText(obtainStyledAttributes, C1271R.styleable.Preference_title, C1271R.styleable.Preference_android_title);
        this.f8785o = TypedArrayUtils.getText(obtainStyledAttributes, C1271R.styleable.Preference_summary, C1271R.styleable.Preference_android_summary);
        this.f8782l = TypedArrayUtils.getInt(obtainStyledAttributes, C1271R.styleable.Preference_order, C1271R.styleable.Preference_android_order, Integer.MAX_VALUE);
        this.f8791t = TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.Preference_fragment, C1271R.styleable.Preference_android_fragment);
        this.f8802y0 = TypedArrayUtils.getResourceId(obtainStyledAttributes, C1271R.styleable.Preference_layout, C1271R.styleable.Preference_android_layout, C1271R.layout.preference);
        this.f8804z0 = TypedArrayUtils.getResourceId(obtainStyledAttributes, C1271R.styleable.Preference_widgetLayout, C1271R.styleable.Preference_android_widgetLayout, 0);
        this.f8795v = TypedArrayUtils.getBoolean(obtainStyledAttributes, C1271R.styleable.Preference_enabled, C1271R.styleable.Preference_android_enabled, true);
        this.f8797w = TypedArrayUtils.getBoolean(obtainStyledAttributes, C1271R.styleable.Preference_selectable, C1271R.styleable.Preference_android_selectable, true);
        this.f8801y = TypedArrayUtils.getBoolean(obtainStyledAttributes, C1271R.styleable.Preference_persistent, C1271R.styleable.Preference_android_persistent, true);
        this.f8803z = TypedArrayUtils.getString(obtainStyledAttributes, C1271R.styleable.Preference_dependency, C1271R.styleable.Preference_android_dependency);
        int i3 = C1271R.styleable.Preference_allowDividerAbove;
        this.f8781k0 = TypedArrayUtils.getBoolean(obtainStyledAttributes, i3, i3, this.f8797w);
        int i4 = C1271R.styleable.Preference_allowDividerBelow;
        this.f8788q0 = TypedArrayUtils.getBoolean(obtainStyledAttributes, i4, i4, this.f8797w);
        if (obtainStyledAttributes.hasValue(C1271R.styleable.Preference_defaultValue)) {
            this.f8770J = onGetDefaultValue(obtainStyledAttributes, C1271R.styleable.Preference_defaultValue);
        } else if (obtainStyledAttributes.hasValue(C1271R.styleable.Preference_android_defaultValue)) {
            this.f8770J = onGetDefaultValue(obtainStyledAttributes, C1271R.styleable.Preference_android_defaultValue);
        }
        this.f8800x0 = TypedArrayUtils.getBoolean(obtainStyledAttributes, C1271R.styleable.Preference_shouldDisableView, C1271R.styleable.Preference_android_shouldDisableView, true);
        boolean hasValue = obtainStyledAttributes.hasValue(C1271R.styleable.Preference_singleLineTitle);
        this.f8792t0 = hasValue;
        if (hasValue) {
            this.f8794u0 = TypedArrayUtils.getBoolean(obtainStyledAttributes, C1271R.styleable.Preference_singleLineTitle, C1271R.styleable.Preference_android_singleLineTitle, true);
        }
        this.f8796v0 = TypedArrayUtils.getBoolean(obtainStyledAttributes, C1271R.styleable.Preference_iconSpaceReserved, C1271R.styleable.Preference_android_iconSpaceReserved, false);
        int i5 = C1271R.styleable.Preference_isPreferenceVisible;
        this.f8773Z = TypedArrayUtils.getBoolean(obtainStyledAttributes, i5, i5, true);
        int i6 = C1271R.styleable.Preference_enableCopying;
        this.f8798w0 = TypedArrayUtils.getBoolean(obtainStyledAttributes, i6, i6, false);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public void m5281a(@Nullable PreferenceGroup preferenceGroup) {
        if (preferenceGroup != null && this.f8764C0 != null) {
            throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
        }
        this.f8764C0 = preferenceGroup;
    }

    /* renamed from: b */
    public final void m5282b() {
        this.f8765D0 = false;
    }

    /* renamed from: c */
    public final void m5283c() {
        if (getPreferenceDataStore() != null) {
            onSetInitialValue(true, this.f8770J);
            return;
        }
        if (shouldPersist() && getSharedPreferences().contains(this.f8789r)) {
            onSetInitialValue(true, null);
            return;
        }
        Object obj = this.f8770J;
        if (obj != null) {
            onSetInitialValue(false, obj);
        }
    }

    public boolean callChangeListener(Object obj) {
        OnPreferenceChangeListener onPreferenceChangeListener = this.f8779j;
        return onPreferenceChangeListener == null || onPreferenceChangeListener.onPreferenceChange(this, obj);
    }

    /* renamed from: d */
    public StringBuilder m5284d() {
        StringBuilder sb = new StringBuilder();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            sb.append(title);
            sb.append(' ');
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    public void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        if (!hasKey() || (parcelable = bundle.getParcelable(this.f8789r)) == null) {
            return;
        }
        this.f8766E0 = false;
        onRestoreInstanceState(parcelable);
        if (!this.f8766E0) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        if (hasKey()) {
            this.f8766E0 = false;
            Parcelable onSaveInstanceState = onSaveInstanceState();
            if (!this.f8766E0) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (onSaveInstanceState != null) {
                bundle.putParcelable(this.f8789r, onSaveInstanceState);
            }
        }
    }

    /* renamed from: e */
    public long mo5285e() {
        return this.f8777h;
    }

    /* renamed from: f */
    public final void m5286f() {
        if (TextUtils.isEmpty(this.f8803z)) {
            return;
        }
        Preference findPreferenceInHierarchy = findPreferenceInHierarchy(this.f8803z);
        if (findPreferenceInHierarchy != null) {
            findPreferenceInHierarchy.m5287g(this);
            return;
        }
        throw new IllegalStateException("Dependency \"" + this.f8803z + "\" not found for preference \"" + this.f8789r + "\" (title: \"" + ((Object) this.f8784n) + "\"");
    }

    @Nullable
    public <T extends Preference> T findPreferenceInHierarchy(@NonNull String str) {
        PreferenceManager preferenceManager = this.f8775f;
        if (preferenceManager == null) {
            return null;
        }
        return (T) preferenceManager.findPreference(str);
    }

    /* renamed from: g */
    public final void m5287g(Preference preference) {
        if (this.f8763B0 == null) {
            this.f8763B0 = new ArrayList();
        }
        this.f8763B0.add(preference);
        preference.onDependencyChanged(this, shouldDisableDependents());
    }

    public Context getContext() {
        return this.f8774e;
    }

    public String getDependency() {
        return this.f8803z;
    }

    public Bundle getExtras() {
        if (this.f8793u == null) {
            this.f8793u = new Bundle();
        }
        return this.f8793u;
    }

    public String getFragment() {
        return this.f8791t;
    }

    public Drawable getIcon() {
        int i;
        if (this.f8787q == null && (i = this.f8786p) != 0) {
            this.f8787q = AppCompatResources.getDrawable(this.f8774e, i);
        }
        return this.f8787q;
    }

    public Intent getIntent() {
        return this.f8790s;
    }

    public String getKey() {
        return this.f8789r;
    }

    public final int getLayoutResource() {
        return this.f8802y0;
    }

    public OnPreferenceChangeListener getOnPreferenceChangeListener() {
        return this.f8779j;
    }

    public OnPreferenceClickListener getOnPreferenceClickListener() {
        return this.f8780k;
    }

    public int getOrder() {
        return this.f8782l;
    }

    @Nullable
    public PreferenceGroup getParent() {
        return this.f8764C0;
    }

    public boolean getPersistedBoolean(boolean z) {
        if (!shouldPersist()) {
            return z;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getBoolean(this.f8789r, z) : this.f8775f.getSharedPreferences().getBoolean(this.f8789r, z);
    }

    public float getPersistedFloat(float f) {
        if (!shouldPersist()) {
            return f;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getFloat(this.f8789r, f) : this.f8775f.getSharedPreferences().getFloat(this.f8789r, f);
    }

    public int getPersistedInt(int i) {
        if (!shouldPersist()) {
            return i;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getInt(this.f8789r, i) : this.f8775f.getSharedPreferences().getInt(this.f8789r, i);
    }

    public long getPersistedLong(long j) {
        if (!shouldPersist()) {
            return j;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getLong(this.f8789r, j) : this.f8775f.getSharedPreferences().getLong(this.f8789r, j);
    }

    public String getPersistedString(String str) {
        if (!shouldPersist()) {
            return str;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getString(this.f8789r, str) : this.f8775f.getSharedPreferences().getString(this.f8789r, str);
    }

    public Set<String> getPersistedStringSet(Set<String> set) {
        if (!shouldPersist()) {
            return set;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getStringSet(this.f8789r, set) : this.f8775f.getSharedPreferences().getStringSet(this.f8789r, set);
    }

    @Nullable
    public PreferenceDataStore getPreferenceDataStore() {
        PreferenceDataStore preferenceDataStore = this.f8776g;
        if (preferenceDataStore != null) {
            return preferenceDataStore;
        }
        PreferenceManager preferenceManager = this.f8775f;
        if (preferenceManager != null) {
            return preferenceManager.getPreferenceDataStore();
        }
        return null;
    }

    public PreferenceManager getPreferenceManager() {
        return this.f8775f;
    }

    public SharedPreferences getSharedPreferences() {
        if (this.f8775f == null || getPreferenceDataStore() != null) {
            return null;
        }
        return this.f8775f.getSharedPreferences();
    }

    public boolean getShouldDisableView() {
        return this.f8800x0;
    }

    public CharSequence getSummary() {
        return getSummaryProvider() != null ? getSummaryProvider().provideSummary(this) : this.f8785o;
    }

    @Nullable
    public final SummaryProvider getSummaryProvider() {
        return this.f8768G0;
    }

    public CharSequence getTitle() {
        return this.f8784n;
    }

    public final int getWidgetLayoutResource() {
        return this.f8804z0;
    }

    /* renamed from: h */
    public void m5288h() {
        if (TextUtils.isEmpty(this.f8789r)) {
            throw new IllegalStateException("Preference does not have a key assigned.");
        }
        this.f8799x = true;
    }

    public boolean hasKey() {
        return !TextUtils.isEmpty(this.f8789r);
    }

    /* renamed from: i */
    public final void m5289i(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                m5289i(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    public boolean isCopyingEnabled() {
        return this.f8798w0;
    }

    public boolean isEnabled() {
        return this.f8795v && this.f8771O && this.f8772Q;
    }

    public boolean isIconSpaceReserved() {
        return this.f8796v0;
    }

    public boolean isPersistent() {
        return this.f8801y;
    }

    public boolean isSelectable() {
        return this.f8797w;
    }

    public final boolean isShown() {
        if (!isVisible() || getPreferenceManager() == null) {
            return false;
        }
        if (this == getPreferenceManager().getPreferenceScreen()) {
            return true;
        }
        PreferenceGroup parent = getParent();
        if (parent == null) {
            return false;
        }
        return parent.isShown();
    }

    public boolean isSingleLineTitle() {
        return this.f8794u0;
    }

    public final boolean isVisible() {
        return this.f8773Z;
    }

    /* renamed from: j */
    public final void m5290j(InterfaceC1252b interfaceC1252b) {
        this.f8762A0 = interfaceC1252b;
    }

    /* renamed from: k */
    public final void m5291k(@NonNull SharedPreferences.Editor editor) {
        if (this.f8775f.m5333f()) {
            editor.apply();
        }
    }

    /* renamed from: l */
    public final void m5292l() {
        Preference findPreferenceInHierarchy;
        String str = this.f8803z;
        if (str == null || (findPreferenceInHierarchy = findPreferenceInHierarchy(str)) == null) {
            return;
        }
        findPreferenceInHierarchy.m5293m(this);
    }

    /* renamed from: m */
    public final void m5293m(Preference preference) {
        List<Preference> list = this.f8763B0;
        if (list != null) {
            list.remove(preference);
        }
    }

    /* renamed from: n */
    public final boolean m5294n() {
        return this.f8765D0;
    }

    public void notifyChanged() {
        InterfaceC1252b interfaceC1252b = this.f8762A0;
        if (interfaceC1252b != null) {
            interfaceC1252b.onPreferenceChange(this);
        }
    }

    public void notifyDependencyChange(boolean z) {
        List<Preference> list = this.f8763B0;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            list.get(i).onDependencyChanged(this, z);
        }
    }

    public void notifyHierarchyChanged() {
        InterfaceC1252b interfaceC1252b = this.f8762A0;
        if (interfaceC1252b != null) {
            interfaceC1252b.onPreferenceHierarchyChange(this);
        }
    }

    public void onAttached() {
        m5286f();
    }

    public void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        this.f8775f = preferenceManager;
        if (!this.f8778i) {
            this.f8777h = preferenceManager.m5331d();
        }
        m5283c();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(androidx.preference.PreferenceViewHolder r9) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.onBindViewHolder(androidx.preference.PreferenceViewHolder):void");
    }

    public void onClick() {
    }

    public void onDependencyChanged(Preference preference, boolean z) {
        if (this.f8771O == z) {
            this.f8771O = !z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onDetached() {
        m5292l();
        this.f8765D0 = true;
    }

    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return null;
    }

    @CallSuper
    @Deprecated
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void onParentChanged(Preference preference, boolean z) {
        if (this.f8772Q == z) {
            this.f8772Q = !z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onPrepareForRemoval() {
        m5292l();
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        this.f8766E0 = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable onSaveInstanceState() {
        this.f8766E0 = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void onSetInitialValue(@Nullable Object obj) {
    }

    public Bundle peekExtras() {
        return this.f8793u;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void performClick(View view) {
        performClick();
    }

    public boolean persistBoolean(boolean z) {
        if (!shouldPersist()) {
            return false;
        }
        if (z == getPersistedBoolean(!z)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putBoolean(this.f8789r, z);
        } else {
            SharedPreferences.Editor m5330c = this.f8775f.m5330c();
            m5330c.putBoolean(this.f8789r, z);
            m5291k(m5330c);
        }
        return true;
    }

    public boolean persistFloat(float f) {
        if (!shouldPersist()) {
            return false;
        }
        if (f == getPersistedFloat(Float.NaN)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putFloat(this.f8789r, f);
        } else {
            SharedPreferences.Editor m5330c = this.f8775f.m5330c();
            m5330c.putFloat(this.f8789r, f);
            m5291k(m5330c);
        }
        return true;
    }

    public boolean persistInt(int i) {
        if (!shouldPersist()) {
            return false;
        }
        if (i == getPersistedInt(~i)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putInt(this.f8789r, i);
        } else {
            SharedPreferences.Editor m5330c = this.f8775f.m5330c();
            m5330c.putInt(this.f8789r, i);
            m5291k(m5330c);
        }
        return true;
    }

    public boolean persistLong(long j) {
        if (!shouldPersist()) {
            return false;
        }
        if (j == getPersistedLong(~j)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putLong(this.f8789r, j);
        } else {
            SharedPreferences.Editor m5330c = this.f8775f.m5330c();
            m5330c.putLong(this.f8789r, j);
            m5291k(m5330c);
        }
        return true;
    }

    public boolean persistString(String str) {
        if (!shouldPersist()) {
            return false;
        }
        if (TextUtils.equals(str, getPersistedString(null))) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putString(this.f8789r, str);
        } else {
            SharedPreferences.Editor m5330c = this.f8775f.m5330c();
            m5330c.putString(this.f8789r, str);
            m5291k(m5330c);
        }
        return true;
    }

    public boolean persistStringSet(Set<String> set) {
        if (!shouldPersist()) {
            return false;
        }
        if (set.equals(getPersistedStringSet(null))) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putStringSet(this.f8789r, set);
        } else {
            SharedPreferences.Editor m5330c = this.f8775f.m5330c();
            m5330c.putStringSet(this.f8789r, set);
            m5291k(m5330c);
        }
        return true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveHierarchyState(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void setCopyingEnabled(boolean z) {
        if (this.f8798w0 != z) {
            this.f8798w0 = z;
            notifyChanged();
        }
    }

    public void setDefaultValue(Object obj) {
        this.f8770J = obj;
    }

    public void setDependency(String str) {
        m5292l();
        this.f8803z = str;
        m5286f();
    }

    public void setEnabled(boolean z) {
        if (this.f8795v != z) {
            this.f8795v = z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setFragment(String str) {
        this.f8791t = str;
    }

    public void setIcon(Drawable drawable) {
        if (this.f8787q != drawable) {
            this.f8787q = drawable;
            this.f8786p = 0;
            notifyChanged();
        }
    }

    public void setIconSpaceReserved(boolean z) {
        if (this.f8796v0 != z) {
            this.f8796v0 = z;
            notifyChanged();
        }
    }

    public void setIntent(Intent intent) {
        this.f8790s = intent;
    }

    public void setKey(String str) {
        this.f8789r = str;
        if (!this.f8799x || hasKey()) {
            return;
        }
        m5288h();
    }

    public void setLayoutResource(int i) {
        this.f8802y0 = i;
    }

    public void setOnPreferenceChangeListener(OnPreferenceChangeListener onPreferenceChangeListener) {
        this.f8779j = onPreferenceChangeListener;
    }

    public void setOnPreferenceClickListener(OnPreferenceClickListener onPreferenceClickListener) {
        this.f8780k = onPreferenceClickListener;
    }

    public void setOrder(int i) {
        if (i != this.f8782l) {
            this.f8782l = i;
            notifyHierarchyChanged();
        }
    }

    public void setPersistent(boolean z) {
        this.f8801y = z;
    }

    public void setPreferenceDataStore(PreferenceDataStore preferenceDataStore) {
        this.f8776g = preferenceDataStore;
    }

    public void setSelectable(boolean z) {
        if (this.f8797w != z) {
            this.f8797w = z;
            notifyChanged();
        }
    }

    public void setShouldDisableView(boolean z) {
        if (this.f8800x0 != z) {
            this.f8800x0 = z;
            notifyChanged();
        }
    }

    public void setSingleLineTitle(boolean z) {
        this.f8792t0 = true;
        this.f8794u0 = z;
    }

    public void setSummary(CharSequence charSequence) {
        if (getSummaryProvider() == null) {
            if (TextUtils.equals(this.f8785o, charSequence)) {
                return;
            }
            this.f8785o = charSequence;
            notifyChanged();
            return;
        }
        throw new IllegalStateException("Preference already has a SummaryProvider set.");
    }

    public final void setSummaryProvider(@Nullable SummaryProvider summaryProvider) {
        this.f8768G0 = summaryProvider;
        notifyChanged();
    }

    public void setTitle(CharSequence charSequence) {
        if ((charSequence != null || this.f8784n == null) && (charSequence == null || charSequence.equals(this.f8784n))) {
            return;
        }
        this.f8784n = charSequence;
        notifyChanged();
    }

    public void setViewId(int i) {
        this.f8783m = i;
    }

    public final void setVisible(boolean z) {
        if (this.f8773Z != z) {
            this.f8773Z = z;
            InterfaceC1252b interfaceC1252b = this.f8762A0;
            if (interfaceC1252b != null) {
                interfaceC1252b.onPreferenceVisibilityChange(this);
            }
        }
    }

    public void setWidgetLayoutResource(int i) {
        this.f8804z0 = i;
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    public boolean shouldPersist() {
        return this.f8775f != null && isPersistent() && hasKey();
    }

    public String toString() {
        return m5284d().toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull Preference preference) {
        int i = this.f8782l;
        int i2 = preference.f8782l;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.f8784n;
        CharSequence charSequence2 = preference.f8784n;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.f8784n.toString());
    }

    @Deprecated
    public void onSetInitialValue(boolean z, Object obj) {
        onSetInitialValue(obj);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void performClick() {
        PreferenceManager.OnPreferenceTreeClickListener onPreferenceTreeClickListener;
        if (isEnabled() && isSelectable()) {
            onClick();
            OnPreferenceClickListener onPreferenceClickListener = this.f8780k;
            if (onPreferenceClickListener == null || !onPreferenceClickListener.onPreferenceClick(this)) {
                PreferenceManager preferenceManager = getPreferenceManager();
                if ((preferenceManager == null || (onPreferenceTreeClickListener = preferenceManager.getOnPreferenceTreeClickListener()) == null || !onPreferenceTreeClickListener.onPreferenceTreeClick(this)) && this.f8790s != null) {
                    getContext().startActivity(this.f8790s);
                }
            }
        }
    }

    public void setTitle(int i) {
        setTitle(this.f8774e.getString(i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onAttachedToHierarchy(PreferenceManager preferenceManager, long j) {
        this.f8777h = j;
        this.f8778i = true;
        try {
            onAttachedToHierarchy(preferenceManager);
        } finally {
            this.f8778i = false;
        }
    }

    public void setIcon(int i) {
        setIcon(AppCompatResources.getDrawable(this.f8774e, i));
        this.f8786p = i;
    }

    public void setSummary(int i) {
        setSummary(this.f8774e.getString(i));
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, C1271R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
