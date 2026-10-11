package org.apache.xerces.impl.p117xs.util;

import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;
import javax.xml.namespace.QName;
import org.apache.xerces.p118xs.XSNamedMap;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.util.SymbolHash;

/* loaded from: classes13.dex */
public class XSNamedMapImpl extends AbstractMap implements XSNamedMap {
    public static final XSNamedMapImpl EMPTY_MAP = new XSNamedMapImpl(new XSObject[0], 0);

    /* renamed from: e */
    public final String[] f113250e;

    /* renamed from: f */
    public final int f113251f;

    /* renamed from: g */
    public final SymbolHash[] f113252g;

    /* renamed from: h */
    public XSObject[] f113253h;

    /* renamed from: i */
    public int f113254i;

    /* renamed from: j */
    public Set f113255j;

    /* renamed from: org.apache.xerces.impl.xs.util.XSNamedMapImpl$a */
    /* loaded from: classes13.dex */
    public static final class C20063a implements Map.Entry {

        /* renamed from: e */
        public final QName f113256e;

        /* renamed from: f */
        public final XSObject f113257f;

        public C20063a(QName qName, XSObject xSObject) {
            this.f113256e = qName;
            this.f113257f = xSObject;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            QName qName = this.f113256e;
            if (!(qName == null ? key == null : qName.equals(key))) {
                return false;
            }
            XSObject xSObject = this.f113257f;
            return xSObject == null ? value == null : xSObject.equals(value);
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.f113256e;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.f113257f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            QName qName = this.f113256e;
            int hashCode = qName == null ? 0 : qName.hashCode();
            XSObject xSObject = this.f113257f;
            return hashCode ^ (xSObject != null ? xSObject.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(String.valueOf(this.f113256e));
            stringBuffer.append('=');
            stringBuffer.append(String.valueOf(this.f113257f));
            return stringBuffer.toString();
        }
    }

    public XSNamedMapImpl(String str, SymbolHash symbolHash) {
        this.f113253h = null;
        this.f113254i = -1;
        this.f113255j = null;
        this.f113250e = new String[]{str};
        this.f113252g = new SymbolHash[]{symbolHash};
        this.f113251f = 1;
    }

    /* renamed from: a */
    public static boolean m70484a(String str, String str2) {
        return str != null ? str.equals(str2) : str2 == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public synchronized Set entrySet() {
        if (this.f113255j == null) {
            int length = getLength();
            C20063a[] c20063aArr = new C20063a[length];
            for (int i = 0; i < length; i++) {
                XSObject item = item(i);
                c20063aArr[i] = new C20063a(new QName(item.getNamespace(), item.getName()), item);
            }
            this.f113255j = new C20065a(this, length, c20063aArr);
        }
        return this.f113255j;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        if (!(obj instanceof QName)) {
            return null;
        }
        QName qName = (QName) obj;
        String namespaceURI = qName.getNamespaceURI();
        return itemByName("".equals(namespaceURI) ? null : namespaceURI, qName.getLocalPart());
    }

    public synchronized int getLength() {
        if (this.f113254i == -1) {
            this.f113254i = 0;
            for (int i = 0; i < this.f113251f; i++) {
                this.f113254i += this.f113252g[i].getLength();
            }
        }
        return this.f113254i;
    }

    public synchronized XSObject item(int i) {
        if (this.f113253h == null) {
            getLength();
            this.f113253h = new XSObject[this.f113254i];
            int i2 = 0;
            for (int i3 = 0; i3 < this.f113251f; i3++) {
                i2 += this.f113252g[i3].getValues(this.f113253h, i2);
            }
        }
        if (i >= 0 && i < this.f113254i) {
            return this.f113253h[i];
        }
        return null;
    }

    public XSObject itemByName(String str, String str2) {
        for (int i = 0; i < this.f113251f; i++) {
            if (m70484a(str, this.f113250e[i])) {
                SymbolHash[] symbolHashArr = this.f113252g;
                if (symbolHashArr != null) {
                    return (XSObject) symbolHashArr[i].get(str2);
                }
                for (int i2 = 0; i2 < this.f113254i; i2++) {
                    XSObject xSObject = this.f113253h[i2];
                    if (xSObject.getName().equals(str2)) {
                        return xSObject;
                    }
                }
                return null;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return getLength();
    }

    public XSNamedMapImpl(String[] strArr, SymbolHash[] symbolHashArr, int i) {
        this.f113253h = null;
        this.f113254i = -1;
        this.f113255j = null;
        this.f113250e = strArr;
        this.f113252g = symbolHashArr;
        this.f113251f = i;
    }

    public XSNamedMapImpl(XSObject[] xSObjectArr, int i) {
        this.f113253h = null;
        this.f113254i = -1;
        this.f113255j = null;
        if (i == 0) {
            this.f113250e = null;
            this.f113252g = null;
            this.f113251f = 0;
            this.f113253h = xSObjectArr;
            this.f113254i = 0;
            return;
        }
        this.f113250e = new String[]{xSObjectArr[0].getNamespace()};
        this.f113252g = null;
        this.f113251f = 1;
        this.f113253h = xSObjectArr;
        this.f113254i = i;
    }
}
