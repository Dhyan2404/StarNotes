package com.onyx.android.sdk.imagepicker;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.imagepicker.databinding.ActivityFilePickerBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes7.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    public static final int f42683a = 1;

    /* renamed from: b */
    public static final SparseIntArray f42684b;

    /* renamed from: com.onyx.android.sdk.imagepicker.DataBinderMapperImpl$a */
    /* loaded from: classes7.dex */
    public static class C7451a {

        /* renamed from: a */
        public static final SparseArray<String> f42685a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f42685a = sparseArray;
            sparseArray.put(0, "_all");
        }
    }

    /* renamed from: com.onyx.android.sdk.imagepicker.DataBinderMapperImpl$b */
    /* loaded from: classes7.dex */
    public static class C7452b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f42686a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(1);
            f42686a = hashMap;
            hashMap.put("layout/activity_file_picker_0", Integer.valueOf(C7453R.layout.activity_file_picker));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(1);
        f42684b = sparseIntArray;
        sparseIntArray.put(C7453R.layout.activity_file_picker, 1);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.data.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.device.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.p039ui.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.uicommon.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return C7451a.f42685a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f42684b.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        if (i2 != 1) {
            return null;
        }
        if ("layout/activity_file_picker_0".equals(tag)) {
            return new ActivityFilePickerBindingImpl(dataBindingComponent, view);
        }
        throw new IllegalArgumentException("The tag for activity_file_picker is invalid. Received: " + tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C7452b.f42686a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f42684b.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
