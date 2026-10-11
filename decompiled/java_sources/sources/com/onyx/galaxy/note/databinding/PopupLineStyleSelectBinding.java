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
public final class PopupLineStyleSelectBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57680e;

    @NonNull
    public final LayoutStrokeStyleBinding lineStyle;

    @NonNull
    public final TintTextView strokeStyleTitle;

    public PopupLineStyleSelectBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull LayoutStrokeStyleBinding layoutStrokeStyleBinding, @NonNull TintTextView tintTextView) {
        this.f57680e = tintLinearLayout;
        this.lineStyle = layoutStrokeStyleBinding;
        this.strokeStyleTitle = tintTextView;
    }

    @NonNull
    public static PopupLineStyleSelectBinding bind(@NonNull View view) {
        int i = C10651R.id.lineStyle;
        View findChildViewById = ViewBindings.findChildViewById(view, i);
        if (findChildViewById != null) {
            LayoutStrokeStyleBinding bind = LayoutStrokeStyleBinding.bind(findChildViewById);
            int i2 = C10651R.id.strokeStyleTitle;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i2);
            if (tintTextView != null) {
                return new PopupLineStyleSelectBinding((TintLinearLayout) view, bind, tintTextView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupLineStyleSelectBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupLineStyleSelectBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_line_style_select, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57680e;
    }
}
