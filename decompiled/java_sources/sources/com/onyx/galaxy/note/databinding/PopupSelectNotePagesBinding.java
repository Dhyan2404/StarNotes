package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;

/* loaded from: classes9.dex */
public abstract class PopupSelectNotePagesBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addPages;

    @NonNull
    public final TintTextView btnBack;

    @NonNull
    public final TintImageView displayType;

    @NonNull
    public final TintCheckBox fileSelectAll;

    @NonNull
    public final TintImageView ivSearch;

    @NonNull
    public final LinearLayout noteLayout;

    @NonNull
    public final AutoFitRecycleView noteRecyclerView;

    @NonNull
    public final TintTextView pageBtnBack;

    @NonNull
    public final LinearLayout pageLayout;

    @NonNull
    public final TintTextInputLayoutView searchView;

    @NonNull
    public final SwipeRecycleViewContainer swipeContainer;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final TouchModeMaxLengthInputTextEdit tieName;

    public PopupSelectNotePagesBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintImageView tintImageView, TintCheckBox tintCheckBox, TintImageView tintImageView2, LinearLayout linearLayout, AutoFitRecycleView autoFitRecycleView, TintTextView tintTextView3, LinearLayout linearLayout2, TintTextInputLayoutView tintTextInputLayoutView, SwipeRecycleViewContainer swipeRecycleViewContainer, TintTabLayoutView tintTabLayoutView, TouchModeMaxLengthInputTextEdit touchModeMaxLengthInputTextEdit) {
        super(obj, view, i);
        this.addPages = tintTextView;
        this.btnBack = tintTextView2;
        this.displayType = tintImageView;
        this.fileSelectAll = tintCheckBox;
        this.ivSearch = tintImageView2;
        this.noteLayout = linearLayout;
        this.noteRecyclerView = autoFitRecycleView;
        this.pageBtnBack = tintTextView3;
        this.pageLayout = linearLayout2;
        this.searchView = tintTextInputLayoutView;
        this.swipeContainer = swipeRecycleViewContainer;
        this.tabLayout = tintTabLayoutView;
        this.tieName = touchModeMaxLengthInputTextEdit;
    }

    public static PopupSelectNotePagesBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupSelectNotePagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupSelectNotePagesBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupSelectNotePagesBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_select_note_pages);
    }

    @NonNull
    @Deprecated
    public static PopupSelectNotePagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupSelectNotePagesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_select_note_pages, viewGroup, z, obj);
    }

    @NonNull
    public static PopupSelectNotePagesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupSelectNotePagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupSelectNotePagesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_select_note_pages, null, false, obj);
    }
}
