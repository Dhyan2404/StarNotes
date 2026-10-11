package com.sagittarius.p050v6.p052b;

import android.content.Context;
import android.os.Build;
import com.sagittarius.p050v6.AppInfo;
import com.sagittarius.p050v6.C13084A;
import com.sagittarius.p050v6.p051a.C13091a;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.sagittarius.v6.b.h */
/* loaded from: classes18.dex */
public final class C13099h {

    /* renamed from: a */
    public static String f63264a;

    /* renamed from: b */
    private static String f63265b;

    /* renamed from: c */
    private static String f63266c;

    /* renamed from: d */
    private static String f63267d;

    /* renamed from: e */
    private static int f63268e;

    /* renamed from: f */
    private static List f63269f;

    /* renamed from: g */
    private static List f63270g;

    /* renamed from: h */
    private static final String[] f63271h = null;

    static {
        m52351b();
        f63267d = null;
        f63264a = null;
        f63269f = new ArrayList();
        f63270g = null;
        f63264a = f63271h[2];
        f63267d = f63271h[3];
        f63265b = f63271h[4] + AppInfo.f63255h;
        f63266c = f63271h[5];
        f63268e = f63267d.length();
    }

    /* renamed from: a */
    private static File m52341a(Context context, File file, String str) {
        File file2 = new File(file, f63265b);
        try {
            m52348a(file2);
        } catch (IOException e) {
            file2 = new File(context.getFilesDir(), f63265b);
            m52348a(file2);
        }
        File file3 = new File(file2, str);
        m52348a(file3);
        return file3;
    }

