package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.DialogPreference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes3.dex */
public abstract class PreferenceFragmentCompat extends Fragment implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceManager.OnDisplayPreferenceDialogListener, PreferenceManager.OnNavigateToScreenListener, DialogPreference.TargetFragment {
    public static final String ARG_PREFERENCE_ROOT = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";

    /* renamed from: l1 */
    public static final String f8861l1 = "PreferenceFragment";

    /* renamed from: m1 */
    public static final String f8862m1 = "android:preferences";

    /* renamed from: n1 */
    public static final String f8863n1 = "androidx.preference.PreferenceFragment.DIALOG";

    /* renamed from: o1 */
    public static final int f8864o1 = 1;

    /* renamed from: d1 */
    public PreferenceManager f8866d1;

    /* renamed from: e1 */
    public RecyclerView f8867e1;

    /* renamed from: f1 */
    public boolean f8868f1;

    /* renamed from: g1 */
    public boolean f8869g1;

    /* renamed from: i1 */
    public Runnable f8871i1;

    /* renamed from: c1 */
    public final C1262d f8865c1 = new C1262d();

    /* renamed from: h1 */
    public int f8870h1 = C1271R.layout.preference_list_fragment;

    /* renamed from: j1 */
    public Handler f8872j1 = new HandlerC1259a();

    /* renamed from: k1 */
    public final Runnable f8873k1 = new RunnableC1260b();

    /* loaded from: classes3.dex */
    public interface OnPreferenceDisplayDialogCallback {
        boolean onPreferenceDisplayDialog(@NonNull PreferenceFragmentCompat preferenceFragmentCompat, Preference preference);
    }

    /* loaded from: classes3.dex */
    public interface OnPreferenceStartFragmentCallback {
        boolean onPreferenceStartFragment(PreferenceFragmentCompat preferenceFragmentCompat, Preference preference);
    }

    /* loaded from: classes3.dex */
    public interface OnPreferenceStartScreenCallback {
        boolean onPreferenceStartScreen(PreferenceFragmentCompat preferenceFragmentCompat, PreferenceScreen preferenceScreen);
    }

