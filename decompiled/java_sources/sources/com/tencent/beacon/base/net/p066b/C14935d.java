package com.tencent.beacon.base.net.p066b;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.firebase.installations.local.IidStore;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.tencent.beacon.base.util.C14953b;
import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.base.util.C14959h;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import com.tencent.beacon.p059a.p062c.C14891f;
import com.tencent.beacon.p073d.C14969b;
import com.tencent.beacon.p073d.C14975h;
import com.tencent.beacon.pack.RequestPackage;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.p110sf.saxon.query.XQueryParser;
import org.scribe.model.ParameterList;

/* renamed from: com.tencent.beacon.base.net.b.d */
/* loaded from: classes10.dex */
public final class C14935d {

    /* renamed from: a */
    private static final Map<String, String> f92856a;

    /* renamed from: b */
    private static final Map<String, String> f92857b;

    static {
        HashMap hashMap = new HashMap(8);
        f92856a = hashMap;
        HashMap hashMap2 = new HashMap(7);
        f92857b = hashMap2;
        hashMap.put("wup_version", XQueryParser.XQUERY30);
        hashMap.put("TYPE_COMPRESS", String.valueOf(2));
        hashMap.put("encr_type", "rsapost");
        hashMap.put("Content-Type", "jce");
        hashMap.put("zip_type", String.valueOf(C14969b.m59444b().m59448a()));
        hashMap2.putAll(hashMap);
    }

    /* renamed from: a */
    public static void m59297a(Map<String, List<String>> map) {
        List<String> list;
        if (map == null) {
            return;
        }
        try {
            if (map.containsKey("sid") && (list = map.get("sid")) != null) {
                m59303c(String.valueOf(list.get(0)));
            }
            if (map.containsKey("Set-Cookie")) {
                for (String str : map.get("Set-Cookie")) {
                    if (str.contains("tgw_l7_route")) {
                        m59301b(str.substring(0, str.indexOf(59)));
                    }
                }
            }
        } catch (Throwable th) {
            String str2 = "parse http header fail message: " + th.getMessage();
            C14954c.m59395b(str2, new Object[0]);
            C14882j.m58961e().m58953a("457", str2);
        }
    }

    /* renamed from: b */
    private static void m59301b(String str) {
        if (str == null) {
            return;
        }
        C14954c.m59392a("[BeaconNet]", "update ias cookie: %s", str);
        C14975h.m59499d().m59506c(str);
    }

    /* renamed from: c */
    public static void m59304c(Map<String, String> map) {
        if (map == null) {
            return;
        }
        try {
            if (map.containsKey("sid")) {
                m59303c(String.valueOf(map.get("sid")));
            }
        } catch (Throwable th) {
            String str = "parse socket header fail message: " + th.getMessage();
            C14954c.m59395b(str, new Object[0]);
            C14882j.m58961e().m58953a("407", str);
        }
    }

    /* renamed from: d */
    public static boolean m59305d() {
        NetworkInfo m59299b = m59299b();
        return m59299b != null && m59299b.isConnected();
    }

    /* renamed from: e */
    public static synchronized Map<String, String> m59306e() {
        Map<String, String> map;
        synchronized (C14935d.class) {
            map = f92857b;
            map.put("is_quic", "true");
            map.put("version", WechatLoadWebWidget.ACTION_SYMBOL_REPLACE);
            map.put("zip_type", String.valueOf(2));
        }
        return map;
    }

