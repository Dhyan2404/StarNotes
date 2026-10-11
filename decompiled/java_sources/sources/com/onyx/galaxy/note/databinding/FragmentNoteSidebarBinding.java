package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.SlideTintTabLayout;

/* loaded from: classes9.dex */
public abstract class FragmentNoteSidebarBinding extends ViewDataBinding {

    @NonNull
    public final TintView bottomDivider;

    @NonNull
    public final TintTabLayoutView bottomTabLayout;

    @NonNull
    public final TintImageView close;

    @NonNull
    public final TintTextView closeText;

    @NonNull
    public final MediumTextView finish;

    @NonNull
    public final SlideTintTabLayout fullscreenTabLayout;

    @NonNull
    public final TintRelativeLayout fullscreenTabLayoutContainer;

    @NonNull
    public final TintImageView ivAdd;

    @NonNull
    public final TintImageView ivThumbSize;

    @NonNull
    public final TintFrameLayout rootFragmentLayout;

    @NonNull
    public final TintRadioButton selectAll;

    @NonNull
    public final RelativeLayout selectionLayout;

    @NonNull
    public final TintTextView switchViewType;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final MediumTextView title;

    @NonNull
    public final ConstraintLayout titleLayout;

    @NonNull
    public final TintView topDivider;

    @NonNull
    public final ViewPager2 viewPager;

    public FragmentNoteSidebarBinding(Object obj, View view, int i, TintView tintView, TintTabLayoutView tintTabLayoutView, TintImageView tintImageView, TintTextView tintTextView, MediumTextView mediumTextView, SlideTintTabLayout slideTintTabLayout, TintRelativeLayout tintRelativeLayout, TintImageView tintImageView2, TintImageView tintImageView3, TintFrameLayout tintFrameLayout, TintRadioButton tintRadioButton, RelativeLayout relativeLayout, TintTextView tintTextView2, TintTabLayoutView tintTabLayoutView2, MediumTextView mediumTextView2, ConstraintLayout constraintLayout, TintView tintView2, ViewPager2 viewPager2) {
        super(obj, view, i);
        this.bottomDivider = tintView;
        this.bottomTabLayout = tintTabLayoutView;
        this.close = tintImageView;
        this.closeText = tintTextView;
        this.finish = mediumTextView;
        this.fullscreenTabLayout = slideTintTabLayout;
        this.fullscreenTabLayoutContainer = tintRelativeLayout;
        this.ivAdd = tintImageView2;
        this.ivThumbSize = tintImageView3;
        this.rootFragmentLayout = tintFrameLayout;
        this.selectAll = tintRadioButton;
        this.selectionLayout = relativeLayout;
        this.switchViewType = tintTextView2;
        this.tabLayout = tintTabLayoutView2;
        this.title = mediumTextView2;
        this.titleLayout = constraintLayout;
        this.topDivider = tintView2;
        this.viewPager = viewPager2;
    }

    public static FragmentNoteSidebarBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteSidebarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentNoteSidebarBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteSidebarBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_sidebar);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteSidebarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteSidebarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_sidebar, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteSidebarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteSidebarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteSidebarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_sidebar, null, false, obj);
    }
}
