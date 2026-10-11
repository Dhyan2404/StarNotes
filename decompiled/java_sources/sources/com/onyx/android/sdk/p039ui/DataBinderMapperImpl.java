package com.onyx.android.sdk.p039ui;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.databinding.DialogCommonBindingImpl;
import com.onyx.android.sdk.p039ui.databinding.DialogDoubleOptionBindingImpl;
import com.onyx.android.sdk.p039ui.databinding.DialogNameEditBindingImpl;
import com.onyx.android.sdk.p039ui.databinding.DialogPermissionBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes8.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    public static final int f47055a = 1;

    /* renamed from: b */
    public static final int f47056b = 2;

    /* renamed from: c */
    public static final int f47057c = 3;

    /* renamed from: d */
    public static final int f47058d = 4;

    /* renamed from: e */
    public static final SparseIntArray f47059e;

    /* renamed from: com.onyx.android.sdk.ui.DataBinderMapperImpl$a */
    /* loaded from: classes8.dex */
    public static class C8028a {

        /* renamed from: a */
        public static final SparseArray<String> f47060a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f47060a = sparseArray;
            sparseArray.put(0, "_all");
        }
    }

    /* renamed from: com.onyx.android.sdk.ui.DataBinderMapperImpl$b */
    /* loaded from: classes8.dex */
    public static class C8029b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f47061a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(4);
            f47061a = hashMap;
            hashMap.put("layout/dialog_common_0", Integer.valueOf(C8037R.layout.dialog_common));
            hashMap.put("layout/dialog_double_option_0", Integer.valueOf(C8037R.layout.dialog_double_option));
            hashMap.put("layout/dialog_name_edit_0", Integer.valueOf(C8037R.layout.dialog_name_edit));
            hashMap.put("layout/dialog_permission_0", Integer.valueOf(C8037R.layout.dialog_permission));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(4);
        f47059e = sparseIntArray;
        sparseIntArray.put(C8037R.layout.dialog_common, 1);
        sparseIntArray.put(C8037R.layout.dialog_double_option, 2);
        sparseIntArray.put(C8037R.layout.dialog_name_edit, 3);
        sparseIntArray.put(C8037R.layout.dialog_permission, 4);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.data.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.device.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.uicommon.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return C8028a.f47060a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f47059e.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        if (i2 == 1) {
            if ("layout/dialog_common_0".equals(tag)) {
                return new DialogCommonBindingImpl(dataBindingComponent, view);
            }
            throw new IllegalArgumentException("The tag for dialog_common is invalid. Received: " + tag);
        }
        if (i2 == 2) {
            if ("layout/dialog_double_option_0".equals(tag)) {
                return new DialogDoubleOptionBindingImpl(dataBindingComponent, view);
            }
            throw new IllegalArgumentException("The tag for dialog_double_option is invalid. Received: " + tag);
        }
        if (i2 == 3) {
            if ("layout/dialog_name_edit_0".equals(tag)) {
                return new DialogNameEditBindingImpl(dataBindingComponent, view);
            }
            throw new IllegalArgumentException("The tag for dialog_name_edit is invalid. Received: " + tag);
        }
        if (i2 != 4) {
            return null;
        }
        if ("layout/dialog_permission_0".equals(tag)) {
            return new DialogPermissionBindingImpl(dataBindingComponent, view);
        }
        throw new IllegalArgumentException("The tag for dialog_permission is invalid. Received: " + tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C8029b.f47061a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f47059e.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
