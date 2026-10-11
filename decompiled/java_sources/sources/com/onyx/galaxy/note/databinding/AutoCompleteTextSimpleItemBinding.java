package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class AutoCompleteTextSimpleItemBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintFrameLayout f56288e;

    /* renamed from: tv */
    @NonNull
    public final TintTextView f56289tv;

    public AutoCompleteTextSimpleItemBinding(@NonNull TintFrameLayout tintFrameLayout, @NonNull TintTextView tintTextView) {
        this.f56288e = tintFrameLayout;
        this.f56289tv = tintTextView;
    }

    @NonNull
    public static AutoCompleteTextSimpleItemBinding bind(@NonNull View view) {
        int i = C10651R.id.f53356tv;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            return new AutoCompleteTextSimpleItemBinding((TintFrameLayout) view, tintTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static AutoCompleteTextSimpleItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static AutoCompleteTextSimpleItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.auto_complete_text_simple_item, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintFrameLayout getRoot() {
        return this.f56288e;
    }
}
