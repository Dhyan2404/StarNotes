package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupLassoBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final IncludePopupLassoContainerBinding lassoContainer;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupLassoBinding(Object obj, View view, int i, TintView tintView, IncludePopupLassoContainerBinding includePopupLassoContainerBinding, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.divider = tintView;
        this.lassoContainer = includePopupLassoContainerBinding;
        this.tvTitle = mediumTextView;
    }

    public static PopupLassoBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupLassoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupLassoBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupLassoBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_lasso);
    }

    @NonNull
    @Deprecated
    public static PopupLassoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupLassoBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_lasso, viewGroup, z, obj);
    }

    @NonNull
    public static PopupLassoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupLassoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupLassoBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_lasso, null, false, obj);
    }
}
