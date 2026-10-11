package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.exoplayer2.p008ui.DefaultTimeBar;
import com.google.android.exoplayer2.p008ui.PlayerView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemFeatureResourceBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout clyControl;

    @NonNull
    public final FrameLayout flyPlayer;

    @NonNull
    public final TintImageView ivPlay;

    @NonNull
    public final TintImageView ivPlayerVolume;

    @NonNull
    public final TintImageView ivResource;

    @NonNull
    public final DefaultTimeBar playerTimeBar;

    @NonNull
    public final PlayerView playerView;

    @NonNull
    public final TintTextView tvDuration;

    public ItemFeatureResourceBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, FrameLayout frameLayout, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, DefaultTimeBar defaultTimeBar, PlayerView playerView, TintTextView tintTextView) {
        super(obj, view, i);
        this.clyControl = tintConstraintLayout;
        this.flyPlayer = frameLayout;
        this.ivPlay = tintImageView;
        this.ivPlayerVolume = tintImageView2;
        this.ivResource = tintImageView3;
        this.playerTimeBar = defaultTimeBar;
        this.playerView = playerView;
        this.tvDuration = tintTextView;
    }

    public static ItemFeatureResourceBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemFeatureResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemFeatureResourceBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemFeatureResourceBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_feature_resource);
    }

    @NonNull
    @Deprecated
    public static ItemFeatureResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemFeatureResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_feature_resource, viewGroup, z, obj);
    }

    @NonNull
    public static ItemFeatureResourceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemFeatureResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemFeatureResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_feature_resource, null, false, obj);
    }
}
