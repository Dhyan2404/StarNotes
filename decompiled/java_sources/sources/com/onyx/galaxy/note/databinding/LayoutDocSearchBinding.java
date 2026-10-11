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
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TouchModeTintTextInputEditTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;

/* loaded from: classes9.dex */
public abstract class LayoutDocSearchBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView currentHighlightIndex;

    @NonNull
    public final TintImageView gotoNextHighlight;

    @NonNull
    public final TintImageView gotoPrevHighlight;

    @NonNull
    public final TintLinearLayout highlightNavLayout;

    @NonNull
    public final TextSwitchButton hwrSwitchButton;

    @NonNull
    public final TouchModeTintTextInputEditTextView inputEditTextView;

    @NonNull
    public final TintTextInputLayoutView inputLayout;

    @NonNull
    public final TintImageView ivClear;

    @NonNull
    public final TintImageView ivSearch;

    @NonNull
    public final TintRecycleView rvFilter;

    @NonNull
    public final TintTextView searchResult;

    @NonNull
    public final TintLinearLayout searchStatusLayout;

    public LayoutDocSearchBinding(Object obj, View view, int i, TintTextView tintTextView, TintImageView tintImageView, TintImageView tintImageView2, TintLinearLayout tintLinearLayout, TextSwitchButton textSwitchButton, TouchModeTintTextInputEditTextView touchModeTintTextInputEditTextView, TintTextInputLayoutView tintTextInputLayoutView, TintImageView tintImageView3, TintImageView tintImageView4, TintRecycleView tintRecycleView, TintTextView tintTextView2, TintLinearLayout tintLinearLayout2) {
        super(obj, view, i);
        this.currentHighlightIndex = tintTextView;
        this.gotoNextHighlight = tintImageView;
        this.gotoPrevHighlight = tintImageView2;
        this.highlightNavLayout = tintLinearLayout;
        this.hwrSwitchButton = textSwitchButton;
        this.inputEditTextView = touchModeTintTextInputEditTextView;
        this.inputLayout = tintTextInputLayoutView;
        this.ivClear = tintImageView3;
        this.ivSearch = tintImageView4;
        this.rvFilter = tintRecycleView;
        this.searchResult = tintTextView2;
        this.searchStatusLayout = tintLinearLayout2;
    }

    public static LayoutDocSearchBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutDocSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutDocSearchBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutDocSearchBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_doc_search);
    }

    @NonNull
    @Deprecated
    public static LayoutDocSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutDocSearchBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_doc_search, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutDocSearchBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutDocSearchBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutDocSearchBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_doc_search, null, false, obj);
    }
}
