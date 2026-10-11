package androidx.profileinstaller;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.alibaba.fastjson2.JSONB;
import com.sunia.HTREnginev2.e4f;
import com.sunia.HTREnginev2.ipf;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

@RequiresApi(19)
/* renamed from: androidx.profileinstaller.b */
/* loaded from: classes3.dex */
public class C1306b {

    /* renamed from: a */
    public static final int f9153a = 1;

    /* renamed from: b */
    public static final int f9154b = 2;

    /* renamed from: c */
    public static final int f9155c = 4;

    /* renamed from: d */
    public static final int f9156d = 6;

    /* renamed from: e */
    public static final int f9157e = 7;

    /* renamed from: f */
    public static final byte[] f9158f = {112, 114, 111, 0};

    /* renamed from: g */
    public static final byte[] f9159g = {112, 114, JSONB.Constants.BC_STR_ASCII_FIX_36, 0};

    /* renamed from: A */
    public static void m5456A(@NonNull InputStream inputStream) throws IOException {
        ipf.m54756h(inputStream);
        int m54758j = ipf.m54758j(inputStream);
        if (m54758j == 6 || m54758j == 7) {
            return;
        }
        while (m54758j > 0) {
            ipf.m54758j(inputStream);
            for (int m54758j2 = ipf.m54758j(inputStream); m54758j2 > 0; m54758j2--) {
                ipf.m54756h(inputStream);
            }
            m54758j--;
        }
    }

    /* renamed from: B */
    public static boolean m5457B(@NonNull OutputStream outputStream, @NonNull byte[] bArr, @NonNull e4f[] e4fVarArr) throws IOException {
        if (Arrays.equals(bArr, ProfileVersion.f9146a)) {
            m5469N(outputStream, e4fVarArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.f9147b)) {
            m5468M(outputStream, e4fVarArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.f9149d)) {
            m5466K(outputStream, e4fVarArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.f9148c)) {
            m5467L(outputStream, e4fVarArr);
            return true;
        }
        if (!Arrays.equals(bArr, ProfileVersion.f9150e)) {
            return false;
        }
        m5465J(outputStream, e4fVarArr);
        return true;
    }

    /* renamed from: C */
    public static void m5458C(@NonNull OutputStream outputStream, @NonNull e4f e4fVar) throws IOException {
        int i = 0;
        for (int i2 : e4fVar.f68575h) {
            Integer valueOf = Integer.valueOf(i2);
            ipf.m54764p(outputStream, valueOf.intValue() - i);
            i = valueOf.intValue();
        }
    }

