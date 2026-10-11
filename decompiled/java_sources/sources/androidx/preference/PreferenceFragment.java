package androidx.preference;

import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import androidx.core.content.res.TypedArrayUtils;
import androidx.preference.DialogPreference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

@Deprecated
/* loaded from: classes3.dex */
public abstract class PreferenceFragment extends Fragment implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceManager.OnDisplayPreferenceDialogListener, PreferenceManager.OnNavigateToScreenListener, DialogPreference.TargetFragment {

    @Deprecated
    public static final String ARG_PREFERENCE_ROOT = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";

    /* renamed from: o */
    public static final String f8835o = "android:preferences";

    /* renamed from: p */
    public static final String f8836p = "androidx.preference.PreferenceFragment.DIALOG";

    /* renamed from: q */
    public static final int f8837q = 1;

    /* renamed from: f */
    public PreferenceManager f8839f;

    /* renamed from: g */
    public RecyclerView f8840g;

    /* renamed from: h */
    public boolean f8841h;

    /* renamed from: i */
    public boolean f8842i;

    /* renamed from: j */
    public Context f8843j;

    /* renamed from: l */
    public Runnable f8845l;

    /* renamed from: e */
    public final C1257d f8838e = new C1257d();

    /* renamed from: k */
    public int f8844k = C1271R.layout.preference_list_fragment;

    /* renamed from: m */
    public final Handler f8846m = new HandlerC1254a();

    /* renamed from: n */
    public final Runnable f8847n = new RunnableC1255b();

    /* loaded from: classes3.dex */
    public interface OnPreferenceDisplayDialogCallback {
        boolean onPreferenceDisplayDialog(@NonNull PreferenceFragment preferenceFragment, Preference preference);
    }

    /* loaded from: classes3.dex */
    public interface OnPreferenceStartFragmentCallback {
        boolean onPreferenceStartFragment(PreferenceFragment preferenceFragment, Preference preference);
    }

    /* loaded from: classes3.dex */
    public interface OnPreferenceStartScreenCallback {
        boolean onPreferenceStartScreen(PreferenceFragment preferenceFragment, PreferenceScreen preferenceScreen);
    }

