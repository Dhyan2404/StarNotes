package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.textfield.TextInputLayout;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class ItemDocExcerptBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView centerSettingButton;

    @NonNull
    public final TintLinearLayout centerSettingButtonWrapper;

    @NonNull
    public final TintCheckBox checkbox;

    @NonNull
    public final TintTextView countText;

    @NonNull
    public final TintRelativeLayout exceptContainer;

    @NonNull
    public final TintImageView image;

    @NonNull
    public final ShadowLayout imageContainer;

    @NonNull
    public final TintImageView ivClear;

    @Bindable
    protected ExcerptInfoBean mModel;

    @NonNull
    public final TintImageView moreSettings;

    @NonNull
    public final TintTextView quoteCount;

    @NonNull
    public final TintTextView title;

    @NonNull
    public final MaxLengthInputTextEdit titleEdit;

    @NonNull
    public final TextInputLayout titleEditContainer;

    @NonNull
    public final TintTextView tvNotePageIndex;

    @NonNull
    public final TintImageView zoomView;

    public ItemDocExcerptBinding(Object obj, View view, int i, TintImageView tintImageView, TintLinearLayout tintLinearLayout, TintCheckBox tintCheckBox, TintTextView tintTextView, TintRelativeLayout tintRelativeLayout, TintImageView tintImageView2, ShadowLayout shadowLayout, TintImageView tintImageView3, TintImageView tintImageView4, TintTextView tintTextView2, TintTextView tintTextView3, MaxLengthInputTextEdit maxLengthInputTextEdit, TextInputLayout textInputLayout, TintTextView tintTextView4, TintImageView tintImageView5) {
        super(obj, view, i);
        this.centerSettingButton = tintImageView;
        this.centerSettingButtonWrapper = tintLinearLayout;
        this.checkbox = tintCheckBox;
        this.countText = tintTextView;
        this.exceptContainer = tintRelativeLayout;
        this.image = tintImageView2;
        this.imageContainer = shadowLayout;
        this.ivClear = tintImageView3;
        this.moreSettings = tintImageView4;
        this.quoteCount = tintTextView2;
        this.title = tintTextView3;
        this.titleEdit = maxLengthInputTextEdit;
        this.titleEditContainer = textInputLayout;
        this.tvNotePageIndex = tintTextView4;
        this.zoomView = tintImageView5;
    }

    public static ItemDocExcerptBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemDocExcerptBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public ExcerptInfoBean getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable ExcerptInfoBean excerptInfoBean);

    @Deprecated
    public static ItemDocExcerptBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemDocExcerptBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_doc_excerpt);
    }

    @NonNull
    @Deprecated
    public static ItemDocExcerptBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemDocExcerptBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_excerpt, viewGroup, z, obj);
    }

    @NonNull
    public static ItemDocExcerptBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemDocExcerptBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemDocExcerptBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_doc_excerpt, null, false, obj);
    }
}
