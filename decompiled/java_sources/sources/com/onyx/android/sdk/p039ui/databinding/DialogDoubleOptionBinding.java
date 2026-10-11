package com.onyx.android.sdk.p039ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public abstract class DialogDoubleOptionBinding extends ViewDataBinding {

    @NonNull
    public final View buttonPaddingView;

    @NonNull
    public final TintImageView closeButton;

    @NonNull
    public final ImageView image;

    @NonNull
    public final TintTextView messageText;

    @NonNull
    public final TintTextView optionButtonLeft;

    @NonNull
    public final TintTextView optionButtonRight;

    @NonNull
    public final ImageView titleIconView;

    @NonNull
    public final ConstraintLayout titleLayout;

    @NonNull
    public final TintTextView titleText;

    public DialogDoubleOptionBinding(Object obj, View view, int i, View view2, TintImageView tintImageView, ImageView imageView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, ImageView imageView2, ConstraintLayout constraintLayout, TintTextView tintTextView4) {
        super(obj, view, i);
        this.buttonPaddingView = view2;
        this.closeButton = tintImageView;
        this.image = imageView;
        this.messageText = tintTextView;
        this.optionButtonLeft = tintTextView2;
        this.optionButtonRight = tintTextView3;
        this.titleIconView = imageView2;
        this.titleLayout = constraintLayout;
        this.titleText = tintTextView4;
    }

    public static DialogDoubleOptionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogDoubleOptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogDoubleOptionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogDoubleOptionBinding) ViewDataBinding.bind(obj, view, C8037R.layout.dialog_double_option);
    }

    @NonNull
    @Deprecated
    public static DialogDoubleOptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogDoubleOptionBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_double_option, viewGroup, z, obj);
    }

    @NonNull
    public static DialogDoubleOptionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogDoubleOptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogDoubleOptionBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_double_option, null, false, obj);
    }
}
