package com.permissionx.guolindev.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.permissionx.guolindev.C13081R;

/* loaded from: classes9.dex */
public final class PermissionxDefaultDialogLayoutBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f63214e;

    @NonNull
    public final TextView messageText;

    @NonNull
    public final Button negativeBtn;

    @NonNull
    public final LinearLayout negativeLayout;

    @NonNull
    public final LinearLayout permissionsLayout;

    @NonNull
    public final Button positiveBtn;

    @NonNull
    public final LinearLayout positiveLayout;

    public PermissionxDefaultDialogLayoutBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull Button button2, @NonNull LinearLayout linearLayout4) {
        this.f63214e = linearLayout;
        this.messageText = textView;
        this.negativeBtn = button;
        this.negativeLayout = linearLayout2;
        this.permissionsLayout = linearLayout3;
        this.positiveBtn = button2;
        this.positiveLayout = linearLayout4;
    }

    @NonNull
    public static PermissionxDefaultDialogLayoutBinding bind(@NonNull View view) {
        int i = C13081R.id.messageText;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = C13081R.id.negativeBtn;
            Button button = (Button) ViewBindings.findChildViewById(view, i);
            if (button != null) {
                i = C13081R.id.negativeLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout != null) {
                    i = C13081R.id.permissionsLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout2 != null) {
                        i = C13081R.id.positiveBtn;
                        Button button2 = (Button) ViewBindings.findChildViewById(view, i);
                        if (button2 != null) {
                            i = C13081R.id.positiveLayout;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout3 != null) {
                                return new PermissionxDefaultDialogLayoutBinding((LinearLayout) view, textView, button, linearLayout, linearLayout2, button2, linearLayout3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PermissionxDefaultDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PermissionxDefaultDialogLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C13081R.layout.permissionx_default_dialog_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f63214e;
    }
}
