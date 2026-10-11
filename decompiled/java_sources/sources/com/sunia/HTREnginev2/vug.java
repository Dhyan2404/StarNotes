package com.sunia.HTREnginev2;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerNonConfig;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class vug extends ViewModel {

    /* renamed from: o */
    public static final String f87938o = "FragmentManager";

    /* renamed from: p */
    public static final ViewModelProvider.Factory f87939p = new C14564a();

    /* renamed from: k */
    public final boolean f87943k;

    /* renamed from: h */
    public final HashMap<String, Fragment> f87940h = new HashMap<>();

    /* renamed from: i */
    public final HashMap<String, vug> f87941i = new HashMap<>();

    /* renamed from: j */
    public final HashMap<String, ViewModelStore> f87942j = new HashMap<>();

    /* renamed from: l */
    public boolean f87944l = false;

    /* renamed from: m */
    public boolean f87945m = false;

    /* renamed from: n */
    public boolean f87946n = false;

    /* renamed from: com.sunia.HTREnginev2.vug$a */
    /* loaded from: classes3.dex */
    public class C14564a implements ViewModelProvider.Factory {
        @Override // androidx.lifecycle.ViewModelProvider.Factory
        @NonNull
        public <T extends ViewModel> T create(@NonNull Class<T> cls) {
            return new vug(true);
        }
    }

    public vug(boolean z) {
        this.f87943k = z;
    }

    @NonNull
    /* renamed from: j */
    public static vug m57874j(ViewModelStore viewModelStore) {
        return (vug) new ViewModelProvider(viewModelStore, f87939p).get(vug.class);
    }

    /* renamed from: d */
    public void m57875d(@NonNull Fragment fragment) {
        if (this.f87946n) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f87940h.containsKey(fragment.f7404j)) {
                return;
            }
            this.f87940h.put(fragment.f7404j, fragment);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + fragment);
            }
        }
    }

    /* renamed from: e */
    public void m57876e(@NonNull Fragment fragment, boolean z) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + fragment);
        }
        m57878g(fragment.f7404j, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vug.class != obj.getClass()) {
            return false;
        }
        vug vugVar = (vug) obj;
        return this.f87940h.equals(vugVar.f87940h) && this.f87941i.equals(vugVar.f87941i) && this.f87942j.equals(vugVar.f87942j);
    }

    /* renamed from: f */
    public void m57877f(@NonNull String str, boolean z) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
        }
        m57878g(str, z);
    }

    /* renamed from: g */
    public final void m57878g(@NonNull String str, boolean z) {
        vug vugVar = this.f87941i.get(str);
        if (vugVar != null) {
            if (z) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(vugVar.f87941i.keySet());
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    vugVar.m57877f((String) it2.next(), true);
                }
            }
            vugVar.onCleared();
            this.f87941i.remove(str);
        }
        ViewModelStore viewModelStore = this.f87942j.get(str);
        if (viewModelStore != null) {
            viewModelStore.clear();
            this.f87942j.remove(str);
        }
    }

    @Nullable
    /* renamed from: h */
    public Fragment m57879h(String str) {
        return this.f87940h.get(str);
    }

    public int hashCode() {
        return (((this.f87940h.hashCode() * 31) + this.f87941i.hashCode()) * 31) + this.f87942j.hashCode();
    }

    @NonNull
    /* renamed from: i */
    public vug m57880i(@NonNull Fragment fragment) {
        vug vugVar = this.f87941i.get(fragment.f7404j);
        if (vugVar != null) {
            return vugVar;
        }
        vug vugVar2 = new vug(this.f87943k);
        this.f87941i.put(fragment.f7404j, vugVar2);
        return vugVar2;
    }

    @NonNull
    /* renamed from: k */
    public Collection<Fragment> m57881k() {
        return new ArrayList(this.f87940h.values());
    }

    @Nullable
    @Deprecated
    /* renamed from: l */
    public FragmentManagerNonConfig m57882l() {
        if (this.f87940h.isEmpty() && this.f87941i.isEmpty() && this.f87942j.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, vug> entry : this.f87941i.entrySet()) {
            FragmentManagerNonConfig m57882l = entry.getValue().m57882l();
            if (m57882l != null) {
                hashMap.put(entry.getKey(), m57882l);
            }
        }
        this.f87945m = true;
        if (this.f87940h.isEmpty() && hashMap.isEmpty() && this.f87942j.isEmpty()) {
            return null;
        }
        return new FragmentManagerNonConfig(new ArrayList(this.f87940h.values()), hashMap, new HashMap(this.f87942j));
    }

    @NonNull
    /* renamed from: m */
    public ViewModelStore m57883m(@NonNull Fragment fragment) {
        ViewModelStore viewModelStore = this.f87942j.get(fragment.f7404j);
        if (viewModelStore != null) {
            return viewModelStore;
        }
        ViewModelStore viewModelStore2 = new ViewModelStore();
        this.f87942j.put(fragment.f7404j, viewModelStore2);
        return viewModelStore2;
    }

    /* renamed from: n */
    public boolean m57884n() {
        return this.f87944l;
    }

    /* renamed from: o */
    public void m57885o(@NonNull Fragment fragment) {
        if (this.f87946n) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if ((this.f87940h.remove(fragment.f7404j) != null) && FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + fragment);
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f87944l = true;
    }

    @Deprecated
    /* renamed from: p */
    public void m57886p(@Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        this.f87940h.clear();
        this.f87941i.clear();
        this.f87942j.clear();
        if (fragmentManagerNonConfig != null) {
            Collection<Fragment> m4758b = fragmentManagerNonConfig.m4758b();
            if (m4758b != null) {
                for (Fragment fragment : m4758b) {
                    if (fragment != null) {
                        this.f87940h.put(fragment.f7404j, fragment);
                    }
                }
            }
            Map<String, FragmentManagerNonConfig> m4757a = fragmentManagerNonConfig.m4757a();
            if (m4757a != null) {
                for (Map.Entry<String, FragmentManagerNonConfig> entry : m4757a.entrySet()) {
                    vug vugVar = new vug(this.f87943k);
                    vugVar.m57886p(entry.getValue());
                    this.f87941i.put(entry.getKey(), vugVar);
                }
            }
            Map<String, ViewModelStore> m4759c = fragmentManagerNonConfig.m4759c();
            if (m4759c != null) {
                this.f87942j.putAll(m4759c);
            }
        }
        this.f87945m = false;
    }

    /* renamed from: q */
    public void m57887q(boolean z) {
        this.f87946n = z;
    }

    /* renamed from: r */
    public boolean m57888r(@NonNull Fragment fragment) {
        if (this.f87940h.containsKey(fragment.f7404j)) {
            return this.f87943k ? this.f87944l : !this.f87945m;
        }
        return true;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it2 = this.f87940h.values().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it3 = this.f87941i.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it4 = this.f87942j.keySet().iterator();
        while (it4.hasNext()) {
            sb.append(it4.next());
            if (it4.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
