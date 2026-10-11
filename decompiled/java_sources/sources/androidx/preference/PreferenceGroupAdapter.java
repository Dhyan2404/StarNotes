package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class PreferenceGroupAdapter extends RecyclerView.Adapter<PreferenceViewHolder> implements Preference.InterfaceC1252b, PreferenceGroup.PreferencePositionCallback {

    /* renamed from: d */
    public PreferenceGroup f8898d;

    /* renamed from: e */
    public List<Preference> f8899e;

    /* renamed from: f */
    public List<Preference> f8900f;

    /* renamed from: g */
    public List<C1269d> f8901g;

    /* renamed from: i */
    public Runnable f8903i = new RunnableC1266a();

    /* renamed from: h */
    public Handler f8902h = new Handler();

    /* renamed from: androidx.preference.PreferenceGroupAdapter$a */
    /* loaded from: classes3.dex */
    public class RunnableC1266a implements Runnable {
        public RunnableC1266a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PreferenceGroupAdapter.this.m5327f();
        }
    }

    /* renamed from: androidx.preference.PreferenceGroupAdapter$b */
    /* loaded from: classes3.dex */
    public class C1267b extends DiffUtil.Callback {

        /* renamed from: a */
        public final /* synthetic */ List f8905a;

        /* renamed from: b */
        public final /* synthetic */ List f8906b;

        /* renamed from: c */
        public final /* synthetic */ PreferenceManager.PreferenceComparisonCallback f8907c;

        public C1267b(List list, List list2, PreferenceManager.PreferenceComparisonCallback preferenceComparisonCallback) {
            this.f8905a = list;
            this.f8906b = list2;
            this.f8907c = preferenceComparisonCallback;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return this.f8907c.arePreferenceContentsTheSame((Preference) this.f8905a.get(i), (Preference) this.f8906b.get(i2));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            return this.f8907c.arePreferenceItemsTheSame((Preference) this.f8905a.get(i), (Preference) this.f8906b.get(i2));
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return this.f8906b.size();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.f8905a.size();
        }
    }

    /* renamed from: androidx.preference.PreferenceGroupAdapter$c */
    /* loaded from: classes3.dex */
    public class C1268c implements Preference.OnPreferenceClickListener {

        /* renamed from: a */
        public final /* synthetic */ PreferenceGroup f8909a;

        public C1268c(PreferenceGroup preferenceGroup) {
            this.f8909a = preferenceGroup;
        }

        @Override // androidx.preference.Preference.OnPreferenceClickListener
        public boolean onPreferenceClick(Preference preference) {
            this.f8909a.setInitialExpandedChildrenCount(Integer.MAX_VALUE);
            PreferenceGroupAdapter.this.onPreferenceHierarchyChange(preference);
            PreferenceGroup.OnExpandButtonClickListener onExpandButtonClickListener = this.f8909a.getOnExpandButtonClickListener();
            if (onExpandButtonClickListener == null) {
                return true;
            }
            onExpandButtonClickListener.onExpandButtonClick();
            return true;
        }
    }

    /* renamed from: androidx.preference.PreferenceGroupAdapter$d */
    /* loaded from: classes3.dex */
    public static class C1269d {

        /* renamed from: a */
        public int f8911a;

        /* renamed from: b */
        public int f8912b;

        /* renamed from: c */
        public String f8913c;

        public C1269d(Preference preference) {
            this.f8913c = preference.getClass().getName();
            this.f8911a = preference.getLayoutResource();
            this.f8912b = preference.getWidgetLayoutResource();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof C1269d)) {
                return false;
            }
            C1269d c1269d = (C1269d) obj;
            return this.f8911a == c1269d.f8911a && this.f8912b == c1269d.f8912b && TextUtils.equals(this.f8913c, c1269d.f8913c);
        }

        public int hashCode() {
            return ((((527 + this.f8911a) * 31) + this.f8912b) * 31) + this.f8913c.hashCode();
        }
    }

    public PreferenceGroupAdapter(PreferenceGroup preferenceGroup) {
        this.f8898d = preferenceGroup;
        this.f8898d.m5290j(this);
        this.f8899e = new ArrayList();
        this.f8900f = new ArrayList();
        this.f8901g = new ArrayList();
        PreferenceGroup preferenceGroup2 = this.f8898d;
        if (preferenceGroup2 instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) preferenceGroup2).shouldUseGeneratedIds());
        } else {
            setHasStableIds(true);
        }
        m5327f();
    }

    /* renamed from: b */
    public final C1278a m5323b(PreferenceGroup preferenceGroup, List<Preference> list) {
        C1278a c1278a = new C1278a(preferenceGroup.getContext(), list, preferenceGroup.mo5285e());
        c1278a.setOnPreferenceClickListener(new C1268c(preferenceGroup));
        return c1278a;
    }

    /* renamed from: c */
    public final List<Preference> m5324c(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        int i = 0;
        for (int i2 = 0; i2 < preferenceCount; i2++) {
            Preference preference = preferenceGroup.getPreference(i2);
            if (preference.isVisible()) {
                if (!m5326e(preferenceGroup) || i < preferenceGroup.getInitialExpandedChildrenCount()) {
                    arrayList.add(preference);
                } else {
                    arrayList2.add(preference);
                }
                if (preference instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                    if (!preferenceGroup2.isOnSameScreenAsChildren()) {
                        continue;
                    } else {
                        if (m5326e(preferenceGroup) && m5326e(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference2 : m5324c(preferenceGroup2)) {
                            if (!m5326e(preferenceGroup) || i < preferenceGroup.getInitialExpandedChildrenCount()) {
                                arrayList.add(preference2);
                            } else {
                                arrayList2.add(preference2);
                            }
                            i++;
                        }
                    }
                } else {
                    i++;
                }
            }
        }
        if (m5326e(preferenceGroup) && i > preferenceGroup.getInitialExpandedChildrenCount()) {
            arrayList.add(m5323b(preferenceGroup, arrayList2));
        }
        return arrayList;
    }

    /* renamed from: d */
    public final void m5325d(List<Preference> list, PreferenceGroup preferenceGroup) {
        preferenceGroup.m5320p();
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference = preferenceGroup.getPreference(i);
            list.add(preference);
            C1269d c1269d = new C1269d(preference);
            if (!this.f8901g.contains(c1269d)) {
                this.f8901g.add(c1269d);
            }
            if (preference instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preference;
                if (preferenceGroup2.isOnSameScreenAsChildren()) {
                    m5325d(list, preferenceGroup2);
                }
            }
            preference.m5290j(this);
        }
    }

    /* renamed from: e */
    public final boolean m5326e(PreferenceGroup preferenceGroup) {
        return preferenceGroup.getInitialExpandedChildrenCount() != Integer.MAX_VALUE;
    }

    /* renamed from: f */
    public void m5327f() {
        Iterator<Preference> it2 = this.f8899e.iterator();
        while (it2.hasNext()) {
            it2.next().m5290j(null);
        }
        ArrayList arrayList = new ArrayList(this.f8899e.size());
        this.f8899e = arrayList;
        m5325d(arrayList, this.f8898d);
        List<Preference> list = this.f8900f;
        List<Preference> m5324c = m5324c(this.f8898d);
        this.f8900f = m5324c;
        PreferenceManager preferenceManager = this.f8898d.getPreferenceManager();
        if (preferenceManager == null || preferenceManager.getPreferenceComparisonCallback() == null) {
            notifyDataSetChanged();
        } else {
            DiffUtil.calculateDiff(new C1267b(list, m5324c, preferenceManager.getPreferenceComparisonCallback())).dispatchUpdatesTo(this);
        }
        Iterator<Preference> it3 = this.f8899e.iterator();
        while (it3.hasNext()) {
            it3.next().m5282b();
        }
    }

    public Preference getItem(int i) {
        if (i < 0 || i >= getItemCount()) {
            return null;
        }
        return this.f8900f.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f8900f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        if (hasStableIds()) {
            return getItem(i).mo5285e();
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        C1269d c1269d = new C1269d(getItem(i));
        int indexOf = this.f8901g.indexOf(c1269d);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.f8901g.size();
        this.f8901g.add(c1269d);
        return size;
    }

    @Override // androidx.preference.PreferenceGroup.PreferencePositionCallback
    public int getPreferenceAdapterPosition(String str) {
        int size = this.f8900f.size();
        for (int i = 0; i < size; i++) {
            if (TextUtils.equals(str, this.f8900f.get(i).getKey())) {
                return i;
            }
        }
        return -1;
    }

    @Override // androidx.preference.Preference.InterfaceC1252b
    public void onPreferenceChange(Preference preference) {
        int indexOf = this.f8900f.indexOf(preference);
        if (indexOf != -1) {
            notifyItemChanged(indexOf, preference);
        }
    }

    @Override // androidx.preference.Preference.InterfaceC1252b
    public void onPreferenceHierarchyChange(Preference preference) {
        this.f8902h.removeCallbacks(this.f8903i);
        this.f8902h.post(this.f8903i);
    }

    @Override // androidx.preference.Preference.InterfaceC1252b
    public void onPreferenceVisibilityChange(Preference preference) {
        onPreferenceHierarchyChange(preference);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull PreferenceViewHolder preferenceViewHolder, int i) {
        getItem(i).onBindViewHolder(preferenceViewHolder);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public PreferenceViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        C1269d c1269d = this.f8901g.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, C1271R.styleable.BackgroundStyle);
        Drawable drawable = obtainStyledAttributes.getDrawable(C1271R.styleable.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = AppCompatResources.getDrawable(viewGroup.getContext(), android.R.drawable.list_selector_background);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(c1269d.f8911a, viewGroup, false);
        if (inflate.getBackground() == null) {
            ViewCompat.setBackground(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(android.R.id.widget_frame);
        if (viewGroup2 != null) {
            int i2 = c1269d.f8912b;
            if (i2 != 0) {
                from.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new PreferenceViewHolder(inflate);
    }

    @Override // androidx.preference.PreferenceGroup.PreferencePositionCallback
    public int getPreferenceAdapterPosition(Preference preference) {
        int size = this.f8900f.size();
        for (int i = 0; i < size; i++) {
            Preference preference2 = this.f8900f.get(i);
            if (preference2 != null && preference2.equals(preference)) {
                return i;
            }
        }
        return -1;
    }
}
