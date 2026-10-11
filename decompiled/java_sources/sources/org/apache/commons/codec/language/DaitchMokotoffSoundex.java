package org.apache.commons.codec.language;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.Resources;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes9.dex */
public class DaitchMokotoffSoundex implements StringEncoder {

    /* renamed from: b */
    public static final String f104742b = "//";

    /* renamed from: c */
    public static final String f104743c = "\"";

    /* renamed from: d */
    public static final String f104744d = "*/";

    /* renamed from: e */
    public static final String f104745e = "/*";

    /* renamed from: f */
    public static final String f104746f = "org/apache/commons/codec/language/dmrules.txt";

    /* renamed from: g */
    public static final int f104747g = 6;

    /* renamed from: h */
    public static final Map<Character, List<C18671c>> f104748h;

    /* renamed from: i */
    public static final Map<Character, Character> f104749i;

    /* renamed from: a */
    public final boolean f104750a;

    /* renamed from: org.apache.commons.codec.language.DaitchMokotoffSoundex$a */
    /* loaded from: classes9.dex */
    public static class C18669a implements Comparator<C18671c> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C18671c c18671c, C18671c c18671c2) {
            return c18671c2.m65773b() - c18671c.m65773b();
        }
    }

    /* renamed from: org.apache.commons.codec.language.DaitchMokotoffSoundex$b */
    /* loaded from: classes9.dex */
    public static final class C18670b {

        /* renamed from: a */
        public final StringBuilder f104751a;

        /* renamed from: b */
        public String f104752b;

        /* renamed from: c */
        public String f104753c;

        public /* synthetic */ C18670b(C18669a c18669a) {
            this();
        }

        /* renamed from: a */
        public C18670b m65769a() {
            C18670b c18670b = new C18670b();
            c18670b.f104751a.append(toString());
            c18670b.f104753c = this.f104753c;
            return c18670b;
        }

        /* renamed from: b */
        public void m65770b() {
            while (this.f104751a.length() < 6) {
                this.f104751a.append('0');
                this.f104752b = null;
            }
        }

        /* renamed from: c */
        public void m65771c(String str, boolean z) {
            String str2 = this.f104753c;
            if ((str2 == null || !str2.endsWith(str) || z) && this.f104751a.length() < 6) {
                this.f104751a.append(str);
                if (this.f104751a.length() > 6) {
                    StringBuilder sb = this.f104751a;
                    sb.delete(6, sb.length());
                }
                this.f104752b = null;
            }
            this.f104753c = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C18670b) {
                return toString().equals(((C18670b) obj).toString());
            }
            return false;
        }

        public int hashCode() {
            return toString().hashCode();
        }

        public String toString() {
            if (this.f104752b == null) {
                this.f104752b = this.f104751a.toString();
            }
            return this.f104752b;
        }

        public C18670b() {
            this.f104751a = new StringBuilder();
            this.f104753c = null;
            this.f104752b = null;
        }
    }

    /* renamed from: org.apache.commons.codec.language.DaitchMokotoffSoundex$c */
    /* loaded from: classes9.dex */
    public static final class C18671c {

        /* renamed from: a */
        public final String f104754a;

        /* renamed from: b */
        public final String[] f104755b;

        /* renamed from: c */
        public final String[] f104756c;

        /* renamed from: d */
        public final String[] f104757d;

        public C18671c(String str, String str2, String str3, String str4) {
            this.f104754a = str;
            this.f104755b = str2.split("\\|");
            this.f104756c = str3.split("\\|");
            this.f104757d = str4.split("\\|");
        }

        /* renamed from: b */
        public int m65773b() {
            return this.f104754a.length();
        }

        /* renamed from: c */
        public String[] m65774c(String str, boolean z) {
            if (z) {
                return this.f104755b;
            }
            int m65773b = m65773b();
            return m65773b < str.length() ? m65775d(str.charAt(m65773b)) : false ? this.f104756c : this.f104757d;
        }

        /* renamed from: d */
        public final boolean m65775d(char c) {
            return c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u';
        }

        /* renamed from: e */
        public boolean m65776e(String str) {
            return str.startsWith(this.f104754a);
        }

        public String toString() {
            return String.format("%s=(%s,%s,%s)", this.f104754a, Arrays.asList(this.f104755b), Arrays.asList(this.f104756c), Arrays.asList(this.f104757d));
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f104748h = hashMap;
        HashMap hashMap2 = new HashMap();
        f104749i = hashMap2;
        Scanner scanner = new Scanner(Resources.getInputStream(f104746f), "UTF-8");
        try {
            m65764b(scanner, f104746f, hashMap, hashMap2);
            scanner.close();
            Iterator it2 = hashMap.entrySet().iterator();
            while (it2.hasNext()) {
                Collections.sort((List) ((Map.Entry) it2.next()).getValue(), new C18669a());
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    scanner.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public DaitchMokotoffSoundex() {
        this(true);
    }

    /* renamed from: b */
    public static void m65764b(Scanner scanner, String str, Map<Character, List<C18671c>> map, Map<Character, Character> map2) {
        int i = 0;
        boolean z = false;
        while (scanner.hasNextLine()) {
            i++;
            String nextLine = scanner.nextLine();
            if (z) {
                if (nextLine.endsWith("*/")) {
                    z = false;
                }
            } else if (nextLine.startsWith("/*")) {
                z = true;
            } else {
                int indexOf = nextLine.indexOf("//");
                String trim = (indexOf >= 0 ? nextLine.substring(0, indexOf) : nextLine).trim();
                if (trim.length() == 0) {
                    continue;
                } else if (trim.contains("=")) {
                    String[] split = trim.split("=");
                    if (split.length != 2) {
                        throw new IllegalArgumentException("Malformed folding statement split into " + split.length + " parts: " + nextLine + CloudStorageConstants.OPERATION_IN + str);
                    }
                    String str2 = split[0];
                    String str3 = split[1];
                    if (str2.length() != 1 || str3.length() != 1) {
                        throw new IllegalArgumentException("Malformed folding statement - patterns are not single characters: " + nextLine + CloudStorageConstants.OPERATION_IN + str);
                    }
                    map2.put(Character.valueOf(str2.charAt(0)), Character.valueOf(str3.charAt(0)));
                } else {
                    String[] split2 = trim.split("\\s+");
                    if (split2.length != 4) {
                        throw new IllegalArgumentException("Malformed rule statement split into " + split2.length + " parts: " + nextLine + CloudStorageConstants.OPERATION_IN + str);
                    }
                    try {
                        C18671c c18671c = new C18671c(m65765d(split2[0]), m65765d(split2[1]), m65765d(split2[2]), m65765d(split2[3]));
                        char charAt = c18671c.f104754a.charAt(0);
                        List<C18671c> list = map.get(Character.valueOf(charAt));
                        if (list == null) {
                            list = new ArrayList<>();
                            map.put(Character.valueOf(charAt), list);
                        }
                        list.add(c18671c);
                    } catch (IllegalArgumentException e) {
                        throw new IllegalStateException("Problem parsing line '" + i + "' in " + str, e);
                    }
                }
            }
        }
    }

    /* renamed from: d */
    public static String m65765d(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1);
        }
        return str.endsWith("\"") ? str.substring(0, str.length() - 1) : str;
    }

    /* renamed from: a */
    public final String m65766a(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            if (!Character.isWhitespace(c)) {
                char lowerCase = Character.toLowerCase(c);
                if (this.f104750a) {
                    Map<Character, Character> map = f104749i;
                    if (map.containsKey(Character.valueOf(lowerCase))) {
                        lowerCase = map.get(Character.valueOf(lowerCase)).charValue();
                    }
                }
                sb.append(lowerCase);
            }
        }
        return sb.toString();
    }

    /* renamed from: c */
    public final String[] m65767c(String str, boolean z) {
        String str2;
        int i;
        String str3;
        C18669a c18669a = null;
        if (str == null) {
            return null;
        }
        String m65766a = m65766a(str);
        LinkedHashSet<C18670b> linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new C18670b(c18669a));
        int i2 = 0;
        char c = 0;
        while (i2 < m65766a.length()) {
            char charAt = m65766a.charAt(i2);
            if (!Character.isWhitespace(charAt)) {
                String substring = m65766a.substring(i2);
                List<C18671c> list = f104748h.get(Character.valueOf(charAt));
                if (list != null) {
                    List arrayList = z ? new ArrayList() : Collections.emptyList();
                    Iterator<C18671c> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            str2 = m65766a;
                            i = 1;
                            break;
                        }
                        C18671c next = it2.next();
                        if (next.m65776e(substring)) {
                            if (z) {
                                arrayList.clear();
                            }
                            String[] m65774c = next.m65774c(substring, c == 0);
                            boolean z2 = m65774c.length > 1 && z;
                            for (C18670b c18670b : linkedHashSet) {
                                int length = m65774c.length;
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= length) {
                                        str3 = m65766a;
                                        break;
                                    }
                                    String str4 = m65774c[i3];
                                    C18670b m65769a = z2 ? c18670b.m65769a() : c18670b;
                                    str3 = m65766a;
                                    m65769a.m65771c(str4, (c == 'm' && charAt == 'n') || (c == 'n' && charAt == 'm'));
                                    if (z) {
                                        arrayList.add(m65769a);
                                        i3++;
                                        m65766a = str3;
                                    }
                                }
                                m65766a = str3;
                            }
                            str2 = m65766a;
                            if (z) {
                                linkedHashSet.clear();
                                linkedHashSet.addAll(arrayList);
                            }
                            i = 1;
                            i2 += next.m65773b() - 1;
                        }
                    }
                    c = charAt;
                    i2 += i;
                    m65766a = str2;
                }
            }
            str2 = m65766a;
            i = 1;
            i2 += i;
            m65766a = str2;
        }
        String[] strArr = new String[linkedHashSet.size()];
        int i4 = 0;
        for (C18670b c18670b2 : linkedHashSet) {
            c18670b2.m65770b();
            strArr[i4] = c18670b2.toString();
            i4++;
        }
        return strArr;
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("Parameter supplied to DaitchMokotoffSoundex encode is not of type java.lang.String");
    }

    public String soundex(String str) {
        String[] m65767c = m65767c(str, true);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (String str2 : m65767c) {
            sb.append(str2);
            i++;
            if (i < m65767c.length) {
                sb.append('|');
            }
        }
        return sb.toString();
    }

    public DaitchMokotoffSoundex(boolean z) {
        this.f104750a = z;
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        if (str == null) {
            return null;
        }
        return m65767c(str, false)[0];
    }
}
