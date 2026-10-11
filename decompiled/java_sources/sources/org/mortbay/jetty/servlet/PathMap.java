package org.mortbay.jetty.servlet;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.StringTokenizer;
import org.mortbay.util.LazyList;
import org.mortbay.util.SingletonList;
import org.mortbay.util.StringMap;

/* loaded from: classes13.dex */
public class PathMap extends HashMap implements Externalizable {
    private static String __pathSpecSeparators = System.getProperty("org.mortbay.http.PathMap.separators", ":,");
    Entry _default;
    List _defaultSingletonList;
    Set _entrySet;
    StringMap _exactMap;
    boolean _nodefault;
    Entry _prefixDefault;
    StringMap _prefixMap;
    StringMap _suffixMap;

    /* loaded from: classes13.dex */
    public static class Entry implements Map.Entry {

        /* renamed from: e */
        public Object f115155e;

        /* renamed from: f */
        public Object f115156f;

        /* renamed from: g */
        public String f115157g;

        /* renamed from: h */
        public transient String f115158h;

        public Entry(Object obj, Object obj2) {
            this.f115155e = obj;
            this.f115156f = obj2;
        }

        /* renamed from: a */
        public void m71618a(String str) {
            this.f115157g = str;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f115155e;
        }

        public String getMapped() {
            return this.f115157g;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f115156f;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            if (this.f115158h == null) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(this.f115155e);
                stringBuffer.append("=");
                stringBuffer.append(this.f115156f);
                this.f115158h = stringBuffer.toString();
            }
            return this.f115158h;
        }
    }

    public PathMap() {
        super(11);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
    }

    private static boolean isPathWildcardMatch(String str, String str2) {
        int length = str.length() - 2;
        return str.endsWith("/*") && str2.regionMatches(0, str, 0, length) && (str2.length() == length || '/' == str2.charAt(length));
    }

    public static String pathInfo(String str, String str2) {
        if (str.charAt(0) != '/' || str.length() == 1) {
            return null;
        }
        boolean isPathWildcardMatch = isPathWildcardMatch(str, str2);
        if ((!str.equals(str2) || isPathWildcardMatch) && isPathWildcardMatch && str2.length() != str.length() - 2) {
            return str2.substring(str.length() - 2);
        }
        return null;
    }

    public static String pathMatch(String str, String str2) {
        char charAt = str.charAt(0);
        if (charAt != '/') {
            if (charAt == '*' && str2.regionMatches(str2.length() - (str.length() - 1), str, 1, str.length() - 1)) {
                return str2;
            }
            return null;
        }
        if (str.length() == 1 || str.equals(str2)) {
            return str2;
        }
        if (isPathWildcardMatch(str, str2)) {
            return str2.substring(0, str.length() - 2);
        }
        return null;
    }

    public static String relativePath(String str, String str2, String str3) {
        String pathInfo = pathInfo(str2, str3);
        if (pathInfo != null) {
            str3 = pathInfo;
        }
        if (str3.startsWith("./")) {
            str3 = str3.substring(2);
        }
        if (str.endsWith("/")) {
            if (str3.startsWith("/")) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                stringBuffer.append(str3.substring(1));
                return stringBuffer.toString();
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(str);
            stringBuffer2.append(str3);
            return stringBuffer2.toString();
        }
        if (str3.startsWith("/")) {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(str);
            stringBuffer3.append(str3);
            return stringBuffer3.toString();
        }
        StringBuffer stringBuffer4 = new StringBuffer();
        stringBuffer4.append(str);
        stringBuffer4.append("/");
        stringBuffer4.append(str3);
        return stringBuffer4.toString();
    }

    public static void setPathSpecSeparators(String str) {
        __pathSpecSeparators = str;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        this._exactMap = new StringMap();
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._default = null;
        this._defaultSingletonList = null;
        super.clear();
    }

    public boolean containsMatch(String str) {
        Entry match = getMatch(str);
        return (match == null || match.equals(this._default)) ? false : true;
    }

    public Object getLazyMatches(String str) {
        if (str == null) {
            return LazyList.getList(null);
        }
        int length = str.length();
        int i = 0;
        Map.Entry entry = this._exactMap.getEntry(str, 0, length);
        Object add = entry != null ? LazyList.add(null, entry.getValue()) : null;
        int i2 = length - 1;
        while (true) {
            i2 = str.lastIndexOf(47, i2 - 1);
            if (i2 < 0) {
                break;
            }
            Map.Entry entry2 = this._prefixMap.getEntry(str, 0, i2);
            if (entry2 != null) {
                add = LazyList.add(add, entry2.getValue());
            }
        }
        Entry entry3 = this._prefixDefault;
        if (entry3 != null) {
            add = LazyList.add(add, entry3);
        }
        while (true) {
            i = str.indexOf(46, i + 1);
            if (i <= 0) {
                break;
            }
            Map.Entry entry4 = this._suffixMap.getEntry(str, i + 1, (length - i) - 1);
            if (entry4 != null) {
                add = LazyList.add(add, entry4.getValue());
            }
        }
        Entry entry5 = this._default;
        return entry5 != null ? add == null ? this._defaultSingletonList : LazyList.add(add, entry5) : add;
    }

    public Entry getMatch(String str) {
        Map.Entry entry;
        Map.Entry entry2;
        if (str == null) {
            return null;
        }
        int length = str.length();
        int i = 0;
        Map.Entry entry3 = this._exactMap.getEntry(str, 0, length);
        if (entry3 != null) {
            return (Entry) entry3.getValue();
        }
        int i2 = length;
        do {
            i2 = str.lastIndexOf(47, i2 - 1);
            if (i2 < 0) {
                Entry entry4 = this._prefixDefault;
                if (entry4 != null) {
                    return entry4;
                }
                do {
                    i = str.indexOf(46, i + 1);
                    if (i <= 0) {
                        return this._default;
                    }
                    entry = this._suffixMap.getEntry(str, i + 1, (length - i) - 1);
                } while (entry == null);
                return (Entry) entry.getValue();
            }
            entry2 = this._prefixMap.getEntry(str, 0, i2);
        } while (entry2 == null);
        return (Entry) entry2.getValue();
    }

    public List getMatches(String str) {
        return LazyList.getList(getLazyMatches(str));
    }

    public Object match(String str) {
        Entry match = getMatch(str);
        if (match != null) {
            return match.getValue();
        }
        return null;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public synchronized Object put(Object obj, Object obj2) {
        Object obj3;
        StringTokenizer stringTokenizer = new StringTokenizer(obj.toString(), __pathSpecSeparators);
        obj3 = null;
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (!nextToken.startsWith("/") && !nextToken.startsWith("*.")) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("PathSpec ");
                stringBuffer.append(nextToken);
                stringBuffer.append(". must start with '/' or '*.'");
                throw new IllegalArgumentException(stringBuffer.toString());
            }
            Object put = super.put(nextToken, obj2);
            Entry entry = new Entry(nextToken, obj2);
            if (entry.getKey().equals(nextToken)) {
                if (nextToken.equals("/*")) {
                    this._prefixDefault = entry;
                } else if (nextToken.endsWith("/*")) {
                    String substring = nextToken.substring(0, nextToken.length() - 2);
                    entry.m71618a(substring);
                    this._prefixMap.put(substring, (Object) entry);
                    this._exactMap.put(substring, (Object) entry);
                    this._exactMap.put(nextToken.substring(0, nextToken.length() - 1), (Object) entry);
                } else if (nextToken.startsWith("*.")) {
                    this._suffixMap.put(nextToken.substring(2), (Object) entry);
                } else if (!nextToken.equals("/")) {
                    entry.m71618a(nextToken);
                    this._exactMap.put(nextToken, (Object) entry);
                } else if (this._nodefault) {
                    this._exactMap.put(nextToken, (Object) entry);
                } else {
                    this._default = entry;
                    this._defaultSingletonList = SingletonList.newSingletonList(entry);
                }
            }
            obj3 = put;
        }
        return obj3;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        putAll((HashMap) objectInput.readObject());
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public synchronized Object remove(Object obj) {
        if (obj != null) {
            String str = (String) obj;
            if (str.equals("/*")) {
                this._prefixDefault = null;
            } else if (str.endsWith("/*")) {
                this._prefixMap.remove(str.substring(0, str.length() - 2));
                this._exactMap.remove(str.substring(0, str.length() - 1));
                this._exactMap.remove(str.substring(0, str.length() - 2));
            } else if (str.startsWith("*.")) {
                this._suffixMap.remove(str.substring(2));
            } else if (str.equals("/")) {
                this._default = null;
                this._defaultSingletonList = null;
            } else {
                this._exactMap.remove(str);
            }
        }
        return super.remove(obj);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(new HashMap(this));
    }

    public static boolean match(String str, String str2) throws IllegalArgumentException {
        return match(str, str2, false);
    }

    public static boolean match(String str, String str2, boolean z) throws IllegalArgumentException {
        char charAt = str.charAt(0);
        if (charAt == '/') {
            if ((!z && str.length() == 1) || str.equals(str2) || isPathWildcardMatch(str, str2)) {
                return true;
            }
        } else if (charAt == '*') {
            return str2.regionMatches((str2.length() - str.length()) + 1, str, 1, str.length() - 1);
        }
        return false;
    }

    public PathMap(boolean z) {
        super(11);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
        this._nodefault = z;
    }

    public PathMap(int i) {
        super(i);
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        this._entrySet = entrySet();
    }

    public PathMap(Map map) {
        this._prefixMap = new StringMap();
        this._suffixMap = new StringMap();
        this._exactMap = new StringMap();
        this._defaultSingletonList = null;
        this._prefixDefault = null;
        this._default = null;
        this._nodefault = false;
        putAll(map);
        this._entrySet = entrySet();
    }
}
