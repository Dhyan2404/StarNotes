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
public abstract class BackupErrorItemBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout content;

    @NonNull
    public final TintTextView tvError;

    @NonNull
    public final TintTextView tvTitle;

    public BackupErrorItemBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.content = tintConstraintLayout;
        this.tvError = tintTextView;
        this.tvTitle = tintTextView2;
    }

    public static BackupErrorItemBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static BackupErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static BackupErrorItemBinding bind(@NonNull View view, @Nullable Object obj) {
        return (BackupErrorItemBinding) ViewDataBinding.bind(obj, view, C10651R.layout.backup_error_item);
    }

    @NonNull
    @Deprecated
    public static BackupErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (BackupErrorItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.backup_error_item, viewGroup, z, obj);
    }

    @NonNull
    public static BackupErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static BackupErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (BackupErrorItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.backup_error_item, null, false, obj);
    }
}
