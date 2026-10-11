package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class RestoreErrorItemBinding extends ViewDataBinding {

    @NonNull
    public final RelativeLayout content;

    @NonNull
    public final TextView tvTitle;

    public RestoreErrorItemBinding(Object obj, View view, int i, RelativeLayout relativeLayout, TextView textView) {
        super(obj, view, i);
        this.content = relativeLayout;
        this.tvTitle = textView;
    }

    public static RestoreErrorItemBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static RestoreErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static RestoreErrorItemBinding bind(@NonNull View view, @Nullable Object obj) {
        return (RestoreErrorItemBinding) ViewDataBinding.bind(obj, view, C10651R.layout.restore_error_item);
    }

    @NonNull
    @Deprecated
    public static RestoreErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (RestoreErrorItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.restore_error_item, viewGroup, z, obj);
    }

    @NonNull
    public static RestoreErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static RestoreErrorItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (RestoreErrorItemBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.restore_error_item, null, false, obj);
    }
}
