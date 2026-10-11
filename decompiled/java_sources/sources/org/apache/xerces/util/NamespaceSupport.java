package org.apache.xerces.util;

import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.apache.xerces.xni.NamespaceContext;

/* loaded from: classes13.dex */
public class NamespaceSupport implements NamespaceContext {
    protected int[] fContext;
    protected int fCurrentContext;
    protected String[] fNamespace;
    protected int fNamespaceSize;
    protected String[] fPrefixes;

    /* loaded from: classes13.dex */
    public final class Prefixes implements Enumeration {

        /* renamed from: e */
        public String[] f113501e;

        /* renamed from: f */
        public int f113502f = 0;

        /* renamed from: g */
        public int f113503g;

        public Prefixes(String[] strArr, int i) {
            this.f113501e = strArr;
            this.f113503g = i;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f113502f < this.f113503g;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            int i = this.f113502f;
            if (i >= this.f113503g) {
                throw new NoSuchElementException("Illegal access to Namespace prefixes enumeration.");
            }
            String[] strArr = NamespaceSupport.this.fPrefixes;
            this.f113502f = i + 1;
            return strArr[i];
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < this.f113503g; i++) {
                stringBuffer.append(this.f113501e[i]);
                stringBuffer.append(' ');
            }
            return stringBuffer.toString();
        }
    }

    public NamespaceSupport() {
        this.fNamespace = new String[32];
        this.fContext = new int[8];
        this.fPrefixes = new String[16];
    }

    public boolean containsPrefix(String str) {
        for (int i = this.fNamespaceSize; i > 0; i -= 2) {
            if (this.fNamespace[i - 2] == str) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public boolean declarePrefix(String str, String str2) {
        if (str == XMLSymbols.PREFIX_XML || str == XMLSymbols.PREFIX_XMLNS) {
            return false;
        }
        for (int i = this.fNamespaceSize; i > this.fContext[this.fCurrentContext]; i -= 2) {
            String[] strArr = this.fNamespace;
            if (strArr[i - 2] == str) {
                strArr[i - 1] = str2;
                return true;
            }
        }
        int i2 = this.fNamespaceSize;
        String[] strArr2 = this.fNamespace;
        if (i2 == strArr2.length) {
            String[] strArr3 = new String[i2 * 2];
            System.arraycopy(strArr2, 0, strArr3, 0, i2);
            this.fNamespace = strArr3;
        }
        String[] strArr4 = this.fNamespace;
        int i3 = this.fNamespaceSize;
        int i4 = i3 + 1;
        strArr4[i3] = str;
        this.fNamespaceSize = i4 + 1;
        strArr4[i4] = str2;
        return true;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public Enumeration getAllPrefixes() {
        boolean z;
        if (this.fPrefixes.length < this.fNamespace.length / 2) {
            this.fPrefixes = new String[this.fNamespaceSize];
        }
        int i = 0;
        int i2 = 2;
        while (i2 < this.fNamespaceSize - 2) {
            i2 += 2;
            String str = this.fNamespace[i2];
            int i3 = 0;
            while (true) {
                if (i3 >= i) {
                    z = true;
                    break;
                }
                if (this.fPrefixes[i3] == str) {
                    z = false;
                    break;
                }
                i3++;
            }
            if (z) {
                this.fPrefixes[i] = str;
                i++;
            }
        }
        return new Prefixes(this.fPrefixes, i);
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public String getDeclaredPrefixAt(int i) {
        return this.fNamespace[this.fContext[this.fCurrentContext] + (i * 2)];
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public int getDeclaredPrefixCount() {
        return (this.fNamespaceSize - this.fContext[this.fCurrentContext]) / 2;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public String getPrefix(String str) {
        for (int i = this.fNamespaceSize; i > 0; i -= 2) {
            String[] strArr = this.fNamespace;
            if (strArr[i - 1] == str) {
                int i2 = i - 2;
                if (getURI(strArr[i2]) == str) {
                    return this.fNamespace[i2];
                }
            }
        }
        return null;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public String getURI(String str) {
        for (int i = this.fNamespaceSize; i > 0; i -= 2) {
            String[] strArr = this.fNamespace;
            if (strArr[i - 2] == str) {
                return strArr[i - 1];
            }
        }
        return null;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public void popContext() {
        int[] iArr = this.fContext;
        int i = this.fCurrentContext;
        this.fCurrentContext = i - 1;
        this.fNamespaceSize = iArr[i];
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public void pushContext() {
        int i = this.fCurrentContext + 1;
        int[] iArr = this.fContext;
        if (i == iArr.length) {
            int[] iArr2 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.fContext = iArr2;
        }
        int[] iArr3 = this.fContext;
        int i2 = this.fCurrentContext + 1;
        this.fCurrentContext = i2;
        iArr3[i2] = this.fNamespaceSize;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public void reset() {
        this.fCurrentContext = 0;
        this.fContext[0] = 0;
        String[] strArr = this.fNamespace;
        int i = 0 + 1;
        this.fNamespaceSize = i;
        strArr[0] = XMLSymbols.PREFIX_XML;
        int i2 = i + 1;
        strArr[i] = NamespaceContext.XML_URI;
        int i3 = i2 + 1;
        this.fNamespaceSize = i3;
        strArr[i2] = XMLSymbols.PREFIX_XMLNS;
        this.fNamespaceSize = i3 + 1;
        strArr[i3] = NamespaceContext.XMLNS_URI;
        this.fCurrentContext = 0 + 1;
    }

    public NamespaceSupport(NamespaceContext namespaceContext) {
        this.fNamespace = new String[32];
        this.fContext = new int[8];
        this.fPrefixes = new String[16];
        pushContext();
        Enumeration allPrefixes = namespaceContext.getAllPrefixes();
        while (allPrefixes.hasMoreElements()) {
            String str = (String) allPrefixes.nextElement();
            declarePrefix(str, namespaceContext.getURI(str));
        }
    }
}
