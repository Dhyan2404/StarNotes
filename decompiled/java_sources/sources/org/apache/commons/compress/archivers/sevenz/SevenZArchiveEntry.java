package org.apache.commons.compress.archivers.sevenz;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import java.util.TimeZone;
import java.util.function.Consumer;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.sevenz.SevenZMethodConfiguration;

/* loaded from: classes12.dex */
public class SevenZArchiveEntry implements ArchiveEntry {

    /* renamed from: w */
    public static final SevenZArchiveEntry[] f105604w = new SevenZArchiveEntry[0];

    /* renamed from: e */
    public String f105605e;

    /* renamed from: f */
    public boolean f105606f;

    /* renamed from: g */
    public boolean f105607g;

    /* renamed from: h */
    public boolean f105608h;

    /* renamed from: i */
    public boolean f105609i;

    /* renamed from: j */
    public boolean f105610j;

    /* renamed from: k */
    public boolean f105611k;

    /* renamed from: l */
    public long f105612l;

    /* renamed from: m */
    public long f105613m;

    /* renamed from: n */
    public long f105614n;

    /* renamed from: o */
    public boolean f105615o;

    /* renamed from: p */
    public int f105616p;

    /* renamed from: q */
    public boolean f105617q;

    /* renamed from: r */
    public long f105618r;

    /* renamed from: s */
    public long f105619s;

    /* renamed from: t */
    public long f105620t;

    /* renamed from: u */
    public long f105621u;

    /* renamed from: v */
    public Iterable<? extends SevenZMethodConfiguration> f105622v;

