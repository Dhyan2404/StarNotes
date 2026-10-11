package com.tencent.qmsp.oaid2;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

/* renamed from: com.tencent.qmsp.oaid2.c0 */
/* loaded from: classes10.dex */
public class C16867c0 {

    /* renamed from: a */
    public static final Uri f93713a = Uri.parse("content://cn.nubia.identity/identity");

    /* renamed from: a */
    public static String m60155a(Context context, String str) {
        String str2 = null;
        try {
            ContentProviderClient acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(f93713a);
            Bundle call = acquireUnstableContentProviderClient.call("getAAID", str, null);
            acquireUnstableContentProviderClient.close();
            if (call.getInt("code", -1) == 0) {
                str2 = call.getString("id");
                C16866c.m60154c("NubiaLog succeed:" + str2);
            } else {
                str2 = call.getString("message");
                C16866c.m60154c("NubiaLog failed:" + str2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }

    /* renamed from: b */
    public static String m60157b(Context context) {
        String str = null;
        try {
            ContentProviderClient acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(f93713a);
            Bundle call = acquireUnstableContentProviderClient.call("getOAID", null, null);
            acquireUnstableContentProviderClient.close();
            if (call.getInt("code", -1) == 0) {
                str = call.getString("id");
                C16866c.m60154c("NubiaLog succeed:" + str);
            } else {
                str = call.getString("message");
                C16866c.m60154c("NubiaLog failed:" + str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    /* renamed from: a */
    public static boolean m60156a(Context context) {
        try {
            ContentProviderClient acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(f93713a);
            Bundle call = acquireUnstableContentProviderClient.call("isSupport", null, null);
            acquireUnstableContentProviderClient.close();
            if (call.getInt("code", -1) == 0) {
                C16866c.m60154c("NubiaLog succeed");
                return call.getBoolean("issupport", true);
            }
            C16866c.m60154c("NubiaLog failed:" + call.getString("message"));
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