    /* renamed from: androidx.preference.PreferenceFragmentCompat$a */
    /* loaded from: classes3.dex */
    public class HandlerC1259a extends Handler {
        public HandlerC1259a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            PreferenceFragmentCompat.this.m5309k0();
        }
    }

    /* renamed from: androidx.preference.PreferenceFragmentCompat$b */
    /* loaded from: classes3.dex */
    public class RunnableC1260b implements Runnable {
        public RunnableC1260b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = PreferenceFragmentCompat.this.f8867e1;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    }

    /* renamed from: androidx.preference.PreferenceFragmentCompat$c */
    /* loaded from: classes3.dex */
    public class RunnableC1261c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ Preference f8876e;

        /* renamed from: f */
        public final /* synthetic */ String f8877f;

        public RunnableC1261c(Preference preference, String str) {
            this.f8876e = preference;
            this.f8877f = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            RecyclerView.Adapter adapter = PreferenceFragmentCompat.this.f8867e1.getAdapter();
            if (!(adapter instanceof PreferenceGroup.PreferencePositionCallback)) {
                if (adapter != 0) {
                    throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
                }
                return;
            }
            Preference preference = this.f8876e;
            int preferenceAdapterPosition = preference != null ? ((PreferenceGroup.PreferencePositionCallback) adapter).getPreferenceAdapterPosition(preference) : ((PreferenceGroup.PreferencePositionCallback) adapter).getPreferenceAdapterPosition(this.f8877f);
            if (preferenceAdapterPosition != -1) {
                PreferenceFragmentCompat.this.f8867e1.scrollToPosition(preferenceAdapterPosition);
            } else {
                adapter.registerAdapterDataObserver(new C1263e(adapter, PreferenceFragmentCompat.this.f8867e1, this.f8876e, this.f8877f));
            }
        }
    }

    /* renamed from: androidx.preference.PreferenceFragmentCompat$d */
    /* loaded from: classes3.dex */
    public class C1262d extends RecyclerView.ItemDecoration {

        /* renamed from: a */
        public Drawable f8879a;

        /* renamed from: b */
        public int f8880b;

        /* renamed from: c */
        public boolean f8881c = true;

        public C1262d() {
        }

        /* renamed from: a */
        public void m5314a(boolean z) {
            this.f8881c = z;
        }

        /* renamed from: b */
        public void m5315b(Drawable drawable) {
            if (drawable != null) {
                this.f8880b = drawable.getIntrinsicHeight();
            } else {
                this.f8880b = 0;
            }
            this.f8879a = drawable;
            PreferenceFragmentCompat.this.f8867e1.invalidateItemDecorations();
        }

        /* renamed from: c */
        public void m5316c(int i) {
            this.f8880b = i;
            PreferenceFragmentCompat.this.f8867e1.invalidateItemDecorations();
        }

        /* renamed from: d */
        public final boolean m5317d(View view, RecyclerView recyclerView) {
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
            boolean z = false;
            if (!((childViewHolder instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder).isDividerAllowedBelow())) {
                return false;
            }
            boolean z2 = this.f8881c;
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
            if (m5317d(view, recyclerView)) {
                rect.bottom = this.f8880b;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
            if (this.f8879a == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (m5317d(childAt, recyclerView)) {
                    int y = ((int) childAt.getY()) + childAt.getHeight();
                    this.f8879a.setBounds(0, y, width, this.f8880b + y);
                    this.f8879a.draw(canvas);
                }
            }
        }
    }

    /* renamed from: androidx.preference.PreferenceFragmentCompat$e */
    /* loaded from: classes3.dex */
    public static class C1263e extends RecyclerView.AdapterDataObserver {

        /* renamed from: a */
        public final RecyclerView.Adapter f8883a;

        /* renamed from: b */
        public final RecyclerView f8884b;

        /* renamed from: c */
        public final Preference f8885c;

        /* renamed from: d */
        public final String f8886d;

        public C1263e(RecyclerView.Adapter adapter, RecyclerView recyclerView, Preference preference, String str) {
            this.f8883a = adapter;
            this.f8884b = recyclerView;
            this.f8885c = preference;
            this.f8886d = str;
        }

        /* renamed from: a */
        public final void m5318a() {
            this.f8883a.unregisterAdapterDataObserver(this);
            Preference preference = this.f8885c;
            int preferenceAdapterPosition = preference != null ? ((PreferenceGroup.PreferencePositionCallback) this.f8883a).getPreferenceAdapterPosition(preference) : ((PreferenceGroup.PreferencePositionCallback) this.f8883a).getPreferenceAdapterPosition(this.f8886d);
            if (preferenceAdapterPosition != -1) {
                this.f8884b.scrollToPosition(preferenceAdapterPosition);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            m5318a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            m5318a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            m5318a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            m5318a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            m5318a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            m5318a();
        }
    }

    public void addPreferencesFromResource(@XmlRes int i) {
        m5311m0();
        setPreferenceScreen(this.f8866d1.inflateFromResource(getContext(), i, getPreferenceScreen()));
    }

    @Override // androidx.preference.DialogPreference.TargetFragment
    @Nullable
    public <T extends Preference> T findPreference(@NonNull CharSequence charSequence) {
        PreferenceManager preferenceManager = this.f8866d1;
        if (preferenceManager == null) {
            return null;
        }
        return (T) preferenceManager.findPreference(charSequence);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Fragment getCallbackFragment() {
        return null;
    }

    public final RecyclerView getListView() {
        return this.f8867e1;
    }

    public PreferenceManager getPreferenceManager() {
        return this.f8866d1;
    }

    public PreferenceScreen getPreferenceScreen() {
        return this.f8866d1.getPreferenceScreen();
    }

    /* renamed from: k0 */
    public void m5309k0() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            getListView().setAdapter(onCreateAdapter(preferenceScreen));
            preferenceScreen.onAttached();
        }
        onBindPreferences();
    }

    /* renamed from: l0 */
    public final void m5310l0() {
        if (this.f8872j1.hasMessages(1)) {
            return;
        }
        this.f8872j1.obtainMessage(1).sendToTarget();
    }

    /* renamed from: m0 */
    public final void m5311m0() {
        if (this.f8866d1 == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    /* renamed from: n0 */
    public final void m5312n0(Preference preference, String str) {
        RunnableC1261c runnableC1261c = new RunnableC1261c(preference, str);
        if (this.f8867e1 == null) {
            this.f8871i1 = runnableC1261c;
        } else {
            runnableC1261c.run();
        }
    }

    /* renamed from: o0 */
    public final void m5313o0() {
        getListView().setAdapter(null);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            preferenceScreen.onDetached();
        }
        onUnbindPreferences();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onBindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(C1271R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = C1271R.style.PreferenceThemeOverlay;
        }
        getActivity().getTheme().applyStyle(i, false);
        PreferenceManager preferenceManager = new PreferenceManager(getContext());
        this.f8866d1 = preferenceManager;
        preferenceManager.setOnNavigateToScreenListener(this);
        onCreatePreferences(bundle, getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    public RecyclerView.Adapter onCreateAdapter(PreferenceScreen preferenceScreen) {
        return new PreferenceGroupAdapter(preferenceScreen);
    }

    public RecyclerView.LayoutManager onCreateLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    public abstract void onCreatePreferences(Bundle bundle, String str);

    public RecyclerView onCreateRecyclerView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        if (getContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(C1271R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(C1271R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(onCreateLayoutManager());
        recyclerView2.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(recyclerView2));
        return recyclerView2;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C1271R.styleable.PreferenceFragmentCompat, C1271R.attr.preferenceFragmentCompatStyle, 0);
        this.f8870h1 = obtainStyledAttributes.getResourceId(C1271R.styleable.PreferenceFragmentCompat_android_layout, this.f8870h1);
        Drawable drawable = obtainStyledAttributes.getDrawable(C1271R.styleable.PreferenceFragmentCompat_android_divider);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1271R.styleable.PreferenceFragmentCompat_android_dividerHeight, -1);
        boolean z = obtainStyledAttributes.getBoolean(C1271R.styleable.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(getContext());
        View inflate = cloneInContext.inflate(this.f8870h1, viewGroup, false);
        View findViewById = inflate.findViewById(16908351);
        if (!(findViewById instanceof ViewGroup)) {
            throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) findViewById;
        RecyclerView onCreateRecyclerView = onCreateRecyclerView(cloneInContext, viewGroup2, bundle);
        if (onCreateRecyclerView == null) {
            throw new RuntimeException("Could not create RecyclerView");
        }
        this.f8867e1 = onCreateRecyclerView;
        onCreateRecyclerView.addItemDecoration(this.f8865c1);
        setDivider(drawable);
        if (dimensionPixelSize != -1) {
            setDividerHeight(dimensionPixelSize);
        }
        this.f8865c1.m5314a(z);
        if (this.f8867e1.getParent() == null) {
            viewGroup2.addView(this.f8867e1);
        }
        this.f8872j1.post(this.f8873k1);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f8872j1.removeCallbacks(this.f8873k1);
        this.f8872j1.removeMessages(1);
        if (this.f8868f1) {
            m5313o0();
        }
        this.f8867e1 = null;
        super.onDestroyView();
    }

    @Override // androidx.preference.PreferenceManager.OnDisplayPreferenceDialogListener
    public void onDisplayPreferenceDialog(Preference preference) {
        DialogFragment newInstance;
        boolean onPreferenceDisplayDialog = getCallbackFragment() instanceof OnPreferenceDisplayDialogCallback ? ((OnPreferenceDisplayDialogCallback) getCallbackFragment()).onPreferenceDisplayDialog(this, preference) : false;
        if (!onPreferenceDisplayDialog && (getActivity() instanceof OnPreferenceDisplayDialogCallback)) {
            onPreferenceDisplayDialog = ((OnPreferenceDisplayDialogCallback) getActivity()).onPreferenceDisplayDialog(this, preference);
        }
        if (!onPreferenceDisplayDialog && getParentFragmentManager().findFragmentByTag("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                newInstance = EditTextPreferenceDialogFragmentCompat.newInstance(preference.getKey());
            } else if (preference instanceof ListPreference) {
                newInstance = ListPreferenceDialogFragmentCompat.newInstance(preference.getKey());
            } else {
                if (!(preference instanceof MultiSelectListPreference)) {
                    throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
                }
                newInstance = MultiSelectListPreferenceDialogFragmentCompat.newInstance(preference.getKey());
            }
            newInstance.setTargetFragment(this, 0);
            newInstance.show(getParentFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    @Override // androidx.preference.PreferenceManager.OnNavigateToScreenListener
    public void onNavigateToScreen(PreferenceScreen preferenceScreen) {
        if ((getCallbackFragment() instanceof OnPreferenceStartScreenCallback ? ((OnPreferenceStartScreenCallback) getCallbackFragment()).onPreferenceStartScreen(this, preferenceScreen) : false) || !(getActivity() instanceof OnPreferenceStartScreenCallback)) {
            return;
        }
        ((OnPreferenceStartScreenCallback) getActivity()).onPreferenceStartScreen(this, preferenceScreen);
    }

    @Override // androidx.preference.PreferenceManager.OnPreferenceTreeClickListener
    public boolean onPreferenceTreeClick(Preference preference) {
        if (preference.getFragment() == null) {
            return false;
        }
        boolean onPreferenceStartFragment = getCallbackFragment() instanceof OnPreferenceStartFragmentCallback ? ((OnPreferenceStartFragmentCallback) getCallbackFragment()).onPreferenceStartFragment(this, preference) : false;
        if (!onPreferenceStartFragment && (getActivity() instanceof OnPreferenceStartFragmentCallback)) {
            onPreferenceStartFragment = ((OnPreferenceStartFragmentCallback) getActivity()).onPreferenceStartFragment(this, preference);
        }
        if (onPreferenceStartFragment) {
            return true;
        }
        Log.w(f8861l1, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
        Bundle extras = preference.getExtras();
        Fragment instantiate = supportFragmentManager.getFragmentFactory().instantiate(requireActivity().getClassLoader(), preference.getFragment());
        instantiate.setArguments(extras);
        instantiate.setTargetFragment(this, 0);
        supportFragmentManager.beginTransaction().replace(((View) getView().getParent()).getId(), instantiate).addToBackStack(null).commit();
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.saveHierarchyState(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f8866d1.setOnPreferenceTreeClickListener(this);
        this.f8866d1.setOnDisplayPreferenceDialogListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f8866d1.setOnPreferenceTreeClickListener(null);
        this.f8866d1.setOnDisplayPreferenceDialogListener(null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onUnbindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen = getPreferenceScreen()) != null) {
            preferenceScreen.restoreHierarchyState(bundle2);
        }
        if (this.f8868f1) {
            m5309k0();
            Runnable runnable = this.f8871i1;
            if (runnable != null) {
                runnable.run();
                this.f8871i1 = null;
            }
        }
        this.f8869g1 = true;
    }

    public void scrollToPreference(String str) {
        m5312n0(null, str);
    }

    public void setDivider(Drawable drawable) {
        this.f8865c1.m5315b(drawable);
    }

    public void setDividerHeight(int i) {
        this.f8865c1.m5316c(i);
    }

    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        if (!this.f8866d1.setPreferences(preferenceScreen) || preferenceScreen == null) {
            return;
        }
        onUnbindPreferences();
        this.f8868f1 = true;
        if (this.f8869g1) {
            m5310l0();
        }
    }

    public void setPreferencesFromResource(@XmlRes int i, @Nullable String str) {
        m5311m0();
        PreferenceScreen inflateFromResource = this.f8866d1.inflateFromResource(getContext(), i, null);
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

    public void scrollToPreference(Preference preference) {
        m5312n0(preference, null);
    }
}
