package com.onyx.android.sdk_huawei;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes8.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    public static final SparseIntArray f52895a = new SparseIntArray(0);

    /* renamed from: com.onyx.android.sdk_huawei.DataBinderMapperImpl$a */
    /* loaded from: classes8.dex */
    public static class C10599a {

        /* renamed from: a */
        public static final SparseArray<String> f52896a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f52896a = sparseArray;
            sparseArray.put(0, "_all");
        }
    }

    /* renamed from: com.onyx.android.sdk_huawei.DataBinderMapperImpl$b */
    /* loaded from: classes8.dex */
    public static class C10600b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f52897a = new HashMap<>(0);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.data.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.device.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return C10599a.f52896a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        if (f52895a.get(i) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C10600b.f52897a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f52895a.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
