package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.text.Editable;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.emoji2.text.SpannableBuilder;

/* loaded from: classes3.dex */
public final class sof extends Editable.Factory {

    /* renamed from: a */
    public static final Object f84387a = new Object();

    /* renamed from: b */
    @GuardedBy("INSTANCE_LOCK")
    public static volatile Editable.Factory f84388b;

    /* renamed from: c */
    @Nullable
    public static Class<?> f84389c;

    @SuppressLint({"PrivateApi"})
    public sof() {
        try {
            f84389c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, sof.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    public static Editable.Factory getInstance() {
        if (f84388b == null) {
            synchronized (f84387a) {
                if (f84388b == null) {
                    f84388b = new sof();
                }
            }
        }
        return f84388b;
    }

    @Override // android.text.Editable.Factory
    public Editable newEditable(@NonNull CharSequence charSequence) {
        Class<?> cls = f84389c;
        return cls != null ? SpannableBuilder.create(cls, charSequence) : super.newEditable(charSequence);
    }
}
