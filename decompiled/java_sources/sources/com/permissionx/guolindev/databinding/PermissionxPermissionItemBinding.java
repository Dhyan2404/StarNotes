package com.permissionx.guolindev.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.permissionx.guolindev.C13081R;

/* loaded from: classes9.dex */
public final class PermissionxPermissionItemBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f63215e;

    @NonNull
    public final ImageView permissionIcon;

    @NonNull
    public final TextView permissionText;

    public PermissionxPermissionItemBinding(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f63215e = linearLayout;
        this.permissionIcon = imageView;
        this.permissionText = textView;
    }

    @NonNull
    public static PermissionxPermissionItemBinding bind(@NonNull View view) {
        int i = C13081R.id.permissionIcon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C13081R.id.permissionText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new PermissionxPermissionItemBinding((LinearLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PermissionxPermissionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PermissionxPermissionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C13081R.layout.permissionx_permission_item, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f63215e;
    }
}
