package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemDriveFileListBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f56997e;

    /* renamed from: iv */
    @NonNull
    public final ImageView f56998iv;

    @NonNull
    public final TintImageView ivBackupSelect;

    @NonNull
    public final TintTextView tvBackupName;

    @NonNull
    public final TintTextView tvSpace;

    @NonNull
    public final TintTextView tvTime;

    public ItemDriveFileListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3) {
        this.f56997e = constraintLayout;
        this.f56998iv = imageView;
        this.ivBackupSelect = tintImageView;
        this.tvBackupName = tintTextView;
        this.tvSpace = tintTextView2;
        this.tvTime = tintTextView3;
    }

    @NonNull
    public static ItemDriveFileListBinding bind(@NonNull View view) {
        int i = C10651R.id.f53352iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C10651R.id.iv_backup_select;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.tv_backup_name;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    i = C10651R.id.tv_space;
                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView2 != null) {
                        i = C10651R.id.tv_time;
                        TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView3 != null) {
                            return new ItemDriveFileListBinding((ConstraintLayout) view, imageView, tintImageView, tintTextView, tintTextView2, tintTextView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemDriveFileListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemDriveFileListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_drive_file_list, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f56997e;
    }
}
