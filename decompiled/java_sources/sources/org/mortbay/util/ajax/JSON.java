package org.mortbay.util.ajax;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.mortbay.log.Log;
import org.mortbay.util.C20429IO;
import org.mortbay.util.Loader;
import org.mortbay.util.QuotedStringTokenizer;
import org.mortbay.util.TypeUtil;

/* loaded from: classes13.dex */
public class JSON {

    /* renamed from: c */
    public static JSON f115396c = new JSON();

    /* renamed from: d */
    public static /* synthetic */ Class f115397d;

    /* renamed from: e */
    public static /* synthetic */ Class f115398e;

    /* renamed from: f */
    public static /* synthetic */ Class f115399f;

    /* renamed from: a */
    public Map f115400a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b */
    public int f115401b = 256;

    /* loaded from: classes13.dex */
    public interface Convertible {
        void fromJSON(Map map);

        void toJSON(Output output);
    }

    /* loaded from: classes13.dex */
    public interface Convertor {
        Object fromJSON(Map map);

        void toJSON(Object obj, Output output);
    }

    /* loaded from: classes13.dex */
    public interface Generator {
        void addJSON(StringBuffer stringBuffer);
    }

    /* loaded from: classes13.dex */
    public static class Literal implements Generator {

        /* renamed from: a */
        public String f115402a;

        public Literal(String str) {
            if (Log.isDebugEnabled()) {
                JSON.parse(str);
            }
            this.f115402a = str;
        }

        @Override // org.mortbay.util.ajax.JSON.Generator
        public void addJSON(StringBuffer stringBuffer) {
            stringBuffer.append(this.f115402a);
        }

        public String toString() {
            return this.f115402a;
        }
    }

    /* loaded from: classes13.dex */
    public interface Output {
        void add(Object obj);

        void add(String str, double d);

        void add(String str, long j);

        void add(String str, Object obj);

        void add(String str, boolean z);

        void addClass(Class cls);
    }

    /* loaded from: classes13.dex */
    public static class ReaderSource implements Source {

        /* renamed from: a */
        public Reader f115403a;

        /* renamed from: b */
        public int f115404b = -1;

        /* renamed from: c */
        public char[] f115405c;

        public ReaderSource(Reader reader) {
            this.f115403a = reader;
        }

