package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.PalmCollectionSwitch;

/* loaded from: classes9.dex */
public final class IncludeSettingsPrivacyContainerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f56921e;

    @NonNull
    public final TintConstraintLayout noteAutoLockContainer;

    @NonNull
    public final TintFrameLayout noteChangeNotePwdContainer;

    @NonNull
    public final TintFrameLayout noteDeleteNotePwdContainer;

    @NonNull
    public final TintConstraintLayout noteLockFingerContainer;

    @NonNull
    public final PalmCollectionSwitch switchNoteFinger;

    @NonNull
    public final TintTextView tvChangeNotePassword;

    @NonNull
    public final TintTextView tvDeleteNotePassword;

    @NonNull
    public final TintTextView tvForget;

    @NonNull
    public final TintTextView tvNoteEncryptionHint;

    @NonNull
    public final TintTextView tvNoteFinger;

    @NonNull
    public final TintTextView tvNoteFingerHint;

    @NonNull
    public final TintTextView tvNoteIdleAutoLockInterval;

    @NonNull
    public final View vNoteFinger;

    public IncludeSettingsPrivacyContainerBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintFrameLayout tintFrameLayout, @NonNull TintFrameLayout tintFrameLayout2, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull PalmCollectionSwitch palmCollectionSwitch, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3, @NonNull TintTextView tintTextView4, @NonNull TintTextView tintTextView5, @NonNull TintTextView tintTextView6, @NonNull TintTextView tintTextView7, @NonNull View view) {
        this.f56921e = tintLinearLayout;
        this.noteAutoLockContainer = tintConstraintLayout;
        this.noteChangeNotePwdContainer = tintFrameLayout;
        this.noteDeleteNotePwdContainer = tintFrameLayout2;
        this.noteLockFingerContainer = tintConstraintLayout2;
        this.switchNoteFinger = palmCollectionSwitch;
        this.tvChangeNotePassword = tintTextView;
        this.tvDeleteNotePassword = tintTextView2;
        this.tvForget = tintTextView3;
        this.tvNoteEncryptionHint = tintTextView4;
        this.tvNoteFinger = tintTextView5;
        this.tvNoteFingerHint = tintTextView6;
        this.tvNoteIdleAutoLockInterval = tintTextView7;
        this.vNoteFinger = view;
    }

    @NonNull
    public static IncludeSettingsPrivacyContainerBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.note_auto_lock_container;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (tintConstraintLayout != null) {
            i = C10651R.id.note_change_note_pwd_container;
            TintFrameLayout tintFrameLayout = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
            if (tintFrameLayout != null) {
                i = C10651R.id.note_delete_note_pwd_container;
                TintFrameLayout tintFrameLayout2 = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
                if (tintFrameLayout2 != null) {
                    i = C10651R.id.note_lock_finger_container;
                    TintConstraintLayout tintConstraintLayout2 = (TintConstraintLayout) ViewBindings.findChildViewById(view, i);
                    if (tintConstraintLayout2 != null) {
                        i = C10651R.id.switch_note_finger;
                        PalmCollectionSwitch palmCollectionSwitch = (PalmCollectionSwitch) ViewBindings.findChildViewById(view, i);
                        if (palmCollectionSwitch != null) {
                            i = C10651R.id.tv_change_note_password;
                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView != null) {
                                i = C10651R.id.tv_delete_note_password;
                                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView2 != null) {
                                    i = C10651R.id.tv_forget;
                                    TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                    if (tintTextView3 != null) {
                                        i = C10651R.id.tv_note_encryption_hint;
                                        TintTextView tintTextView4 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView4 != null) {
                                            i = C10651R.id.tv_note_finger;
                                            TintTextView tintTextView5 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                            if (tintTextView5 != null) {
                                                i = C10651R.id.tv_note_finger_hint;
                                                TintTextView tintTextView6 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                if (tintTextView6 != null) {
                                                    i = C10651R.id.tv_note_idle_auto_lock_interval;
                                                    TintTextView tintTextView7 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                    if (tintTextView7 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.v_note_finger))) != null) {
                                                        return new IncludeSettingsPrivacyContainerBinding((TintLinearLayout) view, tintConstraintLayout, tintFrameLayout, tintFrameLayout2, tintConstraintLayout2, palmCollectionSwitch, tintTextView, tintTextView2, tintTextView3, tintTextView4, tintTextView5, tintTextView6, tintTextView7, findChildViewById);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static IncludeSettingsPrivacyContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static IncludeSettingsPrivacyContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.include_settings_privacy_container, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f56921e;
    }
}
