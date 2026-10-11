package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Field;
import java.util.List;
import java.util.ListIterator;
import java.util.zip.ZipFile;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.sagittarius.v6.b.q */
/* loaded from: classes18.dex */
public final class C13108q {

    /* renamed from: a */
    private static final String[] f63280a = null;

    static {
        m52368a();
    }

    /* renamed from: a */
    private static String m52367a(String str, String str2) {
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
    private static void m52368a() {
        String[] strArr = new String[6];
        f63280a = strArr;
        strArr[0] = m52367a("FhURHA==", "ftetN");
        f63280a[1] = m52367a("WAAuNw==", "vdKOg");
        f63280a[2] = m52367a("KREPIS83", "DAnUG");
        f63280a[3] = m52367a("GBAjKy0G", "uVJGH");
        f63280a[4] = m52367a("PgALEyM=", "SZbcP");
        f63280a[5] = m52367a("Nx0cMTs=", "ZYyIH");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m52369a(ClassLoader classLoader, List list) {
        int size = list.size();
        Field m52375a = C13110s.m52375a(classLoader, f63280a[0]);
        StringBuilder sb = new StringBuilder((String) m52375a.get(classLoader));
        String[] strArr = new String[size];
        File[] fileArr = new File[size];
        ZipFile[] zipFileArr = new ZipFile[size];
        DexFile[] dexFileArr = new DexFile[size];
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            File file = (File) listIterator.next();
            String absolutePath = file.getAbsolutePath();
            sb.append(':');
            sb.append(absolutePath);
            int previousIndex = listIterator.previousIndex();
            strArr[previousIndex] = absolutePath;
            fileArr[previousIndex] = file;
            zipFileArr[previousIndex] = new ZipFile(file);
            dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + f63280a[1], 0);
        }
        m52375a.set(classLoader, sb.toString());
        C13099h.m52349a(classLoader, f63280a[2], strArr);
        C13099h.m52349a(classLoader, f63280a[3], fileArr);
        C13099h.m52349a(classLoader, f63280a[4], zipFileArr);
        C13099h.m52349a(classLoader, f63280a[5], dexFileArr);
        C13099h.m52350a(dexFileArr);
    }
}