    /* renamed from: a */
    private static ClassLoader m52342a(Context context) {
        try {
            ClassLoader classLoader = context.getClassLoader();
            if (Build.VERSION.SDK_INT >= 14) {
                if (classLoader instanceof BaseDexClassLoader) {
                    return classLoader;
                }
            } else if ((classLoader instanceof DexClassLoader) || (classLoader instanceof PathClassLoader)) {
                return classLoader;
            }
            return null;
        } catch (RuntimeException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static String m52343a(String str, String str2) {
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

    /* renamed from: a */
    public static Enumeration m52344a(DexFile dexFile) {
        boolean z;
        Enumeration enumeration;
        Enumeration<String> entries = dexFile.entries();
        String name = C13084A.class.getName();
        while (true) {
            if (!entries.hasMoreElements()) {
                z = false;
                break;
            }
            if (entries.nextElement().startsWith(name)) {
                z = true;
                break;
            }
        }
        if (!z) {
            return dexFile.entries();
        }
        synchronized (f63269f) {
            if (f63270g == null) {
                ArrayList arrayList = new ArrayList();
                Enumeration<String> entries2 = dexFile.entries();
                while (entries2.hasMoreElements()) {
                    String nextElement = entries2.nextElement();
                    if (!nextElement.startsWith(f63271h[0])) {
                        arrayList.add(nextElement);
                    }
                }
                Iterator it2 = f63269f.iterator();
                while (it2.hasNext()) {
                    Enumeration<String> entries3 = ((DexFile) it2.next()).entries();
                    while (entries3.hasMoreElements()) {
                        arrayList.add(entries3.nextElement());
                    }
                }
                f63270g = arrayList;
            }
            enumeration = Collections.enumeration(f63270g);
        }
        return enumeration;
    }

    /* renamed from: a */
    public static void m52345a(Context context, String str) {
        ClassLoader m52342a;
        try {
            String[] split = str.split(f63271h[6]);
            ArrayList arrayList = new ArrayList();
            for (String str2 : split) {
                arrayList.add(new File(str2));
            }
            if (arrayList.isEmpty() || (m52342a = m52342a(context)) == null) {
                return;
            }
            File m52341a = m52341a(context, new File(AppInfo.DATAPATH), f63266c);
            if (Build.VERSION.SDK_INT >= 23) {
                C13106o.m52361a(m52342a, arrayList, m52341a);
            } else if (Build.VERSION.SDK_INT >= 19) {
                C13105n.m52358a(m52342a, arrayList, m52341a);
            } else if (Build.VERSION.SDK_INT >= 14) {
                C13100i.m52354a(m52342a, arrayList);
            } else {
                C13108q.m52369a(m52342a, arrayList);
            }
            try {
                C13093b.m52321a(m52342a, new File(String.format(f63271h[7], AppInfo.DATAPATH, AppInfo.f63255h)));
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Exception e) {
            throw new RuntimeException(f63271h[8] + e.getMessage() + f63271h[9]);
        }
    }

    /* renamed from: a */
    public static void m52346a(Context context, ByteBuffer byteBuffer) {
        ClassLoader m52342a = m52342a(context);
        if (m52342a == null) {
            throw new RuntimeException(f63271h[11]);
        }
        if (Build.VERSION.SDK_INT < 26) {
            throw new RuntimeException(f63271h[10]);
        }
        try {
            C13107p.m52364a(m52342a, byteBuffer);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public static void m52347a(Context context, ByteBuffer[] byteBufferArr) {
        ClassLoader m52342a = m52342a(context);
        if (m52342a == null) {
            throw new RuntimeException(f63271h[13]);
        }
        if (Build.VERSION.SDK_INT < 26) {
            throw new RuntimeException(f63271h[12]);
        }
        try {
            C13107p.m52365a(m52342a, byteBufferArr);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    private static void m52348a(File file) {
        file.mkdir();
        if (file.isDirectory()) {
            return;
        }
        file.getParentFile();
        throw new IOException(f63271h[14] + file.getPath());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m52349a(Object obj, String str, Object[] objArr) {
        Field m52375a = C13110s.m52375a(obj, str);
        Object[] objArr2 = (Object[]) m52375a.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        m52375a.set(obj, objArr3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m52350a(Object[] objArr) {
        try {
            Field m52375a = C13110s.m52375a(objArr[0], f63271h[1]);
            for (Object obj : objArr) {
                f63269f.add((DexFile) m52375a.get(obj));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private static void m52351b() {
        String[] strArr = new String[15];
        f63271h = strArr;
        strArr[0] = m52343a("MQYqSRozDi4THTMbLhIafA==", "RiGgi");
        f63271h[1] = m52343a("NgYrLwo+Bg==", "RcSic");
        f63271h[2] = m52343a("YBhJIxI2", "NqgGw");
        f63271h[3] = m52343a("XhA2Jg==", "pzWTw");
        f63271h[4] = m52343a("Qg==", "lnlJD");
        f63271h[5] = m52343a("ew==", "JyFCC");
        f63271h[6] = m52343a("ag==", "QmISi");
        f63271h[7] = m52343a("bgddRXc4Wx4CMA==", "KtrkR");
        f63271h[8] = m52343a("FyYcDAMeNghYAzQgBBkGNjIEEQU0cxYZAzY2FFhC", "ZSpxj");
        f63271h[9] = m52343a("Q3g=", "jVgVr");
        f63271h[10] = m52343a("JSMVADQgIS8aGCkgCQYsCCgeTgAiPhMEJSM/EhExbD0KFSEqIhQZ", "LMftU");
        f63271h[11] = m52343a("HA80PygZDQ4lBBAMKDkwMQQ/cQoZADQ4BRoAIy47VQg0aycADSs=", "uaGKI");
        f63271h[12] = m52343a("MwM2FSo2AQwPBj8AKhMyHgg9Wx40HjAROzUfMQQveh0pAD88AjcM", "ZmEaK");
        f63271h[13] = m52343a("MBgYHhg1GiIENDwbBBgAHRMTUDo1FxgZNTYXDw8LeR8YShcsGgc=", "Yvkjy");
        f63271h[14] = m52343a("ARcvHgsjVjIdTiQEIxMaIlYiGxwiFTIdHD5W", "GvFrn");
    }
}
