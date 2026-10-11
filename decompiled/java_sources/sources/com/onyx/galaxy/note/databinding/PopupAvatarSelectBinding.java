package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class PopupAvatarSelectBinding implements ViewBinding {

    @NonNull
    public final TintTextView cancelButton;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57556e;

    @NonNull
    public final TintTextView selectFileButton;

    @NonNull
    public final TintTextView takePhotoButton;

    public PopupAvatarSelectBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3) {
        this.f57556e = tintLinearLayout;
        this.cancelButton = tintTextView;
        this.selectFileButton = tintTextView2;
        this.takePhotoButton = tintTextView3;
    }

    @NonNull
    public static PopupAvatarSelectBinding bind(@NonNull View view) {
        int i = C10651R.id.cancelButton;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            i = C10651R.id.selectFileButton;
            TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView2 != null) {
                i = C10651R.id.takePhotoButton;
                TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView3 != null) {
                    return new PopupAvatarSelectBinding((TintLinearLayout) view, tintTextView, tintTextView2, tintTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupAvatarSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupAvatarSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_avatar_select, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57556e;
    }
}
