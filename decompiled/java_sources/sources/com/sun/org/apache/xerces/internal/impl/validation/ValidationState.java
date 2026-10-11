package com.sun.org.apache.xerces.internal.impl.validation;

import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.util.SymbolTable;
import com.sun.org.apache.xerces.internal.xni.NamespaceContext;
import java.util.Enumeration;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class ValidationState implements ValidationContext {
    private static final Object fNullValue = new Object();
    private boolean fExtraChecking = true;
    private boolean fFacetChecking = true;
    private boolean fNormalize = true;
    private boolean fNamespaces = true;
    private EntityState fEntityState = null;
    private NamespaceContext fNamespaceContext = null;
    private SymbolTable fSymbolTable = null;
    private final Hashtable fIdTable = new Hashtable();
    private final Hashtable fIdRefTable = new Hashtable();

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public void addId(String str) {
        this.fIdTable.put(str, fNullValue);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public void addIdRef(String str) {
        this.fIdRefTable.put(str, fNullValue);
    }

    public String checkIDRefID() {
        Enumeration keys = this.fIdRefTable.keys();
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            if (!this.fIdTable.containsKey(str)) {
                return str;
            }
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public String getSymbol(String str) {
        SymbolTable symbolTable = this.fSymbolTable;
        return symbolTable != null ? symbolTable.addSymbol(str) : str.intern();
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public String getURI(String str) {
        NamespaceContext namespaceContext = this.fNamespaceContext;
        if (namespaceContext != null) {
            return namespaceContext.getURI(str);
        }
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public boolean isEntityDeclared(String str) {
        EntityState entityState = this.fEntityState;
        if (entityState != null) {
            return entityState.isEntityDeclared(getSymbol(str));
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public boolean isEntityUnparsed(String str) {
        EntityState entityState = this.fEntityState;
        if (entityState != null) {
            return entityState.isEntityUnparsed(getSymbol(str));
        }
        return false;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public boolean isIdDeclared(String str) {
        return this.fIdTable.containsKey(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public boolean needExtraChecking() {
        return this.fExtraChecking;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public boolean needFacetChecking() {
        return this.fFacetChecking;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public boolean needToNormalize() {
        return this.fNormalize;
    }

    public void reset() {
        this.fExtraChecking = true;
        this.fFacetChecking = true;
        this.fNamespaces = true;
        this.fIdTable.clear();
        this.fIdRefTable.clear();
        this.fEntityState = null;
        this.fNamespaceContext = null;
        this.fSymbolTable = null;
    }

    public void resetIDTables() {
        this.fIdTable.clear();
        this.fIdRefTable.clear();
    }

    public void setEntityState(EntityState entityState) {
        this.fEntityState = entityState;
    }

    public void setExtraChecking(boolean z) {
        this.fExtraChecking = z;
    }

    public void setFacetChecking(boolean z) {
        this.fFacetChecking = z;
    }

    public void setNamespaceSupport(NamespaceContext namespaceContext) {
        this.fNamespaceContext = namespaceContext;
    }

    public void setNormalizationRequired(boolean z) {
        this.fNormalize = z;
    }

    public void setSymbolTable(SymbolTable symbolTable) {
        this.fSymbolTable = symbolTable;
    }

    public void setUsingNamespaces(boolean z) {
        this.fNamespaces = z;
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext
    public boolean useNamespaces() {
        return this.fNamespaces;
    }
}
