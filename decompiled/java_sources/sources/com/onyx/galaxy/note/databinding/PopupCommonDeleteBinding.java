package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class PopupCommonDeleteBinding implements ViewBinding {

    @NonNull
    public final TextView deleteButton;

    /* renamed from: e */
    @NonNull
    public final TextView f57566e;

    public PopupCommonDeleteBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.f57566e = textView;
        this.deleteButton = textView2;
    }

    @NonNull
    public static PopupCommonDeleteBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new PopupCommonDeleteBinding(textView, textView);
    }

    @NonNull
    public static PopupCommonDeleteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupCommonDeleteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_common_delete, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TextView getRoot() {
        return this.f57566e;
    }
}
