package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.aitsuki.swipe.SwipeLayout;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import de.hdodenhof.circleimageview.CircleImageView;

/* loaded from: classes9.dex */
public final class ItemLoginAccountBinding implements ViewBinding {

    @NonNull
    public final TintConstraintLayout clAccount;

    /* renamed from: e */
    @NonNull
    public final SwipeLayout f57064e;

    @NonNull
    public final ImageView ivLoginType;

    @NonNull
    public final CircleImageView ivUserAvatar;

    @NonNull
    public final ImageView ivUserRole;

    @NonNull
    public final TintTextView tvAccount;

    @NonNull
    public final TintTextView tvLastLogin;

    @NonNull
    public final TintTextView tvLastLoginAt;

    @NonNull
    public final TintTextView tvLogin;

    @NonNull
    public final TextView tvRemove;

    public ItemLoginAccountBinding(@NonNull SwipeLayout swipeLayout, @NonNull TintConstraintLayout tintConstraintLayout, @NonNull ImageView imageView, @NonNull CircleImageView circleImageView, @NonNull ImageView imageView2, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3, @NonNull TintTextView tintTextView4, @NonNull TextView textView) {
        this.f57064e = swipeLayout;
        this.clAccount = tintConstraintLayout;
        this.ivLoginType = imageView;
        this.ivUserAvatar = circleImageView;
        this.ivUserRole = imageView2;
        this.tvAccount = tintTextView;
        this.tvLastLogin = tintTextView2;
        this.tvLastLoginAt = tintTextView3;
        this.tvLogin = tintTextView4;
        this.tvRemove = textView;
    }

    @NonNull
    public static ItemLoginAccountBinding bind(@NonNull View view) {
        int i = C10651R.id.cl_account;
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) ViewBindings.findChildViewById(view, i);
        if (tintConstraintLayout != null) {
            i = C10651R.id.iv_login_type;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = C10651R.id.iv_user_avatar;
                CircleImageView circleImageView = (CircleImageView) ViewBindings.findChildViewById(view, i);
                if (circleImageView != null) {
                    i = C10651R.id.iv_user_role;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView2 != null) {
                        i = C10651R.id.tv_account;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            i = C10651R.id.tv_last_login;
                            TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView2 != null) {
                                i = C10651R.id.tv_last_login_at;
                                TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView3 != null) {
                                    i = C10651R.id.tv_login;
                                    TintTextView tintTextView4 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                    if (tintTextView4 != null) {
                                        i = C10651R.id.tv_remove;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView != null) {
                                            return new ItemLoginAccountBinding((SwipeLayout) view, tintConstraintLayout, imageView, circleImageView, imageView2, tintTextView, tintTextView2, tintTextView3, tintTextView4, textView);
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
    public static ItemLoginAccountBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemLoginAccountBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_login_account, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public SwipeLayout getRoot() {
        return this.f57064e;
    }
}
