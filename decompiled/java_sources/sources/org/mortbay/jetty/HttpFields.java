package org.mortbay.jetty;

import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.imageio.plugins.jpeg.JPEG;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import javax.servlet.http.Cookie;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.lang3.time.TimeZones;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.io.BufferDateCache;
import org.mortbay.io.BufferUtil;
import org.mortbay.io.ByteArrayBuffer;
import org.mortbay.io.View;
import org.mortbay.util.LazyList;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.StringMap;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class HttpFields {
    public static final String __01Jan1970;
    public static final Buffer __01Jan1970_BUFFER;
    public static final BufferDateCache __dateCache;
    public static final String __separators = ", \t";

    /* renamed from: c */
    public static String[] f114606c = {"Sat", "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};

    /* renamed from: d */
    public static String[] f114607d = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", "Jan"};

    /* renamed from: e */
    public static TimeZone f114608e = TimeZone.getTimeZone(TimeZones.GMT_ID);

    /* renamed from: f */
    public static final String[] f114609f;

    /* renamed from: g */
    public static int f114610g;

    /* renamed from: h */
    public static SimpleDateFormat[] f114611h;

    /* renamed from: i */
    public static Float f114612i;

    /* renamed from: j */
    public static Float f114613j;

    /* renamed from: k */
    public static StringMap f114614k;
    protected int _revision;

    /* renamed from: a */
    public StringBuffer f114615a;

    /* renamed from: b */
    public Calendar f114616b;
    protected ArrayList _fields = new ArrayList(20);
    protected HashMap _bufferMap = new HashMap(32);
    protected SimpleDateFormat[] _dateReceive = new SimpleDateFormat[f114611h.length];

    /* loaded from: classes13.dex */
    public static final class Field {

        /* renamed from: a */
        public Buffer f114617a;

        /* renamed from: b */
        public Buffer f114618b;

        /* renamed from: c */
        public String f114619c;

        /* renamed from: d */
        public long f114620d;

        /* renamed from: e */
        public Field f114621e;

        /* renamed from: f */
        public Field f114622f;

        /* renamed from: g */
        public int f114623g;

        public /* synthetic */ Field(Buffer buffer, Buffer buffer2, long j, int i, C20382c c20382c) {
            this(buffer, buffer2, j, i);
        }

        public int getIntValue() {
            return (int) getLongValue();
        }

        public long getLongValue() {
            if (this.f114620d == -1) {
                this.f114620d = BufferUtil.toLong(this.f114618b);
            }
            return this.f114620d;
        }

        public String getName() {
            return BufferUtil.to8859_1_String(this.f114617a);
        }

        public int getNameOrdinal() {
            return HttpHeaders.CACHE.getOrdinal(this.f114617a);
        }

        public String getValue() {
            if (this.f114619c == null) {
                this.f114619c = BufferUtil.to8859_1_String(this.f114618b);
            }
            return this.f114619c;
        }

        public Buffer getValueBuffer() {
            return this.f114618b;
        }

        public int getValueOrdinal() {
            return HttpHeaderValues.CACHE.getOrdinal(this.f114618b);
        }

        /* renamed from: m */
        public final void m71514m() {
            this.f114623g = -1;
        }

        /* renamed from: n */
        public final void m71515n() {
            this.f114617a = null;
            this.f114618b = null;
            this.f114621e = null;
            this.f114622f = null;
            this.f114619c = null;
        }

        /* renamed from: o */
        public Buffer m71516o() {
            return this.f114617a;
        }

        /* renamed from: p */
        public final void m71517p(Buffer buffer, long j, int i) {
            this.f114623g = i;
            if (this.f114618b == null) {
                if (!buffer.isImmutable()) {
                    buffer = new View(buffer);
                }
                this.f114618b = buffer;
                this.f114620d = j;
                this.f114619c = null;
                return;
            }
            if (buffer.isImmutable()) {
                this.f114618b = buffer;
                this.f114620d = j;
                this.f114619c = null;
                return;
            }
            Buffer buffer2 = this.f114618b;
            if (buffer2 instanceof View) {
                ((View) buffer2).update(buffer);
            } else {
                this.f114618b = new View(buffer);
            }
            this.f114620d = j;
            String str = this.f114619c;
            if (str == null) {
                return;
            }
            if (str.length() != buffer.length()) {
                this.f114619c = null;
                return;
            }
            int length = buffer.length();
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    return;
                }
                if (buffer.peek(buffer.getIndex() + i2) != this.f114619c.charAt(i2)) {
                    this.f114619c = null;
                    return;
                }
                length = i2;
            }
        }

        public void put(Buffer buffer) throws IOException {
            Buffer buffer2 = this.f114617a;
            if ((buffer2 instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) buffer2).getOrdinal() : -1) >= 0) {
                buffer.put(this.f114617a);
            } else {
                int index = this.f114617a.getIndex();
                int putIndex = this.f114617a.putIndex();
                while (index < putIndex) {
                    int i = index + 1;
                    byte peek = this.f114617a.peek(index);
                    if (peek != 10 && peek != 13 && peek != 58) {
                        buffer.put(peek);
                    }
                    index = i;
                }
            }
            buffer.put((byte) 58);
            buffer.put((byte) 32);
            Buffer buffer3 = this.f114618b;
            if ((buffer3 instanceof BufferCache.CachedBuffer ? ((BufferCache.CachedBuffer) buffer3).getOrdinal() : -1) >= 0 || this.f114620d >= 0) {
                buffer.put(this.f114618b);
            } else {
                int index2 = this.f114618b.getIndex();
                int putIndex2 = this.f114618b.putIndex();
                while (index2 < putIndex2) {
                    int i2 = index2 + 1;
                    byte peek2 = this.f114618b.peek(index2);
                    if (peek2 != 10 && peek2 != 13) {
                        buffer.put(peek2);
                    }
                    index2 = i2;
                }
            }
            BufferUtil.putCRLF(buffer);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(IteratorUtils.f104923a);
            stringBuffer.append(this.f114622f == null ? "" : "<-");
            stringBuffer.append(getName());
            stringBuffer.append("=");
            stringBuffer.append(this.f114623g);
            stringBuffer.append("=");
            stringBuffer.append(this.f114618b);
            stringBuffer.append(this.f114621e != null ? "->" : "");
            stringBuffer.append(IteratorUtils.f104924b);
            return stringBuffer.toString();
        }

        public Field(Buffer buffer, Buffer buffer2, long j, int i) {
            this.f114617a = buffer.asImmutableBuffer();
            this.f114618b = buffer2.isImmutable() ? buffer2 : new View(buffer2);
            this.f114621e = null;
            this.f114622f = null;
            this.f114623g = i;
            this.f114620d = j;
            this.f114619c = null;
        }
    }

    static {
        BufferDateCache bufferDateCache = new BufferDateCache(DateUtil.f12953a, Locale.US);
        __dateCache = bufferDateCache;
        String[] strArr = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss", "EEE MMM dd HH:mm:ss yyyy", "EEE, dd MMM yyyy HH:mm:ss", "EEE dd MMM yyyy HH:mm:ss zzz", "EEE dd MMM yyyy HH:mm:ss", "EEE MMM dd yyyy HH:mm:ss zzz", "EEE MMM dd yyyy HH:mm:ss", "EEE MMM-dd-yyyy HH:mm:ss zzz", "EEE MMM-dd-yyyy HH:mm:ss", "dd MMM yyyy HH:mm:ss zzz", "dd MMM yyyy HH:mm:ss", "dd-MMM-yy HH:mm:ss zzz", "dd-MMM-yy HH:mm:ss", "MMM dd HH:mm:ss yyyy zzz", "MMM dd HH:mm:ss yyyy", "EEE MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy zzz", "EEE, MMM dd HH:mm:ss yyyy", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss zzz", "EEE dd-MMM-yy HH:mm:ss"};
        f114609f = strArr;
        f114610g = 3;
        f114608e.setID(TimeZones.GMT_ID);
        bufferDateCache.setTimeZone(f114608e);
        f114611h = new SimpleDateFormat[strArr.length];
        for (int i = 0; i < f114610g; i++) {
            f114611h[i] = new SimpleDateFormat(f114609f[i], Locale.US);
            f114611h[i].setTimeZone(f114608e);
        }
        String trim = formatDate(0L, true).trim();
        __01Jan1970 = trim;
        __01Jan1970_BUFFER = new ByteArrayBuffer(trim);
        f114612i = new Float("1.0");
        f114613j = new Float("0.0");
        StringMap stringMap = new StringMap();
        f114614k = stringMap;
        stringMap.put((String) null, (Object) f114612i);
        f114614k.put("1.0", (Object) f114612i);
        f114614k.put("1", (Object) f114612i);
        f114614k.put("0.9", (Object) new Float("0.9"));
        f114614k.put("0.8", (Object) new Float("0.8"));
        f114614k.put("0.7", (Object) new Float("0.7"));
        f114614k.put("0.66", (Object) new Float("0.66"));
        f114614k.put("0.6", (Object) new Float("0.6"));
        f114614k.put(JPEG.version, (Object) new Float(JPEG.version));
        f114614k.put("0.4", (Object) new Float("0.4"));
        f114614k.put("0.33", (Object) new Float("0.33"));
        f114614k.put("0.3", (Object) new Float("0.3"));
        f114614k.put("0.2", (Object) new Float("0.2"));
        f114614k.put("0.1", (Object) new Float("0.1"));
        f114614k.put("0", (Object) f114613j);
        f114614k.put("0.0", (Object) f114613j);
    }

    public static String formatDate(long j, boolean z) {
        StringBuffer stringBuffer = new StringBuffer(32);
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f114608e);
        gregorianCalendar.setTimeInMillis(j);
        formatDate(stringBuffer, gregorianCalendar, z);
        return stringBuffer.toString();
    }

    public static Float getQuality(String str) {
        if (str == null) {
            return f114613j;
        }
        int indexOf = str.indexOf(AndroidTreeView.f47214k);
        int i = indexOf + 1;
        if (indexOf < 0 || i == str.length()) {
            return f114612i;
        }
        int i2 = i + 1;
        if (str.charAt(i) == 'q') {
            int i3 = i2 + 1;
            Map.Entry entry = f114614k.getEntry(str, i3, str.length() - i3);
            if (entry != null) {
                return (Float) entry.getValue();
            }
        }
        HashMap hashMap = new HashMap(3);
        valueParameters(str, hashMap);
        String str2 = (String) hashMap.get("q");
        Float f = (Float) f114614k.get(str2);
        if (f != null) {
            return f;
        }
        try {
            return new Float(str2);
        } catch (Exception unused) {
            return f114612i;
        }
    }

    public static List qualityList(Enumeration enumeration) {
        if (enumeration == null || !enumeration.hasMoreElements()) {
            return Collections.EMPTY_LIST;
        }
        Object obj = null;
        Object obj2 = null;
        while (enumeration.hasMoreElements()) {
            String obj3 = enumeration.nextElement().toString();
            Float quality = getQuality(obj3);
            if (quality.floatValue() >= 0.001d) {
                obj = LazyList.add(obj, obj3);
                obj2 = LazyList.add(obj2, quality);
            }
        }
        List list = LazyList.getList(obj, false);
        if (list.size() < 2) {
            return list;
        }
        List list2 = LazyList.getList(obj2, false);
        Float f = f114613j;
        int size = list.size();
        while (true) {
            int i = size - 1;
            if (size <= 0) {
                list2.clear();
                return list;
            }
            Float f2 = (Float) list2.get(i);
            if (f.compareTo(f2) > 0) {
                Object obj4 = list.get(i);
                int i2 = i + 1;
                list.set(i, list.get(i2));
                list.set(i2, obj4);
                list2.set(i, list2.get(i2));
                list2.set(i2, f2);
                f = f114613j;
                size = list.size();
            } else {
                f = f2;
                size = i;
            }
        }
    }

    public static String valueParameters(String str, Map map) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(59);
        if (indexOf < 0) {
            return str;
        }
        if (map == null) {
            return str.substring(0, indexOf).trim();
        }
        QuotedStringTokenizer quotedStringTokenizer = new QuotedStringTokenizer(str.substring(indexOf), AndroidTreeView.f47214k, false, true);
        while (quotedStringTokenizer.hasMoreTokens()) {
            QuotedStringTokenizer quotedStringTokenizer2 = new QuotedStringTokenizer(quotedStringTokenizer.nextToken(), "= ");
            if (quotedStringTokenizer2.hasMoreTokens()) {
                map.put(quotedStringTokenizer2.nextToken(), quotedStringTokenizer2.hasMoreTokens() ? quotedStringTokenizer2.nextToken() : null);
            }
        }
        return str.substring(0, indexOf).trim();
    }

    /* renamed from: a */
    public final void m71499a(Buffer buffer, Buffer buffer2, long j) throws IllegalArgumentException {
        if (buffer2 == null) {
            throw new IllegalArgumentException("null value");
        }
        if (!(buffer instanceof BufferCache.CachedBuffer)) {
            buffer = HttpHeaders.CACHE.lookup(buffer);
        }
        Buffer buffer3 = buffer;
        Field field = (Field) this._bufferMap.get(buffer3);
        Field field2 = null;
        if (field != null) {
            while (field != null && field.f114623g == this._revision) {
                field2 = field;
                field = field.f114621e;
            }
        }
        Field field3 = field2;
        if (field != null) {
            field.m71517p(buffer2, j, this._revision);
            return;
        }
        Field field4 = new Field(buffer3, buffer2, j, this._revision, null);
        if (field3 != null) {
            field4.f114622f = field3;
            field3.f114621e = field4;
        } else {
            this._bufferMap.put(field4.m71516o(), field4);
        }
        this._fields.add(field4);
    }

    public void add(String str, String str2) throws IllegalArgumentException {
        m71499a(HttpHeaders.CACHE.lookup(str), HttpHeaderValues.CACHE.lookup(str2), -1L);
    }

    public void addDateField(String str, long j) {
        if (this.f114615a == null) {
            this.f114615a = new StringBuffer(32);
            this.f114616b = new GregorianCalendar(f114608e);
        }
        this.f114615a.setLength(0);
        this.f114616b.setTimeInMillis(j);
        formatDate(this.f114615a, this.f114616b, false);
        m71499a(HttpHeaders.CACHE.lookup(str), new ByteArrayBuffer(this.f114615a.toString()), j);
    }

    public void addLongField(String str, long j) {
        m71499a(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j), j);
    }

    public void addSetCookie(Cookie cookie) {
        String stringBuffer;
        String name = cookie.getName();
        String value = cookie.getValue();
        int version = cookie.getVersion();
        if (name == null || name.length() == 0) {
            throw new IllegalArgumentException("Bad cookie name");
        }
        StringBuffer stringBuffer2 = new StringBuffer(128);
        synchronized (stringBuffer2) {
            QuotedStringTokenizer.quoteIfNeeded(stringBuffer2, name);
            stringBuffer2.append('=');
            if (value != null && value.length() > 0) {
                QuotedStringTokenizer.quoteIfNeeded(stringBuffer2, value);
            }
            if (version > 0) {
                stringBuffer2.append(";Version=");
                stringBuffer2.append(version);
                String comment = cookie.getComment();
                if (comment != null && comment.length() > 0) {
                    stringBuffer2.append(";Comment=");
                    QuotedStringTokenizer.quoteIfNeeded(stringBuffer2, comment);
                }
            }
            String path = cookie.getPath();
            if (path != null && path.length() > 0) {
                stringBuffer2.append(";Path=");
                if (path.startsWith("\"")) {
                    stringBuffer2.append(path);
                } else {
                    QuotedStringTokenizer.quoteIfNeeded(stringBuffer2, path);
                }
            }
            String domain = cookie.getDomain();
            if (domain != null && domain.length() > 0) {
                stringBuffer2.append(";Domain=");
                QuotedStringTokenizer.quoteIfNeeded(stringBuffer2, domain.toLowerCase());
            }
            long maxAge = cookie.getMaxAge();
            if (maxAge >= 0) {
                if (version == 0) {
                    stringBuffer2.append(";Expires=");
                    if (maxAge == 0) {
                        stringBuffer2.append(__01Jan1970);
                    } else {
                        formatDate(stringBuffer2, System.currentTimeMillis() + (maxAge * 1000), true);
                    }
                } else {
                    stringBuffer2.append(";Max-Age=");
                    stringBuffer2.append(maxAge);
                }
            } else if (version > 0) {
                stringBuffer2.append(";Discard");
            }
            if (cookie.getSecure()) {
                stringBuffer2.append(";Secure");
            }
            if (cookie instanceof HttpOnlyCookie) {
                stringBuffer2.append(";HttpOnly");
            }
            stringBuffer = stringBuffer2.toString();
        }
        put(HttpHeaders.EXPIRES_BUFFER, __01Jan1970_BUFFER);
        add(HttpHeaders.SET_COOKIE_BUFFER, new ByteArrayBuffer(stringBuffer));
    }

    /* renamed from: b */
    public final Field m71500b(String str) {
        return (Field) this._bufferMap.get(HttpHeaders.CACHE.lookup(str));
    }

    /* renamed from: c */
    public final Field m71501c(Buffer buffer) {
        return (Field) this._bufferMap.get(buffer);
    }

    public void clear() {
        int i = this._revision + 1;
        this._revision = i;
        if (i <= 1000000) {
            return;
        }
        this._revision = 0;
        int size = this._fields.size();
        while (true) {
            int i2 = size - 1;
            if (size <= 0) {
                return;
            }
            Field field = (Field) this._fields.get(i2);
            if (field != null) {
                field.m71514m();
            }
            size = i2;
        }
    }

    public boolean containsKey(Buffer buffer) {
        Field m71501c = m71501c(buffer);
        return m71501c != null && m71501c.f114623g == this._revision;
    }

    public void destroy() {
        ArrayList arrayList = this._fields;
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                int i = size - 1;
                if (size <= 0) {
                    break;
                }
                Field field = (Field) this._fields.get(i);
                if (field != null) {
                    this._bufferMap.remove(field.m71516o());
                    field.m71515n();
                }
                size = i;
            }
        }
        this._fields = null;
        this.f114615a = null;
        this.f114616b = null;
        this._dateReceive = null;
    }

    public Buffer get(Buffer buffer) {
        Field m71501c = m71501c(buffer);
        if (m71501c == null || m71501c.f114623g != this._revision) {
            return null;
        }
        return m71501c.f114618b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00df, code lost:
    
        if (r2.endsWith(" GMT") == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e1, code lost:
    
        r2 = r2.substring(0, r2.length() - 4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getDateField(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpFields.getDateField(java.lang.String):long");
    }

    public Enumeration getFieldNames() {
        return new C20382c(this, this._revision);
    }

    public Iterator getFields() {
        return new C20383d(this, this._revision);
    }

    public long getLongField(String str) throws NumberFormatException {
        Field m71500b = m71500b(str);
        if (m71500b == null || m71500b.f114623g != this._revision) {
            return -1L;
        }
        return m71500b.getLongValue();
    }

    public String getStringField(String str) {
        Field m71500b = m71500b(str);
        if (m71500b == null || m71500b.f114623g != this._revision) {
            return null;
        }
        return m71500b.getValue();
    }

    public Enumeration getValues(String str) {
        Field m71500b = m71500b(str);
        if (m71500b == null) {
            return null;
        }
        return new C20385e(this, m71500b, this._revision);
    }

    public void put(String str, String str2) {
        put(HttpHeaders.CACHE.lookup(str), str2 != null ? HttpHeaderValues.CACHE.lookup(str2) : null, -1L);
    }

    public void putDateField(Buffer buffer, long j) {
        if (this.f114615a == null) {
            this.f114615a = new StringBuffer(32);
            this.f114616b = new GregorianCalendar(f114608e);
        }
        this.f114615a.setLength(0);
        this.f114616b.setTimeInMillis(j);
        formatDate(this.f114615a, this.f114616b, false);
        put(buffer, new ByteArrayBuffer(this.f114615a.toString()), j);
    }

    public void putLongField(Buffer buffer, long j) {
        put(buffer, BufferUtil.toBuffer(j), j);
    }

    public void remove(String str) {
        remove(HttpHeaders.CACHE.lookup(str));
    }

    public String toString() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < this._fields.size(); i++) {
                Field field = (Field) this._fields.get(i);
                if (field != null && field.f114623g == this._revision) {
                    String name = field.getName();
                    if (name != null) {
                        stringBuffer.append(name);
                    }
                    stringBuffer.append(": ");
                    String value = field.getValue();
                    if (value != null) {
                        stringBuffer.append(value);
                    }
                    stringBuffer.append("\r\n");
                }
            }
            stringBuffer.append("\r\n");
            return stringBuffer.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void remove(Buffer buffer) {
        Field field = (Field) this._bufferMap.get(buffer);
        if (field != null) {
            while (field != null) {
                field.m71514m();
                field = field.f114621e;
            }
        }
    }

    public boolean containsKey(String str) {
        Field m71500b = m71500b(str);
        return m71500b != null && m71500b.f114623g == this._revision;
    }

    public long getLongField(Buffer buffer) throws NumberFormatException {
        Field m71501c = m71501c(buffer);
        if (m71501c == null || m71501c.f114623g != this._revision) {
            return -1L;
        }
        return m71501c.getLongValue();
    }

    public String getStringField(Buffer buffer) {
        Field m71501c = m71501c(buffer);
        if (m71501c == null || m71501c.f114623g != this._revision) {
            return null;
        }
        return BufferUtil.to8859_1_String(m71501c.f114618b);
    }

    public void putLongField(String str, long j) {
        put(HttpHeaders.CACHE.lookup(str), BufferUtil.toBuffer(j), j);
    }

    public void add(Buffer buffer, Buffer buffer2) throws IllegalArgumentException {
        m71499a(buffer, buffer2, -1L);
    }

    public void addLongField(Buffer buffer, long j) {
        m71499a(buffer, BufferUtil.toBuffer(j), j);
    }

    public Enumeration getValues(Buffer buffer) {
        Field m71501c = m71501c(buffer);
        if (m71501c == null) {
            return null;
        }
        return new C20386f(this, m71501c, this._revision);
    }

    public void put(Buffer buffer, String str) {
        put(buffer, HttpHeaderValues.CACHE.lookup(str), -1L);
    }

    public void add(HttpFields httpFields) {
        if (httpFields == null) {
            return;
        }
        Enumeration fieldNames = httpFields.getFieldNames();
        while (fieldNames.hasMoreElements()) {
            String str = (String) fieldNames.nextElement();
            Enumeration values = httpFields.getValues(str);
            while (values.hasMoreElements()) {
                add(str, (String) values.nextElement());
            }
        }
    }

    public static String formatDate(Calendar calendar, boolean z) {
        StringBuffer stringBuffer = new StringBuffer(32);
        formatDate(stringBuffer, calendar, z);
        return stringBuffer.toString();
    }

    public void put(Buffer buffer, Buffer buffer2) {
        put(buffer, buffer2, -1L);
    }

    public Enumeration getValues(String str, String str2) {
        Enumeration values = getValues(str);
        if (values == null) {
            return null;
        }
        return new C20387g(this, values, str2);
    }

    public void put(Buffer buffer, Buffer buffer2, long j) {
        if (buffer2 == null) {
            remove(buffer);
            return;
        }
        if (!(buffer instanceof BufferCache.CachedBuffer)) {
            buffer = HttpHeaders.CACHE.lookup(buffer);
        }
        Buffer buffer3 = buffer;
        Field field = (Field) this._bufferMap.get(buffer3);
        if (field != null) {
            field.m71517p(buffer2, j, this._revision);
            for (Field field2 = field.f114621e; field2 != null; field2 = field2.f114621e) {
                field2.m71514m();
            }
            return;
        }
        Field field3 = new Field(buffer3, buffer2, j, this._revision, null);
        this._fields.add(field3);
        this._bufferMap.put(field3.m71516o(), field3);
    }

    public static String formatDate(StringBuffer stringBuffer, long j, boolean z) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f114608e);
        gregorianCalendar.setTimeInMillis(j);
        formatDate(stringBuffer, gregorianCalendar, z);
        return stringBuffer.toString();
    }

    public void putDateField(String str, long j) {
        putDateField(HttpHeaders.CACHE.lookup(str), j);
    }

    public static void formatDate(StringBuffer stringBuffer, Calendar calendar, boolean z) {
        int i = calendar.get(7);
        int i2 = calendar.get(5);
        int i3 = calendar.get(2);
        int i4 = calendar.get(1);
        int i5 = i4 / 100;
        int i6 = i4 % 100;
        int timeInMillis = (int) ((calendar.getTimeInMillis() / 1000) % 86400);
        int i7 = timeInMillis % 60;
        int i8 = timeInMillis / 60;
        int i9 = i8 % 60;
        int i10 = i8 / 60;
        stringBuffer.append(f114606c[i]);
        stringBuffer.append(',');
        stringBuffer.append(' ');
        StringUtil.append2digits(stringBuffer, i2);
        if (z) {
            stringBuffer.append('-');
            stringBuffer.append(f114607d[i3]);
            stringBuffer.append('-');
            StringUtil.append2digits(stringBuffer, i5);
            StringUtil.append2digits(stringBuffer, i6);
        } else {
            stringBuffer.append(' ');
            stringBuffer.append(f114607d[i3]);
            stringBuffer.append(' ');
            StringUtil.append2digits(stringBuffer, i5);
            StringUtil.append2digits(stringBuffer, i6);
        }
        stringBuffer.append(' ');
        StringUtil.append2digits(stringBuffer, i10);
        stringBuffer.append(':');
        StringUtil.append2digits(stringBuffer, i9);
        stringBuffer.append(':');
        StringUtil.append2digits(stringBuffer, i7);
        stringBuffer.append(" GMT");
    }

    public void put(String str, List list) {
        if (list != null && list.size() != 0) {
            Buffer lookup = HttpHeaders.CACHE.lookup(str);
            Object obj = list.get(0);
            if (obj != null) {
                put(lookup, HttpHeaderValues.CACHE.lookup(obj.toString()));
            } else {
                remove(lookup);
            }
            if (list.size() > 1) {
                Iterator it2 = list.iterator();
                it2.next();
                while (it2.hasNext()) {
                    Object next = it2.next();
                    if (next != null) {
                        put(lookup, HttpHeaderValues.CACHE.lookup(next.toString()));
                    }
                }
                return;
            }
            return;
        }
        remove(str);
    }

    public void put(Buffer buffer) throws IOException {
        for (int i = 0; i < this._fields.size(); i++) {
            Field field = (Field) this._fields.get(i);
            if (field != null && field.f114623g == this._revision) {
                field.put(buffer);
            }
        }
        BufferUtil.putCRLF(buffer);
    }
}
