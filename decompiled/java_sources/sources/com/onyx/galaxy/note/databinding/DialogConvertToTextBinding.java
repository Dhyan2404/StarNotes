package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;

/* loaded from: classes9.dex */
public abstract class DialogConvertToTextBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView arrowButton;

    @NonNull
    public final TintTextView btnCancel;

    @NonNull
    public final TintView buttonDivider;

    @NonNull
    public final TouchModeMaxLengthEditText content;

    @NonNull
    public final TintTextView convert;

    @NonNull
    public final TintTextView copy;

    @NonNull
    public final TintTextView export;

    @NonNull
    public final ImageView ivLoading;

    @NonNull
    public final TintLinearLayout langSelectLayout;

    @NonNull
    public final TintTextView langText;

    @NonNull
    public final LinearLayoutCompat llBtnLayout;

    @NonNull
    public final LinearLayout recognizing;

    /* renamed from: rl */
    @NonNull
    public final TintLinearLayout f56350rl;

    @NonNull
    public final TextSwitchButton smartHwrButton;

    @NonNull
    public final TintView spacingView;

    @NonNull
    public final RelativeLayout titleLayout;

    public DialogConvertToTextBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintView tintView, TouchModeMaxLengthEditText touchModeMaxLengthEditText, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, ImageView imageView, TintLinearLayout tintLinearLayout, TintTextView tintTextView5, LinearLayoutCompat linearLayoutCompat, LinearLayout linearLayout, TintLinearLayout tintLinearLayout2, TextSwitchButton textSwitchButton, TintView tintView2, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.arrowButton = tintImageView;
        this.btnCancel = tintTextView;
        this.buttonDivider = tintView;
        this.content = touchModeMaxLengthEditText;
        this.convert = tintTextView2;
        this.copy = tintTextView3;
        this.export = tintTextView4;
        this.ivLoading = imageView;
        this.langSelectLayout = tintLinearLayout;
        this.langText = tintTextView5;
        this.llBtnLayout = linearLayoutCompat;
        this.recognizing = linearLayout;
        this.f56350rl = tintLinearLayout2;
        this.smartHwrButton = textSwitchButton;
        this.spacingView = tintView2;
        this.titleLayout = relativeLayout;
    }

    public static DialogConvertToTextBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogConvertToTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogConvertToTextBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogConvertToTextBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_convert_to_text);
    }

    @NonNull
    @Deprecated
    public static DialogConvertToTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogConvertToTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_convert_to_text, viewGroup, z, obj);
    }

    @NonNull
    public static DialogConvertToTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogConvertToTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogConvertToTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_convert_to_text, null, false, obj);
    }
}
