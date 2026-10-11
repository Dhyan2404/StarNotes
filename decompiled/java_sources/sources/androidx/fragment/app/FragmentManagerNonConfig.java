package androidx.fragment.app;

import androidx.annotation.Nullable;
import androidx.lifecycle.ViewModelStore;
import java.util.Collection;
import java.util.Map;

@Deprecated
/* loaded from: classes3.dex */
public class FragmentManagerNonConfig {

    /* renamed from: a */
    @Nullable
    public final Collection<Fragment> f7565a;

    /* renamed from: b */
    @Nullable
    public final Map<String, FragmentManagerNonConfig> f7566b;

    /* renamed from: c */
    @Nullable
    public final Map<String, ViewModelStore> f7567c;

    public FragmentManagerNonConfig(@Nullable Collection<Fragment> collection, @Nullable Map<String, FragmentManagerNonConfig> map, @Nullable Map<String, ViewModelStore> map2) {
        this.f7565a = collection;
        this.f7566b = map;
        this.f7567c = map2;
    }

    @Nullable
    /* renamed from: a */
    public Map<String, FragmentManagerNonConfig> m4757a() {
        return this.f7566b;
    }

    @Nullable
    /* renamed from: b */
    public Collection<Fragment> m4758b() {
        return this.f7565a;
    }

    @Nullable
    /* renamed from: c */
    public Map<String, ViewModelStore> m4759c() {
        return this.f7567c;
    }

    /* renamed from: d */
    public boolean m4760d(Fragment fragment) {
        Collection<Fragment> collection = this.f7565a;
        if (collection == null) {
            return false;
        }
        return collection.contains(fragment);
    }
}
