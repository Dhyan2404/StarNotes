package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxWidthLinearLayout;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;

/* loaded from: classes9.dex */
public abstract class LayoutTemplateTitleOrientationContainerBinding extends ViewDataBinding {

    @NonNull
    public final RecyclerView clTagContainer;

    @NonNull
    public final TouchModeMaxLengthEditText etNoteName;

    @NonNull
    public final TintImageView ivBenchMarkAdd;

    @NonNull
    public final TintImageView ivFormatArrow;

    @NonNull
    public final TemplateThumbnailView ivTitleThumbCover;

    @NonNull
    public final TemplateThumbnailView ivTitleThumbPaper;

    @NonNull
    public final TintConstraintLayout llCoverContainer;

    @NonNull
    public final LinearLayout llNoteSettingContainer;

    @NonNull
    public final LinearLayout llOrientationSizeContainer;

    @NonNull
    public final TintConstraintLayout llPaperContainer;

    @NonNull
    public final MaxWidthLinearLayout llParamsContainer;

    @NonNull
    public final FrameLayout llParamsCoverContainer;

    @NonNull
    public final FrameLayout llParamsFormatContainer;

    @NonNull
    public final LinearLayout llParamsTagContainer;

    @NonNull
    public final TintSwitchCompat switchCover;

    @NonNull
    public final LinearLayout templateCreateLayout;

    @NonNull
    public final TintTextView tvBenchMarkTitle;

    @NonNull
    public final MediumTextView tvCoverType;

    @NonNull
    public final TintTextView tvOrientationSize;

    @NonNull
    public final MediumTextView tvPaperType;

    @NonNull
    public final TintView viewParamsCoverDivider;

    @NonNull
    public final View viewParamsTagDivider;

    public LayoutTemplateTitleOrientationContainerBinding(Object obj, View view, int i, RecyclerView recyclerView, TouchModeMaxLengthEditText touchModeMaxLengthEditText, TintImageView tintImageView, TintImageView tintImageView2, TemplateThumbnailView templateThumbnailView, TemplateThumbnailView templateThumbnailView2, TintConstraintLayout tintConstraintLayout, LinearLayout linearLayout, LinearLayout linearLayout2, TintConstraintLayout tintConstraintLayout2, MaxWidthLinearLayout maxWidthLinearLayout, FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout3, TintSwitchCompat tintSwitchCompat, LinearLayout linearLayout4, TintTextView tintTextView, MediumTextView mediumTextView, TintTextView tintTextView2, MediumTextView mediumTextView2, TintView tintView, View view2) {
        super(obj, view, i);
        this.clTagContainer = recyclerView;
        this.etNoteName = touchModeMaxLengthEditText;
        this.ivBenchMarkAdd = tintImageView;
        this.ivFormatArrow = tintImageView2;
        this.ivTitleThumbCover = templateThumbnailView;
        this.ivTitleThumbPaper = templateThumbnailView2;
        this.llCoverContainer = tintConstraintLayout;
        this.llNoteSettingContainer = linearLayout;
        this.llOrientationSizeContainer = linearLayout2;
        this.llPaperContainer = tintConstraintLayout2;
        this.llParamsContainer = maxWidthLinearLayout;
        this.llParamsCoverContainer = frameLayout;
        this.llParamsFormatContainer = frameLayout2;
        this.llParamsTagContainer = linearLayout3;
        this.switchCover = tintSwitchCompat;
        this.templateCreateLayout = linearLayout4;
        this.tvBenchMarkTitle = tintTextView;
        this.tvCoverType = mediumTextView;
        this.tvOrientationSize = tintTextView2;
        this.tvPaperType = mediumTextView2;
        this.viewParamsCoverDivider = tintView;
        this.viewParamsTagDivider = view2;
    }

    public static LayoutTemplateTitleOrientationContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutTemplateTitleOrientationContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutTemplateTitleOrientationContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutTemplateTitleOrientationContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_template_title_orientation_container);
    }

    @NonNull
    @Deprecated
    public static LayoutTemplateTitleOrientationContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutTemplateTitleOrientationContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_template_title_orientation_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutTemplateTitleOrientationContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutTemplateTitleOrientationContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutTemplateTitleOrientationContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_template_title_orientation_container, null, false, obj);
    }
}
