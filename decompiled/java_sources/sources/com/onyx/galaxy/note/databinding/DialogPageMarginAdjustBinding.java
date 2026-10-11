package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.PageMarginAdjustView;

/* loaded from: classes9.dex */
public abstract class DialogPageMarginAdjustBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout ctlRoot;

    @NonNull
    public final TintFrameLayout flSelectMarginLineSpace;

    @NonNull
    public final TintFrameLayout flSelectMarginStyle;

    @NonNull
    public final TintFrameLayout flSelectSize;

    @NonNull
    public final PageMarginAdjustView pageMarginView;

    @NonNull
    public final TintRecycleView rvColors;

    @NonNull
    public final TintRecycleView rvTemplate;

    @NonNull
    public final NestedScrollView scrollContainer;

    @NonNull
    public final TintTextView tvApplyCover;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvConfirm;

    @NonNull
    public final TintTextView tvLabelMarginTemplate;

    @NonNull
    public final TintTextView tvLabelSelectAll;

    @NonNull
    public final TintTextView tvMarginColor;

    @NonNull
    public final TintTextView tvMarginLineSpace;

    @NonNull
    public final TintTextView tvMarginSize;

    @NonNull
    public final TintTextView tvMarginStyle;

    @NonNull
    public final TintTextView tvSelectAll;

    @NonNull
    public final TintTextView tvSelectMarginLineSpace;

    @NonNull
    public final TintTextView tvSelectMarginStyle;

    @NonNull
    public final TintTextView tvSelectSize;

    @NonNull
    public final MediumTextView whitespaceTitle;

    public DialogPageMarginAdjustBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintFrameLayout tintFrameLayout, TintFrameLayout tintFrameLayout2, TintFrameLayout tintFrameLayout3, PageMarginAdjustView pageMarginAdjustView, TintRecycleView tintRecycleView, TintRecycleView tintRecycleView2, NestedScrollView nestedScrollView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8, TintTextView tintTextView9, TintTextView tintTextView10, TintTextView tintTextView11, TintTextView tintTextView12, TintTextView tintTextView13, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.ctlRoot = tintConstraintLayout;
        this.flSelectMarginLineSpace = tintFrameLayout;
        this.flSelectMarginStyle = tintFrameLayout2;
        this.flSelectSize = tintFrameLayout3;
        this.pageMarginView = pageMarginAdjustView;
        this.rvColors = tintRecycleView;
        this.rvTemplate = tintRecycleView2;
        this.scrollContainer = nestedScrollView;
        this.tvApplyCover = tintTextView;
        this.tvCancel = tintTextView2;
        this.tvConfirm = tintTextView3;
        this.tvLabelMarginTemplate = tintTextView4;
        this.tvLabelSelectAll = tintTextView5;
        this.tvMarginColor = tintTextView6;
        this.tvMarginLineSpace = tintTextView7;
        this.tvMarginSize = tintTextView8;
        this.tvMarginStyle = tintTextView9;
        this.tvSelectAll = tintTextView10;
        this.tvSelectMarginLineSpace = tintTextView11;
        this.tvSelectMarginStyle = tintTextView12;
        this.tvSelectSize = tintTextView13;
        this.whitespaceTitle = mediumTextView;
    }

    public static DialogPageMarginAdjustBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogPageMarginAdjustBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogPageMarginAdjustBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogPageMarginAdjustBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_page_margin_adjust);
    }

    @NonNull
    @Deprecated
    public static DialogPageMarginAdjustBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogPageMarginAdjustBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_page_margin_adjust, viewGroup, z, obj);
    }

    @NonNull
    public static DialogPageMarginAdjustBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogPageMarginAdjustBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogPageMarginAdjustBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_page_margin_adjust, null, false, obj);
    }
}
