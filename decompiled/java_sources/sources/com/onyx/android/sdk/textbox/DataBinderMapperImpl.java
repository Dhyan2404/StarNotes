package com.onyx.android.sdk.textbox;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.textbox.databinding.LayoutTextBoxBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes8.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    public static final int f46586a = 1;

    /* renamed from: b */
    public static final SparseIntArray f46587b;

    /* renamed from: com.onyx.android.sdk.textbox.DataBinderMapperImpl$a */
    /* loaded from: classes8.dex */
    public static class C8000a {

        /* renamed from: a */
        public static final SparseArray<String> f46588a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(3);
            f46588a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "isAdaptiveMode");
            sparseArray.put(2, "resizeIconRes");
        }
    }

    /* renamed from: com.onyx.android.sdk.textbox.DataBinderMapperImpl$b */
    /* loaded from: classes8.dex */
    public static class C8001b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f46589a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(1);
            f46589a = hashMap;
            hashMap.put("layout/layout_text_box_0", Integer.valueOf(C8002R.layout.layout_text_box));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(1);
        f46587b = sparseIntArray;
        sparseIntArray.put(C8002R.layout.layout_text_box, 1);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(5);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.onegravity.rteditor.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.data.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.device.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.hwr.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return C8000a.f46588a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f46587b.get(i);
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
        if ("layout/layout_text_box_0".equals(tag)) {
            return new LayoutTextBoxBindingImpl(dataBindingComponent, view);
        }
        throw new IllegalArgumentException("The tag for layout_text_box is invalid. Received: " + tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C8001b.f46589a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f46587b.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
