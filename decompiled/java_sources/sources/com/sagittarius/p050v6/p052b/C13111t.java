package com.sagittarius.p050v6.p052b;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.sagittarius.p050v6.AppInfo;
import com.sagittarius.p050v6.StubApplication;
import com.sagittarius.p050v6.p051a.C13091a;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: com.sagittarius.v6.b.t */
/* loaded from: classes18.dex */
public final class C13111t {

    /* renamed from: a */
    private static Context f63285a;

    /* renamed from: b */
    private static Application f63286b;

    /* renamed from: c */
    private static final String[] f63287c = null;

    static {
        m52393g();
        f63286b = null;
        f63285a = null;
    }

    /* renamed from: a */
    public static String m52379a() {
        try {
            return (String) Class.forName(f63287c[3]).getDeclaredMethod(Build.VERSION.SDK_INT >= 18 ? f63287c[4] : f63287c[5], new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f63287c[6];
        }
    }

    /* renamed from: a */
    public static String m52380a(String str) {
        if (Build.VERSION.SDK_INT < 17) {
            return f63287c[1] + AppInfo.PKGNAME;
        }
        try {
            new File(str).listFiles();
            return str;
        } catch (Exception e) {
            return f63287c[2] + AppInfo.PKGNAME;
        }
    }

    /* renamed from: a */
    public static void m52381a(Application application) {
        if (StubApplication.mRealApplicationPatched || StubApplication.mRealApplication == null) {
            return;
        }
        StubApplication.mRealApplicationPatched = true;
        C13098g.m52338a(f63285a, application, StubApplication.mRealApplication);
    }

    /* renamed from: a */
    public static void m52382a(Application application, Context context) {
        f63286b = application;
        f63285a = context;
    }

    /* renamed from: a */
    public static void m52383a(Context context) {
        try {
            new Thread(new RunnableC13112u(context)).start();
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private static void m52384a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:1|(1:3)|4|5|(3:7|8|(4:10|11|12|13)(1:18))|20|21|23|24|25|26|27|28|29|(2:30|(3:32|33|34)(1:48))|49|(1:51)|53|54|55|38|39|40|11|12|13|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00be, code lost:
    
        r1 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00b7, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00bb, code lost:
    
        r1 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00bc, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b3, code lost:
    
        r2 = null;
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x009a, code lost:
    
        r1 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x009b, code lost:
    
        r2 = null;
        r0 = null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m52385a(java.lang.String r10, java.lang.String r11) {
        /*
            r1 = 1
            r4 = 0
            r3 = 0
            java.io.File r0 = new java.io.File
            r0.<init>(r11)
            java.io.File r2 = r0.getParentFile()
            boolean r5 = r2.exists()
            if (r5 != 0) goto L15
            r2.mkdirs()
        L15:
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> La8
            java.io.File r5 = new java.io.File     // Catch: java.lang.Exception -> La8
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> La8
            r6.<init>()     // Catch: java.lang.Exception -> La8
            r6.append(r11)     // Catch: java.lang.Exception -> La8
            java.lang.String[] r7 = com.sagittarius.p050v6.p052b.C13111t.f63287c     // Catch: java.lang.Exception -> La8
            r8 = 0
            r7 = r7[r8]     // Catch: java.lang.Exception -> La8
            r6.append(r7)     // Catch: java.lang.Exception -> La8
            java.lang.String r6 = r6.toString()     // Catch: java.lang.Exception -> La8
            r5.<init>(r6)     // Catch: java.lang.Exception -> La8
            r2.<init>(r5)     // Catch: java.lang.Exception -> La8
            java.nio.channels.FileChannel r2 = r2.getChannel()     // Catch: java.lang.Exception -> La8
            java.nio.channels.FileLock r5 = r2.lock()     // Catch: java.lang.Exception -> La8
            java.io.File r2 = new java.io.File     // Catch: java.lang.Exception -> La8
            java.lang.String r6 = com.sagittarius.p050v6.AppInfo.APKPATH     // Catch: java.lang.Exception -> La8
            r2.<init>(r6)     // Catch: java.lang.Exception -> La8
            long r6 = r2.lastModified()     // Catch: java.lang.Exception -> La8
            boolean r2 = r0.exists()     // Catch: java.lang.Exception -> La8
            if (r2 == 0) goto L5c
            long r8 = r0.lastModified()     // Catch: java.lang.Exception -> La8
            int r2 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r2 != 0) goto L59
            r3 = r1
        L55:
            r5.release()     // Catch: java.lang.Exception -> La6
        L58:
            return r3
        L59:
            r0.delete()     // Catch: java.lang.Exception -> La8
        L5c:
            android.content.Context r0 = com.sagittarius.p050v6.p052b.C13111t.f63285a     // Catch: java.lang.Exception -> Laa
            android.content.res.AssetManager r0 = r0.getAssets()     // Catch: java.lang.Exception -> Laa
            java.io.InputStream r0 = r0.open(r10)     // Catch: java.lang.Throwable -> L9a java.lang.Exception -> Lb2
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Lbb
            r2.<init>(r11)     // Catch: java.lang.Exception -> Lb6 java.lang.Throwable -> Lbb
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Exception -> Lb9 java.lang.Throwable -> Lbe
        L6f:
            int r8 = r0.read(r4)     // Catch: java.lang.Exception -> Lb9 java.lang.Throwable -> Lbe
            if (r8 <= 0) goto L84
            r9 = 0
            r2.write(r4, r9, r8)     // Catch: java.lang.Exception -> L7a java.lang.Throwable -> Lc0
            goto L6f
        L7a:
            r1 = move-exception
        L7b:
            m52384a(r0)     // Catch: java.lang.Exception -> La4
            r0 = r3
        L7f:
            m52384a(r2)     // Catch: java.lang.Exception -> Laf
            r3 = r0
            goto L55
        L84:
            r2.flush()     // Catch: java.lang.Exception -> L7a java.lang.Throwable -> Lc0
            java.io.File r4 = new java.io.File     // Catch: java.lang.Exception -> L7a java.lang.Throwable -> Lc0
            r4.<init>(r11)     // Catch: java.lang.Exception -> L7a java.lang.Throwable -> Lc0
            boolean r8 = r4.exists()     // Catch: java.lang.Exception -> L7a java.lang.Throwable -> Lc0
            if (r8 == 0) goto L95
            r4.setLastModified(r6)     // Catch: java.lang.Exception -> L7a java.lang.Throwable -> Lc0
        L95:
            m52384a(r0)     // Catch: java.lang.Exception -> Lac
            r0 = r1
            goto L7f
        L9a:
            r1 = move-exception
            r2 = r4
            r0 = r4
        L9d:
            m52384a(r0)     // Catch: java.lang.Exception -> La4
            m52384a(r2)     // Catch: java.lang.Exception -> La4
            throw r1     // Catch: java.lang.Exception -> La4
        La4:
            r0 = move-exception
            goto L58
        La6:
            r0 = move-exception
            goto L58
        La8:
            r0 = move-exception
            goto L58
        Laa:
            r0 = move-exception
            goto L58
        Lac:
            r0 = move-exception
            r3 = r1
            goto L58
        Laf:
            r1 = move-exception
            r3 = r0
            goto L58
        Lb2:
            r0 = move-exception
            r2 = r4
            r0 = r4
            goto L7b
        Lb6:
            r1 = move-exception
            r2 = r4
            goto L7b
        Lb9:
            r1 = move-exception
            goto L7b
        Lbb:
            r1 = move-exception
            r2 = r4
            goto L9d
        Lbe:
            r1 = move-exception
            goto L9d
        Lc0:
            r1 = move-exception
            goto L9d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sagittarius.p050v6.p052b.C13111t.m52385a(java.lang.String, java.lang.String):boolean");
    }

    /* renamed from: b */
    private static String m52386b(String str, String str2) {
        byte[] m52319a = C13091a.m52319a(str);
        StringBuilder sb = new StringBuilder();
        char[] charArray = str2.toCharArray();
        int i = 0;
        for (byte b : m52319a) {
            sb.append((char) (b ^ charArray[i % charArray.length]));
            i++;
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static void m52387b() {
        String str;
        if ((AppInfo.SUPPORT_ARCH != null && AppInfo.SUPPORT_ARCH.contains(f63287c[27])) || !m52391e()) {
            if ((AppInfo.FLAGS & 65536) != 0) {
                m52392f();
                return;
            } else {
                System.loadLibrary(AppInfo.LIBNAME);
                return;
            }
        }
        if (Build.VERSION.SDK_INT == 30) {
            if ((Build.BRAND.startsWith(f63287c[9]) && Build.DEVICE.startsWith(f63287c[10])) || Build.FINGERPRINT.startsWith(f63287c[11]) || Build.FINGERPRINT.startsWith(f63287c[12]) || Build.HARDWARE.contains(f63287c[13]) || Build.HARDWARE.contains(f63287c[14]) || Build.MODEL.contains(f63287c[15]) || Build.MODEL.contains(f63287c[16]) || Build.MODEL.contains(f63287c[17]) || Build.MANUFACTURER.contains(f63287c[18]) || Build.PRODUCT.contains(f63287c[19]) || Build.PRODUCT.contains(f63287c[20]) || Build.PRODUCT.contains(f63287c[21]) || Build.PRODUCT.contains(f63287c[22]) || Build.PRODUCT.contains(f63287c[23]) || Build.PRODUCT.contains(f63287c[24]) || Build.PRODUCT.contains(f63287c[25])) {
                try {
                    System.loadLibrary(AppInfo.LIBNAME);
                    return;
                } catch (Exception e) {
                }
            }
        }
        String str2 = f63287c[33] + AppInfo.LIBNAME + f63287c[34];
        if (m52390d()) {
            str = f63287c[35] + AppInfo.LIBNAME + f63287c[36];
        } else {
            str = f63287c[37] + AppInfo.LIBNAME + f63287c[38];
        }
        String str3 = (AppInfo.DATAPATH + f63287c[39]) + File.separator + str2;
        m52385a(str, str3);
        System.load(str3);
    }

    /* renamed from: b */
    public static void m52388b(Application application) {
        if (StubApplication.mRealApplication != null) {
            C13098g.m52339b(f63285a, application, StubApplication.mRealApplication);
        }
    }

    /* renamed from: c */
    public static void m52389c() {
        boolean z = true;
        if ((AppInfo.FLAGS & 64) != 0 && Build.VERSION.SDK_INT >= 23 && (Build.BRAND.equalsIgnoreCase(f63287c[40]) || Build.BRAND.equalsIgnoreCase(f63287c[41]))) {
            z = false;
        }
        if (z) {
            return;
        }
        File[] listFiles = new File(AppInfo.DATAPATH + f63287c[42]).listFiles();
        if (listFiles == null || listFiles.length <= 0) {
            return;
        }
        for (File file : listFiles) {
            if (!file.isDirectory()) {
                SharedPreferences sharedPreferences = f63286b.getSharedPreferences(file.getName().replace(f63287c[43], f63287c[44]), 0);
                try {
                    Class<?> cls = sharedPreferences.getClass();
                    Field declaredField = cls.getDeclaredField(f63287c[45]);
                    declaredField.setAccessible(true);
                    if (declaredField.getBoolean(sharedPreferences)) {
                        declaredField.set(sharedPreferences, Boolean.FALSE);
                        synchronized (sharedPreferences) {
                            try {
                                Method declaredMethod = cls.getDeclaredMethod(f63287c[46], new Class[0]);
                                declaredMethod.setAccessible(true);
                                declaredMethod.invoke(sharedPreferences, new Object[0]);
                            } catch (Exception e) {
                                Method declaredMethod2 = cls.getDeclaredMethod(f63287c[47], new Class[0]);
                                declaredMethod2.setAccessible(true);
                                declaredMethod2.invoke(sharedPreferences, new Object[0]);
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    /* renamed from: d */
    private static boolean m52390d() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(f63287c[7])));
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                if (readLine.endsWith(f63287c[8])) {
                    bufferedReader.close();
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }

    /* renamed from: e */
    private static boolean m52391e() {
        boolean z = false;
        try {
            byte[] bArr = new byte[20];
            FileInputStream fileInputStream = new FileInputStream(f63287c[26]);
            fileInputStream.read(bArr, 0, 20);
            if (bArr[18] == 3) {
                fileInputStream.close();
                z = true;
            } else {
                fileInputStream.close();
            }
        } catch (Exception e) {
        }
        return z;
    }

    /* renamed from: f */
    private static void m52392f() {
        String[] strArr = Build.VERSION.SDK_INT >= 21 ? Build.SUPPORTED_ABIS : new String[]{Build.CPU_ABI, Build.CPU_ABI2};
        String str = AppInfo.DATAPATH + f63287c[28];
        for (String str2 : strArr) {
            String str3 = f63287c[29] + AppInfo.LIBNAME + f63287c[30] + str2;
            String str4 = str + File.separator + (f63287c[31] + AppInfo.LIBNAME + f63287c[32]);
            if (m52385a(str3, str4)) {
                try {
                    System.load(str4);
                    return;
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: g */
    private static void m52393g() {
        String[] strArr = new String[48];
        f63287c = strArr;
        strArr[0] = m52386b("fgIOEA4=", "Pnase");
        f63287c[1] = m52386b("Qws7BiRDCzsGJEM=", "loZrE");
        f63287c[2] = m52386b("fS04BTF9LTgFMX0=", "RIYqP");
        f63287c[3] = m52386b("MwQXJhs7Dl01BCJEMjcAOxwaIA0GAgExFTY=", "RjsTt");
        f63287c[4] = m52386b("EDg5BR8dORsFFRAoOAQ0EiAu", "sMKwz");
        f63287c[5] = m52386b("CTk+NCMEOBwnJQEtKyMICyEp", "jLLFF");
        f63287c[6] = m52386b("", "zLnDU");
        f63287c[7] = m52386b("eQkEOxJ5ChM4F3kUFyQC", "VyvTq");
        f63287c[8] = m52386b("WQMNGAYTHVsJGxhfGAIcHRUGXUY=", "vptkr");
        f63287c[9] = m52386b("EAIiIx8eBA==", "wgLFm");
        f63287c[10] = m52386b("Hy4CDRgRKA==", "xKlhj");
        f63287c[11] = m52386b("DgEHNyMABw==", "idiRQ");
        f63287c[12] = m52386b("HSocNy0fKg==", "hDwYB");
        f63287c[13] = m52386b("IiYvESgsOis=", "EICuN");
        f63287c[14] = m52386b("OzYtIhw8", "IWCAt");
        f63287c[15] = m52386b("MBUONysyJRI0LA==", "WzaPG");
        f63287c[16] = m52386b("AhwUJhMzHhM=", "GqaJr");
        f63287c[17] = m52386b("MyQrPAobLm8dITlqLTsMHj5vKAoAajd2Uw==", "rJONe");
        f63287c[18] = m52386b("IwYkHgYLFyMIBQ==", "dcJgk");
        f63287c[19] = m52386b("JwEzPgY7Cj8NBA==", "TeXaa");
        f63287c[20] = m52386b("LjYJKiYsBhUpIQ==", "IYfMJ");
        f63287c[21] = m52386b("AjcR", "qSzMi");
        f63287c[22] = m52386b("Hx4PGzxUTA==", "lzdDD");
        f63287c[23] = m52386b("OCoVMV94OA==", "NHzIg");
        f63287c[24] = m52386b("BCUXDyYVJxA=", "aHbcG");
        f63287c[25] = m52386b("ISsiJB8zNiAj", "RBOQs");
        f63287c[26] = m52386b("YiILGxUoPF0KCCN+HgEPJjQA", "MQrha");
        f63287c[27] = m52386b("HnFG", "fIpKz");
        f63287c[28] = m52386b("Z2gZKC8kLxo=", "HFxZB");
        f63287c[29] = m52386b("IiQX", "NMuuS");
        f63287c[30] = m52386b("Pg==", "ayLbr");
        f63287c[31] = m52386b("HC4m", "pGDkA");
        f63287c[32] = m52386b("XToF", "sIjXL");
        f63287c[33] = m52386b("BwwR", "kesEl");
        f63287c[34] = m52386b("aykf", "EZpad");
        f63287c[35] = m52386b("Ajk1", "nPWLO");
        f63287c[36] = m52386b("DD9+TDhlcw==", "SGFzg");
        f63287c[37] = m52386b("AAsk", "lbFSA");
        f63287c[38] = m52386b("NDF5YQ==", "kIAWu");
        f63287c[39] = m52386b("f3gZd3o8PwM=", "PVaOL");
        f63287c[40] = m52386b("LTc5Ih0M", "eBXUx");
        f63287c[41] = m52386b("Hgk2Gic=", "VFxUu");
        f63287c[42] = m52386b("ZwIKNB0tFT0lHS0XEQ==", "HqbUo");
        f63287c[43] = m52386b("XjUdPg==", "pMpRj");
        f63287c[44] = m52386b("", "phpAf");
        f63287c[45] = m52386b("Cj4qBggCFg==", "grEgl");
        f63287c[46] = m52386b("AyAOAAkdIAIgJhwkIwssBCoL", "oOodO");
        f63287c[47] = m52386b("CDUoEC0WNSQwAhcx", "dZItk");
    }
}
