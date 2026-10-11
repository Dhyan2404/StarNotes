package com.sunia.HTREnginev2;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.ColorInt;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes6.dex */
public final class k2e {

    /* renamed from: a */
    public static final short f74940a = 2;

    /* renamed from: b */
    public static final short f74941b = 1;

    /* renamed from: c */
    public static final short f74942c = 512;

    /* renamed from: d */
    public static final short f74943d = 513;

    /* renamed from: e */
    public static final short f74944e = 514;

    /* renamed from: f */
    public static final byte f74945f = 1;

    /* renamed from: g */
    public static final byte f74946g = Byte.MAX_VALUE;

    /* renamed from: h */
    public static final String f74947h = "color";

    /* renamed from: i */
    public static byte f74948i;

    /* renamed from: j */
    public static final C13969d f74949j = new C13969d(1, "android");

    /* renamed from: k */
    public static final Comparator<C13967b> f74950k = new C13966a();

    /* renamed from: com.sunia.HTREnginev2.k2e$a */
    /* loaded from: classes6.dex */
    public class C13966a implements Comparator<C13967b> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C13967b c13967b, C13967b c13967b2) {
            return c13967b.f74953c - c13967b2.f74953c;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$b */
    /* loaded from: classes6.dex */
    public static class C13967b {

        /* renamed from: a */
        public final byte f74951a;

        /* renamed from: b */
        public final byte f74952b;

        /* renamed from: c */
        public final short f74953c;

        /* renamed from: d */
        public final String f74954d;

        /* renamed from: e */
        @ColorInt
        public final int f74955e;

        public C13967b(int i, String str, int i2) {
            this.f74954d = str;
            this.f74955e = i2;
            this.f74953c = (short) (65535 & i);
            this.f74952b = (byte) ((i >> 16) & 255);
            this.f74951a = (byte) ((i >> 24) & 255);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$c */
    /* loaded from: classes6.dex */
    public static class C13968c {

        /* renamed from: f */
        public static final short f74956f = 288;

        /* renamed from: g */
        public static final int f74957g = 128;

        /* renamed from: a */
        public final C13970e f74958a;

        /* renamed from: b */
        public final C13969d f74959b;

        /* renamed from: c */
        public final C13973h f74960c = new C13973h(false, "?1", "?2", "?3", "?4", "?5", "color");

        /* renamed from: d */
        public final C13973h f74961d;

        /* renamed from: e */
        public final C13976k f74962e;

        public C13968c(C13969d c13969d, List<C13967b> list) {
            this.f74959b = c13969d;
            String[] strArr = new String[list.size()];
            for (int i = 0; i < list.size(); i++) {
                strArr[i] = list.get(i).f74954d;
            }
            this.f74961d = new C13973h(true, strArr);
            this.f74962e = new C13976k(list);
            this.f74958a = new C13970e((short) 512, f74956f, m55141a());
        }

        /* renamed from: a */
        public int m55141a() {
            return this.f74960c.m55149a() + 288 + this.f74961d.m55149a() + this.f74962e.m55159b();
        }

        /* renamed from: b */
        public void m55142b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f74958a.m55145a(byteArrayOutputStream);
            byteArrayOutputStream.write(k2e.m55131j(this.f74959b.f74963a));
            char[] charArray = this.f74959b.f74964b.toCharArray();
            for (int i = 0; i < 128; i++) {
                if (i < charArray.length) {
                    byteArrayOutputStream.write(k2e.m55129h(charArray[i]));
                } else {
                    byteArrayOutputStream.write(k2e.m55129h((char) 0));
                }
            }
            byteArrayOutputStream.write(k2e.m55131j(288));
            byteArrayOutputStream.write(k2e.m55131j(0));
            byteArrayOutputStream.write(k2e.m55131j(this.f74960c.m55149a() + 288));
            byteArrayOutputStream.write(k2e.m55131j(0));
            byteArrayOutputStream.write(k2e.m55131j(0));
            this.f74960c.m55151c(byteArrayOutputStream);
            this.f74961d.m55151c(byteArrayOutputStream);
            this.f74962e.m55160c(byteArrayOutputStream);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$d */
    /* loaded from: classes6.dex */
    public static class C13969d {

        /* renamed from: a */
        public final int f74963a;

        /* renamed from: b */
        public final String f74964b;

        public C13969d(int i, String str) {
            this.f74963a = i;
            this.f74964b = str;
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$e */
    /* loaded from: classes6.dex */
    public static class C13970e {

        /* renamed from: a */
        public final short f74965a;

        /* renamed from: b */
        public final short f74966b;

        /* renamed from: c */
        public final int f74967c;

        public C13970e(short s, short s2, int i) {
            this.f74965a = s;
            this.f74966b = s2;
            this.f74967c = i;
        }

        /* renamed from: a */
        public void m55145a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(k2e.m55132k(this.f74965a));
            byteArrayOutputStream.write(k2e.m55132k(this.f74966b));
            byteArrayOutputStream.write(k2e.m55131j(this.f74967c));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$f */
    /* loaded from: classes6.dex */
    public static class C13971f {

        /* renamed from: c */
        public static final short f74968c = 8;

        /* renamed from: d */
        public static final short f74969d = 2;

        /* renamed from: e */
        public static final short f74970e = 8;

        /* renamed from: f */
        public static final byte f74971f = 28;

        /* renamed from: g */
        public static final int f74972g = 16;

        /* renamed from: a */
        public final int f74973a;

        /* renamed from: b */
        public final int f74974b;

        public C13971f(int i, @ColorInt int i2) {
            this.f74973a = i;
            this.f74974b = i2;
        }

        /* renamed from: a */
        public void m55146a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(k2e.m55132k((short) 8));
            byteArrayOutputStream.write(k2e.m55132k((short) 2));
            byteArrayOutputStream.write(k2e.m55131j(this.f74973a));
            byteArrayOutputStream.write(k2e.m55132k((short) 8));
            byteArrayOutputStream.write(new byte[]{0, 28});
            byteArrayOutputStream.write(k2e.m55131j(this.f74974b));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$g */
    /* loaded from: classes6.dex */
    public static class C13972g {

        /* renamed from: e */
        public static final short f74975e = 12;

        /* renamed from: a */
        public final C13970e f74976a;

        /* renamed from: b */
        public final int f74977b;

        /* renamed from: d */
        public final List<C13968c> f74979d = new ArrayList();

        /* renamed from: c */
        public final C13973h f74978c = new C13973h(new String[0]);

        public C13972g(Map<C13969d, List<C13967b>> map) {
            this.f74977b = map.size();
            for (Map.Entry<C13969d, List<C13967b>> entry : map.entrySet()) {
                List<C13967b> value = entry.getValue();
                Collections.sort(value, k2e.f74950k);
                this.f74979d.add(new C13968c(entry.getKey(), value));
            }
            this.f74976a = new C13970e((short) 2, (short) 12, m55147a());
        }

        /* renamed from: a */
        public final int m55147a() {
            Iterator<C13968c> it2 = this.f74979d.iterator();
            int i = 0;
            while (it2.hasNext()) {
                i += it2.next().m55141a();
            }
            return this.f74978c.m55149a() + 12 + i;
        }

        /* renamed from: b */
        public void m55148b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f74976a.m55145a(byteArrayOutputStream);
            byteArrayOutputStream.write(k2e.m55131j(this.f74977b));
            this.f74978c.m55151c(byteArrayOutputStream);
            Iterator<C13968c> it2 = this.f74979d.iterator();
            while (it2.hasNext()) {
                it2.next().m55142b(byteArrayOutputStream);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$h */
    /* loaded from: classes6.dex */
    public static class C13973h {

        /* renamed from: m */
        public static final short f74980m = 28;

        /* renamed from: n */
        public static final int f74981n = 256;

        /* renamed from: o */
        public static final int f74982o = -1;

        /* renamed from: a */
        public final C13970e f74983a;

        /* renamed from: b */
        public final int f74984b;

        /* renamed from: c */
        public final int f74985c;

        /* renamed from: d */
        public final int f74986d;

        /* renamed from: e */
        public final int f74987e;

        /* renamed from: f */
        public final List<Integer> f74988f;

        /* renamed from: g */
        public final List<Integer> f74989g;

        /* renamed from: h */
        public final List<byte[]> f74990h;

        /* renamed from: i */
        public final List<List<C13974i>> f74991i;

        /* renamed from: j */
        public final boolean f74992j;

        /* renamed from: k */
        public final int f74993k;

        /* renamed from: l */
        public final int f74994l;

        public C13973h(String... strArr) {
            this(false, strArr);
        }

        /* renamed from: a */
        public int m55149a() {
            return this.f74994l;
        }

        /* renamed from: b */
        public final Pair<byte[], List<C13974i>> m55150b(String str) {
            return new Pair<>(this.f74992j ? k2e.m55134m(str) : k2e.m55133l(str), Collections.emptyList());
        }

        /* renamed from: c */
        public void m55151c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f74983a.m55145a(byteArrayOutputStream);
            byteArrayOutputStream.write(k2e.m55131j(this.f74984b));
            byteArrayOutputStream.write(k2e.m55131j(this.f74985c));
            byteArrayOutputStream.write(k2e.m55131j(this.f74992j ? 256 : 0));
            byteArrayOutputStream.write(k2e.m55131j(this.f74986d));
            byteArrayOutputStream.write(k2e.m55131j(this.f74987e));
            Iterator<Integer> it2 = this.f74988f.iterator();
            while (it2.hasNext()) {
                byteArrayOutputStream.write(k2e.m55131j(it2.next().intValue()));
            }
            Iterator<Integer> it3 = this.f74989g.iterator();
            while (it3.hasNext()) {
                byteArrayOutputStream.write(k2e.m55131j(it3.next().intValue()));
            }
            Iterator<byte[]> it4 = this.f74990h.iterator();
            while (it4.hasNext()) {
                byteArrayOutputStream.write(it4.next());
            }
            int i = this.f74993k;
            if (i > 0) {
                byteArrayOutputStream.write(new byte[i]);
            }
            Iterator<List<C13974i>> it5 = this.f74991i.iterator();
            while (it5.hasNext()) {
                Iterator<C13974i> it6 = it5.next().iterator();
                while (it6.hasNext()) {
                    it6.next().m55153b(byteArrayOutputStream);
                }
                byteArrayOutputStream.write(k2e.m55131j(-1));
            }
        }

        public C13973h(boolean z, String... strArr) {
            this.f74988f = new ArrayList();
            this.f74989g = new ArrayList();
            this.f74990h = new ArrayList();
            this.f74991i = new ArrayList();
            this.f74992j = z;
            int i = 0;
            for (String str : strArr) {
                Pair<byte[], List<C13974i>> m55150b = m55150b(str);
                this.f74988f.add(Integer.valueOf(i));
                Object obj = m55150b.first;
                i += ((byte[]) obj).length;
                this.f74990h.add((byte[]) obj);
                this.f74991i.add((List) m55150b.second);
            }
            int i2 = 0;
            for (List<C13974i> list : this.f74991i) {
                for (C13974i c13974i : list) {
                    this.f74988f.add(Integer.valueOf(i));
                    i += c13974i.f74995a.length;
                    this.f74990h.add(c13974i.f74995a);
                }
                this.f74989g.add(Integer.valueOf(i2));
                i2 += (list.size() * 12) + 4;
            }
            int i3 = i % 4;
            int i4 = i3 == 0 ? 0 : 4 - i3;
            this.f74993k = i4;
            int size = this.f74990h.size();
            this.f74984b = size;
            this.f74985c = this.f74990h.size() - strArr.length;
            boolean z2 = this.f74990h.size() - strArr.length > 0;
            if (!z2) {
                this.f74989g.clear();
                this.f74991i.clear();
            }
            int size2 = (size * 4) + 28 + (this.f74989g.size() * 4);
            this.f74986d = size2;
            int i5 = i + i4;
            this.f74987e = z2 ? size2 + i5 : 0;
            int i6 = size2 + i5 + (z2 ? i2 : 0);
            this.f74994l = i6;
            this.f74983a = new C13970e((short) 1, (short) 28, i6);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$i */
    /* loaded from: classes6.dex */
    public static class C13974i {

        /* renamed from: a */
        public byte[] f74995a;

        /* renamed from: b */
        public int f74996b;

        /* renamed from: c */
        public int f74997c;

        /* renamed from: d */
        public int f74998d;

        /* renamed from: b */
        public void m55153b(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            byteArrayOutputStream.write(k2e.m55131j(this.f74996b));
            byteArrayOutputStream.write(k2e.m55131j(this.f74997c));
            byteArrayOutputStream.write(k2e.m55131j(this.f74998d));
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$j */
    /* loaded from: classes6.dex */
    public static class C13975j {

        /* renamed from: f */
        public static final int f74999f = -1;

        /* renamed from: g */
        public static final short f75000g = 84;

        /* renamed from: h */
        public static final byte f75001h = 64;

        /* renamed from: a */
        public final C13970e f75002a;

        /* renamed from: b */
        public final int f75003b;

        /* renamed from: c */
        public final byte[] f75004c;

        /* renamed from: d */
        public final int[] f75005d;

        /* renamed from: e */
        public final C13971f[] f75006e;

        public C13975j(List<C13967b> list, Set<Short> set, int i) {
            byte[] bArr = new byte[64];
            this.f75004c = bArr;
            this.f75003b = i;
            bArr[0] = 64;
            this.f75006e = new C13971f[list.size()];
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f75006e[i2] = new C13971f(i2, list.get(i2).f74955e);
            }
            this.f75005d = new int[i];
            int i3 = 0;
            for (short s = 0; s < i; s = (short) (s + 1)) {
                if (set.contains(Short.valueOf(s))) {
                    this.f75005d[s] = i3;
                    i3 += 16;
                } else {
                    this.f75005d[s] = -1;
                }
            }
            this.f75002a = new C13970e((short) 513, (short) 84, m55154a());
        }

        /* renamed from: a */
        public int m55154a() {
            return m55155b() + (this.f75006e.length * 16);
        }

        /* renamed from: b */
        public final int m55155b() {
            return m55156c() + 84;
        }

        /* renamed from: c */
        public final int m55156c() {
            return this.f75005d.length * 4;
        }

        /* renamed from: d */
        public void m55157d(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f75002a.m55145a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{k2e.f74948i, 0, 0, 0});
            byteArrayOutputStream.write(k2e.m55131j(this.f75003b));
            byteArrayOutputStream.write(k2e.m55131j(m55155b()));
            byteArrayOutputStream.write(this.f75004c);
            for (int i : this.f75005d) {
                byteArrayOutputStream.write(k2e.m55131j(i));
            }
            for (C13971f c13971f : this.f75006e) {
                c13971f.m55146a(byteArrayOutputStream);
            }
        }
    }

    /* renamed from: com.sunia.HTREnginev2.k2e$k */
    /* loaded from: classes6.dex */
    public static class C13976k {

        /* renamed from: e */
        public static final short f75007e = 16;

        /* renamed from: f */
        public static final int f75008f = 1073741824;

        /* renamed from: a */
        public final C13970e f75009a;

        /* renamed from: b */
        public final int f75010b;

        /* renamed from: c */
        public final int[] f75011c;

        /* renamed from: d */
        public final C13975j f75012d;

        public C13976k(List<C13967b> list) {
            this.f75010b = list.get(list.size() - 1).f74953c + 1;
            HashSet hashSet = new HashSet();
            Iterator<C13967b> it2 = list.iterator();
            while (it2.hasNext()) {
                hashSet.add(Short.valueOf(it2.next().f74953c));
            }
            this.f75011c = new int[this.f75010b];
            for (short s = 0; s < this.f75010b; s = (short) (s + 1)) {
                if (hashSet.contains(Short.valueOf(s))) {
                    this.f75011c[s] = 1073741824;
                }
            }
            this.f75009a = new C13970e(k2e.f74944e, (short) 16, m55158a());
            this.f75012d = new C13975j(list, hashSet, this.f75010b);
        }

        /* renamed from: a */
        public final int m55158a() {
            return (this.f75010b * 4) + 16;
        }

        /* renamed from: b */
        public int m55159b() {
            return m55158a() + this.f75012d.m55154a();
        }

        /* renamed from: c */
        public void m55160c(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
            this.f75009a.m55145a(byteArrayOutputStream);
            byteArrayOutputStream.write(new byte[]{k2e.f74948i, 0, 0, 0});
            byteArrayOutputStream.write(k2e.m55131j(this.f75010b));
            for (int i : this.f75011c) {
                byteArrayOutputStream.write(k2e.m55131j(i));
            }
            this.f75012d.m55157d(byteArrayOutputStream);
        }
    }

    /* renamed from: h */
    public static byte[] m55129h(char c) {
        return new byte[]{(byte) (c & 255), (byte) ((c >> '\b') & 255)};
    }

    /* renamed from: i */
    public static byte[] m55130i(Context context, Map<Integer, Integer> map) throws IOException {
        C13969d c13969d;
        if (map.entrySet().isEmpty()) {
            throw new IllegalArgumentException("No color resources provided for harmonization.");
        }
        C13969d c13969d2 = new C13969d(127, context.getPackageName());
        HashMap hashMap = new HashMap();
        C13967b c13967b = null;
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            C13967b c13967b2 = new C13967b(entry.getKey().intValue(), context.getResources().getResourceName(entry.getKey().intValue()), entry.getValue().intValue());
            if (!context.getResources().getResourceTypeName(entry.getKey().intValue()).equals("color")) {
                throw new IllegalArgumentException("Non color resource found: name=" + c13967b2.f74954d + ", typeId=" + Integer.toHexString(c13967b2.f74952b & 255));
            }
            if (c13967b2.f74951a == 1) {
                c13969d = f74949j;
            } else {
                if (c13967b2.f74951a != Byte.MAX_VALUE) {
                    throw new IllegalArgumentException("Not supported with unknown package id: " + ((int) c13967b2.f74951a));
                }
                c13969d = c13969d2;
            }
            if (!hashMap.containsKey(c13969d)) {
                hashMap.put(c13969d, new ArrayList());
            }
            ((List) hashMap.get(c13969d)).add(c13967b2);
            c13967b = c13967b2;
        }
        byte b = c13967b.f74952b;
        f74948i = b;
        if (b == 0) {
            throw new IllegalArgumentException("No color resources found for harmonization.");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        new C13972g(hashMap).m55148b(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: j */
    public static byte[] m55131j(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)};
    }

    /* renamed from: k */
    public static byte[] m55132k(short s) {
        return new byte[]{(byte) (s & 255), (byte) ((s >> 8) & 255)};
    }

    /* renamed from: l */
    public static byte[] m55133l(String str) {
        char[] charArray = str.toCharArray();
        int length = (charArray.length * 2) + 4;
        byte[] bArr = new byte[length];
        byte[] m55132k = m55132k((short) charArray.length);
        bArr[0] = m55132k[0];
        bArr[1] = m55132k[1];
        for (int i = 0; i < charArray.length; i++) {
            byte[] m55129h = m55129h(charArray[i]);
            int i2 = i * 2;
            bArr[i2 + 2] = m55129h[0];
            bArr[i2 + 3] = m55129h[1];
        }
        bArr[length - 2] = 0;
        bArr[length - 1] = 0;
        return bArr;
    }

    /* renamed from: m */
    public static byte[] m55134m(String str) {
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        byte length = (byte) bytes.length;
        int length2 = bytes.length + 3;
        byte[] bArr = new byte[length2];
        System.arraycopy(bytes, 0, bArr, 2, length);
        bArr[1] = length;
        bArr[0] = length;
        bArr[length2 - 1] = 0;
        return bArr;
    }
}
