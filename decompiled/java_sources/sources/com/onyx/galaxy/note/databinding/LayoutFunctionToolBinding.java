package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.CustomShortcutsContainer;
import com.onyx.galaxy.note.editor.view.PalmCollectionImageView;
import com.onyx.galaxy.note.editor.view.custom.TickSeekBar;
import com.onyx.galaxy.note.editor.viewmodel.AudioViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutFunctionToolBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout autoLayout;

    @NonNull
    public final TintImageView btnAudioClose;

    @NonNull
    public final TintImageView btnAudioMore;

    @NonNull
    public final TintImageView btnAudioPlay;

    @NonNull
    public final PalmCollectionImageView ivBack;

    @NonNull
    public final PalmCollectionImageView ivCustomShortcut;

    @NonNull
    public final PalmCollectionImageView ivSyncStatus;

    @NonNull
    public final PalmCollectionImageView ivTabIndicator;

    @NonNull
    public final FrameLayout ivTitleCloud;

    @Bindable
    protected AudioViewModel mAudioViewModel;

    @NonNull
    public final FrameLayout playLayout;

    @NonNull
    public final TintTextView playProgressTime;

    @NonNull
    public final CircularProgressIndicator progressSync;

    @NonNull
    public final TickSeekBar seekBar;

    @NonNull
    public final CustomShortcutsContainer titleLayout;

    @NonNull
    public final TintTextView tvPlaySpeed;

    public LayoutFunctionToolBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, PalmCollectionImageView palmCollectionImageView, PalmCollectionImageView palmCollectionImageView2, PalmCollectionImageView palmCollectionImageView3, PalmCollectionImageView palmCollectionImageView4, FrameLayout frameLayout, FrameLayout frameLayout2, TintTextView tintTextView, CircularProgressIndicator circularProgressIndicator, TickSeekBar tickSeekBar, CustomShortcutsContainer customShortcutsContainer, TintTextView tintTextView2) {
        super(obj, view, i);
        this.autoLayout = tintConstraintLayout;
        this.btnAudioClose = tintImageView;
        this.btnAudioMore = tintImageView2;
        this.btnAudioPlay = tintImageView3;
        this.ivBack = palmCollectionImageView;
        this.ivCustomShortcut = palmCollectionImageView2;
        this.ivSyncStatus = palmCollectionImageView3;
        this.ivTabIndicator = palmCollectionImageView4;
        this.ivTitleCloud = frameLayout;
        this.playLayout = frameLayout2;
        this.playProgressTime = tintTextView;
        this.progressSync = circularProgressIndicator;
        this.seekBar = tickSeekBar;
        this.titleLayout = customShortcutsContainer;
        this.tvPlaySpeed = tintTextView2;
    }

    public static LayoutFunctionToolBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutFunctionToolBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AudioViewModel getAudioViewModel() {
        return this.mAudioViewModel;
    }

    public abstract void setAudioViewModel(@Nullable AudioViewModel audioViewModel);

    @Deprecated
    public static LayoutFunctionToolBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutFunctionToolBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_function_tool);
    }

    @NonNull
    @Deprecated
    public static LayoutFunctionToolBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutFunctionToolBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_function_tool, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutFunctionToolBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutFunctionToolBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutFunctionToolBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_function_tool, null, false, obj);
    }
}
