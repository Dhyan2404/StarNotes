package com.tencent.beacon.p059a.p062c;

import android.content.Context;
import androidx.annotation.Nullable;
import com.tencent.beacon.base.util.BeaconLogger;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.p059a.p061b.AbstractC14874b;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.qimei.sdk.IAsyncQimeiListener;
import com.tencent.qimei.sdk.Qimei;
import com.tencent.qimei.sdk.QimeiSDK;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.a.c.j */
/* loaded from: classes10.dex */
public class C14895j {

    /* renamed from: a */
    private static boolean f92637a = true;

    @Nullable
    /* renamed from: b */
    public static Qimei m59073b(String str) {
        Context m58997b = C14888c.m58989c().m58997b();
        if (m58997b == null) {
            return null;
        }
        C14954c.m59391a("QimeiWrapper", "getQimeiWithAppkey  appkey is %s", str);
        m59077c(m58997b, str);
        return QimeiSDK.getInstance(str).getQimei();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static boolean m59077c(Context context, String str) {
        if (!f92637a) {
            return false;
        }
        QimeiSDK.getInstance(str).setSdkName("beacon");
        return QimeiSDK.getInstance(str).init(context);
    }

    /* renamed from: d */
    private static void m59079d(String str) {
        QimeiSDK.getInstance(str).setAppVersion(C14887b.m58972a()).setChannelID(C14888c.m58989c().m58992a(str)).setLogAble(C14954c.m59397b()).addUserId("QQ", C14887b.m58978c()).addUserId("OMGID", C14888c.m58989c().m59003f());
    }

    /* renamed from: e */
    private static void m59081e(String str) {
        BeaconLogger m59387a = C14954c.m59387a();
        if (m59387a != null) {
            QimeiSDK.getInstance(str).setLogObserver(new C14893h(m59387a));
        }
    }

    /* renamed from: f */
    public static String m59082f() {
        String beaconTicket;
        return (C14969b.m59444b().m59479m() && (beaconTicket = QimeiSDK.getInstance(C14888c.m58989c().m59002e()).getBeaconTicket()) != null) ? beaconTicket : "";
    }

    /* renamed from: g */
    public static void m59083g() {
        String m59002e = C14888c.m58989c().m59002e();
        C14954c.m59391a("QimeiWrapper", "initQimei: appkey is %s , qimei init %s", m59002e, Boolean.valueOf(m59077c(C14888c.m58989c().m58997b(), m59002e)));
        QimeiSDK.getInstance(m59002e).getQimei(new C14892g());
    }

    /* renamed from: a */
    public static void m59070a(boolean z) {
        f92637a = z;
    }

    /* renamed from: a */
    public static void m59066a() {
        if (f92637a) {
            try {
                String m59002e = C14888c.m58989c().m59002e();
                m59079d(m59002e);
                m59067a(m59002e);
                m59081e(m59002e);
            } catch (Throwable th) {
                C14882j.m58961e().m58954a("203", "sdk init error! package name: " + C14887b.m58977b() + " , msg:" + th.getMessage(), th);
                C14954c.m59393a(th);
            }
        }
    }

    /* renamed from: e */
    public static String m59080e() {
        return QimeiSDK.getInstance(C14888c.m58989c().m59002e()).getSdkVersion();
    }

    /* renamed from: c */
    public static String m59075c() {
        Qimei qimei = QimeiSDK.getInstance(C14888c.m58989c().m59002e()).getQimei();
        return qimei == null ? "" : qimei.getQimei36();
    }

    @Nullable
    /* renamed from: b */
    public static Qimei m59072b(Context context, String str) {
        if (context == null || context.getApplicationContext() == null) {
            return null;
        }
        m59077c(context.getApplicationContext(), str);
        return QimeiSDK.getInstance(str).getQimei();
    }

    /* renamed from: c */
    public static void m59076c(String str) {
        C14954c.m59395b("内部版该接口无效", new Object[0]);
    }

    /* renamed from: d */
    public static Map<String, String> m59078d() {
        HashMap hashMap = new HashMap(2);
        hashMap.put("A3", m59074b());
        hashMap.put("A153", m59075c());
        return hashMap;
    }

    /* renamed from: b */
    public static String m59074b() {
        Qimei qimei = QimeiSDK.getInstance(C14888c.m58989c().m59002e()).getQimei();
        return qimei == null ? "" : qimei.getQimei16();
    }

    /* renamed from: a */
    public static void m59067a(String str) {
        QimeiSDK.getInstance(str).getStrategy().enableProcessInfo(C14969b.m59444b().m59487u());
    }

    /* renamed from: a */
    public static void m59068a(String str, Context context, IAsyncQimeiListener iAsyncQimeiListener) {
        C14959h.m59416a("context", context);
        C14959h.m59416a("ApplicationContext", context.getApplicationContext());
        AbstractC14874b.m58931a().mo58941a(new RunnableC14894i(str, context, iAsyncQimeiListener));
    }

    /* renamed from: a */
    public static synchronized void m59069a(String str, String str2) {
        synchronized (C14895j.class) {
            C14954c.m59395b("内部版该接口无效", new Object[0]);
        }
    }
}
