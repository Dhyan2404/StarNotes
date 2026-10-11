package androidx.databinding;

import android.util.Log;
import android.view.View;
import androidx.annotation.RestrictTo;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class MergedDataBinderMapper extends DataBinderMapper {

    /* renamed from: d */
    public static final String f6685d = "MergedDataBinderMapper";

    /* renamed from: a */
    public Set<Class<? extends DataBinderMapper>> f6686a = new HashSet();

    /* renamed from: b */
    public List<DataBinderMapper> f6687b = new CopyOnWriteArrayList();

    /* renamed from: c */
    public List<String> f6688c = new CopyOnWriteArrayList();

    /* renamed from: a */
    public final boolean m4051a() {
        boolean z = false;
        for (String str : this.f6688c) {
            try {
                Class<?> cls = Class.forName(str);
                if (DataBinderMapper.class.isAssignableFrom(cls)) {
                    addMapper((DataBinderMapper) cls.newInstance());
                    this.f6688c.remove(str);
                    z = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e) {
                Log.e(f6685d, "unable to add feature mapper for " + str, e);
            } catch (InstantiationException e2) {
                Log.e(f6685d, "unable to add feature mapper for " + str, e2);
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addMapper(DataBinderMapper dataBinderMapper) {
        if (this.f6686a.add(dataBinderMapper.getClass())) {
            this.f6687b.add(dataBinderMapper);
            Iterator<DataBinderMapper> it2 = dataBinderMapper.collectDependencies().iterator();
            while (it2.hasNext()) {
                addMapper(it2.next());
            }
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        Iterator<DataBinderMapper> it2 = this.f6687b.iterator();
        while (it2.hasNext()) {
            String convertBrIdToString = it2.next().convertBrIdToString(i);
            if (convertBrIdToString != null) {
                return convertBrIdToString;
            }
        }
        if (m4051a()) {
            return convertBrIdToString(i);
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        Iterator<DataBinderMapper> it2 = this.f6687b.iterator();
        while (it2.hasNext()) {
            ViewDataBinding dataBinder = it2.next().getDataBinder(dataBindingComponent, view, i);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (m4051a()) {
            return getDataBinder(dataBindingComponent, view, i);
        }
        return null;
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Iterator<DataBinderMapper> it2 = this.f6687b.iterator();
        while (it2.hasNext()) {
            int layoutId = it2.next().getLayoutId(str);
            if (layoutId != 0) {
                return layoutId;
            }
        }
        if (m4051a()) {
            return getLayoutId(str);
        }
        return 0;
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        Iterator<DataBinderMapper> it2 = this.f6687b.iterator();
        while (it2.hasNext()) {
            ViewDataBinding dataBinder = it2.next().getDataBinder(dataBindingComponent, viewArr, i);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        if (m4051a()) {
            return getDataBinder(dataBindingComponent, viewArr, i);
        }
        return null;
    }

    public void addMapper(String str) {
        this.f6688c.add(str + ".DataBinderMapperImpl");
    }
}