    /* renamed from: androidx.preference.PreferenceFragment$a */
    /* loaded from: classes3.dex */
    public class HandlerC1254a extends Handler {
        public HandlerC1254a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            PreferenceFragment.this.m5299a();
        }
    }

    /* renamed from: androidx.preference.PreferenceFragment$b */
    /* loaded from: classes3.dex */
    public class RunnableC1255b implements Runnable {
        public RunnableC1255b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = PreferenceFragment.this.f8840g;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    }

    /* renamed from: androidx.preference.PreferenceFragment$c */
    /* loaded from: classes3.dex */
    public class RunnableC1256c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Preference f8850e;

        /* renamed from: f */
        public final /* synthetic */ String f8851f;

        public RunnableC1256c(Preference preference, String str) {
            this.f8850e = preference;
            this.f8851f = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            RecyclerView.Adapter adapter = PreferenceFragment.this.f8840g.getAdapter();
            if (!(adapter instanceof PreferenceGroup.PreferencePositionCallback)) {
                if (adapter != 0) {
                    throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
                }
                return;
            }
            Preference preference = this.f8850e;
            int preferenceAdapterPosition = preference != null ? ((PreferenceGroup.PreferencePositionCallback) adapter).getPreferenceAdapterPosition(preference) : ((PreferenceGroup.PreferencePositionCallback) adapter).getPreferenceAdapterPosition(this.f8851f);
            if (preferenceAdapterPosition != -1) {
                PreferenceFragment.this.f8840g.scrollToPosition(preferenceAdapterPosition);
            } else {
                adapter.registerAdapterDataObserver(new C1258e(adapter, PreferenceFragment.this.f8840g, this.f8850e, this.f8851f));
            }
        }
    }

    /* renamed from: androidx.preference.PreferenceFragment$d */
    /* loaded from: classes3.dex */
    public class C1257d extends RecyclerView.ItemDecoration {

        /* renamed from: a */
        public Drawable f8853a;

        /* renamed from: b */
        public int f8854b;

        /* renamed from: c */
        public boolean f8855c = true;

        public C1257d() {
        }

        /* renamed from: a */
        public void m5304a(boolean z) {
            this.f8855c = z;
        }

        /* renamed from: b */
        public void m5305b(Drawable drawable) {
            if (drawable != null) {
                this.f8854b = drawable.getIntrinsicHeight();
            } else {
                this.f8854b = 0;
            }
            this.f8853a = drawable;
            PreferenceFragment.this.f8840g.invalidateItemDecorations();
        }

        /* renamed from: c */
        public void m5306c(int i) {
            this.f8854b = i;
            PreferenceFragment.this.f8840g.invalidateItemDecorations();
        }

        /* renamed from: d */
        public final boolean m5307d(View view, RecyclerView recyclerView) {
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
            boolean z = false;
            if (!((childViewHolder instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder).isDividerAllowedBelow())) {
                return false;
            }
            boolean z2 = this.f8855c;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild >= recyclerView.getChildCount() - 1) {
                return z2;
            }
            RecyclerView.ViewHolder childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
            if ((childViewHolder2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder2).isDividerAllowedAbove()) {
                z = true;
            }
            return z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            if (m5307d(view, recyclerView)) {
                rect.bottom = this.f8854b;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            if (this.f8853a == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (m5307d(childAt, recyclerView)) {
                    int y = ((int) childAt.getY()) + childAt.getHeight();
                    this.f8853a.setBounds(0, y, width, this.f8854b + y);
                    this.f8853a.draw(canvas);
                }
            }
        }
    }

    /* renamed from: androidx.preference.PreferenceFragment$e */
    /* loaded from: classes3.dex */
    public static class C1258e extends RecyclerView.AdapterDataObserver {

        /* renamed from: a */
        public final RecyclerView.Adapter f8857a;

        /* renamed from: b */
        public final RecyclerView f8858b;

        /* renamed from: c */
        public final Preference f8859c;

        /* renamed from: d */
        public final String f8860d;

        public C1258e(RecyclerView.Adapter adapter, RecyclerView recyclerView, Preference preference, String str) {
            this.f8857a = adapter;
            this.f8858b = recyclerView;
            this.f8859c = preference;
            this.f8860d = str;
        }

        /* renamed from: a */
        public final void m5308a() {
            this.f8857a.unregisterAdapterDataObserver(this);
            Preference preference = this.f8859c;
            int preferenceAdapterPosition = preference != null ? ((PreferenceGroup.PreferencePositionCallback) this.f8857a).getPreferenceAdapterPosition(preference) : ((PreferenceGroup.PreferencePositionCallback) this.f8857a).getPreferenceAdapterPosition(this.f8860d);
            if (preferenceAdapterPosition != -1) {
                this.f8858b.scrollToPosition(preferenceAdapterPosition);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            m5308a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            m5308a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            m5308a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            m5308a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            m5308a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            m5308a();
        }
    }

    /* renamed from: a */
    public void m5299a() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            getListView().setAdapter(onCreateAdapter(preferenceScreen));
            preferenceScreen.onAttached();
        }
        onBindPreferences();
    }

    @Deprecated
    public void addPreferencesFromResource(@XmlRes int i) {
        m5301c();
        setPreferenceScreen(this.f8839f.inflateFromResource(this.f8843j, i, getPreferenceScreen()));
    }

    /* renamed from: b */
    public final void m5300b() {
        if (this.f8846m.hasMessages(1)) {
            return;
        }
        this.f8846m.obtainMessage(1).sendToTarget();
    }

    /* renamed from: c */
    public final void m5301c() {
        if (this.f8839f == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    /* renamed from: d */
    public final void m5302d(Preference preference, String str) {
        RunnableC1256c runnableC1256c = new RunnableC1256c(preference, str);
        if (this.f8840g == null) {
            this.f8845l = runnableC1256c;
        } else {
            runnableC1256c.run();
        }
    }

    /* renamed from: e */
    public final void m5303e() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            preferenceScreen.onDetached();
        }
        onUnbindPreferences();
    }

    @Override // androidx.preference.DialogPreference.TargetFragment
    @Deprecated
    public <T extends Preference> T findPreference(CharSequence charSequence) {
        PreferenceManager preferenceManager = this.f8839f;
        if (preferenceManager == null) {
            return null;
        }
        return (T) preferenceManager.findPreference(charSequence);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Fragment getCallbackFragment() {
        return null;
    }

    @Deprecated
    public final RecyclerView getListView() {
        return this.f8840g;
    }

    @Deprecated
    public PreferenceManager getPreferenceManager() {
        return this.f8839f;
    }

    @Deprecated
    public PreferenceScreen getPreferenceScreen() {
        return this.f8839f.getPreferenceScreen();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onBindPreferences() {
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(C1271R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = C1271R.style.PreferenceThemeOverlay;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getActivity(), i);
        this.f8843j = contextThemeWrapper;
        PreferenceManager preferenceManager = new PreferenceManager(contextThemeWrapper);
        this.f8839f = preferenceManager;
        preferenceManager.setOnNavigateToScreenListener(this);
        onCreatePreferences(bundle, getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    @Deprecated
    public RecyclerView.Adapter onCreateAdapter(PreferenceScreen preferenceScreen) {
        return new PreferenceGroupAdapter(preferenceScreen);
    }

    @Deprecated
    public RecyclerView.LayoutManager onCreateLayoutManager() {
        return new LinearLayoutManager(getActivity());
    }

    @Deprecated
    public abstract void onCreatePreferences(Bundle bundle, String str);

    @Deprecated
    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        if (this.f8843j.getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(C1271R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(C1271R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(onCreateLayoutManager());
        recyclerView2.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(recyclerView2));
        return recyclerView2;
    }

    @Override // android.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context context = this.f8843j;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C1271R.styleable.PreferenceFragment, TypedArrayUtils.getAttr(context, C1271R.attr.preferenceFragmentStyle, 16844038), 0);
        this.f8844k = obtainStyledAttributes.getResourceId(C1271R.styleable.PreferenceFragment_android_layout, this.f8844k);
        Drawable drawable = obtainStyledAttributes.getDrawable(C1271R.styleable.PreferenceFragment_android_divider);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1271R.styleable.PreferenceFragment_android_dividerHeight, -1);
        boolean z = obtainStyledAttributes.getBoolean(C1271R.styleable.PreferenceFragment_allowDividerAfterLastItem, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(this.f8843j);
        View inflate = cloneInContext.inflate(this.f8844k, viewGroup, false);
        View findViewById = inflate.findViewById(16908351);
        if (!(findViewById instanceof ViewGroup)) {
            throw new RuntimeException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        RecyclerView onCreateRecyclerView = onCreateRecyclerView(cloneInContext, viewGroup2, bundle);
        if (onCreateRecyclerView == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.f8840g = onCreateRecyclerView;
        onCreateRecyclerView.addItemDecoration(this.f8838e);
        setDivider(drawable);
        if (dimensionPixelSize != -1) {
            setDividerHeight(dimensionPixelSize);
        }
        this.f8838e.m5304a(z);
        if (this.f8840g.getParent() == null) {
            viewGroup2.addView(this.f8840g);
        }
        this.f8846m.post(this.f8847n);
        return inflate;
    }

    @Override // android.app.Fragment
    public void onDestroyView() {
        this.f8846m.removeCallbacks(this.f8847n);
        this.f8846m.removeMessages(1);
        if (this.f8841h) {
            m5303e();
        }
        this.f8840g = null;
        super.onDestroyView();
    }

    @Override // androidx.preference.PreferenceManager.OnDisplayPreferenceDialogListener
    @Deprecated
    public void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment newInstance;
        boolean onPreferenceDisplayDialog = getCallbackFragment() instanceof OnPreferenceDisplayDialogCallback ? ((OnPreferenceDisplayDialogCallback) getCallbackFragment()).onPreferenceDisplayDialog(this, preference) : false;
        if (!onPreferenceDisplayDialog && (getActivity() instanceof OnPreferenceDisplayDialogCallback)) {
            onPreferenceDisplayDialog = ((OnPreferenceDisplayDialogCallback) getActivity()).onPreferenceDisplayDialog(this, preference);
        }
        if (!onPreferenceDisplayDialog && getFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                newInstance = EditTextPreferenceDialogFragment.newInstance(preference.getKey());
            } else if (preference instanceof ListPreference) {
                newInstance = ListPreferenceDialogFragment.newInstance(preference.getKey());
            } else {
                if (!(preference instanceof MultiSelectListPreference)) {
                    throw new IllegalArgumentException("Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?");
                }
                newInstance = MultiSelectListPreferenceDialogFragment.newInstance(preference.getKey());
            }
            newInstance.setTargetFragment(this, 0);
            newInstance.show(getFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    @Override // androidx.preference.PreferenceManager.OnNavigateToScreenListener
    @Deprecated
    public void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        if ((getCallbackFragment() instanceof OnPreferenceStartScreenCallback ? ((OnPreferenceStartScreenCallback) getCallbackFragment()).onPreferenceStartScreen(this, preferenceScreen) : false) || !(getActivity() instanceof OnPreferenceStartScreenCallback)) {
            return;
        }
        ((OnPreferenceStartScreenCallback) getActivity()).onPreferenceStartScreen(this, preferenceScreen);
    }

    @Override // androidx.preference.PreferenceManager.OnPreferenceTreeClickListener
    @Deprecated
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.getFragment() == null) {
            return false;
        }
        boolean onPreferenceStartFragment = getCallbackFragment() instanceof OnPreferenceStartFragmentCallback ? ((OnPreferenceStartFragmentCallback) getCallbackFragment()).onPreferenceStartFragment(this, preference) : false;
        return (onPreferenceStartFragment || !(getActivity() instanceof OnPreferenceStartFragmentCallback)) ? onPreferenceStartFragment : ((OnPreferenceStartFragmentCallback) getActivity()).onPreferenceStartFragment(this, preference);
    }

    @Override // android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.saveHierarchyState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f8839f.setOnPreferenceTreeClickListener(this);
        this.f8839f.setOnDisplayPreferenceDialogListener(this);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f8839f.setOnPreferenceTreeClickListener(null);
        this.f8839f.setOnDisplayPreferenceDialogListener(null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void onUnbindPreferences() {
    }

    @Override // android.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen = getPreferenceScreen()) != null) {
            preferenceScreen.restoreHierarchyState(bundle2);
        }
        if (this.f8841h) {
            m5299a();
            Runnable runnable = this.f8845l;
            if (runnable != null) {
                runnable.run();
                this.f8845l = null;
            }
        }
        this.f8842i = true;
    }

    @Deprecated
    public void scrollToPreference(String str) {
        m5302d(null, str);
    }

    @Deprecated
    public void setDivider(Drawable drawable) {
        this.f8838e.m5305b(drawable);
    }

    @Deprecated
    public void setDividerHeight(int i) {
        this.f8838e.m5306c(i);
    }

    @Deprecated
    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        if (!this.f8839f.setPreferences(preferenceScreen) || preferenceScreen == null) {
            return;
        }
        onUnbindPreferences();
        this.f8841h = true;
        if (this.f8842i) {
            m5300b();
        }
    }

    @Deprecated
    public void setPreferencesFromResource(@XmlRes int i, @Nullable String str) {
        m5301c();
        PreferenceScreen inflateFromResource = this.f8839f.inflateFromResource(this.f8843j, i, null);
        Object obj = inflateFromResource;
        if (str != null) {
            Object findPreference = inflateFromResource.findPreference(str);
            boolean z = findPreference instanceof PreferenceScreen;
            obj = findPreference;
            if (!z) {
                throw new IllegalArgumentException("Preference object with key " + str + " is not a PreferenceScreen");
            }
        }
        setPreferenceScreen((PreferenceScreen) obj);
    }

    @Deprecated
    public void scrollToPreference(Preference preference) {
        m5302d(preference, null);
    }
}
