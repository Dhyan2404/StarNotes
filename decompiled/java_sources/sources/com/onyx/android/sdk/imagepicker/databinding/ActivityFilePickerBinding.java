package com.onyx.android.sdk.imagepicker.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;

/* loaded from: classes7.dex */
public abstract class ActivityFilePickerBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final TintImageView ivBack;

    @NonNull
    public final TintImageView ivSearch;

    @NonNull
    public final LinearLayout llEmptyContainer;

    @NonNull
    public final RecyclerView rlFileList;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final TintTextInputEditTextView titleEdit;

    @NonNull
    public final TintTextInputLayoutView titleInputLayout;

    @NonNull
    public final MediumTextView tvImport;

    @NonNull
    public final TintTextView tvSearchEmpty;

    @NonNull
    public final TintTextView tvSystemFileManager;

    @NonNull
    public final MediumTextView tvTitle;

    public ActivityFilePickerBinding(Object obj, View view, int i, TintView tintView, TintImageView tintImageView, TintImageView tintImageView2, LinearLayout linearLayout, RecyclerView recyclerView, TintTabLayoutView tintTabLayoutView, TintTextInputEditTextView tintTextInputEditTextView, TintTextInputLayoutView tintTextInputLayoutView, MediumTextView mediumTextView, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.divider = tintView;
        this.ivBack = tintImageView;
        this.ivSearch = tintImageView2;
        this.llEmptyContainer = linearLayout;
        this.rlFileList = recyclerView;
        this.tabLayout = tintTabLayoutView;
        this.titleEdit = tintTextInputEditTextView;
        this.titleInputLayout = tintTextInputLayoutView;
        this.tvImport = mediumTextView;
        this.tvSearchEmpty = tintTextView;
        this.tvSystemFileManager = tintTextView2;
        this.tvTitle = mediumTextView2;
    }

    public static ActivityFilePickerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ActivityFilePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityFilePickerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ActivityFilePickerBinding) ViewDataBinding.bind(obj, view, C7453R.layout.activity_file_picker);
    }

    @NonNull
    @Deprecated
    public static ActivityFilePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ActivityFilePickerBinding) ViewDataBinding.inflateInternal(layoutInflater, C7453R.layout.activity_file_picker, viewGroup, z, obj);
    }

    @NonNull
    public static ActivityFilePickerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ActivityFilePickerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ActivityFilePickerBinding) ViewDataBinding.inflateInternal(layoutInflater, C7453R.layout.activity_file_picker, null, false, obj);
    }
}
