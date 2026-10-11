package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSModelGroup;
import org.apache.xerces.p118xs.XSModelGroupDefinition;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSObjectList;

/* loaded from: classes13.dex */
public class XSGroupDecl implements XSModelGroupDefinition {
    public String fName = null;
    public String fTargetNamespace = null;
    public XSModelGroupImpl fModelGroup = null;
    public XSObjectList fAnnotations = null;

    /* renamed from: e */
    public XSNamespaceItem f112926e = null;

    /* renamed from: a */
    public void m70239a(XSNamespaceItem xSNamespaceItem) {
        this.f112926e = xSNamespaceItem;
    }

    @Override // org.apache.xerces.p118xs.XSModelGroupDefinition
    public XSAnnotation getAnnotation() {
        XSObjectList xSObjectList = this.fAnnotations;
        if (xSObjectList != null) {
            return (XSAnnotation) xSObjectList.item(0);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSModelGroupDefinition
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
    }

    @Override // org.apache.xerces.p118xs.XSModelGroupDefinition
    public XSModelGroup getModelGroup() {
        return this.fModelGroup;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getName() {
        return this.fName;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public String getNamespace() {
        return this.fTargetNamespace;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return this.f112926e;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 6;
    }
}
