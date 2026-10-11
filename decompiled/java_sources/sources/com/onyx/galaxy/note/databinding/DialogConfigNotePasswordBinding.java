package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ManualSwitchCompat;

/* loaded from: classes9.dex */
public abstract class DialogConfigNotePasswordBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView btnToggleConfirmPwdVisible;

    @NonNull
    public final TintImageView btnTogglePwdVisible;

    @NonNull
    public final Group groupFinger;

    @NonNull
    public final ManualSwitchCompat switchFinger;

    @NonNull
    public final TintTextView textView5;

    @NonNull
    public final TintTextView textView6;

    @NonNull
    public final MaxLengthInputTextEdit tieConfirmPwd;

    @NonNull
    public final MaxLengthInputTextEdit tiePwd;

    @NonNull
    public final TintTextInputLayoutView tilConfirmPwd;

    @NonNull
    public final TintTextInputLayoutView tilPwd;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvFingerSubTitle;

    @NonNull
    public final TintTextView tvFingerTitle;

    @NonNull
    public final TintTextView tvOk;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogConfigNotePasswordBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, Group group, ManualSwitchCompat manualSwitchCompat, TintTextView tintTextView, TintTextView tintTextView2, MaxLengthInputTextEdit maxLengthInputTextEdit, MaxLengthInputTextEdit maxLengthInputTextEdit2, TintTextInputLayoutView tintTextInputLayoutView, TintTextInputLayoutView tintTextInputLayoutView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.btnToggleConfirmPwdVisible = tintImageView;
        this.btnTogglePwdVisible = tintImageView2;
        this.groupFinger = group;
        this.switchFinger = manualSwitchCompat;
        this.textView5 = tintTextView;
        this.textView6 = tintTextView2;
        this.tieConfirmPwd = maxLengthInputTextEdit;
        this.tiePwd = maxLengthInputTextEdit2;
        this.tilConfirmPwd = tintTextInputLayoutView;
        this.tilPwd = tintTextInputLayoutView2;
        this.tvCancel = tintTextView3;
        this.tvFingerSubTitle = tintTextView4;
        this.tvFingerTitle = tintTextView5;
        this.tvOk = tintTextView6;
        this.tvTitle = mediumTextView;
    }

    public static DialogConfigNotePasswordBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogConfigNotePasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogConfigNotePasswordBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogConfigNotePasswordBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_config_note_password);
    }

    @NonNull
    @Deprecated
    public static DialogConfigNotePasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogConfigNotePasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_config_note_password, viewGroup, z, obj);
    }

    @NonNull
    public static DialogConfigNotePasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogConfigNotePasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogConfigNotePasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_config_note_password, null, false, obj);
    }
}
