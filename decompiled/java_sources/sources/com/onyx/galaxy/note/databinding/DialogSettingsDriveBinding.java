package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;

/* loaded from: classes9.dex */
public abstract class DialogSettingsDriveBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView btnBack;

    @NonNull
    public final TintTextView btnImport;

    @NonNull
    public final TintEditText edtSearch;

    @NonNull
    public final CommonEmptyView emptyView;

    @NonNull
    public final FrameLayout flSearchContainer;

    @NonNull
    public final TintImageView ivDelete;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56538rv;

    @NonNull
    public final RecyclerView rvSearch;

    @NonNull
    public final SmartRefreshLayout sfl;

    @NonNull
    public final TintTextView tvSelectAll;

    @NonNull
    public final TintTextView tvTitle;

    public DialogSettingsDriveBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintEditText tintEditText, CommonEmptyView commonEmptyView, FrameLayout frameLayout, TintImageView tintImageView2, RecyclerView recyclerView, RecyclerView recyclerView2, SmartRefreshLayout smartRefreshLayout, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.btnBack = tintImageView;
        this.btnImport = tintTextView;
        this.edtSearch = tintEditText;
        this.emptyView = commonEmptyView;
        this.flSearchContainer = frameLayout;
        this.ivDelete = tintImageView2;
        this.f56538rv = recyclerView;
        this.rvSearch = recyclerView2;
        this.sfl = smartRefreshLayout;
        this.tvSelectAll = tintTextView2;
        this.tvTitle = tintTextView3;
    }

    public static DialogSettingsDriveBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogSettingsDriveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogSettingsDriveBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogSettingsDriveBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_settings_drive);
    }

    @NonNull
    @Deprecated
    public static DialogSettingsDriveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogSettingsDriveBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_settings_drive, viewGroup, z, obj);
    }

    @NonNull
    public static DialogSettingsDriveBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogSettingsDriveBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogSettingsDriveBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_settings_drive, null, false, obj);
    }
}
