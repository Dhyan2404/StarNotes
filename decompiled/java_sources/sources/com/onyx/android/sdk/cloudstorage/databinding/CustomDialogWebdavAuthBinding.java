package com.onyx.android.sdk.cloudstorage.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.cloudstorage.C7153R;

/* loaded from: classes7.dex */
public abstract class CustomDialogWebdavAuthBinding extends ViewDataBinding {

    @NonNull
    public final EditText account;

    @NonNull
    public final Button buttonNegative;

    @NonNull
    public final Button buttonPositive;

    @NonNull
    public final LinearLayout contentView;

    @NonNull
    public final EditText password;

    @NonNull
    public final TextView titleBack;

    @NonNull
    public final TextView tvTip;

    @NonNull
    public final EditText urlEdit;

    public CustomDialogWebdavAuthBinding(Object obj, View view, int i, EditText editText, Button button, Button button2, LinearLayout linearLayout, EditText editText2, TextView textView, TextView textView2, EditText editText3) {
        super(obj, view, i);
        this.account = editText;
        this.buttonNegative = button;
        this.buttonPositive = button2;
        this.contentView = linearLayout;
        this.password = editText2;
        this.titleBack = textView;
        this.tvTip = textView2;
        this.urlEdit = editText3;
    }

    public static CustomDialogWebdavAuthBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static CustomDialogWebdavAuthBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static CustomDialogWebdavAuthBinding bind(@NonNull View view, @Nullable Object obj) {
        return (CustomDialogWebdavAuthBinding) ViewDataBinding.bind(obj, view, C7153R.layout.custom_dialog_webdav_auth);
    }

    @NonNull
    @Deprecated
    public static CustomDialogWebdavAuthBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (CustomDialogWebdavAuthBinding) ViewDataBinding.inflateInternal(layoutInflater, C7153R.layout.custom_dialog_webdav_auth, viewGroup, z, obj);
    }

    @NonNull
    public static CustomDialogWebdavAuthBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static CustomDialogWebdavAuthBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (CustomDialogWebdavAuthBinding) ViewDataBinding.inflateInternal(layoutInflater, C7153R.layout.custom_dialog_webdav_auth, null, false, obj);
    }
}
