package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogAreaCodeBinding extends ViewDataBinding {

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56321rv;

    @NonNull
    public final TintTabLayoutView scrollableTabLayout;

    public DialogAreaCodeBinding(Object obj, View view, int i, RecyclerView recyclerView, TintTabLayoutView tintTabLayoutView) {
        super(obj, view, i);
        this.f56321rv = recyclerView;
        this.scrollableTabLayout = tintTabLayoutView;
    }

    public static DialogAreaCodeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogAreaCodeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogAreaCodeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_area_code);
    }

    @NonNull
    @Deprecated
    public static DialogAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogAreaCodeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_area_code, viewGroup, z, obj);
    }

    @NonNull
    public static DialogAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogAreaCodeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_area_code, null, false, obj);
    }
}
