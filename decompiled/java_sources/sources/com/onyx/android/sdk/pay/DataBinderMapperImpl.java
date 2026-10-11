package com.onyx.android.sdk.pay;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.pay.databinding.DialogPayBindingImpl;
import com.onyx.android.sdk.pay.databinding.DialogThemePayBindingImpl;
import com.onyx.android.sdk.pay.databinding.ItemHuaweiProductInfoBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes8.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    public static final int f44035a = 1;

    /* renamed from: b */
    public static final int f44036b = 2;

    /* renamed from: c */
    public static final int f44037c = 3;

    /* renamed from: d */
    public static final SparseIntArray f44038d;

    /* renamed from: com.onyx.android.sdk.pay.DataBinderMapperImpl$a */
    /* loaded from: classes8.dex */
    public static class C7518a {

        /* renamed from: a */
        public static final SparseArray<String> f44039a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f44039a = sparseArray;
            sparseArray.put(0, "_all");
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.DataBinderMapperImpl$b */
    /* loaded from: classes8.dex */
    public static class C7519b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f44040a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(3);
            f44040a = hashMap;
            hashMap.put("layout/dialog_pay_0", Integer.valueOf(C7520R.layout.dialog_pay));
            hashMap.put("layout/dialog_theme_pay_0", Integer.valueOf(C7520R.layout.dialog_theme_pay));
            hashMap.put("layout/item_huawei_product_info_0", Integer.valueOf(C7520R.layout.item_huawei_product_info));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(3);
        f44038d = sparseIntArray;
        sparseIntArray.put(C7520R.layout.dialog_pay, 1);
        sparseIntArray.put(C7520R.layout.dialog_theme_pay, 2);
        sparseIntArray.put(C7520R.layout.item_huawei_product_info, 3);
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
        return C7518a.f44039a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f44038d.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        if (i2 == 1) {
            if ("layout/dialog_pay_0".equals(tag)) {
                return new DialogPayBindingImpl(dataBindingComponent, view);
            }
            throw new IllegalArgumentException("The tag for dialog_pay is invalid. Received: " + tag);
        }
        if (i2 == 2) {
            if ("layout/dialog_theme_pay_0".equals(tag)) {
                return new DialogThemePayBindingImpl(dataBindingComponent, view);
            }
            throw new IllegalArgumentException("The tag for dialog_theme_pay is invalid. Received: " + tag);
        }
        if (i2 != 3) {
            return null;
        }
        if ("layout/item_huawei_product_info_0".equals(tag)) {
            return new ItemHuaweiProductInfoBindingImpl(dataBindingComponent, view);
        }
        throw new IllegalArgumentException("The tag for item_huawei_product_info is invalid. Received: " + tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C7519b.f44040a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f44038d.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
