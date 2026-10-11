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
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.DynamicImageView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class CreateNoteTemplateTitleContainerBinding extends ViewDataBinding {

    @NonNull
    public final LayoutCategoryTitleContainerBinding categoryContainer;

    @NonNull
    public final ChangeNoteTemplateTitleContainerBinding changeTitleContainer;

    @NonNull
    public final TintConstraintLayout clTitleContainerBg;

    @NonNull
    public final DynamicImageView createTitleDynamicBg;

    @NonNull
    public final FrameLayout flTopContainer;

    @NonNull
    public final LinearLayout headerContainer;

    @NonNull
    public final TintTextView ivNoteTemplateBack;

    @NonNull
    public final FrameLayout llTopContainer;

    @NonNull
    public final LayoutTemplateTitleOrientationContainerBinding templateTitleOrientationContainer;

    @NonNull
    public final MediumTextView tvTemplateCreate;

    @NonNull
    public final MediumTextView tvTitle;

    public CreateNoteTemplateTitleContainerBinding(Object obj, View view, int i, LayoutCategoryTitleContainerBinding layoutCategoryTitleContainerBinding, ChangeNoteTemplateTitleContainerBinding changeNoteTemplateTitleContainerBinding, TintConstraintLayout tintConstraintLayout, DynamicImageView dynamicImageView, FrameLayout frameLayout, LinearLayout linearLayout, TintTextView tintTextView, FrameLayout frameLayout2, LayoutTemplateTitleOrientationContainerBinding layoutTemplateTitleOrientationContainerBinding, MediumTextView mediumTextView, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.categoryContainer = layoutCategoryTitleContainerBinding;
        this.changeTitleContainer = changeNoteTemplateTitleContainerBinding;
        this.clTitleContainerBg = tintConstraintLayout;
        this.createTitleDynamicBg = dynamicImageView;
        this.flTopContainer = frameLayout;
        this.headerContainer = linearLayout;
        this.ivNoteTemplateBack = tintTextView;
        this.llTopContainer = frameLayout2;
        this.templateTitleOrientationContainer = layoutTemplateTitleOrientationContainerBinding;
        this.tvTemplateCreate = mediumTextView;
        this.tvTitle = mediumTextView2;
    }

    public static CreateNoteTemplateTitleContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static CreateNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CreateNoteTemplateTitleContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (CreateNoteTemplateTitleContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.create_note_template_title_container);
    }

    @NonNull
    @Deprecated
    public static CreateNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (CreateNoteTemplateTitleContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.create_note_template_title_container, viewGroup, z, obj);
    }

    @NonNull
    public static CreateNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static CreateNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (CreateNoteTemplateTitleContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.create_note_template_title_container, null, false, obj);
    }
}
