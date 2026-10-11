package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import de.hdodenhof.circleimageview.CircleImageView;

/* loaded from: classes9.dex */
public final class ItemFilterHeaderBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57022e;

    @NonNull
    public final Space guideRole;

    @NonNull
    public final TintImageView ivExpand;

    @NonNull
    public final TintImageView ivLibrary;

    @NonNull
    public final View ivNotifyUnread;

    @NonNull
    public final TintImageView ivSetting;

    @NonNull
    public final CircleImageView ivUserIcon;

    @NonNull
    public final TintImageView ivUserRole;

    public ItemFilterHeaderBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull Space space, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull View view, @NonNull TintImageView tintImageView3, @NonNull CircleImageView circleImageView, @NonNull TintImageView tintImageView4) {
        this.f57022e = tintConstraintLayout;
        this.guideRole = space;
        this.ivExpand = tintImageView;
        this.ivLibrary = tintImageView2;
        this.ivNotifyUnread = view;
        this.ivSetting = tintImageView3;
        this.ivUserIcon = circleImageView;
        this.ivUserRole = tintImageView4;
    }

    @NonNull
    public static ItemFilterHeaderBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.guide_role;
        Space space = (Space) ViewBindings.findChildViewById(view, i);
        if (space != null) {
            i = C10651R.id.iv_expand;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.iv_library;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.iv_notify_unread))) != null) {
                    i = C10651R.id.iv_setting;
                    TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView3 != null) {
                        i = C10651R.id.iv_user_icon;
                        CircleImageView circleImageView = (CircleImageView) ViewBindings.findChildViewById(view, i);
                        if (circleImageView != null) {
                            i = C10651R.id.iv_user_role;
                            TintImageView tintImageView4 = (TintImageView) ViewBindings.findChildViewById(view, i);
                            if (tintImageView4 != null) {
                                return new ItemFilterHeaderBinding((TintConstraintLayout) view, space, tintImageView, tintImageView2, findChildViewById, tintImageView3, circleImageView, tintImageView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemFilterHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_header, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57022e;
    }
}
