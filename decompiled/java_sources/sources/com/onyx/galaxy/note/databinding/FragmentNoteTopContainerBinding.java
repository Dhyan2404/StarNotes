package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentNoteTopContainerBinding extends ViewDataBinding {

    @NonNull
    public final Barrier barrier;

    @NonNull
    public final Barrier barrier1;

    @NonNull
    public final Guideline guideline;

    @NonNull
    public final Guideline guideline1;

    @NonNull
    public final Guideline guideline2;

    @NonNull
    public final FrameLayout ivCloud;

    @NonNull
    public final TintImageView ivDisplayType;

    @NonNull
    public final TintImageView ivDustBinOpDelete;

    @NonNull
    public final TintImageView ivDustBinOpRestore;

    @NonNull
    public final TintImageView ivExpand;

    @NonNull
    public final TintImageView ivLibrary;

    @NonNull
    public final TintImageView ivMoreOperate;

    @NonNull
    public final TintImageView ivOpCopy;

    @NonNull
    public final TintImageView ivOpDelete;

    @NonNull
    public final TintTextView ivOpDone;

    @NonNull
    public final TintImageView ivOpExport;

    @NonNull
    public final TintImageView ivOpLock;

    @NonNull
    public final TintImageView ivOpMove;

    @NonNull
    public final TintImageView ivSelector;

    @NonNull
    public final TintImageView ivSetting;

    @NonNull
    public final TintImageView ivSortType;

    @NonNull
    public final TintConstraintLayout llDustBinOpDelete;

    @NonNull
    public final TintConstraintLayout llDustBinOpMenu;

    @NonNull
    public final TintConstraintLayout llDustBinOpRestore;

    @NonNull
    public final TintConstraintLayout llOpCopy;

    @NonNull
    public final TintConstraintLayout llOpDelete;

    @NonNull
    public final TintConstraintLayout llOpExport;

    @NonNull
    public final TintConstraintLayout llOpLock;

    @NonNull
    public final TintConstraintLayout llOpMenu;

    @NonNull
    public final TintConstraintLayout llOpMove;

    @NonNull
    public final LinearLayout llTitleLeftFunctionContainer;

    @NonNull
    public final LinearLayout llTitleRightFunctionContainer;

    @Bindable
    protected NoteListViewModel mViewModel;

    @NonNull
    public final CircularProgressIndicator progressSync;

    @NonNull
    public final TintImageView startSync;

    @NonNull
    public final TintTextView tvDustBinOpDelete;

    @NonNull
    public final TintTextView tvDustBinOpRestore;

    @NonNull
    public final TintTextView tvOpCopy;

    @NonNull
    public final TintTextView tvOpDelete;

    @NonNull
    public final TintTextView tvOpExport;

    @NonNull
    public final TintTextView tvOpLock;

    @NonNull
    public final TintTextView tvOpMove;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintTextView tvTitleCenter;

    @NonNull
    public final TintTextView tvToggleSelAll;

    public FragmentNoteTopContainerBinding(Object obj, View view, int i, Barrier barrier, Barrier barrier2, Guideline guideline, Guideline guideline2, Guideline guideline3, FrameLayout frameLayout, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintImageView tintImageView4, TintImageView tintImageView5, TintImageView tintImageView6, TintImageView tintImageView7, TintImageView tintImageView8, TintTextView tintTextView, TintImageView tintImageView9, TintImageView tintImageView10, TintImageView tintImageView11, TintImageView tintImageView12, TintImageView tintImageView13, TintImageView tintImageView14, TintConstraintLayout tintConstraintLayout, TintConstraintLayout tintConstraintLayout2, TintConstraintLayout tintConstraintLayout3, TintConstraintLayout tintConstraintLayout4, TintConstraintLayout tintConstraintLayout5, TintConstraintLayout tintConstraintLayout6, TintConstraintLayout tintConstraintLayout7, TintConstraintLayout tintConstraintLayout8, TintConstraintLayout tintConstraintLayout9, LinearLayout linearLayout, LinearLayout linearLayout2, CircularProgressIndicator circularProgressIndicator, TintImageView tintImageView15, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8, TintTextView tintTextView9, TintTextView tintTextView10, TintTextView tintTextView11) {
        super(obj, view, i);
        this.barrier = barrier;
        this.barrier1 = barrier2;
        this.guideline = guideline;
        this.guideline1 = guideline2;
        this.guideline2 = guideline3;
        this.ivCloud = frameLayout;
        this.ivDisplayType = tintImageView;
        this.ivDustBinOpDelete = tintImageView2;
        this.ivDustBinOpRestore = tintImageView3;
        this.ivExpand = tintImageView4;
        this.ivLibrary = tintImageView5;
        this.ivMoreOperate = tintImageView6;
        this.ivOpCopy = tintImageView7;
        this.ivOpDelete = tintImageView8;
        this.ivOpDone = tintTextView;
        this.ivOpExport = tintImageView9;
        this.ivOpLock = tintImageView10;
        this.ivOpMove = tintImageView11;
        this.ivSelector = tintImageView12;
        this.ivSetting = tintImageView13;
        this.ivSortType = tintImageView14;
        this.llDustBinOpDelete = tintConstraintLayout;
        this.llDustBinOpMenu = tintConstraintLayout2;
        this.llDustBinOpRestore = tintConstraintLayout3;
        this.llOpCopy = tintConstraintLayout4;
        this.llOpDelete = tintConstraintLayout5;
        this.llOpExport = tintConstraintLayout6;
        this.llOpLock = tintConstraintLayout7;
        this.llOpMenu = tintConstraintLayout8;
        this.llOpMove = tintConstraintLayout9;
        this.llTitleLeftFunctionContainer = linearLayout;
        this.llTitleRightFunctionContainer = linearLayout2;
        this.progressSync = circularProgressIndicator;
        this.startSync = tintImageView15;
        this.tvDustBinOpDelete = tintTextView2;
        this.tvDustBinOpRestore = tintTextView3;
        this.tvOpCopy = tintTextView4;
        this.tvOpDelete = tintTextView5;
        this.tvOpExport = tintTextView6;
        this.tvOpLock = tintTextView7;
        this.tvOpMove = tintTextView8;
        this.tvTitle = tintTextView9;
        this.tvTitleCenter = tintTextView10;
        this.tvToggleSelAll = tintTextView11;
    }

    public static FragmentNoteTopContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteTopContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteListViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable NoteListViewModel noteListViewModel);

    @Deprecated
    public static FragmentNoteTopContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteTopContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_top_container);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteTopContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteTopContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_top_container, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteTopContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteTopContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteTopContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_top_container, null, false, obj);
    }
}
