package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Vector;

/* loaded from: classes10.dex */
public class NamespaceSupport implements NamespaceContext {
    protected int[] fContext;
    protected int fCurrentContext;
    protected String[] fNamespace;
    protected int fNamespaceSize;
    protected String[] fPrefixes;

    /* loaded from: classes10.dex */
    public final class IteratorPrefixes implements Iterator {
        private int counter = 0;
        private String[] prefixes;
        private int size;

        public IteratorPrefixes(String[] strArr, int i) {
            this.prefixes = strArr;
            this.size = i;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.counter < this.size;
        }

        @Override // java.util.Iterator
        public Object next() {
            int i = this.counter;
            if (i >= this.size) {
                throw new NoSuchElementException("Illegal access to Namespace prefixes enumeration.");
            }
            String[] strArr = NamespaceSupport.this.fPrefixes;
            this.counter = i + 1;
            return strArr[i];
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < this.size; i++) {
                stringBuffer.append(this.prefixes[i]);
                stringBuffer.append(" ");
            }
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes10.dex */
    public final class Prefixes implements Enumeration {
        private int counter = 0;
        private String[] prefixes;
        private int size;

        public Prefixes(String[] strArr, int i) {
            this.prefixes = strArr;
            this.size = i;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.counter < this.size;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            int i = this.counter;
            if (i >= this.size) {
                throw new NoSuchElementException("Illegal access to Namespace prefixes enumeration.");
            }
            String[] strArr = NamespaceSupport.this.fPrefixes;
            this.counter = i + 1;
            return strArr[i];
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < this.size; i++) {
                stringBuffer.append(this.prefixes[i]);
                stringBuffer.append(" ");
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

    public boolean containsPrefixInCurrentContext(String str) {
        for (int i = this.fContext[this.fCurrentContext]; i < this.fNamespaceSize; i += 2) {
            if (this.fNamespace[i] == str) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
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

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
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

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
    public String getDeclaredPrefixAt(int i) {
        return this.fNamespace[this.fContext[this.fCurrentContext] + (i * 2)];
    }

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
    public int getDeclaredPrefixCount() {
        return (this.fNamespaceSize - this.fContext[this.fCurrentContext]) / 2;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
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

    public Iterator getPrefixes() {
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
        return new IteratorPrefixes(this.fPrefixes, i);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
    public String getURI(String str) {
        for (int i = this.fNamespaceSize; i > 0; i -= 2) {
            String[] strArr = this.fNamespace;
            if (strArr[i - 2] == str) {
                return strArr[i - 1];
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
    public void popContext() {
        int[] iArr = this.fContext;
        int i = this.fCurrentContext;
        this.fCurrentContext = i - 1;
        this.fNamespaceSize = iArr[i];
    }

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
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

    @Override // com.sun.org.apache.xerces.internal.xni.NamespaceContext
    public void reset() {
        this.fCurrentContext = 0;
        String[] strArr = this.fNamespace;
        int i = 0 + 1;
        this.fNamespaceSize = i;
        strArr[0] = XMLSymbols.PREFIX_XML;
        int i2 = i + 1;
        strArr[i] = NamespaceContext.XML_URI;
        int i3 = i2 + 1;
        this.fNamespaceSize = i3;
        strArr[i2] = XMLSymbols.PREFIX_XMLNS;
        int i4 = i3 + 1;
        this.fNamespaceSize = i4;
        strArr[i3] = NamespaceContext.XMLNS_URI;
        this.fContext[0] = i4;
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

    public Vector getPrefixes(String str) {
        Vector vector = new Vector();
        for (int i = this.fNamespaceSize; i > 0; i -= 2) {
            String[] strArr = this.fNamespace;
            if (strArr[i - 1] == str) {
                int i2 = i - 2;
                if (!vector.contains(strArr[i2])) {
                    vector.add(this.fNamespace[i2]);
                }
            }
        }
        return vector;
    }
}
