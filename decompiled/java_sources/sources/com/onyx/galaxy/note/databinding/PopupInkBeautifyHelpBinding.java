package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupInkBeautifyHelpBinding extends ViewDataBinding {

    @NonNull
    public final TextView inkHintText1;

    @NonNull
    public final TextView inkHintText2;

    @NonNull
    public final TextView inkHintText3;

    @NonNull
    public final TextView inkHintText4;

    @NonNull
    public final TextView ol1;

    @NonNull
    public final TextView ol2;

    @NonNull
    public final TextView ol3;

    @NonNull
    public final TextView ol4;

    @NonNull
    public final ConstraintLayout rootLayout;

    public PopupInkBeautifyHelpBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.inkHintText1 = textView;
        this.inkHintText2 = textView2;
        this.inkHintText3 = textView3;
        this.inkHintText4 = textView4;
        this.ol1 = textView5;
        this.ol2 = textView6;
        this.ol3 = textView7;
        this.ol4 = textView8;
        this.rootLayout = constraintLayout;
    }

    public static PopupInkBeautifyHelpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupInkBeautifyHelpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupInkBeautifyHelpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupInkBeautifyHelpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_ink_beautify_help);
    }

    @NonNull
    @Deprecated
    public static PopupInkBeautifyHelpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupInkBeautifyHelpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_beautify_help, viewGroup, z, obj);
    }

    @NonNull
    public static PopupInkBeautifyHelpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupInkBeautifyHelpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupInkBeautifyHelpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_beautify_help, null, false, obj);
    }
}
