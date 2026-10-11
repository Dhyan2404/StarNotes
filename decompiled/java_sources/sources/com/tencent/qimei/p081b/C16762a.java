package com.tencent.qimei.p081b;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.tencent.qimei.p082c.C16764a;
import com.tencent.qimei.p083d.AbstractC16769a;
import com.tencent.qimei.p084e.C16773a;
import com.tencent.qimei.p085f.C16779c;
import com.tencent.qimei.p086g.InterfaceC16782c;
import com.tencent.qimei.p086g.RunnableC16781b;
import com.tencent.qimei.p091l.C16799g;
import com.tencent.qimei.p092m.C16800a;
import com.tencent.qimei.p093n.C16806a;
import com.tencent.qimei.p096q.C16815c;
import com.tencent.qimei.p096q.C16821i;
import com.tencent.qimei.p097r.C16823b;
import com.tencent.qimei.p101u.C16841b;
import com.tencent.qimei.p105y.C16858d;
import com.tencent.qimei.sdk.Qimei;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* renamed from: com.tencent.qimei.b.a */
/* loaded from: classes10.dex */
public class C16762a {

    /* renamed from: a */
    public static String f93440a;

    /* renamed from: a */
    public static Object m59866a(String str, Object obj, String str2) {
        try {
            Field declaredField = Class.forName(str).getDeclaredField(str2);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (ClassNotFoundException | IllegalAccessException | IllegalArgumentException | NoSuchFieldException | SecurityException unused) {
            return null;
        }
    }

    /* renamed from: b */
    public static void m59882b(String str, String str2, @Nullable Bundle bundle) {
        m59873a(str, str2, bundle);
    }

    /* renamed from: c */
    public static void m59884c(String str, String str2) {
        C16821i m60021b = C16821i.m60021b();
        C16815c m60022a = m60021b.m60022a();
        m60022a.f93568a.put("p1", "1010");
        m60022a.f93568a.put("p2", str2);
        m60021b.m60025b(m60022a, WechatLoadWebWidget.ACTION_SYMBOL_REPLACE, str, "/report");
    }

    /* renamed from: d */
    public static Qimei m59885d(String str) {
        if (m59888e(str)) {
            return null;
        }
        return C16823b.m60028a(str).f93594c;
    }

    /* renamed from: e */
    public static boolean m59888e(String str) {
        return str == null || str.isEmpty() || C16858d.m60143b().mo60059c() == null;
    }

    /* renamed from: f */
    public static boolean m59889f(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0045, code lost:
    
        if (r2 != 100) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tencent.qimei.sdk.Qimei m59890g(java.lang.String r7) {
        /*
            com.tencent.qimei.u.b r0 = com.tencent.qimei.p101u.C16841b.a.f93670a
            boolean r0 = r0.f93669a
            r1 = 0
            if (r0 != 0) goto L8
            goto L48
        L8:
            boolean r0 = com.tencent.qimei.uin.C16842U.f93671a
            if (r0 == 0) goto L15
            byte[] r0 = com.tencent.qimei.uin.C16842U.m60113d(r7)     // Catch: java.lang.NoSuchMethodError -> L11
            goto L16
        L11:
            r0 = move-exception
            r0.printStackTrace()
        L15:
            r0 = r1
        L16:
            if (r0 == 0) goto L48
            int r2 = r0.length
            r3 = 1
            if (r2 > r3) goto L1d
            goto L48
        L1d:
            r2 = 0
            r2 = r0[r2]
            r4 = 100
            if (r2 == 0) goto L39
            r5 = 104(0x68, float:1.46E-43)
            if (r2 == r5) goto L39
            r5 = 101(0x65, float:1.42E-43)
            if (r2 != r5) goto L2d
            goto L39
        L2d:
            if (r2 != r4) goto L36
            com.tencent.qimei.t.a r5 = com.tencent.qimei.p100t.C16837a.m60105a(r7)
            r5.f93662e = r3
            goto L39
        L36:
            m59872a(r7, r2)
        L39:
            java.lang.String r5 = new java.lang.String
            int r6 = r0.length
            byte[] r0 = java.util.Arrays.copyOfRange(r0, r3, r6)
            r5.<init>(r0)
            if (r2 == 0) goto L4a
            if (r2 != r4) goto L48
            goto L4a
        L48:
            java.lang.String r5 = ""
        L4a:
            java.lang.Object[] r0 = new java.lang.Object[]{r5, r7}
            java.lang.String r2 = "SDK_INIT ｜ LOCAL_ENC"
            java.lang.String r3 = "get the storage QM:%s (appKey: %s)"
            com.tencent.qimei.p093n.C16806a.m59995b(r2, r3, r0)
            boolean r0 = r5.isEmpty()
            if (r0 != 0) goto L5f
            com.tencent.qimei.sdk.Qimei r1 = com.tencent.qimei.p097r.C16824c.m60032b(r5, r7)
        L5f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p081b.C16762a.m59890g(java.lang.String):com.tencent.qimei.sdk.Qimei");
    }

    /* renamed from: a */
    public static String m59868a(Context context) {
        if (TextUtils.isEmpty(f93440a)) {
            f93440a = String.format("file://%s/jsfile/tun-cos-1258344701.html", context.getFilesDir().getAbsolutePath());
        }
        return f93440a;
    }

    /* renamed from: b */
    public static String m59880b(String str, String str2) throws Exception {
        return Base64.encodeToString(m59878a(str.getBytes("UTF-8"), str2.getBytes("UTF-8"), 1), 2);
    }

    /* renamed from: d */
    public static String m59886d(String str, String str2) {
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str2, 2)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, rSAPublicKey);
            return Base64.encodeToString(cipher.doFinal(str.getBytes("UTF-8")), 2);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: e */
    public static synchronized void m59887e(String str, String str2) {
        synchronized (C16762a.class) {
            if (C16779c.m59933a(str).m59934b()) {
                if (C16841b.a.f93670a.m60109a(str, str2) == 0) {
                    m59882b(C16764a.f93442a, C16773a.m59902d(), null);
                    C16799g.m59964b(str).m59967a("q_s_t", System.currentTimeMillis());
                    C16806a.m59995b("QM", "QM was successfully updated to local: %s (appKey: %s)", str2, str);
                    if (TextUtils.isEmpty(C16799g.m59964b(str).m59971d("is_first"))) {
                        C16799g.m59964b(str).m59968a("is_first", "false");
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static String m59869a(String str) {
        StringBuilder sb = new StringBuilder(str);
        for (int length = sb.length(); length < 16; length++) {
            sb.append("0");
        }
        return sb.toString().substring(0, 16);
    }

    /* renamed from: a */
    public static String m59871a(HttpURLConnection httpURLConnection) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        InputStream inputStream = httpURLConnection.getInputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                C16800a.m59974a(byteArrayOutputStream);
                C16800a.m59974a(inputStream);
                return byteArrayOutputStream2;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    /* renamed from: b */
    public static synchronized void m59881b(String str) {
        synchronized (C16762a.class) {
            if (C16779c.m59933a(str).m59934b()) {
                C16841b.a.f93670a.m60109a(str, "");
            }
        }
    }

    /* renamed from: c */
    public static int m59883c(String str) {
        return C16823b.m60028a(str).f93597f;
    }

    /* renamed from: a */
    public static void m59873a(String str, String str2, @Nullable Bundle bundle) {
        Context mo60059c = C16858d.m60143b().mo60059c();
        if (mo60059c == null) {
            return;
        }
        Intent intent = new Intent(str);
        if (!TextUtils.isEmpty(str2)) {
            intent.setPackage(str2);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        mo60059c.sendBroadcast(intent);
    }

    /* renamed from: a */
    public static void m59874a(String str, String str2, InterfaceC16782c interfaceC16782c) {
        AbstractC16769a.m59895a().mo59897a(new RunnableC16781b(str, str2, interfaceC16782c));
    }

    @RequiresPermission(DefaultConnectivityMonitorFactory.f15198b)
    /* renamed from: a */
    public static boolean m59875a() {
        ConnectivityManager connectivityManager;
        boolean z;
        Context mo60059c = C16858d.m60143b().mo60059c();
        boolean z2 = false;
        if (mo60059c == null || (connectivityManager = (ConnectivityManager) mo60059c.getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            z = m59877a(connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork()));
            if (!z) {
                try {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        return activeNetworkInfo.isConnected();
                    }
                    return false;
                } catch (SecurityException e) {
                    e = e;
                    e.printStackTrace();
                    C16806a.m59991a("NET", "No network status query permission, please add in AndroidManifest file  <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />", new Object[0]);
                    return z;
                } catch (Exception e2) {
                    e = e2;
                    z2 = z;
                    C16806a.m59992a(e);
                    return z2;
                }
            }
        } catch (SecurityException e3) {
            e = e3;
            z = false;
        } catch (Exception e4) {
            e = e4;
        }
        return z;
    }

    /* renamed from: b */
    public static String m59879b(Context context) {
        int i;
        if (context == null) {
            return "0";
        }
        String m59902d = C16773a.m59902d();
        String[] split = context.getFilesDir().getAbsolutePath().split("/");
        if (split.length >= 5) {
            String str = split[3];
            String str2 = split[4];
            if (m59889f(str) && !str.equals("0")) {
                i = 1;
            } else if (!str2.equals(m59902d)) {
                i = 2;
            }
            return String.valueOf(i);
        }
        i = 0;
        return String.valueOf(i);
    }

    /* renamed from: a */
    public static boolean m59876a(long j, long j2) {
        return j == 0 || System.currentTimeMillis() - j >= ((j2 * 60) * 60) * 1000;
    }

    /* renamed from: a */
    public static boolean m59877a(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return false;
        }
        return ((networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(2) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(4)) || networkCapabilities.hasTransport(5)) || networkCapabilities.hasTransport(6);
    }

    /* renamed from: a */
    public static String m59870a(String str, String str2) throws Exception {
        return new String(m59878a(Base64.decode(str, 2), str2.getBytes("UTF-8"), 2), "UTF-8").trim();
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0010 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0011  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m59878a(byte[] r2, byte[] r3, int r4) throws java.lang.Exception {
        /*
            boolean r0 = com.tencent.qimei.uin.C16842U.f93671a
            if (r0 == 0) goto Ld
            byte[] r0 = com.tencent.qimei.uin.C16842U.m60111a(r4, r3, r3, r2)     // Catch: java.lang.UnsatisfiedLinkError -> L9
            goto Le
        L9:
            r0 = move-exception
            r0.printStackTrace()
        Ld:
            r0 = 0
        Le:
            if (r0 == 0) goto L11
            return r0
        L11:
            javax.crypto.spec.SecretKeySpec r0 = new javax.crypto.spec.SecretKeySpec
            java.lang.String r1 = "AES"
            r0.<init>(r3, r1)
            javax.crypto.spec.IvParameterSpec r1 = new javax.crypto.spec.IvParameterSpec
            r1.<init>(r3)
            java.lang.String r3 = "AES/CBC/PKCS5Padding"
            javax.crypto.Cipher r3 = javax.crypto.Cipher.getInstance(r3)
            r3.init(r4, r0, r1)
            byte[] r2 = r3.doFinal(r2)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p081b.C16762a.m59878a(byte[], byte[], int):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0016  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0014 A[DONT_GENERATE] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized java.lang.String m59867a(int r6) {
        /*
            java.lang.Class<com.tencent.qimei.b.a> r0 = com.tencent.qimei.p081b.C16762a.class
            monitor-enter(r0)
            boolean r1 = com.tencent.qimei.uin.C16842U.f93671a     // Catch: java.lang.Throwable -> Lb4
            r2 = 0
            if (r1 == 0) goto L11
            java.lang.String[] r6 = com.tencent.qimei.uin.C16842U.m60112c(r6)     // Catch: java.lang.UnsatisfiedLinkError -> Ld java.lang.Throwable -> Lb4
            goto L12
        Ld:
            r6 = move-exception
            r6.printStackTrace()     // Catch: java.lang.Throwable -> Lb4
        L11:
            r6 = r2
        L12:
            if (r6 != 0) goto L16
            monitor-exit(r0)
            return r2
        L16:
            r1 = 0
            r2 = r1
        L18:
            int r3 = r6.length     // Catch: java.lang.Throwable -> Lb4
            if (r2 >= r3) goto L26
            r3 = r6[r2]     // Catch: java.lang.Throwable -> Lb4
            if (r3 != 0) goto L23
            java.lang.String r3 = ""
            r6[r2] = r3     // Catch: java.lang.Throwable -> Lb4
        L23:
            int r2 = r2 + 1
            goto L18
        L26:
            r2 = r1
        L27:
            int r3 = r6.length     // Catch: java.lang.Throwable -> Lb4
            if (r2 >= r3) goto L65
            r3 = r6[r2]     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r3 = r3.trim()     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r4 = " "
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r4 = "\t"
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r4 = "&"
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r4 = ":"
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r4 = "="
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r4 = ";"
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replace(r4, r5)     // Catch: java.lang.Throwable -> Lb4
            r6[r2] = r3     // Catch: java.lang.Throwable -> Lb4
            int r2 = r2 + 1
            goto L27
        L65:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb4
            r2.<init>()     // Catch: java.lang.Throwable -> Lb4
        L6a:
            int r3 = r6.length     // Catch: java.lang.Throwable -> Lb4
            if (r1 >= r3) goto La5
            r3 = 9
            if (r1 < r3) goto L8b
            java.lang.String r3 = "k"
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            int r3 = r1 + 2
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r3 = ":"
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            r3 = r6[r1]     // Catch: java.lang.Throwable -> Lb4
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r3 = ";"
        L87:
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            goto La2
        L8b:
            java.lang.String r3 = "k"
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            int r3 = r1 + 1
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r3 = ":"
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            r3 = r6[r1]     // Catch: java.lang.Throwable -> Lb4
            r2.append(r3)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r3 = ";"
            goto L87
        La2:
            int r1 = r1 + 1
            goto L6a
        La5:
            java.lang.String r6 = "k10:"
            r2.append(r6)     // Catch: java.lang.Throwable -> Lb4
            r6 = 1
            r2.append(r6)     // Catch: java.lang.Throwable -> Lb4
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> Lb4
            monitor-exit(r0)
            return r6
        Lb4:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.qimei.p081b.C16762a.m59867a(int):java.lang.String");
    }

    /* renamed from: a */
    public static Object m59865a(ClassLoader classLoader, String str, String str2, Class[] clsArr, Object[] objArr) {
        Class<?> cls;
        try {
            cls = classLoader == null ? Class.forName(str) : Class.forName(str, true, classLoader);
        } catch (Exception unused) {
            cls = null;
        }
        try {
            return cls.getMethod(str2, clsArr).invoke(null, objArr);
        } catch (Exception unused2) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m59872a(String str, byte b) {
        C16821i m60021b = C16821i.m60021b();
        C16815c m60022a = m60021b.m60022a();
        m60022a.f93568a.put("p1", Byte.valueOf(b));
        m60021b.m60025b(m60022a, "v6", str, "/report");
    }
}
