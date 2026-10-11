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
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupLongPressBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView arrowView;

    @NonNull
    public final TintLinearLayout menuContainer;

    public PopupLongPressBinding(Object obj, View view, int i, TintImageView tintImageView, TintLinearLayout tintLinearLayout) {
        super(obj, view, i);
        this.arrowView = tintImageView;
        this.menuContainer = tintLinearLayout;
    }

    public static PopupLongPressBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupLongPressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupLongPressBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupLongPressBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_long_press);
    }

    @NonNull
    @Deprecated
    public static PopupLongPressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupLongPressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_long_press, viewGroup, z, obj);
    }

    @NonNull
    public static PopupLongPressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupLongPressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupLongPressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_long_press, null, false, obj);
    }
}
