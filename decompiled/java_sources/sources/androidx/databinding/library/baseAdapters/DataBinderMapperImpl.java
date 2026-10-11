package androidx.databinding.library.baseAdapters;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    public static final SparseIntArray f6789a = new SparseIntArray(0);

    /* renamed from: androidx.databinding.library.baseAdapters.DataBinderMapperImpl$a */
    /* loaded from: classes3.dex */
    public static class C1000a {

        /* renamed from: a */
        public static final SparseArray<String> f6790a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f6790a = sparseArray;
            sparseArray.put(0, "_all");
        }
    }

    /* renamed from: androidx.databinding.library.baseAdapters.DataBinderMapperImpl$b */
    /* loaded from: classes3.dex */
    public static class C1001b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f6791a = new HashMap<>(0);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        return new ArrayList(0);
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return C1000a.f6790a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        if (f6789a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C1001b.f6791a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f6789a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
