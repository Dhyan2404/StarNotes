package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemTextLabelBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintTextView f57230e;

    @NonNull
    public final TintTextView label;

    public ItemTextLabelBinding(@NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2) {
        this.f57230e = tintTextView;
        this.label = tintTextView2;
    }

    @NonNull
    public static ItemTextLabelBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TintTextView tintTextView = (TintTextView) view;
        return new ItemTextLabelBinding(tintTextView, tintTextView);
    }

    @NonNull
    public static ItemTextLabelBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTextLabelBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_text_label, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintTextView getRoot() {
        return this.f57230e;
    }
}