        /* renamed from: a */
        public final void m71668a() {
            if (this.f115404b < 0) {
                try {
                    this.f115404b = this.f115403a.read();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public boolean hasNext() {
            m71668a();
            if (this.f115404b >= 0) {
                return true;
            }
            this.f115405c = null;
            return false;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char next() {
            m71668a();
            char c = (char) this.f115404b;
            this.f115404b = -1;
            return c;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char peek() {
            m71668a();
            return (char) this.f115404b;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.f115405c == null) {
                this.f115405c = new char[1024];
            }
            return this.f115405c;
        }

        public void setReader(Reader reader) {
            this.f115403a = reader;
            this.f115404b = -1;
        }
    }

    /* loaded from: classes13.dex */
    public interface Source {
        boolean hasNext();

        char next();

        char peek();

        char[] scratchBuffer();
    }

    /* loaded from: classes13.dex */
    public static class StringSource implements Source {

        /* renamed from: a */
        public final String f115406a;

        /* renamed from: b */
        public int f115407b;

        /* renamed from: c */
        public char[] f115408c;

        public StringSource(String str) {
            this.f115406a = str;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public boolean hasNext() {
            if (this.f115407b < this.f115406a.length()) {
                return true;
            }
            this.f115408c = null;
            return false;
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char next() {
            String str = this.f115406a;
            int i = this.f115407b;
            this.f115407b = i + 1;
            return str.charAt(i);
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char peek() {
            return this.f115406a.charAt(this.f115407b);
        }

        @Override // org.mortbay.util.ajax.JSON.Source
        public char[] scratchBuffer() {
            if (this.f115408c == null) {
                this.f115408c = new char[this.f115406a.length()];
            }
            return this.f115408c;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f115406a.substring(0, this.f115407b));
            stringBuffer.append("|||");
            stringBuffer.append(this.f115406a.substring(this.f115407b));
            return stringBuffer.toString();
        }
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static void complete(String str, Source source) {
        int i = 0;
        while (source.hasNext() && i < str.length()) {
            char next = source.next();
            int i2 = i + 1;
            if (next != str.charAt(i)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unexpected '");
                stringBuffer.append(next);
                stringBuffer.append(" while seeking  \"");
                stringBuffer.append(str);
                stringBuffer.append("\"");
                throw new IllegalStateException(stringBuffer.toString());
            }
            i = i2;
        }
        if (i >= str.length()) {
            return;
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Expected \"");
        stringBuffer2.append(str);
        stringBuffer2.append("\"");
        throw new IllegalStateException(stringBuffer2.toString());
    }

    public static JSON getDefault() {
        return f115396c;
    }

    public static Object parse(String str) {
        return f115396c.parse((Source) new StringSource(str), false);
    }

    public static void registerConvertor(Class cls, Convertor convertor) {
        f115396c.addConvertor(cls, convertor);
    }

    public static void setDefault(JSON json) {
        f115396c = json;
    }

    public static String toString(Object obj) {
        String stringBuffer;
        StringBuffer stringBuffer2 = new StringBuffer(f115396c.getStringBufferSize());
        synchronized (stringBuffer2) {
            f115396c.append(stringBuffer2, obj);
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    public void addConvertor(Class cls, Convertor convertor) {
        this.f115400a.put(cls.getName(), convertor);
    }

    public void addConvertorFor(String str, Convertor convertor) {
        this.f115400a.put(str, convertor);
    }

    public void append(StringBuffer stringBuffer, Object obj) {
        if (obj == null) {
            stringBuffer.append("null");
            return;
        }
        if (obj instanceof Convertible) {
            appendJSON(stringBuffer, (Convertible) obj);
            return;
        }
        if (obj instanceof Generator) {
            appendJSON(stringBuffer, (Generator) obj);
            return;
        }
        if (obj instanceof Map) {
            appendMap(stringBuffer, (Map) obj);
            return;
        }
        if (obj instanceof Collection) {
            appendArray(stringBuffer, (Collection) obj);
            return;
        }
        if (obj.getClass().isArray()) {
            appendArray(stringBuffer, obj);
            return;
        }
        if (obj instanceof Number) {
            appendNumber(stringBuffer, (Number) obj);
            return;
        }
        if (obj instanceof Boolean) {
            appendBoolean(stringBuffer, (Boolean) obj);
            return;
        }
        if (obj instanceof String) {
            appendString(stringBuffer, (String) obj);
            return;
        }
        Convertor convertor = getConvertor(obj.getClass());
        if (convertor != null) {
            appendJSON(stringBuffer, convertor, obj);
        } else {
            appendString(stringBuffer, obj.toString());
        }
    }

    public void appendArray(StringBuffer stringBuffer, Collection collection) {
        if (collection == null) {
            appendNull(stringBuffer);
            return;
        }
        stringBuffer.append('[');
        Iterator it2 = collection.iterator();
        boolean z = true;
        while (it2.hasNext()) {
            if (!z) {
                stringBuffer.append(',');
            }
            append(stringBuffer, it2.next());
            z = false;
        }
        stringBuffer.append(']');
    }

    public void appendBoolean(StringBuffer stringBuffer, Boolean bool) {
        if (bool == null) {
            appendNull(stringBuffer);
        } else {
            stringBuffer.append(bool.booleanValue() ? "true" : "false");
        }
    }

    public void appendJSON(StringBuffer stringBuffer, Convertor convertor, Object obj) {
        appendJSON(stringBuffer, new C20436b(this, convertor, obj));
    }

    public void appendMap(StringBuffer stringBuffer, Map map) {
        if (map == null) {
            appendNull(stringBuffer);
            return;
        }
        stringBuffer.append('{');
        Iterator it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            QuotedStringTokenizer.quote(stringBuffer, entry.getKey().toString());
            stringBuffer.append(':');
            append(stringBuffer, entry.getValue());
            if (it2.hasNext()) {
                stringBuffer.append(',');
            }
        }
        stringBuffer.append('}');
    }

    public void appendNull(StringBuffer stringBuffer) {
        stringBuffer.append("null");
    }

    public void appendNumber(StringBuffer stringBuffer, Number number) {
        if (number == null) {
            appendNull(stringBuffer);
        } else {
            stringBuffer.append(number);
        }
    }

    public void appendString(StringBuffer stringBuffer, String str) {
        if (str == null) {
            appendNull(stringBuffer);
        } else {
            QuotedStringTokenizer.quote(stringBuffer, str);
        }
    }

    public JSON contextFor(String str) {
        return this;
    }

    public JSON contextForArray() {
        return this;
    }

    public Object convertTo(Class cls, Map map) {
        if (cls != null) {
            Class cls2 = f115397d;
            if (cls2 == null) {
                cls2 = class$("org.mortbay.util.ajax.JSON$Convertible");
                f115397d = cls2;
            }
            if (cls2.isAssignableFrom(cls)) {
                try {
                    Convertible convertible = (Convertible) cls.newInstance();
                    convertible.fromJSON(map);
                    return convertible;
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        }
        Convertor convertor = getConvertor(cls);
        return convertor != null ? convertor.fromJSON(map) : map;
    }

    public Object fromJSON(String str) {
        return parse(new StringSource(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
    
        r5 = r5.getSuperclass();
        r0 = (org.mortbay.util.ajax.JSON.Convertor) r4.f115400a.get(r5.getName());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.mortbay.util.ajax.JSON.Convertor getConvertor(java.lang.Class r5) {
        /*
            r4 = this;
            java.util.Map r0 = r4.f115400a
            java.lang.String r1 = r5.getName()
            java.lang.Object r0 = r0.get(r1)
            org.mortbay.util.ajax.JSON$Convertor r0 = (org.mortbay.util.ajax.JSON.Convertor) r0
            if (r0 != 0) goto L16
            org.mortbay.util.ajax.JSON r1 = org.mortbay.util.ajax.JSON.f115396c
            if (r4 == r1) goto L16
            org.mortbay.util.ajax.JSON$Convertor r0 = r1.getConvertor(r5)
        L16:
            if (r0 != 0) goto L57
            java.lang.Class r1 = org.mortbay.util.ajax.JSON.f115398e
            if (r1 != 0) goto L24
            java.lang.String r1 = "java.lang.Object"
            java.lang.Class r1 = class$(r1)
            org.mortbay.util.ajax.JSON.f115398e = r1
        L24:
            if (r5 == r1) goto L57
            java.lang.Class[] r1 = r5.getInterfaces()
            r2 = 0
        L2b:
            if (r0 != 0) goto L44
            if (r1 == 0) goto L44
            int r3 = r1.length
            if (r2 >= r3) goto L44
            java.util.Map r0 = r4.f115400a
            int r3 = r2 + 1
            r2 = r1[r2]
            java.lang.String r2 = r2.getName()
            java.lang.Object r0 = r0.get(r2)
            org.mortbay.util.ajax.JSON$Convertor r0 = (org.mortbay.util.ajax.JSON.Convertor) r0
            r2 = r3
            goto L2b
        L44:
            if (r0 != 0) goto L16
            java.lang.Class r5 = r5.getSuperclass()
            java.util.Map r0 = r4.f115400a
            java.lang.String r1 = r5.getName()
            java.lang.Object r0 = r0.get(r1)
            org.mortbay.util.ajax.JSON$Convertor r0 = (org.mortbay.util.ajax.JSON.Convertor) r0
            goto L16
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSON.getConvertor(java.lang.Class):org.mortbay.util.ajax.JSON$Convertor");
    }

    public Convertor getConvertorFor(String str) {
        JSON json;
        Convertor convertor = (Convertor) this.f115400a.get(str);
        return (convertor != null || this == (json = f115396c)) ? convertor : json.getConvertorFor(str);
    }

    public int getStringBufferSize() {
        return this.f115401b;
    }

    public Object handleUnknown(Source source, char c) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("unknown char '");
        stringBuffer.append(c);
        stringBuffer.append("'(");
        stringBuffer.append((int) c);
        stringBuffer.append(") in ");
        stringBuffer.append(source);
        throw new IllegalStateException(stringBuffer.toString());
    }

    public Object[] newArray(int i) {
        return new Object[i];
    }

    public Map newMap() {
        return new HashMap();
    }

    public Object parseArray(Source source) {
        if (source.next() != '[') {
            throw new IllegalStateException();
        }
        Object obj = null;
        ArrayList arrayList = null;
        int i = 0;
        while (true) {
            boolean z = true;
            while (source.hasNext()) {
                char peek = source.peek();
                if (peek != ',') {
                    if (peek == ']') {
                        source.next();
                        if (i == 0) {
                            return newArray(0);
                        }
                        if (i != 1) {
                            return arrayList.toArray(newArray(arrayList.size()));
                        }
                        Object[] newArray = newArray(1);
                        Array.set(newArray, 0, obj);
                        return newArray;
                    }
                    if (Character.isWhitespace(peek)) {
                        source.next();
                    } else {
                        int i2 = i + 1;
                        if (i == 0) {
                            obj = contextForArray().parse(source);
                        } else {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                arrayList.add(obj);
                                arrayList.add(contextForArray().parse(source));
                            } else {
                                arrayList.add(contextForArray().parse(source));
                            }
                            obj = null;
                        }
                        i = i2;
                        z = false;
                    }
                } else {
                    if (z) {
                        throw new IllegalStateException();
                    }
                    source.next();
                }
            }
            throw new IllegalStateException("unexpected end of array");
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0022. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x007a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Number parseNumber(org.mortbay.util.ajax.JSON.Source r11) {
        /*
            r10 = this;
            r10 = 0
            r0 = 0
            r2 = r0
        L4:
            boolean r4 = r11.hasNext()
            r5 = 46
            r6 = 101(0x65, float:1.42E-43)
            r7 = 69
            r8 = 43
            r9 = 45
            if (r4 == 0) goto L58
            char r4 = r11.peek()
            if (r4 == r8) goto L47
            if (r4 == r7) goto L31
            if (r4 == r6) goto L31
            if (r4 == r9) goto L47
            if (r4 == r5) goto L31
            switch(r4) {
                case 48: goto L26;
                case 49: goto L26;
                case 50: goto L26;
                case 51: goto L26;
                case 52: goto L26;
                case 53: goto L26;
                case 54: goto L26;
                case 55: goto L26;
                case 56: goto L26;
                case 57: goto L26;
                default: goto L25;
            }
        L25:
            goto L58
        L26:
            r5 = 10
            long r2 = r2 * r5
            int r4 = r4 + (-48)
            long r4 = (long) r4
            long r2 = r2 + r4
            r11.next()
            goto L4
        L31:
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = 16
            r0.<init>(r1)
            if (r10 == 0) goto L3d
            r0.append(r9)
        L3d:
            r0.append(r2)
            r0.append(r4)
            r11.next()
            goto L59
        L47:
            int r10 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r10 != 0) goto L50
            r11.next()
            r10 = 1
            goto L4
        L50:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "bad number"
            r10.<init>(r11)
            throw r10
        L58:
            r0 = 0
        L59:
            if (r0 != 0) goto L65
            if (r10 == 0) goto L60
            r10 = -1
            long r2 = r2 * r10
        L60:
            java.lang.Long r10 = org.mortbay.util.TypeUtil.newLong(r2)
            return r10
        L65:
            monitor-enter(r0)
        L66:
            boolean r10 = r11.hasNext()     // Catch: java.lang.Throwable -> L90
            if (r10 == 0) goto L85
            char r10 = r11.peek()     // Catch: java.lang.Throwable -> L90
            if (r10 == r8) goto L7e
            if (r10 == r7) goto L7e
            if (r10 == r6) goto L7e
            if (r10 == r9) goto L7e
            if (r10 == r5) goto L7e
            switch(r10) {
                case 48: goto L7e;
                case 49: goto L7e;
                case 50: goto L7e;
                case 51: goto L7e;
                case 52: goto L7e;
                case 53: goto L7e;
                case 54: goto L7e;
                case 55: goto L7e;
                case 56: goto L7e;
                case 57: goto L7e;
                default: goto L7d;
            }     // Catch: java.lang.Throwable -> L90
        L7d:
            goto L85
        L7e:
            r0.append(r10)     // Catch: java.lang.Throwable -> L90
            r11.next()     // Catch: java.lang.Throwable -> L90
            goto L66
        L85:
            java.lang.Double r10 = new java.lang.Double     // Catch: java.lang.Throwable -> L90
            java.lang.String r11 = r0.toString()     // Catch: java.lang.Throwable -> L90
            r10.<init>(r11)     // Catch: java.lang.Throwable -> L90
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L90
            return r10
        L90:
            r10 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L90
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSON.parseNumber(org.mortbay.util.ajax.JSON$Source):java.lang.Number");
    }

    public Object parseObject(Source source) {
        if (source.next() != '{') {
            throw new IllegalStateException();
        }
        Map newMap = newMap();
        char seekTo = seekTo("\"}", source);
        while (true) {
            if (!source.hasNext()) {
                break;
            }
            if (seekTo == '}') {
                source.next();
                break;
            }
            String parseString = parseString(source);
            seekTo(':', source);
            source.next();
            newMap.put(parseString, contextFor(parseString).parse(source));
            seekTo(",}", source);
            if (source.next() == '}') {
                break;
            }
            seekTo = seekTo("\"}", source);
        }
        String str = (String) newMap.get("class");
        if (str != null) {
            try {
                Class cls = f115399f;
                if (cls == null) {
                    cls = class$("org.mortbay.util.ajax.JSON");
                    f115399f = cls;
                }
                return convertTo(Loader.loadClass(cls, str), newMap);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return newMap;
    }

    public String parseString(Source source) {
        StringBuffer stringBuffer;
        boolean z;
        String stringBuffer2;
        char c;
        int i;
        if (source.next() != '\"') {
            throw new IllegalStateException();
        }
        char[] scratchBuffer = source.scratchBuffer();
        if (scratchBuffer != null) {
            int i2 = 0;
            z = false;
            while (true) {
                if (!source.hasNext()) {
                    stringBuffer = null;
                    break;
                }
                if (i2 >= scratchBuffer.length) {
                    stringBuffer = new StringBuffer(scratchBuffer.length * 2);
                    stringBuffer.append(scratchBuffer, 0, i2);
                    break;
                }
                char next = source.next();
                if (z) {
                    if (next == '\"') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '\"';
                    } else if (next == '/') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '/';
                    } else if (next == '\\') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '\\';
                    } else if (next == 'b') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '\b';
                    } else if (next == 'f') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '\f';
                    } else if (next == 'n') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '\n';
                    } else if (next == 'r') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '\r';
                    } else if (next == 't') {
                        i = i2 + 1;
                        scratchBuffer[i2] = '\t';
                    } else if (next != 'u') {
                        i = i2 + 1;
                        scratchBuffer[i2] = next;
                    } else {
                        i = i2 + 1;
                        scratchBuffer[i2] = (char) ((TypeUtil.convertHexDigit((byte) source.next()) << 12) + (TypeUtil.convertHexDigit((byte) source.next()) << 8) + (TypeUtil.convertHexDigit((byte) source.next()) << 4) + TypeUtil.convertHexDigit((byte) source.next()));
                    }
                    z = false;
                } else if (next == '\\') {
                    z = true;
                } else {
                    if (next == '\"') {
                        return toString(scratchBuffer, 0, i2);
                    }
                    i = i2 + 1;
                    scratchBuffer[i2] = next;
                }
                i2 = i;
            }
            if (stringBuffer == null) {
                return toString(scratchBuffer, 0, i2);
            }
        } else {
            stringBuffer = new StringBuffer(getStringBufferSize());
            z = false;
        }
        synchronized (stringBuffer) {
            while (source.hasNext()) {
                char next2 = source.next();
                if (z) {
                    if (next2 == '\"') {
                        c = '\b';
                        stringBuffer.append('\"');
                    } else if (next2 == '/') {
                        c = '\b';
                        stringBuffer.append('/');
                    } else if (next2 == '\\') {
                        c = '\b';
                        stringBuffer.append('\\');
                    } else if (next2 != 'b') {
                        if (next2 == 'f') {
                            stringBuffer.append('\f');
                        } else if (next2 == 'n') {
                            stringBuffer.append('\n');
                        } else if (next2 == 'r') {
                            stringBuffer.append('\r');
                            c = '\b';
                        } else if (next2 != 't') {
                            if (next2 != 'u') {
                                stringBuffer.append(next2);
                            } else {
                                stringBuffer.append((char) ((TypeUtil.convertHexDigit((byte) source.next()) << 12) + (TypeUtil.convertHexDigit((byte) source.next()) << 8) + (TypeUtil.convertHexDigit((byte) source.next()) << 4) + TypeUtil.convertHexDigit((byte) source.next())));
                            }
                            c = '\b';
                        } else {
                            stringBuffer.append('\t');
                            c = '\b';
                        }
                        c = '\b';
                    } else {
                        c = '\b';
                        stringBuffer.append('\b');
                    }
                    z = false;
                } else if (next2 == '\\') {
                    z = true;
                } else {
                    if (next2 == '\"') {
                        break;
                    }
                    stringBuffer.append(next2);
                }
            }
            stringBuffer2 = stringBuffer.toString();
        }
        return stringBuffer2;
    }

    public void seekTo(char c, Source source) {
        while (source.hasNext()) {
            char peek = source.peek();
            if (peek == c) {
                return;
            }
            if (Character.isWhitespace(peek)) {
                source.next();
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unexpected '");
                stringBuffer.append(peek);
                stringBuffer.append(" while seeking '");
                stringBuffer.append(c);
                stringBuffer.append(CloudStorageConstants.SINGLE_QUOTES);
                throw new IllegalStateException(stringBuffer.toString());
            }
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Expected '");
        stringBuffer2.append(c);
        stringBuffer2.append(CloudStorageConstants.SINGLE_QUOTES);
        throw new IllegalStateException(stringBuffer2.toString());
    }

    public void setStringBufferSize(int i) {
        this.f115401b = i;
    }

    public String toJSON(Object obj) {
        String stringBuffer;
        StringBuffer stringBuffer2 = new StringBuffer(getStringBufferSize());
        synchronized (stringBuffer2) {
            append(stringBuffer2, obj);
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    public static Object parse(String str, boolean z) {
        return f115396c.parse(new StringSource(str), z);
    }

    public void appendJSON(StringBuffer stringBuffer, Convertible convertible) {
        char[] cArr = {'{'};
        convertible.toJSON(new C20437c(this, cArr, stringBuffer));
        char c = cArr[0];
        if (c == '{') {
            stringBuffer.append("{}");
        } else if (c != 0) {
            stringBuffer.append("}");
        }
    }

    public static Object parse(Reader reader) throws IOException {
        return f115396c.parse((Source) new ReaderSource(reader), false);
    }

    public static Object parse(Reader reader, boolean z) throws IOException {
        return f115396c.parse(new ReaderSource(reader), z);
    }

    public static Object parse(InputStream inputStream) throws IOException {
        return f115396c.parse((Source) new StringSource(C20429IO.toString(inputStream)), false);
    }

    public void appendJSON(StringBuffer stringBuffer, Generator generator) {
        generator.addJSON(stringBuffer);
    }

    public static Object parse(InputStream inputStream, boolean z) throws IOException {
        return f115396c.parse(new StringSource(C20429IO.toString(inputStream)), z);
    }

    public static String toString(Map map) {
        String stringBuffer;
        StringBuffer stringBuffer2 = new StringBuffer(f115396c.getStringBufferSize());
        synchronized (stringBuffer2) {
            f115396c.appendMap(stringBuffer2, map);
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0043, code lost:
    
        if (r4 != '\r') goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(org.mortbay.util.ajax.JSON.Source r10, boolean r11) {
        /*
            r9 = this;
            if (r11 != 0) goto L7
            java.lang.Object r9 = r9.parse(r10)
            return r9
        L7:
            r11 = 1
            r0 = 0
            r1 = 0
            r3 = r11
            r2 = r0
        Lc:
            boolean r4 = r10.hasNext()
            if (r4 == 0) goto L5e
            char r4 = r10.peek()
            r5 = 47
            r6 = 42
            r7 = 2
            if (r2 != r11) goto L29
            if (r4 == r6) goto L24
            if (r4 == r5) goto L22
            goto L5a
        L22:
            r2 = -1
            goto L5a
        L24:
            if (r3 != r11) goto L30
            r2 = r0
            r3 = r7
            goto L5a
        L29:
            r8 = 3
            if (r2 <= r11) goto L3b
            if (r4 == r6) goto L39
            if (r4 == r5) goto L32
        L30:
            r2 = r7
            goto L5a
        L32:
            if (r2 != r8) goto L30
            if (r3 != r7) goto L37
            return r1
        L37:
            r2 = r0
            goto L5a
        L39:
            r2 = r8
            goto L5a
        L3b:
            if (r2 >= 0) goto L46
            r5 = 10
            if (r4 == r5) goto L37
            r5 = 13
            if (r4 == r5) goto L37
            goto L5a
        L46:
            boolean r7 = java.lang.Character.isWhitespace(r4)
            if (r7 != 0) goto L5a
            if (r4 != r5) goto L50
            r2 = r11
            goto L5a
        L50:
            if (r4 != r6) goto L53
            goto L39
        L53:
            if (r1 != 0) goto L5a
            java.lang.Object r1 = r9.parse(r10)
            goto Lc
        L5a:
            r10.next()
            goto Lc
        L5e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSON.parse(org.mortbay.util.ajax.JSON$Source, boolean):java.lang.Object");
    }

    public char seekTo(String str, Source source) {
        while (source.hasNext()) {
            char peek = source.peek();
            if (str.indexOf(peek) >= 0) {
                return peek;
            }
            if (Character.isWhitespace(peek)) {
                source.next();
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unexpected '");
                stringBuffer.append(peek);
                stringBuffer.append("' while seeking one of '");
                stringBuffer.append(str);
                stringBuffer.append(CloudStorageConstants.SINGLE_QUOTES);
                throw new IllegalStateException(stringBuffer.toString());
            }
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append("Expected one of '");
        stringBuffer2.append(str);
        stringBuffer2.append(CloudStorageConstants.SINGLE_QUOTES);
        throw new IllegalStateException(stringBuffer2.toString());
    }

    public void appendArray(StringBuffer stringBuffer, Object obj) {
        if (obj == null) {
            appendNull(stringBuffer);
            return;
        }
        stringBuffer.append('[');
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuffer.append(',');
            }
            append(stringBuffer, Array.get(obj, i));
        }
        stringBuffer.append(']');
    }

    public static String toString(Object[] objArr) {
        String stringBuffer;
        StringBuffer stringBuffer2 = new StringBuffer(f115396c.getStringBufferSize());
        synchronized (stringBuffer2) {
            f115396c.appendArray(stringBuffer2, objArr);
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0028, code lost:
    
        if (r1 != 3) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(org.mortbay.util.ajax.JSON.Source r9) {
        /*
            r8 = this;
            r0 = 0
            r1 = r0
        L2:
            boolean r2 = r9.hasNext()
            r3 = 0
            if (r2 == 0) goto Lb5
            char r2 = r9.peek()
            r4 = 42
            r5 = 2
            r6 = 47
            r7 = 1
            if (r1 != r7) goto L1e
            if (r2 == r4) goto L25
            if (r2 == r6) goto L1b
            goto La6
        L1b:
            r1 = -1
            goto La6
        L1e:
            if (r1 <= r7) goto L2e
            r3 = 3
            if (r2 == r4) goto L2b
            if (r2 == r6) goto L28
        L25:
            r1 = r5
            goto La6
        L28:
            if (r1 != r3) goto L25
            goto L3a
        L2b:
            r1 = r3
            goto La6
        L2e:
            if (r1 >= 0) goto L3c
            r3 = 10
            if (r2 == r3) goto L3a
            r3 = 13
            if (r2 == r3) goto L3a
            goto La6
        L3a:
            r1 = r0
            goto La6
        L3c:
            r4 = 34
            if (r2 == r4) goto Lb0
            r4 = 45
            if (r2 == r4) goto Lab
            if (r2 == r6) goto La5
            r4 = 78
            if (r2 == r4) goto L9f
            r4 = 91
            if (r2 == r4) goto L9a
            r4 = 102(0x66, float:1.43E-43)
            if (r2 == r4) goto L92
            r4 = 110(0x6e, float:1.54E-43)
            if (r2 == r4) goto L8c
            r4 = 123(0x7b, float:1.72E-43)
            if (r2 == r4) goto L87
            r4 = 116(0x74, float:1.63E-43)
            if (r2 == r4) goto L7f
            r4 = 117(0x75, float:1.64E-43)
            if (r2 == r4) goto L79
            boolean r3 = java.lang.Character.isDigit(r2)
            if (r3 == 0) goto L6d
            java.lang.Number r8 = r8.parseNumber(r9)
            return r8
        L6d:
            boolean r3 = java.lang.Character.isWhitespace(r2)
            if (r3 == 0) goto L74
            goto La6
        L74:
            java.lang.Object r8 = r8.handleUnknown(r9, r2)
            return r8
        L79:
            java.lang.String r8 = "undefined"
            complete(r8, r9)
            return r3
        L7f:
            java.lang.String r8 = "true"
            complete(r8, r9)
            java.lang.Boolean r8 = java.lang.Boolean.TRUE
            return r8
        L87:
            java.lang.Object r8 = r8.parseObject(r9)
            return r8
        L8c:
            java.lang.String r8 = "null"
            complete(r8, r9)
            return r3
        L92:
            java.lang.String r8 = "false"
            complete(r8, r9)
            java.lang.Boolean r8 = java.lang.Boolean.FALSE
            return r8
        L9a:
            java.lang.Object r8 = r8.parseArray(r9)
            return r8
        L9f:
            java.lang.String r8 = "NaN"
            complete(r8, r9)
            return r3
        La5:
            r1 = r7
        La6:
            r9.next()
            goto L2
        Lab:
            java.lang.Number r8 = r8.parseNumber(r9)
            return r8
        Lb0:
            java.lang.String r8 = r8.parseString(r9)
            return r8
        Lb5:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.util.ajax.JSON.parse(org.mortbay.util.ajax.JSON$Source):java.lang.Object");
    }

    public String toString(char[] cArr, int i, int i2) {
        return new String(cArr, i, i2);
    }
}
