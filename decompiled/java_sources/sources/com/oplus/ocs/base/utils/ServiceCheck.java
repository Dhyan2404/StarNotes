package com.oplus.ocs.base.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;

/* loaded from: classes9.dex */
public class ServiceCheck {

    /* renamed from: a */
    private static final String f63144a = "ServiceCheck";

    /* renamed from: a */
    public static boolean m52221a(Context context) {
        return m52222a(context, "com.coloros.ocs.opencapabilityservice") || m52222a(context, "com.oplus.ocs");
    }

    /* renamed from: b */
    public static boolean m52223b(Context context) {
        return m52224b(context, "com.coloros.ocs.opencapabilityservice") || m52224b(context, "com.oplus.ocs");
    }

    public static boolean check(Context context, String str) {
        int i;
        try {
            i = context.getPackageManager().getApplicationInfo(str, 128).uid;
        } catch (PackageManager.NameNotFoundException unused) {
            C13071a.m52229d(f63144a, String.format("%s not found", str));
            i = 0;
        }
        return i != 0;
    }

    /* renamed from: a */
    private static boolean m52222a(Context context, String str) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            return bundle != null && bundle.containsKey("ocs_internal") && bundle.getInt("ocs_internal", 0) == 1;
        } catch (PackageManager.NameNotFoundException e) {
            C13071a.m52229d(f63144a, String.format("Unable to fetch metadata from teh manifest %s", e.getMessage()));
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m52224b(Context context, String str) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(str, 128).metaData;
            if (bundle != null && bundle.containsKey("ocs_internal") && bundle.containsKey("ocs_optimize")) {
                int i = bundle.getInt("ocs_internal", 0);
                int i2 = bundle.getInt("ocs_optimize", 0);
                if (i == 1 && i2 == 1) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            C13071a.m52229d(f63144a, String.format("Unable to fetch metadata from teh manifest %s", e.getMessage()));
            return false;
        }
    }
}
