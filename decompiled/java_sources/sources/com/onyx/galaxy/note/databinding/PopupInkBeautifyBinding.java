package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupInkBeautifyBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView activateVipButton;

    @NonNull
    public final TintImageView arrowButton;

    @NonNull
    public final ImageView betaAiIcon;

    @NonNull
    public final TintLinearLayout buttonLayout;

    @NonNull
    public final TintTextView cancelButton;

    @NonNull
    public final TintImageView fontContentThumbnail;

    @NonNull
    public final TintTextView fontPreviewText;

    @NonNull
    public final TintLinearLayout fontSelectorLayout;

    @NonNull
    public final TintTextView fontSelectorTitle;

    @NonNull
    public final TintImageView fontTitleThumbnail;

    @NonNull
    public final TintImageView hintButton;

    @NonNull
    public final TintImageView moreParamIcon;

    @NonNull
    public final TintLinearLayout moreParamLayout;

    @NonNull
    public final TintTextView moreParamText;

    @NonNull
    public final TintTextView okButton;

    @NonNull
    public final ImageView remainTimeIcon;

    @NonNull
    public final TintLinearLayout remainTimeLayout;

    @NonNull
    public final TextView remainTimeText1;

    @NonNull
    public final TextView remainTimeText2;

    @NonNull
    public final TintLinearLayout rootLayout;

    @NonNull
    public final ConstraintLayout titleLayout;

    @NonNull
    public final MediumTextView titleText;

    @NonNull
    public final LayoutInkBeautifyTypesetBinding typesetBinding;

    public PopupInkBeautifyBinding(Object obj, View view, int i, TintTextView tintTextView, TintImageView tintImageView, ImageView imageView, TintLinearLayout tintLinearLayout, TintTextView tintTextView2, TintImageView tintImageView2, TintTextView tintTextView3, TintLinearLayout tintLinearLayout2, TintTextView tintTextView4, TintImageView tintImageView3, TintImageView tintImageView4, TintImageView tintImageView5, TintLinearLayout tintLinearLayout3, TintTextView tintTextView5, TintTextView tintTextView6, ImageView imageView2, TintLinearLayout tintLinearLayout4, TextView textView, TextView textView2, TintLinearLayout tintLinearLayout5, ConstraintLayout constraintLayout, MediumTextView mediumTextView, LayoutInkBeautifyTypesetBinding layoutInkBeautifyTypesetBinding) {
        super(obj, view, i);
        this.activateVipButton = tintTextView;
        this.arrowButton = tintImageView;
        this.betaAiIcon = imageView;
        this.buttonLayout = tintLinearLayout;
        this.cancelButton = tintTextView2;
        this.fontContentThumbnail = tintImageView2;
        this.fontPreviewText = tintTextView3;
        this.fontSelectorLayout = tintLinearLayout2;
        this.fontSelectorTitle = tintTextView4;
        this.fontTitleThumbnail = tintImageView3;
        this.hintButton = tintImageView4;
        this.moreParamIcon = tintImageView5;
        this.moreParamLayout = tintLinearLayout3;
        this.moreParamText = tintTextView5;
        this.okButton = tintTextView6;
        this.remainTimeIcon = imageView2;
        this.remainTimeLayout = tintLinearLayout4;
        this.remainTimeText1 = textView;
        this.remainTimeText2 = textView2;
        this.rootLayout = tintLinearLayout5;
        this.titleLayout = constraintLayout;
        this.titleText = mediumTextView;
        this.typesetBinding = layoutInkBeautifyTypesetBinding;
    }

    public static PopupInkBeautifyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupInkBeautifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupInkBeautifyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupInkBeautifyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_ink_beautify);
    }

    @NonNull
    @Deprecated
    public static PopupInkBeautifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupInkBeautifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_beautify, viewGroup, z, obj);
    }

    @NonNull
    public static PopupInkBeautifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupInkBeautifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupInkBeautifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_beautify, null, false, obj);
    }
}