    public static long javaTimeToNtfsTime(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("GMT+0"));
        calendar.set(1601, 0, 1, 0, 0, 0);
        calendar.set(14, 0);
        return (date.getTime() - calendar.getTimeInMillis()) * 1000 * 10;
    }

    public static Date ntfsTimeToJavaTime(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("GMT+0"));
        calendar.set(1601, 0, 1, 0, 0, 0);
        calendar.set(14, 0);
        return new Date(calendar.getTimeInMillis() + (j / 10000));
    }

    /* renamed from: a */
    public final boolean m66200a(Iterable<? extends SevenZMethodConfiguration> iterable, Iterable<? extends SevenZMethodConfiguration> iterable2) {
        if (iterable == null) {
            return iterable2 == null;
        }
        if (iterable2 == null) {
            return false;
        }
        Iterator<? extends SevenZMethodConfiguration> it2 = iterable2.iterator();
        for (SevenZMethodConfiguration sevenZMethodConfiguration : iterable) {
            if (!it2.hasNext() || !sevenZMethodConfiguration.equals(it2.next())) {
                return false;
            }
        }
        return true ^ it2.hasNext();
    }

    @Deprecated
    /* renamed from: b */
    public int m66201b() {
        return (int) this.f105619s;
    }

    /* renamed from: c */
    public long m66202c() {
        return this.f105619s;
    }

    /* renamed from: d */
    public long m66203d() {
        return this.f105621u;
    }

    @Deprecated
    /* renamed from: e */
    public void m66204e(int i) {
        this.f105619s = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SevenZArchiveEntry sevenZArchiveEntry = (SevenZArchiveEntry) obj;
        return Objects.equals(this.f105605e, sevenZArchiveEntry.f105605e) && this.f105606f == sevenZArchiveEntry.f105606f && this.f105607g == sevenZArchiveEntry.f105607g && this.f105608h == sevenZArchiveEntry.f105608h && this.f105609i == sevenZArchiveEntry.f105609i && this.f105610j == sevenZArchiveEntry.f105610j && this.f105611k == sevenZArchiveEntry.f105611k && this.f105612l == sevenZArchiveEntry.f105612l && this.f105613m == sevenZArchiveEntry.f105613m && this.f105614n == sevenZArchiveEntry.f105614n && this.f105615o == sevenZArchiveEntry.f105615o && this.f105616p == sevenZArchiveEntry.f105616p && this.f105617q == sevenZArchiveEntry.f105617q && this.f105618r == sevenZArchiveEntry.f105618r && this.f105619s == sevenZArchiveEntry.f105619s && this.f105620t == sevenZArchiveEntry.f105620t && this.f105621u == sevenZArchiveEntry.f105621u && m66200a(this.f105622v, sevenZArchiveEntry.f105622v);
    }

    /* renamed from: f */
    public void m66205f(long j) {
        this.f105619s = j;
    }

    /* renamed from: g */
    public void m66206g(long j) {
        this.f105621u = j;
    }

    public Date getAccessDate() {
        if (this.f105611k) {
            return ntfsTimeToJavaTime(this.f105614n);
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    public Iterable<? extends SevenZMethodConfiguration> getContentMethods() {
        return this.f105622v;
    }

    @Deprecated
    public int getCrc() {
        return (int) this.f105618r;
    }

    public long getCrcValue() {
        return this.f105618r;
    }

    public Date getCreationDate() {
        if (this.f105609i) {
            return ntfsTimeToJavaTime(this.f105612l);
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    public boolean getHasAccessDate() {
        return this.f105611k;
    }

    public boolean getHasCrc() {
        return this.f105617q;
    }

    public boolean getHasCreationDate() {
        return this.f105609i;
    }

    public boolean getHasLastModifiedDate() {
        return this.f105610j;
    }

    public boolean getHasWindowsAttributes() {
        return this.f105615o;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public Date getLastModifiedDate() {
        if (this.f105610j) {
            return ntfsTimeToJavaTime(this.f105613m);
        }
        throw new UnsupportedOperationException("The entry doesn't have this timestamp");
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public String getName() {
        return this.f105605e;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public long getSize() {
        return this.f105620t;
    }

    public int getWindowsAttributes() {
        return this.f105616p;
    }

    public boolean hasStream() {
        return this.f105606f;
    }

    public int hashCode() {
        String name = getName();
        if (name == null) {
            return 0;
        }
        return name.hashCode();
    }

    public boolean isAntiItem() {
        return this.f105608h;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveEntry
    public boolean isDirectory() {
        return this.f105607g;
    }

    public void setAccessDate(long j) {
        this.f105614n = j;
    }

    public void setAntiItem(boolean z) {
        this.f105608h = z;
    }

    public void setContentMethods(Iterable<? extends SevenZMethodConfiguration> iterable) {
        if (iterable != null) {
            final LinkedList linkedList = new LinkedList();
            iterable.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.klm
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    linkedList.addLast((SevenZMethodConfiguration) obj);
                }
            });
            this.f105622v = Collections.unmodifiableList(linkedList);
            return;
        }
        this.f105622v = null;
    }

    @Deprecated
    public void setCrc(int i) {
        this.f105618r = i;
    }

    public void setCrcValue(long j) {
        this.f105618r = j;
    }

    public void setCreationDate(long j) {
        this.f105612l = j;
    }

    public void setDirectory(boolean z) {
        this.f105607g = z;
    }

    public void setHasAccessDate(boolean z) {
        this.f105611k = z;
    }

    public void setHasCrc(boolean z) {
        this.f105617q = z;
    }

    public void setHasCreationDate(boolean z) {
        this.f105609i = z;
    }

    public void setHasLastModifiedDate(boolean z) {
        this.f105610j = z;
    }

    public void setHasStream(boolean z) {
        this.f105606f = z;
    }

    public void setHasWindowsAttributes(boolean z) {
        this.f105615o = z;
    }

    public void setLastModifiedDate(long j) {
        this.f105613m = j;
    }

    public void setName(String str) {
        this.f105605e = str;
    }

    public void setSize(long j) {
        this.f105620t = j;
    }

    public void setWindowsAttributes(int i) {
        this.f105616p = i;
    }

    public void setAccessDate(Date date) {
        boolean z = date != null;
        this.f105611k = z;
        if (z) {
            this.f105614n = javaTimeToNtfsTime(date);
        }
    }

    public void setCreationDate(Date date) {
        boolean z = date != null;
        this.f105609i = z;
        if (z) {
            this.f105612l = javaTimeToNtfsTime(date);
        }
    }

    public void setLastModifiedDate(Date date) {
        boolean z = date != null;
        this.f105610j = z;
        if (z) {
            this.f105613m = javaTimeToNtfsTime(date);
        }
    }

    public void setContentMethods(SevenZMethodConfiguration... sevenZMethodConfigurationArr) {
        setContentMethods(Arrays.asList(sevenZMethodConfigurationArr));
    }
}
