package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class LayoutDriveTokenExpiredContainerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57335e;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TextView tvDriveTokenExpireBind;

    @NonNull
    public final TextView tvDriveTokenExpireWarn;

    public LayoutDriveTokenExpiredContainerBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintImageView tintImageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f57335e = tintConstraintLayout;
        this.ivClose = tintImageView;
        this.tvDriveTokenExpireBind = textView;
        this.tvDriveTokenExpireWarn = textView2;
    }

    @NonNull
    public static LayoutDriveTokenExpiredContainerBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_close;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.tv_drive_token_expire_bind;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C10651R.id.tv_drive_token_expire_warn;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    return new LayoutDriveTokenExpiredContainerBinding((TintConstraintLayout) view, tintImageView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutDriveTokenExpiredContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutDriveTokenExpiredContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_drive_token_expired_container, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57335e;
    }
}
