package org.apache.xerces.impl.validation;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.xni.NamespaceContext;

/* loaded from: classes13.dex */
public class ValidationState implements ValidationContext {

    /* renamed from: k */
    public static final Object f112438k = new Object();

    /* renamed from: a */
    public boolean f112439a = true;

    /* renamed from: b */
    public boolean f112440b = true;

    /* renamed from: c */
    public boolean f112441c = true;

    /* renamed from: d */
    public boolean f112442d = true;

    /* renamed from: e */
    public EntityState f112443e = null;

    /* renamed from: f */
    public NamespaceContext f112444f = null;

    /* renamed from: g */
    public SymbolTable f112445g = null;

    /* renamed from: h */
    public Locale f112446h = null;

    /* renamed from: i */
    public final HashMap f112447i = new HashMap();

    /* renamed from: j */
    public final HashMap f112448j = new HashMap();

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public void addId(String str) {
        this.f112447i.put(str, f112438k);
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public void addIdRef(String str) {
        this.f112448j.put(str, f112438k);
    }

    public Iterator checkIDRefID() {
        HashSet hashSet = null;
        for (String str : this.f112448j.keySet()) {
            if (!this.f112447i.containsKey(str)) {
                if (hashSet == null) {
                    hashSet = new HashSet();
                }
                hashSet.add(str);
            }
        }
        if (hashSet != null) {
            return hashSet.iterator();
        }
        return null;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public Locale getLocale() {
        return this.f112446h;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public String getSymbol(String str) {
        SymbolTable symbolTable = this.f112445g;
        return symbolTable != null ? symbolTable.addSymbol(str) : str.intern();
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public String getURI(String str) {
        NamespaceContext namespaceContext = this.f112444f;
        if (namespaceContext != null) {
            return namespaceContext.getURI(str);
        }
        return null;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isEntityDeclared(String str) {
        EntityState entityState = this.f112443e;
        if (entityState != null) {
            return entityState.isEntityDeclared(getSymbol(str));
        }
        return false;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isEntityUnparsed(String str) {
        EntityState entityState = this.f112443e;
        if (entityState != null) {
            return entityState.isEntityUnparsed(getSymbol(str));
        }
        return false;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean isIdDeclared(String str) {
        return this.f112447i.containsKey(str);
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean needExtraChecking() {
        return this.f112439a;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean needFacetChecking() {
        return this.f112440b;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean needToNormalize() {
        return this.f112441c;
    }

    public void reset() {
        this.f112439a = true;
        this.f112440b = true;
        this.f112442d = true;
        this.f112447i.clear();
        this.f112448j.clear();
        this.f112443e = null;
        this.f112444f = null;
        this.f112445g = null;
    }

    public void resetIDTables() {
        this.f112447i.clear();
        this.f112448j.clear();
    }

    public void setEntityState(EntityState entityState) {
        this.f112443e = entityState;
    }

    public void setExtraChecking(boolean z) {
        this.f112439a = z;
    }

    public void setFacetChecking(boolean z) {
        this.f112440b = z;
    }

    public void setLocale(Locale locale) {
        this.f112446h = locale;
    }

    public void setNamespaceSupport(NamespaceContext namespaceContext) {
        this.f112444f = namespaceContext;
    }

    public void setNormalizationRequired(boolean z) {
        this.f112441c = z;
    }

    public void setSymbolTable(SymbolTable symbolTable) {
        this.f112445g = symbolTable;
    }

    public void setUsingNamespaces(boolean z) {
        this.f112442d = z;
    }

    @Override // org.apache.xerces.impl.p115dv.ValidationContext
    public boolean useNamespaces() {
        return this.f112442d;
    }
}
