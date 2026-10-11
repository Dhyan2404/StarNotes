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

/* loaded from: classes9.dex */
public abstract class DialogLocalRestoreFileBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView btnBack;

    @NonNull
    public final TintTextView btnImport;

    @NonNull
    public final TintEditText edtSearch;

    @NonNull
    public final FrameLayout flSearchContainer;

    @NonNull
    public final TintImageView ivDelete;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56433rv;

    @NonNull
    public final TintTextView tvSelectAll;

    @NonNull
    public final TintTextView tvTitle;

    public DialogLocalRestoreFileBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintEditText tintEditText, FrameLayout frameLayout, TintImageView tintImageView2, RecyclerView recyclerView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.btnBack = tintImageView;
        this.btnImport = tintTextView;
        this.edtSearch = tintEditText;
        this.flSearchContainer = frameLayout;
        this.ivDelete = tintImageView2;
        this.f56433rv = recyclerView;
        this.tvSelectAll = tintTextView2;
        this.tvTitle = tintTextView3;
    }

    public static DialogLocalRestoreFileBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogLocalRestoreFileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogLocalRestoreFileBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogLocalRestoreFileBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_local_restore_file);
    }

    @NonNull
    @Deprecated
    public static DialogLocalRestoreFileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogLocalRestoreFileBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_local_restore_file, viewGroup, z, obj);
    }

    @NonNull
    public static DialogLocalRestoreFileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogLocalRestoreFileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogLocalRestoreFileBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_local_restore_file, null, false, obj);
    }
}
