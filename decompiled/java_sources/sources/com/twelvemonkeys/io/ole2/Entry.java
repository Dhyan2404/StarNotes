package com.twelvemonkeys.io.ole2;

import com.google.android.material.motion.MotionUtils;
import com.twelvemonkeys.io.SeekableInputStream;
import java.io.DataInput;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.SortedSet;
import java.util.TreeSet;

/* loaded from: classes10.dex */
public final class Entry implements Comparable<Entry> {
    public static final int LENGTH = 128;

    /* renamed from: r */
    public static final int f94306r = 0;

    /* renamed from: s */
    public static final int f94307s = 1;

    /* renamed from: t */
    public static final int f94308t = 2;

    /* renamed from: u */
    public static final int f94309u = 3;

    /* renamed from: v */
    public static final int f94310v = 4;

    /* renamed from: w */
    public static final int f94311w = 5;

    /* renamed from: x */
    public static final SortedSet<Entry> f94312x = Collections.unmodifiableSortedSet(new TreeSet());

    /* renamed from: e */
    public String f94313e;

    /* renamed from: f */
    public byte f94314f;

    /* renamed from: g */
    public byte f94315g;

    /* renamed from: h */
    public int f94316h;

    /* renamed from: i */
    public int f94317i;

    /* renamed from: j */
    public int f94318j;

    /* renamed from: k */
    public long f94319k;

    /* renamed from: l */
    public long f94320l;

    /* renamed from: m */
    public int f94321m;

    /* renamed from: n */
    public int f94322n;

    /* renamed from: o */
    public CompoundDocument f94323o;

    /* renamed from: p */
    public Entry f94324p;

    /* renamed from: q */
    public SortedSet<Entry> f94325q;

    /* renamed from: b */
    public static Entry m60718b(DataInput dataInput) throws IOException {
        Entry entry = new Entry();
        entry.m60719a(dataInput);
        return entry;
    }

    /* renamed from: a */
    public final void m60719a(DataInput dataInput) throws IOException {
        byte[] bArr = new byte[64];
        dataInput.readFully(bArr);
        this.f94313e = new String(bArr, 0, dataInput.readShort() - 2, Charset.forName("UTF-16LE"));
        this.f94314f = dataInput.readByte();
        this.f94315g = dataInput.readByte();
        this.f94316h = dataInput.readInt();
        this.f94317i = dataInput.readInt();
        this.f94318j = dataInput.readInt();
        if (dataInput.skipBytes(20) != 20) {
            throw new CorruptDocumentException();
        }
        this.f94319k = CompoundDocument.toJavaTimeInMillis(dataInput.readLong());
        this.f94320l = CompoundDocument.toJavaTimeInMillis(dataInput.readLong());
        this.f94321m = dataInput.readInt();
        this.f94322n = dataInput.readInt();
        dataInput.readInt();
    }

    public long created() {
        return this.f94319k;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Entry)) {
            return false;
        }
        Entry entry = (Entry) obj;
        if (this.f94313e.equals(entry.f94313e)) {
            Entry entry2 = this.f94324p;
            Entry entry3 = entry.f94324p;
            if (entry2 == entry3) {
                return true;
            }
            if (entry2 != null && entry2.equals(entry3)) {
                return true;
            }
        }
        return false;
    }

    public SortedSet<Entry> getChildEntries() throws IOException {
        int i;
        if (this.f94325q == null) {
            if (isFile() || (i = this.f94318j) == -1) {
                this.f94325q = f94312x;
            } else {
                this.f94325q = Collections.unmodifiableSortedSet(this.f94323o.m60705e(i, this));
            }
        }
        return this.f94325q;
    }

    public Entry getChildEntry(String str) throws IOException {
        if (isFile() || this.f94318j == -1) {
            return null;
        }
        Entry entry = new Entry();
        entry.f94313e = str;
        entry.f94324p = this;
        return getChildEntries().tailSet(entry).first();
    }

    public SeekableInputStream getInputStream() throws IOException {
        if (isFile()) {
            return this.f94323o.m60709i(this.f94321m, this.f94322n);
        }
        return null;
    }

    public String getName() {
        return this.f94313e;
    }

    public Entry getParentEntry() {
        return this.f94324p;
    }

    public int hashCode() {
        return this.f94321m ^ this.f94313e.hashCode();
    }

    public boolean isDirectory() {
        return this.f94314f == 1;
    }

    public boolean isFile() {
        return this.f94314f == 2;
    }

    public boolean isRoot() {
        return this.f94314f == 5;
    }

    public long lastModified() {
        return this.f94320l;
    }

    public long length() {
        if (isFile()) {
            return this.f94322n;
        }
        return 0L;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("\"");
        sb.append(this.f94313e);
        sb.append("\"");
        sb.append(" (");
        sb.append(isFile() ? "Document" : isDirectory() ? "Directory" : "Root");
        String str2 = "";
        if (this.f94324p != null) {
            str = ", parent: \"" + this.f94324p.getName() + "\"";
        } else {
            str = "";
        }
        sb.append(str);
        if (!isFile()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(", children: ");
            SortedSet<Entry> sortedSet = this.f94325q;
            sb2.append(sortedSet != null ? String.valueOf(sortedSet.size()) : "(unknown)");
            str2 = sb2.toString();
        }
        sb.append(str2);
        sb.append(", SId=");
        sb.append(this.f94321m);
        sb.append(", length=");
        sb.append(this.f94322n);
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Entry entry) {
        if (this == entry) {
            return 0;
        }
        int length = this.f94313e.length() - entry.f94313e.length();
        return length != 0 ? length : this.f94313e.compareTo(entry.f94313e);
    }
}
