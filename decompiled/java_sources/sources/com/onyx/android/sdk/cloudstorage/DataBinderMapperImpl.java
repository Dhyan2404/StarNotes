package com.onyx.android.sdk.cloudstorage;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.cloudstorage.databinding.CustomDialogWebdavAuthBindingImpl;
import com.onyx.android.sdk.cloudstorage.databinding.DialogMicrosoftAuthSelectionBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes7.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: a */
    public static final int f41031a = 1;

    /* renamed from: b */
    public static final int f41032b = 2;

    /* renamed from: c */
    public static final SparseIntArray f41033c;

    /* renamed from: com.onyx.android.sdk.cloudstorage.DataBinderMapperImpl$a */
    /* loaded from: classes7.dex */
    public static class C7151a {

        /* renamed from: a */
        public static final SparseArray<String> f41034a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(1);
            f41034a = sparseArray;
            sparseArray.put(0, "_all");
        }
    }

    /* renamed from: com.onyx.android.sdk.cloudstorage.DataBinderMapperImpl$b */
    /* loaded from: classes7.dex */
    public static class C7152b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f41035a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(2);
            f41035a = hashMap;
            hashMap.put("layout/custom_dialog_webdav_auth_0", Integer.valueOf(C7153R.layout.custom_dialog_webdav_auth));
            hashMap.put("layout/dialog_microsoft_auth_selection_0", Integer.valueOf(C7153R.layout.dialog_microsoft_auth_selection));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(2);
        f41033c = sparseIntArray;
        sparseIntArray.put(C7153R.layout.custom_dialog_webdav_auth, 1);
        sparseIntArray.put(C7153R.layout.dialog_microsoft_auth_selection, 2);
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
        return C7151a.f41034a.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f41033c.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        if (i2 == 1) {
            if ("layout/custom_dialog_webdav_auth_0".equals(tag)) {
                return new CustomDialogWebdavAuthBindingImpl(dataBindingComponent, view);
            }
            throw new IllegalArgumentException("The tag for custom_dialog_webdav_auth is invalid. Received: " + tag);
        }
        if (i2 != 2) {
            return null;
        }
        if ("layout/dialog_microsoft_auth_selection_0".equals(tag)) {
            return new DialogMicrosoftAuthSelectionBindingImpl(dataBindingComponent, view);
        }
        throw new IllegalArgumentException("The tag for dialog_microsoft_auth_selection is invalid. Received: " + tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C7152b.f41035a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f41033c.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
