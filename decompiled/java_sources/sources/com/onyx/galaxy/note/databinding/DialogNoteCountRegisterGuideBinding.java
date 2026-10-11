package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogNoteCountRegisterGuideBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout contentContainer;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintImageView ivWarning;

    @NonNull
    public final TintLinearLayout textContainer;

    @NonNull
    public final MediumTextView tvConfirm;

    @NonNull
    public final TintTextView tvContent;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final LinearLayout tvTitleContainer;

    public DialogNoteCountRegisterGuideBinding(Object obj, View view, int i, LinearLayout linearLayout, TintImageView tintImageView, TintImageView tintImageView2, TintLinearLayout tintLinearLayout, MediumTextView mediumTextView, TintTextView tintTextView, MediumTextView mediumTextView2, LinearLayout linearLayout2) {
        super(obj, view, i);
        this.contentContainer = linearLayout;
        this.ivClose = tintImageView;
        this.ivWarning = tintImageView2;
        this.textContainer = tintLinearLayout;
        this.tvConfirm = mediumTextView;
        this.tvContent = tintTextView;
        this.tvTitle = mediumTextView2;
        this.tvTitleContainer = linearLayout2;
    }

    public static DialogNoteCountRegisterGuideBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogNoteCountRegisterGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogNoteCountRegisterGuideBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogNoteCountRegisterGuideBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_note_count_register_guide);
    }

    @NonNull
    @Deprecated
    public static DialogNoteCountRegisterGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogNoteCountRegisterGuideBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_note_count_register_guide, viewGroup, z, obj);
    }

    @NonNull
    public static DialogNoteCountRegisterGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogNoteCountRegisterGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogNoteCountRegisterGuideBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_note_count_register_guide, null, false, obj);
    }
}
