package net.p110sf.saxon.str;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.function.IntPredicate;
import net.p110sf.saxon.expr.sort.EmptyIntIterator;
import net.p110sf.saxon.p111z.IntIterator;

/* loaded from: classes11.dex */
public class ZenoString extends UnicodeString {
    public static final ZenoString EMPTY = new ZenoString();

    /* renamed from: e */
    public List<UnicodeString> f101722e = new ArrayList();

    /* renamed from: f */
    public List<Long> f101723f = new ArrayList();

    /* renamed from: net.sf.saxon.str.ZenoString$a */
    /* loaded from: classes11.dex */
    public class C18519a implements IntIterator {

        /* renamed from: a */
        public final Iterator<UnicodeString> f101724a;

        /* renamed from: b */
        public IntIterator f101725b;

        public C18519a() {
            this.f101724a = ZenoString.this.f101722e.iterator();
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public boolean hasNext() {
            IntIterator intIterator = this.f101725b;
            if (intIterator == null) {
                return this.f101724a.hasNext();
            }
            if (intIterator.hasNext()) {
                return true;
            }
            this.f101725b = null;
            return this.f101724a.hasNext();
        }

        @Override // net.p110sf.saxon.p111z.IntIterator
        public int next() {
            if (this.f101725b == null) {
                if (!this.f101724a.hasNext()) {
                    throw new NoSuchElementException();
                }
                this.f101725b = this.f101724a.next().codePoints();
            }
            return this.f101725b.next();
        }
    }

    public ZenoString() {
    }

    public static UnicodeString concatSegments(UnicodeString unicodeString, UnicodeString unicodeString2) {
        if (unicodeString.getWidth() <= 8 && unicodeString2.getWidth() <= 8) {
            byte[] bArr = new byte[unicodeString.length32() + unicodeString2.length32()];
            unicodeString.mo63880c(bArr, 0);
            unicodeString2.mo63880c(bArr, unicodeString.length32());
            return new Twine8(bArr);
        }
        if (unicodeString.getWidth() > 16 || unicodeString2.getWidth() > 16) {
            byte[] bArr2 = new byte[(unicodeString.length32() + unicodeString2.length32()) * 3];
            unicodeString.mo63879b(bArr2, 0);
            unicodeString2.mo63879b(bArr2, unicodeString.length32() * 3);
            return new Twine24(bArr2);
        }
        char[] cArr = new char[unicodeString.length32() + unicodeString2.length32()];
        unicodeString.mo63878a(cArr, 0);
        unicodeString2.mo63878a(cArr, unicodeString.length32());
        return new Twine16(cArr);
    }

