package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.NotificationRichTextView;

/* loaded from: classes9.dex */
public abstract class PopupReleaseNoteBinding extends ViewDataBinding {

    @NonNull
    public final LayoutReleaseNoteCarouselBinding carouselBinding;

    @NonNull
    public final TextView confirmButton;

    @NonNull
    public final NotificationRichTextView contentText;

    @NonNull
    public final TintLinearLayout dialogRoot;

    @NonNull
    public final TintTextView titleText;

    public PopupReleaseNoteBinding(Object obj, View view, int i, LayoutReleaseNoteCarouselBinding layoutReleaseNoteCarouselBinding, TextView textView, NotificationRichTextView notificationRichTextView, TintLinearLayout tintLinearLayout, TintTextView tintTextView) {
        super(obj, view, i);
        this.carouselBinding = layoutReleaseNoteCarouselBinding;
        this.confirmButton = textView;
        this.contentText = notificationRichTextView;
        this.dialogRoot = tintLinearLayout;
        this.titleText = tintTextView;
    }

    public static PopupReleaseNoteBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupReleaseNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupReleaseNoteBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupReleaseNoteBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_release_note);
    }

    @NonNull
    @Deprecated
    public static PopupReleaseNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupReleaseNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_release_note, viewGroup, z, obj);
    }

    @NonNull
    public static PopupReleaseNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupReleaseNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupReleaseNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_release_note, null, false, obj);
    }
}
