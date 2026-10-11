package com.onyx.android.sdk.matisse.internal.entity;

import android.content.Context;
import android.widget.Toast;
import androidx.fragment.app.FragmentActivity;
import com.onyx.android.sdk.matisse.internal.p030ui.widget.IncapableDialog;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes7.dex */
public class IncapableCause {
    public static final int DIALOG = 1;
    public static final int NONE = 2;
    public static final int TOAST = 0;

    /* renamed from: a */
    public int f42700a;

    /* renamed from: b */
    public String f42701b;

    /* renamed from: c */
    public String f42702c;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes7.dex */
    public @interface Form {
    }

    public IncapableCause(String str) {
        this.f42700a = 0;
        this.f42702c = str;
    }

    public static void handleCause(Context context, IncapableCause incapableCause) {
        if (incapableCause == null) {
            return;
        }
        int i = incapableCause.f42700a;
        if (i == 1) {
            IncapableDialog.newInstance(incapableCause.f42701b, incapableCause.f42702c).show(((FragmentActivity) context).getSupportFragmentManager(), IncapableDialog.class.getName());
        } else if (i != 2) {
            Toast.makeText(context, incapableCause.f42702c, 0).show();
        }
    }

    public IncapableCause(String str, String str2) {
        this.f42700a = 0;
        this.f42701b = str;
        this.f42702c = str2;
    }

    public IncapableCause(int i, String str) {
        this.f42700a = i;
        this.f42702c = str;
    }

    public IncapableCause(int i, String str, String str2) {
        this.f42700a = i;
        this.f42701b = str;
        this.f42702c = str2;
    }
}
