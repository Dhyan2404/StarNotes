package com.tencent.beacon.base.util;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.tencent.beacon.base.net.p066b.C14920a;
import com.tencent.beacon.base.net.p066b.C14934c;
import com.tencent.beacon.p059a.p061b.C14882j;
import com.tencent.beacon.p059a.p062c.C14888c;
import com.tencent.beacon.p059a.p062c.C14890e;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.io.Serializable;
import java.io.StringWriter;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.beacon.base.util.b */
/* loaded from: classes10.dex */
public class C14953b {

    /* renamed from: a */
    private static final Random f92908a = new Random();

    /* renamed from: b */
    private static final AtomicInteger f92909b = new AtomicInteger(0);

    /* renamed from: c */
    private static final SimpleDateFormat f92910c = new SimpleDateFormat("yyyy-MM-dd", Locale.US);

    /* renamed from: a */
    public static boolean m59367a(long j, long j2) {
        SimpleDateFormat simpleDateFormat = f92910c;
        return simpleDateFormat.format(Long.valueOf(j)).equals(simpleDateFormat.format(Long.valueOf(j2)));
    }

    /* renamed from: b */
    public static byte[] m59380b(byte[] bArr, int i, String str) {
        if (bArr == null || bArr.length <= 0 || i == -1) {
            return bArr;
        }
        try {
            return C14934c.m59288a(i, str, bArr);
        } catch (Throwable th) {
            C14954c.m59403e("data length: " + bArr.length + ",type:" + i + ",key: " + str + ",error: " + th.getMessage(), new Object[0]);
            C14882j m58961e = C14882j.m58961e();
            StringBuilder sb = new StringBuilder();
            sb.append("data length: ");
            sb.append(bArr.length);
            sb.append(",type:");
            sb.append(i);
            sb.append(",key: ");
            sb.append(str);
            m58961e.m58954a("508", sb.toString(), th);
            return null;
        }
    }

    /* renamed from: c */
    public static long m59381c() {
        return new Date().getTime();
    }

    /* renamed from: d */
    public static long m59384d() {
        return new Date().getTime() + C14888c.m58989c().m59007j();
    }

    /* renamed from: e */
    public static String m59385e() {
        try {
            return new SimpleDateFormat("yyyy-MM-dd", Locale.US).format(new Date());
        } catch (Throwable th) {
            C14954c.m59393a(th);
            return "";
        }
    }

    /* renamed from: a */
    public static byte[] m59371a(Object obj) {
        ObjectOutputStream objectOutputStream;
        if (!(obj instanceof Serializable)) {
            C14954c.m59395b("not serial obj ", new Object[0]);
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(obj);
                objectOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                m59365a(objectOutputStream);
                m59365a(byteArrayOutputStream);
                return byteArray;
            } catch (Throwable th) {
                th = th;
                try {
                    C14954c.m59393a(th);
                    C14954c.m59395b(th.getMessage(), new Object[0]);
                    C14882j.m58961e().m58954a("520", th.getMessage(), th);
                    m59365a(objectOutputStream);
                    m59365a(byteArrayOutputStream);
                    return null;
                } catch (Throwable th2) {
                    m59365a(objectOutputStream);
                    m59365a(byteArrayOutputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = null;
        }
    }

    /* renamed from: c */
    public static String m59383c(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(Charset.forName("UTF-8")));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append(0);
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            C14954c.m59393a(e);
            return str;
        }
    }