    /* renamed from: of */
    public static ZenoString m63916of(UnicodeString unicodeString) {
        return unicodeString instanceof ZenoString ? (ZenoString) unicodeString : unicodeString.isEmpty() ? new ZenoString() : new ZenoString(unicodeString);
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: a */
    public void mo63878a(char[] cArr, int i) {
        for (UnicodeString unicodeString : this.f101722e) {
            unicodeString.mo63878a(cArr, i);
            i += unicodeString.length32();
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: b */
    public void mo63879b(byte[] bArr, int i) {
        for (UnicodeString unicodeString : this.f101722e) {
            unicodeString.mo63879b(bArr, i);
            i += unicodeString.length32() * 3;
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    /* renamed from: c */
    public void mo63880c(byte[] bArr, int i) {
        for (UnicodeString unicodeString : this.f101722e) {
            unicodeString.mo63880c(bArr, i);
            i += unicodeString.length32();
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int codePointAt(long j) {
        int m63921j = m63921j(j);
        return this.f101722e.get(m63921j).codePointAt(j - this.f101723f.get(m63921j).longValue());
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public IntIterator codePoints() {
        return isEmpty() ? EmptyIntIterator.getInstance() : new C18519a();
    }

    public List<Long> debugSegmentLengths() {
        ArrayList arrayList = new ArrayList(this.f101722e.size());
        Iterator<UnicodeString> it2 = this.f101722e.iterator();
        while (it2.hasNext()) {
            arrayList.add(Long.valueOf(it2.next().length()));
        }
        return arrayList;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString economize() {
        int size = this.f101722e.size();
        return size == 0 ? EmptyUnicodeString.getInstance() : size == 1 ? this.f101722e.get(0) : (size >= 32 || length() >= 256 || getWidth() > 16) ? this : new BMPString(toString());
    }

    /* renamed from: f */
    public final int m63917f(long j, int i, int i2) {
        if (i != i2) {
            int i3 = (((i2 - i) + 1) / 2) + i;
            return this.f101723f.get(i3).longValue() > j ? m63917f(j, i, i3 - 1) : m63917f(j, i3, i2);
        }
        long longValue = this.f101723f.get(i).longValue();
        long length = this.f101722e.get(i).length() + longValue;
        if (longValue > j || length <= j) {
            return -1;
        }
        return i;
    }

    /* renamed from: g */
    public final ZenoString m63918g() {
        int size = this.f101722e.size() - 2;
        long length = this.f101722e.get(size + 1).length();
        while (size >= 0) {
            long length2 = this.f101722e.get(size).length();
            long length3 = size == 0 ? 0L : this.f101722e.get(size - 1).length();
            if ((length2 > length || length2 > length3) && length + length2 > 32) {
                length = length2;
            } else {
                List<UnicodeString> list = this.f101722e;
                int i = size + 1;
                list.set(size, concatSegments(list.get(size), this.f101722e.get(i)));
                this.f101722e.remove(i);
                this.f101723f.remove(i);
                length = this.f101722e.get(size).length();
            }
            size--;
        }
        return this;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public int getWidth() {
        Iterator<UnicodeString> it2 = this.f101722e.iterator();
        int i = 7;
        while (it2.hasNext()) {
            int width = it2.next().getWidth();
            if (width == 24) {
                return 24;
            }
            i = Math.max(i, width);
        }
        return i;
    }

    /* renamed from: h */
    public final ZenoString m63919h() {
        for (int size = this.f101722e.size() - 2; size >= 0; size--) {
            int i = size + 1;
            if (this.f101722e.get(size).length() < this.f101722e.get(i).length() * 1.1d) {
                List<UnicodeString> list = this.f101722e;
                list.set(size, concatSegments(list.get(size), this.f101722e.get(i)));
                this.f101722e.remove(i);
                this.f101723f.remove(i);
            }
        }
        return this;
    }

    /* renamed from: i */
    public final ZenoString m63920i() {
        int size = this.f101722e.size() / 2;
        int i = 0;
        int i2 = 0;
        while (i2 < size - 1) {
            int i3 = i2 + 1;
            if (this.f101722e.get(i2).length() + this.f101722e.get(i3).length() < (32 << i2)) {
                UnicodeString concat = this.f101722e.get(i2).concat(this.f101722e.get(i3));
                this.f101722e.remove(i3);
                this.f101723f.remove(i3);
                this.f101722e.set(i2, concat);
            }
            i2 = i3;
        }
        int size2 = this.f101722e.size() - 1;
        while (size2 > size) {
            int i4 = size2 - 1;
            int i5 = i + 1;
            if (this.f101722e.get(size2).length() + this.f101722e.get(i4).length() < (32 << i)) {
                UnicodeString concat2 = this.f101722e.get(i4).concat(this.f101722e.get(size2));
                this.f101722e.remove(size2);
                this.f101723f.remove(size2);
                this.f101722e.set(i4, concat2);
            }
            size2--;
            i = i5;
        }
        return this;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexOf(int i, long j) {
        long max = Math.max(j, 0L);
        if (max >= length()) {
            return -1L;
        }
        int m63921j = m63921j(max);
        int i2 = m63921j;
        while (i2 < this.f101722e.size()) {
            UnicodeString unicodeString = this.f101722e.get(i2);
            long longValue = this.f101723f.get(i2).longValue();
            long indexOf = unicodeString.indexOf(i, i2 == m63921j ? max - longValue : 0L);
            if (indexOf >= 0) {
                return indexOf + longValue;
            }
            i2++;
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long indexWhere(IntPredicate intPredicate, long j) {
        int m63921j = m63921j(j);
        int i = m63921j;
        while (i < this.f101722e.size()) {
            UnicodeString unicodeString = this.f101722e.get(i);
            long longValue = this.f101723f.get(i).longValue();
            long indexWhere = unicodeString.indexWhere(intPredicate, i == m63921j ? j - longValue : 0L);
            if (indexWhere >= 0) {
                return indexWhere + longValue;
            }
            i++;
        }
        return -1L;
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public boolean isEmpty() {
        return this.f101722e.isEmpty();
    }

    /* renamed from: j */
    public final int m63921j(long j) {
        if (this.f101722e.size() == 0) {
            throw new IndexOutOfBoundsException("ZenoString is empty");
        }
        int m63917f = m63917f(j, 0, this.f101723f.size() - 1);
        if (m63917f >= 0) {
            return m63917f;
        }
        throw new IndexOutOfBoundsException("Index " + j + " out of range 0-" + (length() - 1));
    }

    /* renamed from: k */
    public final void m63922k() {
        StringBuilder sb = new StringBuilder();
        Iterator<UnicodeString> it2 = this.f101722e.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().length() + ", ");
        }
        System.err.println(sb);
    }

    /* renamed from: l */
    public final void m63923l() {
        long j = 0;
        for (int i = 0; i < this.f101722e.size(); i++) {
            if (this.f101723f.get(i).longValue() != j) {
                m63922k();
                throw new IllegalStateException("Bad offset for segment " + i);
            }
            j += this.f101722e.get(i).length();
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public long length() {
        int size = this.f101722e.size() - 1;
        if (size < 0) {
            return 0L;
        }
        return this.f101723f.get(size).longValue() + this.f101722e.get(size).length();
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public UnicodeString substring(long j, long j2) {
        checkSubstringBounds(j, j2);
        if (j == j2) {
            return EmptyUnicodeString.getInstance();
        }
        if (j + 1 == j2) {
            return new UnicodeChar(codePointAt(j));
        }
        int m63921j = m63921j(j);
        int m63921j2 = m63921j(j2 - 1);
        if (m63921j == m63921j2) {
            UnicodeString unicodeString = this.f101722e.get(m63921j);
            long longValue = this.f101723f.get(m63921j).longValue();
            return unicodeString.substring(j - longValue, j2 - longValue);
        }
        ZenoString m63916of = m63916of(this.f101722e.get(m63921j).substring(j - this.f101723f.get(m63921j).longValue()));
        while (true) {
            m63921j++;
            if (m63921j >= m63921j2) {
                return m63916of.concat(this.f101722e.get(m63921j2).prefix(j2 - this.f101723f.get(m63921j2).longValue()));
            }
            m63916of = m63916of.concat(this.f101722e.get(m63921j));
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<UnicodeString> it2 = this.f101722e.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
        }
        return sb.toString();
    }

    public void writeSegments(UnicodeWriter unicodeWriter) throws IOException {
        Iterator<UnicodeString> it2 = this.f101722e.iterator();
        while (it2.hasNext()) {
            unicodeWriter.write(it2.next());
        }
    }

    @Override // net.p110sf.saxon.str.UnicodeString
    public ZenoString concat(UnicodeString unicodeString) {
        if (isEmpty()) {
            return unicodeString instanceof ZenoString ? (ZenoString) unicodeString : new ZenoString(unicodeString);
        }
        if (unicodeString.isEmpty()) {
            return this;
        }
        if (unicodeString instanceof ZenoString) {
            ZenoString zenoString = new ZenoString();
            ArrayList arrayList = new ArrayList(this.f101722e);
            zenoString.f101722e = arrayList;
            ZenoString zenoString2 = (ZenoString) unicodeString;
            arrayList.addAll(zenoString2.f101722e);
            zenoString.f101723f = new ArrayList(this.f101723f);
            long length = length();
            Iterator<Long> it2 = zenoString2.f101723f.iterator();
            while (it2.hasNext()) {
                zenoString.f101723f.add(Long.valueOf(it2.next().longValue() + length));
            }
            return (length < 32 || unicodeString.length() < 32) ? zenoString.m63919h() : zenoString;
        }
        ZenoString zenoString3 = new ZenoString();
        zenoString3.f101722e = new ArrayList(this.f101722e);
        zenoString3.f101723f = new ArrayList(this.f101723f);
        zenoString3.f101722e.add(unicodeString);
        zenoString3.f101723f.add(Long.valueOf(length()));
        return zenoString3.m63919h();
    }

    public ZenoString(UnicodeString unicodeString) {
        this.f101722e.add(unicodeString);
        this.f101723f.add(0L);
    }
}
