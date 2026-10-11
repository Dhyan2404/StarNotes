package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupPageNumFloatPanelBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView pageCount;

    @NonNull
    public final TintEditText pageGoTo;

    @NonNull
    public final TintTextView pageJump;

    @NonNull
    public final TintLinearLayout pageJumpContainer;

    public PopupPageNumFloatPanelBinding(Object obj, View view, int i, TintTextView tintTextView, TintEditText tintEditText, TintTextView tintTextView2, TintLinearLayout tintLinearLayout) {
        super(obj, view, i);
        this.pageCount = tintTextView;
        this.pageGoTo = tintEditText;
        this.pageJump = tintTextView2;
        this.pageJumpContainer = tintLinearLayout;
    }

    public static PopupPageNumFloatPanelBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupPageNumFloatPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupPageNumFloatPanelBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupPageNumFloatPanelBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_page_num_float_panel);
    }

    @NonNull
    @Deprecated
    public static PopupPageNumFloatPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupPageNumFloatPanelBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_page_num_float_panel, viewGroup, z, obj);
    }

    @NonNull
    public static PopupPageNumFloatPanelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupPageNumFloatPanelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupPageNumFloatPanelBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_page_num_float_panel, null, false, obj);
    }
}