    /* renamed from: b */
    public static byte[] m59378b(byte[] bArr, int i) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        C14954c.m59392a("zipType: %s len: %s", Integer.valueOf(i), Integer.valueOf(bArr.length));
        try {
            return C14920a.m59144a(i, bArr);
        } catch (Throwable th) {
            C14882j.m58961e().m58954a("521", "zipData length: " + bArr.length + ",type:" + i, th);
            C14954c.m59393a(th);
            C14954c.m59395b("zip err: %s", th.toString());
            return null;
        }
    }

    /* renamed from: c */
    private static String m59382c(int i) {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            stringBuffer.append("abcdef0123456789".charAt(random.nextInt(16)));
        }
        return stringBuffer.toString();
    }

    /* renamed from: b */
    public static byte[] m59379b(byte[] bArr, int i, int i2, String str) {
        if (bArr == null) {
            return null;
        }
        try {
            return m59374a(m59378b(bArr, i), i2, str);
        } catch (Throwable th) {
            C14954c.m59393a(th);
            return null;
        }
    }

    /* renamed from: b */
    public static String m59376b(String str) {
        String m59383c = m59383c(str);
        if (m59383c == null) {
            return m59383c;
        }
        try {
            return m59383c.substring(8, 24);
        } catch (Exception e) {
            C14954c.m59393a(e);
            return m59383c;
        }
    }

    /* renamed from: b */
    public static String m59375b() {
        C14888c m58989c = C14888c.m58989c();
        return m59376b((m58989c != null ? m58989c.m59002e() : "") + "_" + C14890e.m59012l().m59023d() + "_" + m59381c() + "_" + (f92908a.nextInt(2147473647) + 1000));
    }

    /* renamed from: a */
    public static Object m59360a(byte[] bArr) {
        Throwable th;
        ObjectInputStream objectInputStream;
        if (bArr == null) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                Object readObject = objectInputStream.readObject();
                m59365a(objectInputStream);
                m59365a(byteArrayInputStream);
                return readObject;
            } catch (Throwable th2) {
                th = th2;
                try {
                    C14954c.m59393a(th);
                    C14954c.m59395b(th.getMessage(), new Object[0]);
                    C14882j.m58961e().m58954a("520", th.getMessage(), th);
                    m59365a(objectInputStream);
                    m59365a(byteArrayInputStream);
                    return null;
                } catch (Throwable th3) {
                    m59365a(objectInputStream);
                    m59365a(byteArrayInputStream);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            objectInputStream = null;
        }
    }

    /* renamed from: b */
    public static boolean m59377b(int i) {
        return f92908a.nextInt(10000) < i;
    }

    /* renamed from: a */
    public static byte[] m59374a(byte[] bArr, int i, String str) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        C14954c.m59391a("CoreUtils", "encry data length:%d type: %d", Integer.valueOf(bArr.length), Integer.valueOf(i));
        try {
            return C14934c.m59291b(i, str, bArr);
        } catch (Throwable th) {
            C14954c.m59393a(th);
            C14882j.m58961e().m58954a("507", "data length: " + bArr.length + ",type:" + i + ",key: " + str, th);
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m59372a(byte[] bArr, int i) {
        if (bArr == null || i == -1) {
            return bArr;
        }
        C14954c.m59392a("unzp: %s len: %s", Integer.valueOf(i), Integer.valueOf(bArr.length));
        try {
            return C14920a.m59146b(i, bArr);
        } catch (Throwable th) {
            C14882j.m58961e().m58954a("521", "unzipData length: " + bArr.length + ",type:" + i, th);
            C14954c.m59393a(th);
            StringBuilder sb = new StringBuilder();
            sb.append("unzip err msg: ");
            sb.append(th.getMessage());
            C14954c.m59395b(sb.toString(), new Object[0]);
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m59373a(byte[] bArr, int i, int i2, String str) {
        try {
            return m59372a(m59380b(bArr, i2, str), i);
        } catch (Exception e) {
            C14954c.m59393a(e);
            return null;
        }
    }

    /* renamed from: a */
    public static ArrayList<String> m59363a(String[] strArr) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Process exec = Runtime.getRuntime().exec(strArr);
            bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream(), Charset.forName("UTF-8")));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    arrayList.add(readLine);
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = null;
                }
            }
            bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getErrorStream(), Charset.forName("UTF-8")));
            while (true) {
                try {
                    String readLine2 = bufferedReader2.readLine();
                    if (readLine2 != null) {
                        arrayList.add(readLine2);
                    } else {
                        m59365a(bufferedReader);
                        m59365a(bufferedReader2);
                        return arrayList;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        C14954c.m59393a(th);
                        m59365a(bufferedReader);
                        m59365a(bufferedReader2);
                        return null;
                    } catch (Throwable th3) {
                        m59365a(bufferedReader);
                        m59365a(bufferedReader2);
                        throw th3;
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedReader = null;
            bufferedReader2 = null;
        }
    }

    /* renamed from: a */
    public static HashSet<String> m59364a(ArrayList<String> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        HashSet<String> hashSet = new HashSet<>(arrayList.size());
        hashSet.addAll(arrayList);
        return hashSet;
    }

    /* renamed from: a */
    public static int m59358a(String str, int i, int i2, int i3) {
        int i4;
        if (str == null) {
            return i;
        }
        try {
            i4 = Integer.parseInt(str);
        } catch (Exception e) {
            C14954c.m59393a(e);
            i4 = i;
        }
        return (i4 < i2 || i4 > i3) ? i : i4;
    }

    /* renamed from: a */
    public static long m59359a(String str, long j, long j2, long j3) {
        long j4;
        if (str == null) {
            return j;
        }
        try {
            j4 = Long.parseLong(str);
        } catch (Exception e) {
            C14954c.m59393a(e);
            j4 = j;
        }
        return (j4 < j2 || j4 > j3) ? j : j4;
    }

    /* renamed from: a */
    public static boolean m59370a(String str, boolean z) {
        if (str == null) {
            return z;
        }
        if (str.toLowerCase().equals("y")) {
            return true;
        }
        if (str.toLowerCase().equals(GoogleApiAvailabilityLight.f29016b)) {
            return false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m59369a(String str) {
        return str.startsWith("rqd_");
    }

    /* renamed from: a */
    public static String m59362a(Throwable th) {
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        String replace = (th.getMessage() + "\n" + stringWriter.getBuffer().toString()).replace("\t", " ").replace("\n", " ").replace("$", "-");
        return replace.length() > 10240 ? replace.substring(0, 10240) : replace;
    }

    /* renamed from: a */
    public static void m59365a(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception e) {
                    C14954c.m59393a(e);
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m59368a(SharedPreferences.Editor editor) {
        if (editor != null) {
            return true;
        }
        C14954c.m59395b("BeaconProperties editor is null!", new Object[0]);
        return false;
    }

    /* renamed from: a */
    public static String m59361a() {
        return m59382c(16);
    }

    /* renamed from: a */
    public static boolean m59366a(int i) {
        if (C14888c.m58989c().m58997b() == null) {
            return false;
        }
        String m59023d = C14890e.m59012l().m59023d();
        return !TextUtils.isEmpty(m59023d) && ((double) Math.abs(m59023d.hashCode() % 10000)) < ((double) i) * 1.0d;
    }
}
