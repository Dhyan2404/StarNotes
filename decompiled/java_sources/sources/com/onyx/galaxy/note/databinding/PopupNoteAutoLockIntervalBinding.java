package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.wheelview.WheelView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupNoteAutoLockIntervalBinding extends ViewDataBinding {

    @NonNull
    public final WheelView wvMinute;

    public PopupNoteAutoLockIntervalBinding(Object obj, View view, int i, WheelView wheelView) {
        super(obj, view, i);
        this.wvMinute = wheelView;
    }

    public static PopupNoteAutoLockIntervalBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupNoteAutoLockIntervalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupNoteAutoLockIntervalBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupNoteAutoLockIntervalBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_note_auto_lock_interval);
    }

    @NonNull
    @Deprecated
    public static PopupNoteAutoLockIntervalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupNoteAutoLockIntervalBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_auto_lock_interval, viewGroup, z, obj);
    }

    @NonNull
    public static PopupNoteAutoLockIntervalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupNoteAutoLockIntervalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupNoteAutoLockIntervalBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_auto_lock_interval, null, false, obj);
    }
}
