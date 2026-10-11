package com.twelvemonkeys.net;

import com.onyx.android.sdk.base.utils.FileExtensionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.lang.SystemUtil;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
public final class MIMEUtil {

    /* renamed from: a */
    public static Map<String, List<String>> f94336a;

    /* renamed from: b */
    public static Map<String, List<String>> f94337b;

    /* renamed from: c */
    public static Map<String, List<String>> f94338c;

    /* renamed from: d */
    public static Map<String, List<String>> f94339d;

    static {
        HashMap hashMap = new HashMap();
        f94336a = hashMap;
        f94337b = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        f94338c = hashMap2;
        f94339d = Collections.unmodifiableMap(hashMap2);
        try {
            for (Map.Entry entry : SystemUtil.loadProperties(MIMEUtil.class).entrySet()) {
                List<String> unmodifiableList = Collections.unmodifiableList(Arrays.asList(StringUtil.toStringArray(StringUtil.toLowerCase((String) entry.getKey()), ";, ")));
                List<String> unmodifiableList2 = Collections.unmodifiableList(Arrays.asList(StringUtil.toStringArray(StringUtil.toLowerCase((String) entry.getValue()), ";, ")));
                Iterator<String> it2 = unmodifiableList.iterator();
                while (it2.hasNext()) {
                    f94336a.put(it2.next(), unmodifiableList2);
                }
                Iterator<String> it3 = unmodifiableList2.iterator();
                while (it3.hasNext()) {
                    f94338c.put(it3.next(), unmodifiableList);
                }
            }
        } catch (IOException e) {
            System.err.println("Could not read properties for MIMEUtil: " + e.getMessage());
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public static List<String> m60743a(String str) {
        String substring = str.substring(0, str.length() - 1);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry<String, List<String>> entry : f94338c.entrySet()) {
            if ("*/".equals(substring) || entry.getKey().startsWith(substring)) {
                linkedHashSet.addAll(entry.getValue());
            }
        }
        return Collections.unmodifiableList(new ArrayList(linkedHashSet));
    }

    /* renamed from: b */
    public static boolean m60744b(String str, String str2) {
        String bareMIME = bareMIME(str2);
        return bareMIME.equals(str) || FileExtensionUtils.DEFAULT_MIMETYPE_ALL.equals(str) || (str.endsWith("/*") && str.startsWith(bareMIME.substring(0, bareMIME.indexOf(47))));
    }

    public static String bareMIME(String str) {
        int indexOf;
        return (str == null || (indexOf = str.indexOf(59)) < 0) ? str : str.substring(0, indexOf);
    }

    /* renamed from: c */
    public static List<String> m60745c(List<String> list) {
        return list == null ? Collections.emptyList() : list;
    }

    public static String getExtension(String str) {
        List<String> list = f94338c.get(bareMIME(StringUtil.toLowerCase(str)));
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Map<String, List<String>> getExtensionMappings() {
        return f94339d;
    }

    public static List<String> getExtensions(String str) {
        String bareMIME = bareMIME(StringUtil.toLowerCase(str));
        return bareMIME.endsWith("/*") ? m60743a(bareMIME) : m60745c(f94338c.get(bareMIME));
    }

    public static String getMIMEType(String str) {
        List<String> list = f94336a.get(StringUtil.toLowerCase(str));
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static Map<String, List<String>> getMIMETypeMappings() {
        return f94337b;
    }

    public static List<String> getMIMETypes(String str) {
        return m60745c(f94336a.get(StringUtil.toLowerCase(str)));
    }

    public static void main(String[] strArr) {
        if (strArr.length > 1) {
            String str = strArr[0];
            String str2 = strArr[1];
            boolean m60744b = m60744b(str2, str);
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("Mime type family ");
            sb.append(str2);
            sb.append(m60744b ? " includes " : " does not include ");
            sb.append("type ");
            sb.append(str);
            printStream.println(sb.toString());
        }
        if (strArr.length > 0) {
            String str3 = strArr[0];
            if (str3.indexOf(47) >= 0) {
                String extension = getExtension(str3);
                PrintStream printStream2 = System.out;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Default extension for MIME type '");
                sb2.append(str3);
                sb2.append("' is ");
                sb2.append(extension != null ? ": '" + extension + CloudStorageConstants.SINGLE_QUOTES : "unknown");
                sb2.append(".");
                printStream2.println(sb2.toString());
                System.out.println("All possible: " + getExtensions(str3));
                return;
            }
            String mIMEType = getMIMEType(str3);
            PrintStream printStream3 = System.out;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Default MIME type for extension '");
            sb3.append(str3);
            sb3.append("' is ");
            sb3.append(mIMEType != null ? ": '" + mIMEType + CloudStorageConstants.SINGLE_QUOTES : "unknown");
            sb3.append(".");
            printStream3.println(sb3.toString());
            System.out.println("All possible: " + getMIMETypes(str3));
            return;
        }
        Set<String> keySet = f94338c.keySet();
        int size = keySet.size();
        String[] strArr2 = new String[size];
        Iterator<String> it2 = keySet.iterator();
        int i = 0;
        while (it2.hasNext()) {
            strArr2[i] = it2.next();
            i++;
        }
        Arrays.sort(strArr2);
        System.out.println("Known MIME types (" + size + "):");
        for (int i2 = 0; i2 < size; i2++) {
            String str4 = strArr2[i2];
            if (i2 != 0) {
                System.out.print(", ");
            }
            System.out.print(str4);
        }
        System.out.println("\n");
        Set<String> keySet2 = f94336a.keySet();
        int size2 = keySet2.size();
        String[] strArr3 = new String[size2];
        Iterator<String> it3 = keySet2.iterator();
        int i3 = 0;
        while (it3.hasNext()) {
            strArr3[i3] = it3.next();
            i3++;
        }
        Arrays.sort(strArr3);
        System.out.println("Known file types (" + size2 + "):");
        for (int i4 = 0; i4 < size2; i4++) {
            String str5 = strArr3[i4];
            if (i4 != 0) {
                System.out.print(", ");
            }
            System.out.print(str5);
        }
        System.out.println();
    }
}
