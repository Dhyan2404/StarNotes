package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemBackupPathBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout flInternalStorageContainer;

    @NonNull
    public final TintImageView ivSelected;

    @NonNull
    public final TintTextView tvName;

    @NonNull
    public final TintTextView tvPath;

    public ItemBackupPathBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintImageView tintImageView, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.flInternalStorageContainer = tintFrameLayout;
        this.ivSelected = tintImageView;
        this.tvName = tintTextView;
        this.tvPath = tintTextView2;
    }

    public static ItemBackupPathBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemBackupPathBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemBackupPathBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemBackupPathBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_backup_path);
    }

    @NonNull
    @Deprecated
    public static ItemBackupPathBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemBackupPathBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_backup_path, viewGroup, z, obj);
    }

    @NonNull
    public static ItemBackupPathBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemBackupPathBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemBackupPathBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_backup_path, null, false, obj);
    }
}