    /* renamed from: f */
    private static void m59307f() {
        C14975h m59499d = C14975h.m59499d();
        if (m59499d == null) {
            return;
        }
        String m59503b = m59499d.m59503b();
        if (m59503b != null) {
            f92856a.put("Cookie", m59503b);
        } else {
            C14954c.m59392a("no iasCookie in http header!", new Object[0]);
            C14882j.m58961e().m58953a("519", "no iasCookie in http header!");
        }
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    /* renamed from: b */
    public static NetworkInfo m59299b() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) C14888c.m58989c().m58997b().getSystemService("connectivity");
            if (connectivityManager == null) {
                return null;
            }
            return connectivityManager.getActiveNetworkInfo();
        } catch (Throwable th) {
            C14954c.m59393a(th);
            return null;
        }
    }

    /* renamed from: b */
    public static String m59300b(Map<String, String> map) {
        if (map == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key.trim().length() > 0 && m59298a(key)) {
                String trim = key.trim();
                sb.append(ParameterList.f115951c);
                sb.append(trim.replace(IidStore.f35940g, "%7C").replace(ParameterList.f115951c, "%26").replace("=", "%3D"));
                sb.append("=");
                String value = entry.getValue();
                if (value != null) {
                    sb.append(value.trim().replace('\n', ' ').replace('\r', ' ').replace(IidStore.f35940g, "%7C").replace(ParameterList.f115951c, "%26").replace("=", "%3D"));
                }
            } else {
                C14954c.m59403e("[core] '%s' should be ASCII code in 32-126!", key);
            }
        }
        return sb.length() > 0 ? sb.substring(1) : "";
    }

    /* renamed from: c */
    private static void m59303c(String str) {
        if (str == null) {
            return;
        }
        C14954c.m59391a("[BeaconNet]", "update strategy sid: %s", str);
        C14975h.m59499d().m59504b(str);
    }

    /* renamed from: c */
    public static String m59302c() {
        NetworkInfo m59299b = m59299b();
        if (m59299b == null) {
            return "unknown";
        }
        if (m59299b.getType() == 1) {
            return "wifi";
        }
        String extraInfo = m59299b.getExtraInfo();
        if (extraInfo != null && extraInfo.length() > 64) {
            extraInfo = extraInfo.substring(0, 64);
        }
        return "" + extraInfo;
    }

    /* renamed from: a */
    public static RequestPackage m59293a(int i, byte[] bArr, Map<String, String> map, String str) {
        C14888c m58989c = C14888c.m58989c();
        C14890e m59012l = C14890e.m59012l();
        RequestPackage requestPackage = new RequestPackage();
        requestPackage.model = C14891f.m59045e().m59059h();
        requestPackage.osVersion = m59012l.m59038t();
        requestPackage.platformId = m58989c.m59004g();
        requestPackage.appkey = str;
        requestPackage.appVersion = C14887b.m58972a();
        requestPackage.sdkId = m58989c.m59005h();
        requestPackage.sdkVersion = m58989c.m59006i();
        requestPackage.cmd = i;
        requestPackage.encryType = (byte) 3;
        requestPackage.zipType = (byte) 2;
        requestPackage.sBuffer = bArr;
        requestPackage.reserved = m59300b(map);
        return requestPackage;
    }

    @Nullable
    /* renamed from: a */
    public static Map<String, String> m59295a(String str, Map<String, String> map) {
        int i;
        if (map == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        int i2 = 0;
        int i3 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() == null) {
                C14954c.m59395b("BeaconEvent key can't be null!!!", new Object[i2]);
                i = i2;
            } else {
                String valueOf = String.valueOf(entry.getKey());
                int length = valueOf.trim().length();
                if (length > 0 && m59298a(valueOf)) {
                    String trim = valueOf.trim();
                    if (length > 64) {
                        trim = trim.substring(i2, 64);
                        String str2 = "[event] eventName: " + str + ", key: " + trim + " should be less than 64!";
                        C14882j.m58961e().m58953a("102", str2);
                        C14959h.m59413a(str2);
                    }
                    String replace = trim.replace(IidStore.f35940g, "%7C").replace(ParameterList.f115951c, "%26").replace("=", "%3D");
                    String trim2 = entry.getValue() == null ? "" : String.valueOf(entry.getValue()).trim();
                    if (trim2.length() > 20480) {
                        String str3 = "[event] eventName: " + str + ", key: " + replace + "'s value > 20K.";
                        C14882j.m58961e().m58953a("103", str3);
                        C14959h.m59413a(str3);
                        i = 0;
                        trim2 = trim2.substring(0, CacheDataSink.DEFAULT_BUFFER_SIZE);
                    } else {
                        i = 0;
                    }
                    String replace2 = trim2.replace('\n', ' ').replace('\r', ' ').replace(IidStore.f35940g, "%7C").replace(ParameterList.f115951c, "%26").replace("=", "%3D");
                    hashMap.put(replace, replace2);
                    i3 += replace.length() + replace2.length();
                } else {
                    i = i2;
                    C14954c.m59403e("[core] '%s' should be ASCII code in 32-126!", valueOf);
                    C14882j.m58961e().m58953a("102", "[event] eventName: " + str + ", key: " + valueOf + " should be ASCII code in 32-126!");
                }
            }
            i2 = i;
        }
        if (i3 <= 46080) {
            return hashMap;
        }
        String str4 = "[event] eventName: " + str + " params > 45K";
        C14882j.m58961e().m58953a("104", str4);
        C14959h.m59413a(str4);
        return null;
    }

    /* renamed from: a */
    public static boolean m59298a(String str) {
        int length = str.length();
        boolean z = true;
        while (true) {
            length--;
            if (length < 0) {
                return z;
            }
            char charAt = str.charAt(length);
            if (charAt < ' ' || charAt >= 127) {
                z = false;
            }
        }
    }

    /* renamed from: a */
    public static synchronized Map<String, String> m59294a() {
        Map<String, String> map;
        synchronized (C14935d.class) {
            C14975h m59499d = C14975h.m59499d();
            if (TextUtils.isEmpty(m59499d.m59508f())) {
                C14954c.m59392a("defHeader: strategyHolder.getRsaEncryKey() is null, recreate it", new Object[0]);
                m59499d.m59509g();
            }
            map = f92856a;
            map.put("bea_key", m59499d.m59508f());
            if (C14969b.m59444b().m59476j() == 1) {
                map.put("bea_key_id", "1");
            }
            if (!C14969b.m59444b().m59489w()) {
                m59307f();
            }
        }
        return map;
    }

    /* renamed from: a */
    public static void m59296a(long j, long j2, String str) {
        C14954c.m59391a("[BeaconNet]", "fixBeaconInfo, serverTime: " + j2 + ",ip: " + str, new Object[0]);
        C14888c m58989c = C14888c.m58989c();
        m58989c.m58998b(str);
        m58989c.m58993a(j2 - ((j + C14953b.m59381c()) / 2));
    }
}
