package org.apache.xerces.util;

import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.TreeSet;
import java.util.Vector;
import org.apache.xerces.xni.NamespaceContext;

/* loaded from: classes13.dex */
public final class JAXPNamespaceContextWrapper implements NamespaceContext {

    /* renamed from: a */
    public javax.xml.namespace.NamespaceContext f113494a;

    /* renamed from: b */
    public SymbolTable f113495b;

    /* renamed from: c */
    public List f113496c;

    /* renamed from: d */
    public final Vector f113497d = new Vector();

    /* renamed from: e */
    public int[] f113498e = new int[8];

    /* renamed from: f */
    public int f113499f;

    public JAXPNamespaceContextWrapper(SymbolTable symbolTable) {
        setSymbolTable(symbolTable);
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public boolean declarePrefix(String str, String str2) {
        return true;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public Enumeration getAllPrefixes() {
        return Collections.enumeration(new TreeSet(this.f113497d));
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public String getDeclaredPrefixAt(int i) {
        return (String) this.f113496c.get(i);
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public int getDeclaredPrefixCount() {
        List list = this.f113496c;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public List getDeclaredPrefixes() {
        return this.f113496c;
    }

    public javax.xml.namespace.NamespaceContext getNamespaceContext() {
        return this.f113494a;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public String getPrefix(String str) {
        javax.xml.namespace.NamespaceContext namespaceContext = this.f113494a;
        if (namespaceContext == null) {
            return null;
        }
        if (str == null) {
            str = "";
        }
        String prefix = namespaceContext.getPrefix(str);
        String str2 = prefix != null ? prefix : "";
        SymbolTable symbolTable = this.f113495b;
        return symbolTable != null ? symbolTable.addSymbol(str2) : str2.intern();
    }

    public SymbolTable getSymbolTable() {
        return this.f113495b;
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public String getURI(String str) {
        String namespaceURI;
        javax.xml.namespace.NamespaceContext namespaceContext = this.f113494a;
        if (namespaceContext == null || (namespaceURI = namespaceContext.getNamespaceURI(str)) == null || "".equals(namespaceURI)) {
            return null;
        }
        SymbolTable symbolTable = this.f113495b;
        return symbolTable != null ? symbolTable.addSymbol(namespaceURI) : namespaceURI.intern();
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public void popContext() {
        Vector vector = this.f113497d;
        int[] iArr = this.f113498e;
        int i = this.f113499f;
        this.f113499f = i - 1;
        vector.setSize(iArr[i]);
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public void pushContext() {
        int i = this.f113499f + 1;
        int[] iArr = this.f113498e;
        if (i == iArr.length) {
            int[] iArr2 = new int[iArr.length * 2];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f113498e = iArr2;
        }
        int[] iArr3 = this.f113498e;
        int i2 = this.f113499f + 1;
        this.f113499f = i2;
        iArr3[i2] = this.f113497d.size();
        List list = this.f113496c;
        if (list != null) {
            this.f113497d.addAll(list);
        }
    }

    @Override // org.apache.xerces.xni.NamespaceContext
    public void reset() {
        this.f113499f = 0;
        this.f113498e[0] = 0;
        this.f113497d.clear();
    }

    public void setDeclaredPrefixes(List list) {
        this.f113496c = list;
    }

    public void setNamespaceContext(javax.xml.namespace.NamespaceContext namespaceContext) {
        this.f113494a = namespaceContext;
    }

    public void setSymbolTable(SymbolTable symbolTable) {
        this.f113495b = symbolTable;
    }
}
