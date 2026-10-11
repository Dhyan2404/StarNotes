package com.alibaba.sdk.android.oss.common.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes3.dex */
public class OSSSharedPreferences {

    /* renamed from: b */
    public static OSSSharedPreferences f12976b;

    /* renamed from: a */
    public SharedPreferences f12977a;

    public OSSSharedPreferences(Context context) {
        this.f12977a = context.getSharedPreferences("oss_android_sdk_sp", 0);
    }

    public static OSSSharedPreferences instance(Context context) {
        if (f12976b == null) {
            synchronized (OSSSharedPreferences.class) {
                if (f12976b == null) {
                    f12976b = new OSSSharedPreferences(context);
                }
            }
        }
        return f12976b;
    }

    public boolean contains(String str) {
        return this.f12977a.contains(str);
    }

    public String getStringValue(String str) {
        return this.f12977a.getString(str, "");
    }

    public void removeKey(String str) {
        SharedPreferences.Editor edit = this.f12977a.edit();
        edit.remove(str);
        edit.commit();
    }

    public void setStringValue(String str, String str2) {
        SharedPreferences.Editor edit = this.f12977a.edit();
        edit.putString(str, str2);
        edit.commit();
    }
}
