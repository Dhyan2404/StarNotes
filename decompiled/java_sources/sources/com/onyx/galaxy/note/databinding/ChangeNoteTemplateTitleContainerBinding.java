package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ChangeNoteTemplateTitleContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintRelativeLayout changeTitleLayout;

    @NonNull
    public final TintTextView ivNoteTemplateBack;

    @NonNull
    public final TintTabLayoutView templateChangeTabLayout;

    @NonNull
    public final MediumTextView tvChangeNewPageTemplateTitle;

    @NonNull
    public final MediumTextView tvTemplateApply;

    public ChangeNoteTemplateTitleContainerBinding(Object obj, View view, int i, TintRelativeLayout tintRelativeLayout, TintTextView tintTextView, TintTabLayoutView tintTabLayoutView, MediumTextView mediumTextView, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.changeTitleLayout = tintRelativeLayout;
        this.ivNoteTemplateBack = tintTextView;
        this.templateChangeTabLayout = tintTabLayoutView;
        this.tvChangeNewPageTemplateTitle = mediumTextView;
        this.tvTemplateApply = mediumTextView2;
    }

    public static ChangeNoteTemplateTitleContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ChangeNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ChangeNoteTemplateTitleContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ChangeNoteTemplateTitleContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.change_note_template_title_container);
    }

    @NonNull
    @Deprecated
    public static ChangeNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ChangeNoteTemplateTitleContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.change_note_template_title_container, viewGroup, z, obj);
    }

    @NonNull
    public static ChangeNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ChangeNoteTemplateTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ChangeNoteTemplateTitleContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.change_note_template_title_container, null, false, obj);
    }
}