    /* renamed from: D */
    public static C1307c m5459D(@NonNull e4f[] e4fVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ipf.m54764p(byteArrayOutputStream, e4fVarArr.length);
            int i = 2;
            for (e4f e4fVar : e4fVarArr) {
                ipf.m54765q(byteArrayOutputStream, e4fVar.f68570c);
                ipf.m54765q(byteArrayOutputStream, e4fVar.f68571d);
                ipf.m54765q(byteArrayOutputStream, e4fVar.f68574g);
                String m5480j = m5480j(e4fVar.f68568a, e4fVar.f68569b, ProfileVersion.f9146a);
                int m54759k = ipf.m54759k(m5480j);
                ipf.m54764p(byteArrayOutputStream, m54759k);
                i = i + 4 + 4 + 4 + 2 + (m54759k * 1);
                ipf.m54762n(byteArrayOutputStream, m5480j);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (i == byteArray.length) {
                C1307c c1307c = new C1307c(FileSectionType.DEX_FILES, i, byteArray, false);
                byteArrayOutputStream.close();
                return c1307c;
            }
            throw ipf.m54751c("Expected size " + i + ", does not match actual size " + byteArray.length);
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: E */
    public static void m5460E(@NonNull OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(f9158f);
        outputStream.write(bArr);
    }

    /* renamed from: F */
    public static void m5461F(@NonNull OutputStream outputStream, @NonNull e4f e4fVar) throws IOException {
        m5464I(outputStream, e4fVar);
        m5458C(outputStream, e4fVar);
        m5463H(outputStream, e4fVar);
    }

    /* renamed from: G */
    public static void m5462G(@NonNull OutputStream outputStream, @NonNull e4f e4fVar, @NonNull String str) throws IOException {
        ipf.m54764p(outputStream, ipf.m54759k(str));
        ipf.m54764p(outputStream, e4fVar.f68572e);
        ipf.m54765q(outputStream, e4fVar.f68573f);
        ipf.m54765q(outputStream, e4fVar.f68570c);
        ipf.m54765q(outputStream, e4fVar.f68574g);
        ipf.m54762n(outputStream, str);
    }

    /* renamed from: H */
    public static void m5463H(@NonNull OutputStream outputStream, @NonNull e4f e4fVar) throws IOException {
        byte[] bArr = new byte[m5481k(e4fVar.f68574g)];
        for (Map.Entry<Integer, Integer> entry : e4fVar.f68576i.entrySet()) {
            int intValue = entry.getKey().intValue();
            int intValue2 = entry.getValue().intValue();
            if ((intValue2 & 2) != 0) {
                m5496z(bArr, 2, intValue, e4fVar);
            }
            if ((intValue2 & 4) != 0) {
                m5496z(bArr, 4, intValue, e4fVar);
            }
        }
        outputStream.write(bArr);
    }

    /* renamed from: I */
    public static void m5464I(@NonNull OutputStream outputStream, @NonNull e4f e4fVar) throws IOException {
        int i = 0;
        for (Map.Entry<Integer, Integer> entry : e4fVar.f68576i.entrySet()) {
            int intValue = entry.getKey().intValue();
            if ((entry.getValue().intValue() & 1) != 0) {
                ipf.m54764p(outputStream, intValue - i);
                ipf.m54764p(outputStream, 0);
                i = intValue;
            }
        }
    }

    /* renamed from: J */
    public static void m5465J(@NonNull OutputStream outputStream, @NonNull e4f[] e4fVarArr) throws IOException {
        ipf.m54764p(outputStream, e4fVarArr.length);
        for (e4f e4fVar : e4fVarArr) {
            String m5480j = m5480j(e4fVar.f68568a, e4fVar.f68569b, ProfileVersion.f9150e);
            ipf.m54764p(outputStream, ipf.m54759k(m5480j));
            ipf.m54764p(outputStream, e4fVar.f68576i.size());
            ipf.m54764p(outputStream, e4fVar.f68575h.length);
            ipf.m54765q(outputStream, e4fVar.f68570c);
            ipf.m54762n(outputStream, m5480j);
            Iterator<Integer> it2 = e4fVar.f68576i.keySet().iterator();
            while (it2.hasNext()) {
                ipf.m54764p(outputStream, it2.next().intValue());
            }
            for (int i : e4fVar.f68575h) {
                ipf.m54764p(outputStream, i);
            }
        }
    }

    /* renamed from: K */
    public static void m5466K(@NonNull OutputStream outputStream, @NonNull e4f[] e4fVarArr) throws IOException {
        ipf.m54766r(outputStream, e4fVarArr.length);
        for (e4f e4fVar : e4fVarArr) {
            int size = e4fVar.f68576i.size() * 4;
            String m5480j = m5480j(e4fVar.f68568a, e4fVar.f68569b, ProfileVersion.f9149d);
            ipf.m54764p(outputStream, ipf.m54759k(m5480j));
            ipf.m54764p(outputStream, e4fVar.f68575h.length);
            ipf.m54765q(outputStream, size);
            ipf.m54765q(outputStream, e4fVar.f68570c);
            ipf.m54762n(outputStream, m5480j);
            Iterator<Integer> it2 = e4fVar.f68576i.keySet().iterator();
            while (it2.hasNext()) {
                ipf.m54764p(outputStream, it2.next().intValue());
                ipf.m54764p(outputStream, 0);
            }
            for (int i : e4fVar.f68575h) {
                ipf.m54764p(outputStream, i);
            }
        }
    }

    /* renamed from: L */
    public static void m5467L(@NonNull OutputStream outputStream, @NonNull e4f[] e4fVarArr) throws IOException {
        byte[] m5472b = m5472b(e4fVarArr, ProfileVersion.f9148c);
        ipf.m54766r(outputStream, e4fVarArr.length);
        ipf.m54761m(outputStream, m5472b);
    }

    /* renamed from: M */
    public static void m5468M(@NonNull OutputStream outputStream, @NonNull e4f[] e4fVarArr) throws IOException {
        byte[] m5472b = m5472b(e4fVarArr, ProfileVersion.f9147b);
        ipf.m54766r(outputStream, e4fVarArr.length);
        ipf.m54761m(outputStream, m5472b);
    }

    /* renamed from: N */
    public static void m5469N(@NonNull OutputStream outputStream, @NonNull e4f[] e4fVarArr) throws IOException {
        m5470O(outputStream, e4fVarArr);
    }

    /* renamed from: O */
    public static void m5470O(@NonNull OutputStream outputStream, @NonNull e4f[] e4fVarArr) throws IOException {
        int length;
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(m5459D(e4fVarArr));
        arrayList.add(m5473c(e4fVarArr));
        arrayList.add(m5474d(e4fVarArr));
        long length2 = ProfileVersion.f9146a.length + f9158f.length + 4 + (arrayList.size() * 16);
        ipf.m54765q(outputStream, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            C1307c c1307c = (C1307c) arrayList.get(i);
            ipf.m54765q(outputStream, c1307c.f9160a.getValue());
            ipf.m54765q(outputStream, length2);
            if (c1307c.f9163d) {
                byte[] bArr = c1307c.f9162c;
                long length3 = bArr.length;
                byte[] m54750b = ipf.m54750b(bArr);
                arrayList2.add(m54750b);
                ipf.m54765q(outputStream, m54750b.length);
                ipf.m54765q(outputStream, length3);
                length = m54750b.length;
            } else {
                arrayList2.add(c1307c.f9162c);
                ipf.m54765q(outputStream, c1307c.f9162c.length);
                ipf.m54765q(outputStream, 0L);
                length = c1307c.f9162c.length;
            }
            length2 += length;
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            outputStream.write((byte[]) arrayList2.get(i2));
        }
    }

    /* renamed from: a */
    public static int m5471a(@NonNull e4f e4fVar) {
        Iterator<Map.Entry<Integer, Integer>> it2 = e4fVar.f68576i.entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i |= it2.next().getValue().intValue();
        }
        return i;
    }

    @NonNull
    /* renamed from: b */
    public static byte[] m5472b(@NonNull e4f[] e4fVarArr, @NonNull byte[] bArr) throws IOException {
        int i = 0;
        int i2 = 0;
        for (e4f e4fVar : e4fVarArr) {
            i2 += ipf.m54759k(m5480j(e4fVar.f68568a, e4fVar.f68569b, bArr)) + 16 + (e4fVar.f68572e * 2) + e4fVar.f68573f + m5481k(e4fVar.f68574g);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, ProfileVersion.f9148c)) {
            int length = e4fVarArr.length;
            while (i < length) {
                e4f e4fVar2 = e4fVarArr[i];
                m5462G(byteArrayOutputStream, e4fVar2, m5480j(e4fVar2.f68568a, e4fVar2.f68569b, bArr));
                m5461F(byteArrayOutputStream, e4fVar2);
                i++;
            }
        } else {
            for (e4f e4fVar3 : e4fVarArr) {
                m5462G(byteArrayOutputStream, e4fVar3, m5480j(e4fVar3.f68568a, e4fVar3.f68569b, bArr));
            }
            int length2 = e4fVarArr.length;
            while (i < length2) {
                m5461F(byteArrayOutputStream, e4fVarArr[i]);
                i++;
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw ipf.m54751c("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    /* renamed from: c */
    public static C1307c m5473c(@NonNull e4f[] e4fVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        for (int i2 = 0; i2 < e4fVarArr.length; i2++) {
            try {
                e4f e4fVar = e4fVarArr[i2];
                ipf.m54764p(byteArrayOutputStream, i2);
                ipf.m54764p(byteArrayOutputStream, e4fVar.f68572e);
                i = i + 2 + 2 + (e4fVar.f68572e * 2);
                m5458C(byteArrayOutputStream, e4fVar);
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i == byteArray.length) {
            C1307c c1307c = new C1307c(FileSectionType.CLASSES, i, byteArray, true);
            byteArrayOutputStream.close();
            return c1307c;
        }
        throw ipf.m54751c("Expected size " + i + ", does not match actual size " + byteArray.length);
    }

    /* renamed from: d */
    public static C1307c m5474d(@NonNull e4f[] e4fVarArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        for (int i2 = 0; i2 < e4fVarArr.length; i2++) {
            try {
                e4f e4fVar = e4fVarArr[i2];
                int m5471a = m5471a(e4fVar);
                byte[] m5475e = m5475e(e4fVar);
                byte[] m5476f = m5476f(e4fVar);
                ipf.m54764p(byteArrayOutputStream, i2);
                int length = m5475e.length + 2 + m5476f.length;
                ipf.m54765q(byteArrayOutputStream, length);
                ipf.m54764p(byteArrayOutputStream, m5471a);
                byteArrayOutputStream.write(m5475e);
                byteArrayOutputStream.write(m5476f);
                i = i + 2 + 4 + length;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i == byteArray.length) {
            C1307c c1307c = new C1307c(FileSectionType.METHODS, i, byteArray, true);
            byteArrayOutputStream.close();
            return c1307c;
        }
        throw ipf.m54751c("Expected size " + i + ", does not match actual size " + byteArray.length);
    }

    /* renamed from: e */
    public static byte[] m5475e(@NonNull e4f e4fVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            m5463H(byteArrayOutputStream, e4fVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: f */
    public static byte[] m5476f(@NonNull e4f e4fVar) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            m5464I(byteArrayOutputStream, e4fVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    /* renamed from: g */
    public static String m5477g(@NonNull String str, @NonNull String str2) {
        return "!".equals(str2) ? str.replace(":", "!") : ":".equals(str2) ? str.replace("!", ":") : str;
    }

    @NonNull
    /* renamed from: h */
    public static String m5478h(@NonNull String str) {
        int indexOf = str.indexOf("!");
        if (indexOf < 0) {
            indexOf = str.indexOf(":");
        }
        return indexOf > 0 ? str.substring(indexOf + 1) : str;
    }

    @Nullable
    /* renamed from: i */
    public static e4f m5479i(@NonNull e4f[] e4fVarArr, @NonNull String str) {
        if (e4fVarArr.length <= 0) {
            return null;
        }
        String m5478h = m5478h(str);
        for (int i = 0; i < e4fVarArr.length; i++) {
            if (e4fVarArr[i].f68569b.equals(m5478h)) {
                return e4fVarArr[i];
            }
        }
        return null;
    }

    @NonNull
    /* renamed from: j */
    public static String m5480j(@NonNull String str, @NonNull String str2, @NonNull byte[] bArr) {
        String m5451a = ProfileVersion.m5451a(bArr);
        if (str.length() <= 0) {
            return m5477g(str2, m5451a);
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return m5477g(str2, m5451a);
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        return str + ProfileVersion.m5451a(bArr) + str2;
    }

    /* renamed from: k */
    public static int m5481k(int i) {
        return m5495y(i * 2) / 8;
    }

    /* renamed from: l */
    public static int m5482l(int i, int i2, int i3) {
        if (i == 1) {
            throw ipf.m54751c("HOT methods are not stored in the bitmap");
        }
        if (i == 2) {
            return i2;
        }
        if (i == 4) {
            return i2 + i3;
        }
        throw ipf.m54751c("Unexpected flag: " + i);
    }

    /* renamed from: m */
    public static int[] m5483m(@NonNull InputStream inputStream, int i) throws IOException {
        int[] iArr = new int[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += ipf.m54756h(inputStream);
            iArr[i3] = i2;
        }
        return iArr;
    }

    /* renamed from: n */
    public static int m5484n(@NonNull BitSet bitSet, int i, int i2) {
        int i3 = bitSet.get(m5482l(2, i, i2)) ? 2 : 0;
        return bitSet.get(m5482l(4, i, i2)) ? i3 | 4 : i3;
    }

    /* renamed from: o */
    public static byte[] m5485o(@NonNull InputStream inputStream, @NonNull byte[] bArr) throws IOException {
        if (Arrays.equals(bArr, ipf.m54752d(inputStream, bArr.length))) {
            return ipf.m54752d(inputStream, ProfileVersion.f9147b.length);
        }
        throw ipf.m54751c("Invalid magic");
    }

    /* renamed from: p */
    public static void m5486p(@NonNull InputStream inputStream, @NonNull e4f e4fVar) throws IOException {
        int available = inputStream.available() - e4fVar.f68573f;
        int i = 0;
        while (inputStream.available() > available) {
            i += ipf.m54756h(inputStream);
            e4fVar.f68576i.put(Integer.valueOf(i), 1);
            for (int m54756h = ipf.m54756h(inputStream); m54756h > 0; m54756h--) {
                m5456A(inputStream);
            }
        }
        if (inputStream.available() != available) {
            throw ipf.m54751c("Read too much data during profile line parse");
        }
    }

    @NonNull
    /* renamed from: q */
    public static e4f[] m5487q(@NonNull InputStream inputStream, @NonNull byte[] bArr, @NonNull byte[] bArr2, e4f[] e4fVarArr) throws IOException {
        if (Arrays.equals(bArr, ProfileVersion.f9151f)) {
            if (Arrays.equals(ProfileVersion.f9146a, bArr2)) {
                throw ipf.m54751c("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            }
            return m5488r(inputStream, bArr, e4fVarArr);
        }
        if (Arrays.equals(bArr, ProfileVersion.f9152g)) {
            return m5490t(inputStream, bArr2, e4fVarArr);
        }
        throw ipf.m54751c("Unsupported meta version");
    }

    @NonNull
    /* renamed from: r */
    public static e4f[] m5488r(@NonNull InputStream inputStream, @NonNull byte[] bArr, e4f[] e4fVarArr) throws IOException {
        if (!Arrays.equals(bArr, ProfileVersion.f9151f)) {
            throw ipf.m54751c("Unsupported meta version");
        }
        int m54758j = ipf.m54758j(inputStream);
        byte[] m54753e = ipf.m54753e(inputStream, (int) ipf.m54757i(inputStream), (int) ipf.m54757i(inputStream));
        if (inputStream.read() > 0) {
            throw ipf.m54751c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m54753e);
        try {
            e4f[] m5489s = m5489s(byteArrayInputStream, m54758j, e4fVarArr);
            byteArrayInputStream.close();
            return m5489s;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    /* renamed from: s */
    public static e4f[] m5489s(@NonNull InputStream inputStream, int i, e4f[] e4fVarArr) throws IOException {
        if (inputStream.available() == 0) {
            return new e4f[0];
        }
        if (i != e4fVarArr.length) {
            throw ipf.m54751c("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int m54756h = ipf.m54756h(inputStream);
            iArr[i2] = ipf.m54756h(inputStream);
            strArr[i2] = ipf.m54754f(inputStream, m54756h);
        }
        for (int i3 = 0; i3 < i; i3++) {
            e4f e4fVar = e4fVarArr[i3];
            if (!e4fVar.f68569b.equals(strArr[i3])) {
                throw ipf.m54751c("Order of dexfiles in metadata did not match baseline");
            }
            int i4 = iArr[i3];
            e4fVar.f68572e = i4;
            e4fVar.f68575h = m5483m(inputStream, i4);
        }
        return e4fVarArr;
    }

    @NonNull
    /* renamed from: t */
    public static e4f[] m5490t(@NonNull InputStream inputStream, @NonNull byte[] bArr, e4f[] e4fVarArr) throws IOException {
        int m54756h = ipf.m54756h(inputStream);
        byte[] m54753e = ipf.m54753e(inputStream, (int) ipf.m54757i(inputStream), (int) ipf.m54757i(inputStream));
        if (inputStream.read() > 0) {
            throw ipf.m54751c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m54753e);
        try {
            e4f[] m5491u = m5491u(byteArrayInputStream, bArr, m54756h, e4fVarArr);
            byteArrayInputStream.close();
            return m5491u;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    /* renamed from: u */
    public static e4f[] m5491u(@NonNull InputStream inputStream, @NonNull byte[] bArr, int i, e4f[] e4fVarArr) throws IOException {
        if (inputStream.available() == 0) {
            return new e4f[0];
        }
        if (i != e4fVarArr.length) {
            throw ipf.m54751c("Mismatched number of dex files found in metadata");
        }
        for (int i2 = 0; i2 < i; i2++) {
            ipf.m54756h(inputStream);
            String m54754f = ipf.m54754f(inputStream, ipf.m54756h(inputStream));
            long m54757i = ipf.m54757i(inputStream);
            int m54756h = ipf.m54756h(inputStream);
            e4f m5479i = m5479i(e4fVarArr, m54754f);
            if (m5479i == null) {
                throw ipf.m54751c("Missing profile key: " + m54754f);
            }
            m5479i.f68571d = m54757i;
            int[] m5483m = m5483m(inputStream, m54756h);
            if (Arrays.equals(bArr, ProfileVersion.f9150e)) {
                m5479i.f68572e = m54756h;
                m5479i.f68575h = m5483m;
            }
        }
        return e4fVarArr;
    }

    /* renamed from: v */
    public static void m5492v(@NonNull InputStream inputStream, @NonNull e4f e4fVar) throws IOException {
        BitSet valueOf = BitSet.valueOf(ipf.m54752d(inputStream, ipf.m54749a(e4fVar.f68574g * 2)));
        int i = 0;
        while (true) {
            int i2 = e4fVar.f68574g;
            if (i >= i2) {
                return;
            }
            int m5484n = m5484n(valueOf, i, i2);
            if (m5484n != 0) {
                Integer num = e4fVar.f68576i.get(Integer.valueOf(i));
                if (num == null) {
                    num = 0;
                }
                e4fVar.f68576i.put(Integer.valueOf(i), Integer.valueOf(m5484n | num.intValue()));
            }
            i++;
        }
    }

    @NonNull
    /* renamed from: w */
    public static e4f[] m5493w(@NonNull InputStream inputStream, @NonNull byte[] bArr, @NonNull String str) throws IOException {
        if (!Arrays.equals(bArr, ProfileVersion.f9147b)) {
            throw ipf.m54751c("Unsupported version");
        }
        int m54758j = ipf.m54758j(inputStream);
        byte[] m54753e = ipf.m54753e(inputStream, (int) ipf.m54757i(inputStream), (int) ipf.m54757i(inputStream));
        if (inputStream.read() > 0) {
            throw ipf.m54751c("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m54753e);
        try {
            e4f[] m5494x = m5494x(byteArrayInputStream, str, m54758j);
            byteArrayInputStream.close();
            return m5494x;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @NonNull
    /* renamed from: x */
    public static e4f[] m5494x(@NonNull InputStream inputStream, @NonNull String str, int i) throws IOException {
        if (inputStream.available() == 0) {
            return new e4f[0];
        }
        e4f[] e4fVarArr = new e4f[i];
        for (int i2 = 0; i2 < i; i2++) {
            int m54756h = ipf.m54756h(inputStream);
            int m54756h2 = ipf.m54756h(inputStream);
            e4fVarArr[i2] = new e4f(str, ipf.m54754f(inputStream, m54756h), ipf.m54757i(inputStream), 0L, m54756h2, (int) ipf.m54757i(inputStream), (int) ipf.m54757i(inputStream), new int[m54756h2], new TreeMap());
        }
        for (int i3 = 0; i3 < i; i3++) {
            e4f e4fVar = e4fVarArr[i3];
            m5486p(inputStream, e4fVar);
            e4fVar.f68575h = m5483m(inputStream, e4fVar.f68572e);
            m5492v(inputStream, e4fVar);
        }
        return e4fVarArr;
    }

    /* renamed from: y */
    public static int m5495y(int i) {
        return ((i + 8) - 1) & (-8);
    }

    /* renamed from: z */
    public static void m5496z(@NonNull byte[] bArr, int i, int i2, @NonNull e4f e4fVar) {
        int m5482l = m5482l(i, i2, e4fVar.f68574g);
        int i3 = m5482l / 8;
        bArr[i3] = (byte) ((1 << (m5482l % 8)) | bArr[i3]);
    }
}
