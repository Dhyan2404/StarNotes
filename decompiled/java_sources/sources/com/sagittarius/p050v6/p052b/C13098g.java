package com.sagittarius.p050v6.p052b;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import com.sagittarius.p050v6.StubApplication;
import com.sagittarius.p050v6.p051a.C13091a;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.sagittarius.v6.b.g */
/* loaded from: classes18.dex */
public final class C13098g {

    /* renamed from: a */
    private static final String[] f63263a = null;

    static {
        m52336a();
    }

    /* renamed from: a */
    public static Application m52333a(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        try {
            return (Application) Class.forName(str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable th) {
            throw new IllegalStateException(th);
        }
    }

    /* renamed from: a */
    private static Object m52334a(Context context, Class cls) {
        if (cls == null) {
            try {
                cls = Class.forName(f63263a[1]);
            } catch (Throwable th) {
                return null;
            }
        }
        Method method = cls.getMethod(f63263a[2], new Class[0]);
        method.setAccessible(true);
        Object invoke = method.invoke(cls, new Object[0]);
        if (invoke != null || context == null) {
            return invoke;
        }
        Field field = context.getClass().getField(f63263a[3]);
        field.setAccessible(true);
        Object obj = field.get(context);
        Field declaredField = obj.getClass().getDeclaredField(f63263a[4]);
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }

    /* renamed from: a */
    private static String m52335a(String str, String str2) {
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
    private static void m52336a() {
        String[] strArr = new String[20];
        f63263a = strArr;
        strArr[0] = m52335a("BBwyKTcNKic7MSYHKDwxHRw=", "ehFHT");
        f63263a[1] = m52335a("MxwdNyY7FlckOSJcOCY9OwQQMTAGGgsgKDY=", "RryEI");
        f63263a[2] = m52335a("LiwVOTIjLSYoIyQvDj8uGTEVLjYp", "MYgKW");
        f63263a[3] = m52335a("GjYbEAISHjUBDQ==", "wztqf");
        f63263a[4] = m52335a("FBQxPyUPPCYyGBEnNyoo", "yURKL");
        f63263a[5] = m52335a("Lx4dFQEnFFcGHj5eOAQaJwYQExcaGAsCDyo=", "Npygn");
        f63263a[6] = m52335a("IC0eIzokBRwLPj0IGSkvOQ0fJA==", "MdpJN");
        f63263a[7] = m52335a("JCA/BhM5Jg==", "WARuf");
        f63263a[8] = m52335a("OQQ0Cw0kNTQOLzUxMQgiJw==", "TEXgL");
        f63263a[9] = m52335a("ESs7Oh0WKz02Bww6Kg0c", "bNOuh");
        f63263a[10] = m52335a("FBQ8Gj0cHnYJIgVUFAczER88KSIe", "uzXhR");
        f63263a[11] = m52335a("By8gFAsPJWoHFBZvBQUQDzctEh0yKTYDBQJlFAcHDSAjAy0IJys=", "fADfd");
        f63263a[12] = m52335a("NCo1NyMwCCQzJjYF", "YkEGO");
        f63263a[13] = m52335a("ODkGOiA8GQ==", "UkcId");
        f63263a[14] = m52335a("GhUbIjUSPTUzOg==", "wYtCQ");
        f63263a[15] = m52335a("Dz8mLSkDCCI9", "boGNB");
        f63263a[16] = m52335a("Az41NzYbHjMhCQ8POyU+Cx8=", "nlPDY");
        f63263a[17] = m52335a("CwslBQYWDQ==", "xjHvs");
        f63263a[18] = m52335a("EzwxKwQbNns4GwJ8FDofGyQ8LRImOic8ChY=", "rRUYk");
        f63263a[19] = m52335a("DgYhGzIKLiMzNhMjJhEnFyYgHA==", "cOOrF");
    }

    /* renamed from: a */
    public static void m52337a(Context context, Application application) {
        if (application != null) {
            try {
                Method declaredMethod = ContextWrapper.class.getDeclaredMethod(f63263a[0], Context.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(application, context);
            } catch (Throwable th) {
                throw new IllegalStateException(th);
            }
        }
    }

    /* renamed from: a */
    public static void m52338a(Context context, Application application, Application application2) {
        Class<?> cls;
        Field field;
        try {
            Class<?> cls2 = Class.forName(f63263a[5]);
            try {
                Object m52334a = m52334a(context, cls2);
                Field declaredField = cls2.getDeclaredField(f63263a[6]);
                declaredField.setAccessible(true);
                Application application3 = (Application) declaredField.get(m52334a);
                if (!Build.BRAND.equals(f63263a[7]) && application2 != null && application3 == application) {
                    declaredField.set(m52334a, application2);
                }
                if (application2 != null) {
                    Field declaredField2 = cls2.getDeclaredField(f63263a[8]);
                    declaredField2.setAccessible(true);
                    List list = (List) declaredField2.get(m52334a);
                    for (int i = 0; i < list.size(); i++) {
                        if (list.get(i) == application) {
                            list.set(i, application2);
                        }
                    }
                    try {
                        Method declaredMethod = StubApplication.mContext.getClass().getDeclaredMethod(f63263a[9], Context.class);
                        declaredMethod.setAccessible(true);
                        declaredMethod.invoke(StubApplication.mContext, application2);
                    } catch (Throwable th) {
                    }
                }
                try {
                    cls = Class.forName(f63263a[10]);
                } catch (ClassNotFoundException e) {
                    cls = Class.forName(f63263a[11]);
                }
                Field declaredField3 = cls.getDeclaredField(f63263a[12]);
                declaredField3.setAccessible(true);
                cls.getDeclaredField(f63263a[13]).setAccessible(true);
                try {
                    field = Application.class.getDeclaredField(f63263a[14]);
                } catch (NoSuchFieldException e2) {
                    field = null;
                }
                for (int i2 = 0; i2 < 2; i2++) {
                    Field declaredField4 = cls2.getDeclaredField(new String[]{f63263a[15], f63263a[16]}[i2]);
                    declaredField4.setAccessible(true);
                    Iterator it2 = ((Map) declaredField4.get(m52334a)).entrySet().iterator();
                    while (it2.hasNext()) {
                        Object obj = ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                        if (obj != null && declaredField3.get(obj) == application) {
                            if (application2 != null) {
                                declaredField3.set(obj, application2);
                            }
                            if (application2 != null && field != null) {
                                field.set(application2, obj);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
            }
        } catch (Throwable th3) {
        }
    }

    /* renamed from: b */
    public static void m52339b(Context context, Application application, Application application2) {
        if (Build.BRAND.equals(f63263a[17])) {
            try {
                Class<?> cls = Class.forName(f63263a[18]);
                Object m52334a = m52334a(context, cls);
                Field declaredField = cls.getDeclaredField(f63263a[19]);
                declaredField.setAccessible(true);
                Application application3 = (Application) declaredField.get(m52334a);
                if (application2 == null || application3 != application) {
                    return;
                }
                declaredField.set(m52334a, application2);
            } catch (Exception e) {
            }
        }
    }
}
