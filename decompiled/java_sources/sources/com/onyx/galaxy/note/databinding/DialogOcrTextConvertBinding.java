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
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogOcrTextConvertBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnCancel;

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
    public final LinearLayoutCompat llBtnLayout;

    @NonNull
    public final LinearLayout recognizing;

    /* renamed from: rl */
    @NonNull
    public final TintLinearLayout f56485rl;

    @NonNull
    public final RelativeLayout titleLayout;

    public DialogOcrTextConvertBinding(Object obj, View view, int i, TintTextView tintTextView, TouchModeMaxLengthEditText touchModeMaxLengthEditText, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, ImageView imageView, LinearLayoutCompat linearLayoutCompat, LinearLayout linearLayout, TintLinearLayout tintLinearLayout, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.btnCancel = tintTextView;
        this.content = touchModeMaxLengthEditText;
        this.convert = tintTextView2;
        this.copy = tintTextView3;
        this.export = tintTextView4;
        this.ivLoading = imageView;
        this.llBtnLayout = linearLayoutCompat;
        this.recognizing = linearLayout;
        this.f56485rl = tintLinearLayout;
        this.titleLayout = relativeLayout;
    }

    public static DialogOcrTextConvertBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogOcrTextConvertBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogOcrTextConvertBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogOcrTextConvertBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_ocr_text_convert);
    }

    @NonNull
    @Deprecated
    public static DialogOcrTextConvertBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogOcrTextConvertBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_ocr_text_convert, viewGroup, z, obj);
    }

    @NonNull
    public static DialogOcrTextConvertBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogOcrTextConvertBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogOcrTextConvertBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_ocr_text_convert, null, false, obj);
    }
}
