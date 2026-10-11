package org.mortbay.util;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes13.dex */
public class StringMap extends AbstractMap implements Externalizable {
    public static final boolean CASE_INSENSTIVE = true;
    protected static final int __HASH_WIDTH = 17;
    protected HashSet _entrySet;
    protected boolean _ignoreCase;
    protected C20433b _nullEntry;
    protected Object _nullValue;
    protected C20432a _root;
    protected Set _umEntrySet;
    protected int _width;

    /* renamed from: org.mortbay.util.StringMap$a */
    /* loaded from: classes13.dex */
    public static class C20432a implements Map.Entry {

        /* renamed from: e */
        public char[] f115359e;

        /* renamed from: f */
        public char[] f115360f;

        /* renamed from: g */
        public C20432a f115361g;

        /* renamed from: h */
        public C20432a[] f115362h;

        /* renamed from: i */
        public String f115363i;

        /* renamed from: j */
        public Object f115364j;

        public C20432a() {
        }

        /* renamed from: a */
        public C20432a m71666a(StringMap stringMap, int i) {
            C20432a c20432a = new C20432a();
            char[] cArr = this.f115359e;
            int length = cArr.length - i;
            this.f115359e = new char[i];
            c20432a.f115359e = new char[length];
            System.arraycopy(cArr, 0, this.f115359e, 0, i);
            System.arraycopy(cArr, i, c20432a.f115359e, 0, length);
            char[] cArr2 = this.f115360f;
            if (cArr2 != null) {
                this.f115360f = new char[i];
                c20432a.f115360f = new char[length];
                System.arraycopy(cArr2, 0, this.f115360f, 0, i);
                System.arraycopy(cArr2, i, c20432a.f115360f, 0, length);
            }
            c20432a.f115363i = this.f115363i;
            c20432a.f115364j = this.f115364j;
            this.f115363i = null;
            this.f115364j = null;
            if (stringMap._entrySet.remove(this)) {
                stringMap._entrySet.add(c20432a);
            }
            c20432a.f115362h = this.f115362h;
            int i2 = stringMap._width;
            C20432a[] c20432aArr = new C20432a[i2];
            this.f115362h = c20432aArr;
            c20432aArr[c20432a.f115359e[0] % i2] = c20432a;
            char[] cArr3 = c20432a.f115360f;
            if (cArr3 != null) {
                char c = cArr3[0];
                if (c20432aArr[c % i2] != c20432a) {
                    c20432aArr[c % i2] = c20432a;
                }
            }
            return c20432a;
        }

        /* renamed from: b */
        public final void m71667b(StringBuffer stringBuffer) {
            stringBuffer.append("{[");
            if (this.f115359e != null) {
                int i = 0;
                while (true) {
                    char[] cArr = this.f115359e;
                    if (i >= cArr.length) {
                        break;
                    }
                    stringBuffer.append(cArr[i]);
                    i++;
                }
            } else {
                stringBuffer.append('-');
            }
            stringBuffer.append(':');
            stringBuffer.append(this.f115363i);
            stringBuffer.append('=');
            stringBuffer.append(this.f115364j);
            stringBuffer.append(']');
            if (this.f115362h != null) {
                for (int i2 = 0; i2 < this.f115362h.length; i2++) {
                    stringBuffer.append('|');
                    C20432a c20432a = this.f115362h[i2];
                    if (c20432a != null) {
                        c20432a.m71667b(stringBuffer);
                    } else {
                        stringBuffer.append("-");
                    }
                }
            }
            stringBuffer.append('}');
            if (this.f115361g != null) {
                stringBuffer.append(",\n");
                this.f115361g.m71667b(stringBuffer);
            }
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f115363i;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f115364j;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.f115364j;
            this.f115364j = obj;
            return obj2;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            synchronized (stringBuffer) {
                m71667b(stringBuffer);
            }
            return stringBuffer.toString();
        }

        public C20432a(boolean z, String str, int i) {
            int length = str.length() - i;
            this.f115359e = new char[length];
            this.f115360f = new char[length];
            for (int i2 = 0; i2 < length; i2++) {
                char charAt = str.charAt(i + i2);
                this.f115359e[i2] = charAt;
                if (z) {
                    if (Character.isUpperCase(charAt)) {
                        charAt = Character.toLowerCase(charAt);
                    } else if (Character.isLowerCase(charAt)) {
                        charAt = Character.toUpperCase(charAt);
                    }
                    this.f115360f[i2] = charAt;
                }
            }
        }
    }

    /* renamed from: org.mortbay.util.StringMap$b */
    /* loaded from: classes13.dex */
    public class C20433b implements Map.Entry {
        public C20433b() {
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return null;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return StringMap.this._nullValue;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            StringMap stringMap = StringMap.this;
            Object obj2 = stringMap._nullValue;
            stringMap._nullValue = obj;
            return obj2;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("[:null=");
            stringBuffer.append(StringMap.this._nullValue);
            stringBuffer.append(IteratorUtils.f104924b);
            return stringBuffer.toString();
        }
    }

