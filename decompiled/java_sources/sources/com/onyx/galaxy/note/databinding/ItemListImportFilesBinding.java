package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemListImportFilesBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivIconMultiple;

    @NonNull
    public final TintImageView ivIconSingle;

    @NonNull
    public final TintLinearLayout llContainerMultiple;

    @NonNull
    public final TintLinearLayout llContainerSingle;

    @NonNull
    public final TintTextView tvNameMultiple;

    @NonNull
    public final TintTextView tvNameSingle;

    public ItemListImportFilesBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.ivIconMultiple = tintImageView;
        this.ivIconSingle = tintImageView2;
        this.llContainerMultiple = tintLinearLayout;
        this.llContainerSingle = tintLinearLayout2;
        this.tvNameMultiple = tintTextView;
        this.tvNameSingle = tintTextView2;
    }

    public static ItemListImportFilesBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemListImportFilesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemListImportFilesBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemListImportFilesBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_list_import_files);
    }

    @NonNull
    @Deprecated
    public static ItemListImportFilesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemListImportFilesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_list_import_files, viewGroup, z, obj);
    }

    @NonNull
    public static ItemListImportFilesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemListImportFilesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemListImportFilesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_list_import_files, null, false, obj);
    }
}
