package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ExportErrorItemBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout content;

    @NonNull
    public final TintTextView tvError;

    @NonNull
    public final TintTextView tvTitle;

    public ExportErrorItemBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.content = tintConstraintLayout;
        this.tvError = tintTextView;
        this.tvTitle = tintTextView2;
    }

    public static ExportErrorItemBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ExportErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ExportErrorItemBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ExportErrorItemBinding) ViewDataBinding.bind(obj, view, C10651R.layout.export_error_item);
    }

    @NonNull
    @Deprecated
    public static ExportErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ExportErrorItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.export_error_item, viewGroup, z, obj);
    }

    @NonNull
    public static ExportErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ExportErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ExportErrorItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.export_error_item, null, false, obj);
    }
}