    public StringMap() {
        this._width = 17;
        this._root = new C20432a();
        this._ignoreCase = false;
        this._nullEntry = null;
        this._nullValue = null;
        HashSet hashSet = new HashSet(3);
        this._entrySet = hashSet;
        this._umEntrySet = Collections.unmodifiableSet(hashSet);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this._root = new C20432a();
        this._nullEntry = null;
        this._nullValue = null;
        this._entrySet.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return obj == null ? this._nullEntry != null : getEntry(obj.toString(), 0, obj.toString().length()) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        return this._umEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        if (obj == null) {
            return this._nullValue;
        }
        if (obj instanceof String) {
            return get((String) obj);
        }
        return get(obj.toString());
    }

    public Map.Entry getBestEntry(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return this._nullEntry;
        }
        C20432a c20432a = this._root;
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            char c = (char) bArr[i + i4];
            if (i3 == -1) {
                C20432a[] c20432aArr = c20432a.f115362h;
                C20432a c20432a2 = c20432aArr == null ? null : c20432aArr[c % this._width];
                if (c20432a2 == null && i4 > 0) {
                    return c20432a;
                }
                c20432a = c20432a2;
                i3 = 0;
            }
            while (c20432a != null) {
                char[] cArr = c20432a.f115359e;
                if (cArr[i3] == c || (this._ignoreCase && c20432a.f115360f[i3] == c)) {
                    i3++;
                    if (i3 == cArr.length) {
                        i3 = -1;
                    }
                } else {
                    if (i3 > 0) {
                        return null;
                    }
                    c20432a = c20432a.f115361g;
                }
            }
            return null;
        }
        if (i3 > 0) {
            return null;
        }
        if (c20432a == null || c20432a.f115363i != null) {
            return c20432a;
        }
        return null;
    }

    public Map.Entry getEntry(String str, int i, int i2) {
        if (str == null) {
            return this._nullEntry;
        }
        C20432a c20432a = this._root;
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            char charAt = str.charAt(i + i4);
            if (i3 == -1) {
                C20432a[] c20432aArr = c20432a.f115362h;
                c20432a = c20432aArr == null ? null : c20432aArr[charAt % this._width];
                i3 = 0;
            }
            while (c20432a != null) {
                char[] cArr = c20432a.f115359e;
                if (cArr[i3] != charAt && (!this._ignoreCase || c20432a.f115360f[i3] != charAt)) {
                    if (i3 > 0) {
                        return null;
                    }
                    c20432a = c20432a.f115361g;
                } else {
                    i3++;
                    if (i3 == cArr.length) {
                        i3 = -1;
                    }
                }
            }
            return null;
        }
        if (i3 > 0) {
            return null;
        }
        if (c20432a == null || c20432a.f115363i != null) {
            return c20432a;
        }
        return null;
    }

    public int getWidth() {
        return this._width;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this._entrySet.isEmpty();
    }

    public boolean isIgnoreCase() {
        return this._ignoreCase;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object obj, Object obj2) {
        if (obj == null) {
            return put((String) null, obj2);
        }
        return put(obj.toString(), obj2);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        boolean readBoolean = objectInput.readBoolean();
        HashMap hashMap = (HashMap) objectInput.readObject();
        setIgnoreCase(readBoolean);
        putAll(hashMap);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        if (obj == null) {
            return remove((String) null);
        }
        return remove(obj.toString());
    }

    public void setIgnoreCase(boolean z) {
        if (this._root.f115362h != null) {
            throw new IllegalStateException("Must be set before first put");
        }
        this._ignoreCase = z;
    }

    public void setWidth(int i) {
        this._width = i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this._entrySet.size();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        HashMap hashMap = new HashMap(this);
        objectOutput.writeBoolean(this._ignoreCase);
        objectOutput.writeObject(hashMap);
    }

    public Object put(String str, Object obj) {
        if (str == null) {
            Object obj2 = this._nullValue;
            this._nullValue = obj;
            if (this._nullEntry == null) {
                C20433b c20433b = new C20433b();
                this._nullEntry = c20433b;
                this._entrySet.add(c20433b);
            }
            return obj2;
        }
        C20432a c20432a = this._root;
        C20432a c20432a2 = null;
        C20432a c20432a3 = null;
        int i = 0;
        int i2 = -1;
        while (true) {
            if (i >= str.length()) {
                break;
            }
            char charAt = str.charAt(i);
            if (i2 == -1) {
                C20432a[] c20432aArr = c20432a.f115362h;
                c20432a2 = null;
                c20432a3 = c20432a;
                c20432a = c20432aArr == null ? null : c20432aArr[charAt % this._width];
                i2 = 0;
            }
            while (c20432a != null) {
                char[] cArr = c20432a.f115359e;
                if (cArr[i2] == charAt || (this._ignoreCase && c20432a.f115360f[i2] == charAt)) {
                    i2++;
                    if (i2 == cArr.length) {
                        c20432a2 = null;
                    } else {
                        c20432a2 = null;
                        i++;
                    }
                } else if (i2 == 0) {
                    c20432a2 = c20432a;
                    c20432a = c20432a.f115361g;
                } else {
                    c20432a.m71666a(this, i2);
                    i--;
                }
                i2 = -1;
                i++;
            }
            c20432a = new C20432a(this._ignoreCase, str, i);
            if (c20432a2 != null) {
                c20432a2.f115361g = c20432a;
            } else if (c20432a3 != null) {
                if (c20432a3.f115362h == null) {
                    c20432a3.f115362h = new C20432a[this._width];
                }
                C20432a[] c20432aArr2 = c20432a3.f115362h;
                int i3 = this._width;
                c20432aArr2[charAt % i3] = c20432a;
                char[] cArr2 = c20432a.f115360f;
                int i4 = cArr2[0] % i3;
                if (cArr2 != null && c20432a.f115359e[0] % i3 != i4) {
                    C20432a c20432a4 = c20432aArr2[i4];
                    if (c20432a4 == null) {
                        c20432aArr2[i4] = c20432a;
                    } else {
                        while (true) {
                            C20432a c20432a5 = c20432a4.f115361g;
                            if (c20432a5 == null) {
                                break;
                            }
                            c20432a4 = c20432a5;
                        }
                        c20432a4.f115361g = c20432a;
                    }
                }
            } else {
                this._root = c20432a;
            }
        }
        if (c20432a == null) {
            return null;
        }
        if (i2 > 0) {
            c20432a.m71666a(this, i2);
        }
        Object obj3 = c20432a.f115364j;
        c20432a.f115363i = str;
        c20432a.f115364j = obj;
        this._entrySet.add(c20432a);
        return obj3;
    }

    public Object remove(String str) {
        if (str == null) {
            Object obj = this._nullValue;
            C20433b c20433b = this._nullEntry;
            if (c20433b != null) {
                this._entrySet.remove(c20433b);
                this._nullEntry = null;
                this._nullValue = null;
            }
            return obj;
        }
        C20432a c20432a = this._root;
        int i = -1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (i == -1) {
                C20432a[] c20432aArr = c20432a.f115362h;
                c20432a = c20432aArr == null ? null : c20432aArr[charAt % this._width];
                i = 0;
            }
            while (c20432a != null) {
                char[] cArr = c20432a.f115359e;
                if (cArr[i] != charAt && (!this._ignoreCase || c20432a.f115360f[i] != charAt)) {
                    if (i > 0) {
                        return null;
                    }
                    c20432a = c20432a.f115361g;
                } else {
                    i++;
                    if (i == cArr.length) {
                        i = -1;
                    }
                }
            }
            return null;
        }
        if (i > 0) {
            return null;
        }
        if (c20432a != null && c20432a.f115363i == null) {
            return null;
        }
        Object obj2 = c20432a.f115364j;
        this._entrySet.remove(c20432a);
        c20432a.f115364j = null;
        c20432a.f115363i = null;
        return obj2;
    }

    public Object get(String str) {
        if (str == null) {
            return this._nullValue;
        }
        Map.Entry entry = getEntry(str, 0, str.length());
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    public StringMap(boolean z) {
        this();
        this._ignoreCase = z;
    }

    public Map.Entry getEntry(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return this._nullEntry;
        }
        C20432a c20432a = this._root;
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            char c = cArr[i + i4];
            if (i3 == -1) {
                C20432a[] c20432aArr = c20432a.f115362h;
                c20432a = c20432aArr == null ? null : c20432aArr[c % this._width];
                i3 = 0;
            }
            while (c20432a != null) {
                char[] cArr2 = c20432a.f115359e;
                if (cArr2[i3] != c && (!this._ignoreCase || c20432a.f115360f[i3] != c)) {
                    if (i3 > 0) {
                        return null;
                    }
                    c20432a = c20432a.f115361g;
                } else {
                    i3++;
                    if (i3 == cArr2.length) {
                        i3 = -1;
                    }
                }
            }
            return null;
        }
        if (i3 > 0) {
            return null;
        }
        if (c20432a == null || c20432a.f115363i != null) {
            return c20432a;
        }
        return null;
    }

    public StringMap(boolean z, int i) {
        this();
        this._ignoreCase = z;
        this._width = i;
    }
}
