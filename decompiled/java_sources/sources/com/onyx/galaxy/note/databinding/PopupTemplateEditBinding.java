package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupTemplateEditBinding extends ViewDataBinding {

    @NonNull
    public final TextView tvDelete;

    @NonNull
    public final TextView tvRename;

    public PopupTemplateEditBinding(Object obj, View view, int i, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.tvDelete = textView;
        this.tvRename = textView2;
    }

    public static PopupTemplateEditBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTemplateEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTemplateEditBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTemplateEditBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_template_edit);
    }

    @NonNull
    @Deprecated
    public static PopupTemplateEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTemplateEditBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_template_edit, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTemplateEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTemplateEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTemplateEditBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_template_edit, null, false, obj);
    }
}
