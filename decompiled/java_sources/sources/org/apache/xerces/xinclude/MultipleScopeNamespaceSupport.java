package org.apache.xerces.xinclude;

import java.util.Enumeration;
import org.apache.xerces.util.NamespaceSupport;
import org.apache.xerces.util.XMLSymbols;
import org.apache.xerces.xni.NamespaceContext;

/* loaded from: classes13.dex */
public class MultipleScopeNamespaceSupport extends NamespaceSupport {
    protected int fCurrentScope;
    protected int[] fScope;

    public MultipleScopeNamespaceSupport() {
        int[] iArr = new int[8];
        this.fScope = iArr;
        this.fCurrentScope = 0;
        iArr[0] = 0;
    }

    @Override // org.apache.xerces.util.NamespaceSupport, org.apache.xerces.xni.NamespaceContext
    public Enumeration getAllPrefixes() {
        boolean z;
        if (this.fPrefixes.length < this.fNamespace.length / 2) {
            this.fPrefixes = new String[this.fNamespaceSize];
        }
        int i = 0;
        for (int i2 = this.fContext[this.fScope[this.fCurrentScope]]; i2 <= this.fNamespaceSize - 2; i2 += 2) {
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
        return new NamespaceSupport.Prefixes(this.fPrefixes, i);
    }

    @Override // org.apache.xerces.util.NamespaceSupport, org.apache.xerces.xni.NamespaceContext
    public String getPrefix(String str) {
        return getPrefix(str, this.fNamespaceSize, this.fContext[this.fScope[this.fCurrentScope]]);
    }

    public int getScopeForContext(int i) {
        int i2 = this.fCurrentScope;
        while (i < this.fScope[i2]) {
            i2--;
        }
        return i2;
    }

    @Override // org.apache.xerces.util.NamespaceSupport, org.apache.xerces.xni.NamespaceContext
    public String getURI(String str) {
        return getURI(str, this.fNamespaceSize, this.fContext[this.fScope[this.fCurrentScope]]);
    }

    public void popScope() {
        int[] iArr = this.fScope;
        int i = this.fCurrentScope;
        this.fCurrentScope = i - 1;
        this.fCurrentContext = iArr[i];
        popContext();
    }

    public void pushScope() {
        int i = this.fCurrentScope + 1;
        int[] iArr = this.fScope;
        if (i == iArr.length) {
            int[] iArr2 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.fScope = iArr2;
        }
        pushContext();
        int[] iArr3 = this.fScope;
        int i2 = this.fCurrentScope + 1;
        this.fCurrentScope = i2;
        iArr3[i2] = this.fCurrentContext;
    }

    @Override // org.apache.xerces.util.NamespaceSupport, org.apache.xerces.xni.NamespaceContext
    public void reset() {
        int i = this.fScope[this.fCurrentScope];
        this.fCurrentContext = i;
        this.fNamespaceSize = this.fContext[i];
    }

    public MultipleScopeNamespaceSupport(NamespaceContext namespaceContext) {
        super(namespaceContext);
        int[] iArr = new int[8];
        this.fScope = iArr;
        this.fCurrentScope = 0;
        iArr[0] = 0;
    }

    public String getPrefix(String str, int i) {
        int[] iArr = this.fContext;
        return getPrefix(str, iArr[i + 1], iArr[this.fScope[getScopeForContext(i)]]);
    }

    public String getURI(String str, int i) {
        int[] iArr = this.fContext;
        return getURI(str, iArr[i + 1], iArr[this.fScope[getScopeForContext(i)]]);
    }

    public String getPrefix(String str, int i, int i2) {
        if (str == NamespaceContext.XML_URI) {
            return XMLSymbols.PREFIX_XML;
        }
        if (str == NamespaceContext.XMLNS_URI) {
            return XMLSymbols.PREFIX_XMLNS;
        }
        while (i > i2) {
            String[] strArr = this.fNamespace;
            if (strArr[i - 1] == str) {
                int i3 = i - 2;
                if (getURI(strArr[i3]) == str) {
                    return this.fNamespace[i3];
                }
            }
            i -= 2;
        }
        return null;
    }

    public String getURI(String str, int i, int i2) {
        if (str == XMLSymbols.PREFIX_XML) {
            return NamespaceContext.XML_URI;
        }
        if (str == XMLSymbols.PREFIX_XMLNS) {
            return NamespaceContext.XMLNS_URI;
        }
        while (i > i2) {
            String[] strArr = this.fNamespace;
            if (strArr[i - 2] == str) {
                return strArr[i - 1];
            }
            i -= 2;
        }
        return null;
    }
}
