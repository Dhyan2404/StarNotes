package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.chip.ChipGroup;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.category.viewmodel.SearchNoteViewModel;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;
import com.onyx.galaxy.note.p048ui.view.TextSwitchButton;

/* loaded from: classes9.dex */
public abstract class FragmentSearchNoteBinding extends ViewDataBinding {

    @NonNull
    public final Barrier barrier1;

    @NonNull
    public final TintTextView btnCancel;

    @NonNull
    public final TintTextView btnClear;

    @NonNull
    public final ChipGroup cgHistory;

    @NonNull
    public final TintImageView closeSearchButton;

    @NonNull
    public final MotionLayout cls;

    @NonNull
    public final TintTextView countText;

    @NonNull
    public final CommonEmptyView emptyView;

    @NonNull
    public final Guideline guideline1;

    @NonNull
    public final TextSwitchButton hwrSwitchButton;

    @NonNull
    public final TintImageView ivExpand;

    @NonNull
    public final TintImageView ivLibrary;

    @NonNull
    public final TintImageView ivSearch;

    @NonNull
    public final TintImageView ivSetting;

    @NonNull
    public final LinearLayout llOps;

    @NonNull
    public final ShadowLayout loadingLayout;

    @NonNull
    public final ImageView loadingView;

    @Bindable
    protected NoteListViewModel mNoteViewModel;

    @Bindable
    protected SearchNoteViewModel mSearchViewModel;

    @NonNull
    public final TintTextView progressText;

    @NonNull
    public final AutoFitRecycleView rvSearch;

    @NonNull
    public final LayoutSearchScopeBinding searchScopeBinding;

    @NonNull
    public final ScrollView svHistory;

    @NonNull
    public final TintTextInputEditTextView textInputEditTextViewName;

    @NonNull
    public final TintTextInputLayoutView textInputLayoutName;

    @NonNull
    public final TintTextView tvHistoryTitle;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintView vBg;

    @NonNull
    public final TintTextView vDivider;

    public FragmentSearchNoteBinding(Object obj, View view, int i, Barrier barrier, TintTextView tintTextView, TintTextView tintTextView2, ChipGroup chipGroup, TintImageView tintImageView, MotionLayout motionLayout, TintTextView tintTextView3, CommonEmptyView commonEmptyView, Guideline guideline, TextSwitchButton textSwitchButton, TintImageView tintImageView2, TintImageView tintImageView3, TintImageView tintImageView4, TintImageView tintImageView5, LinearLayout linearLayout, ShadowLayout shadowLayout, ImageView imageView, TintTextView tintTextView4, AutoFitRecycleView autoFitRecycleView, LayoutSearchScopeBinding layoutSearchScopeBinding, ScrollView scrollView, TintTextInputEditTextView tintTextInputEditTextView, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView5, TintTextView tintTextView6, TintView tintView, TintTextView tintTextView7) {
        super(obj, view, i);
        this.barrier1 = barrier;
        this.btnCancel = tintTextView;
        this.btnClear = tintTextView2;
        this.cgHistory = chipGroup;
        this.closeSearchButton = tintImageView;
        this.cls = motionLayout;
        this.countText = tintTextView3;
        this.emptyView = commonEmptyView;
        this.guideline1 = guideline;
        this.hwrSwitchButton = textSwitchButton;
        this.ivExpand = tintImageView2;
        this.ivLibrary = tintImageView3;
        this.ivSearch = tintImageView4;
        this.ivSetting = tintImageView5;
        this.llOps = linearLayout;
        this.loadingLayout = shadowLayout;
        this.loadingView = imageView;
        this.progressText = tintTextView4;
        this.rvSearch = autoFitRecycleView;
        this.searchScopeBinding = layoutSearchScopeBinding;
        this.svHistory = scrollView;
        this.textInputEditTextViewName = tintTextInputEditTextView;
        this.textInputLayoutName = tintTextInputLayoutView;
        this.tvHistoryTitle = tintTextView5;
        this.tvTitle = tintTextView6;
        this.vBg = tintView;
        this.vDivider = tintTextView7;
    }

    public static FragmentSearchNoteBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSearchNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteListViewModel getNoteViewModel() {
        return this.mNoteViewModel;
    }

    @Nullable
    public SearchNoteViewModel getSearchViewModel() {
        return this.mSearchViewModel;
    }

    public abstract void setNoteViewModel(@Nullable NoteListViewModel noteListViewModel);

    public abstract void setSearchViewModel(@Nullable SearchNoteViewModel searchNoteViewModel);

    @Deprecated
    public static FragmentSearchNoteBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSearchNoteBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_search_note);
    }

    @NonNull
    @Deprecated
    public static FragmentSearchNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSearchNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_search_note, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSearchNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSearchNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSearchNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_search_note, null, false, obj);
    }
}
