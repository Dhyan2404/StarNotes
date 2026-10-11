package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupInsertPageBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addNotePages;

    @NonNull
    public final TintRadioButton afterCurrentPageRadio;

    @NonNull
    public final TintTextView importFile;

    @NonNull
    public final TintTextView importPic;

    @NonNull
    public final TintRadioButton lastPageRadio;

    @NonNull
    public final TintTextView moreTemplate;

    @NonNull
    public final TintTextView pastePage;

    @NonNull
    public final TintRadioButton prevCurrentPageRadio;

    @NonNull
    public final RadioGroup radioGroup;

    @NonNull
    public final RecyclerView recyclerView;

    @NonNull
    public final TintTextView scanFile;

    @NonNull
    public final TintTextView takePhoto;

    public PopupInsertPageBinding(Object obj, View view, int i, TintTextView tintTextView, TintRadioButton tintRadioButton, TintTextView tintTextView2, TintTextView tintTextView3, TintRadioButton tintRadioButton2, TintTextView tintTextView4, TintTextView tintTextView5, TintRadioButton tintRadioButton3, RadioGroup radioGroup, RecyclerView recyclerView, TintTextView tintTextView6, TintTextView tintTextView7) {
        super(obj, view, i);
        this.addNotePages = tintTextView;
        this.afterCurrentPageRadio = tintRadioButton;
        this.importFile = tintTextView2;
        this.importPic = tintTextView3;
        this.lastPageRadio = tintRadioButton2;
        this.moreTemplate = tintTextView4;
        this.pastePage = tintTextView5;
        this.prevCurrentPageRadio = tintRadioButton3;
        this.radioGroup = radioGroup;
        this.recyclerView = recyclerView;
        this.scanFile = tintTextView6;
        this.takePhoto = tintTextView7;
    }

    public static PopupInsertPageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupInsertPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupInsertPageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupInsertPageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_insert_page);
    }

    @NonNull
    @Deprecated
    public static PopupInsertPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupInsertPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_insert_page, viewGroup, z, obj);
    }

    @NonNull
    public static PopupInsertPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupInsertPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupInsertPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_insert_page, null, false, obj);
    }
}
