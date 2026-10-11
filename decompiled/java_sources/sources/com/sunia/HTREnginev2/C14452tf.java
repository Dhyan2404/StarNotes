package com.sunia.HTREnginev2;

/* renamed from: com.sunia.HTREnginev2.tf */
/* loaded from: classes11.dex */
public class C14452tf {

    /* renamed from: a */
    public static final int f85249a = -1;

    /* renamed from: a */
    public static boolean m57366a(Object[] objArr, Object obj) {
        return m57367b(objArr, obj) != -1;
    }

    /* renamed from: b */
    public static <T> int m57367b(T[] tArr, Object obj) {
        return m57368c(tArr, obj, 0);
    }

    /* renamed from: c */
    public static int m57368c(Object[] objArr, Object obj, int i) {
        if (objArr == null) {
            return -1;
        }
        if (i < 0) {
            i = 0;
        }
        if (obj == null) {
            while (i < objArr.length) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
        } else {
            while (i < objArr.length) {
                if (obj.equals(objArr[i])) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }
}
