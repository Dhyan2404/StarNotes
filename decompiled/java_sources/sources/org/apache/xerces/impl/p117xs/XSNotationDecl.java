package org.apache.xerces.impl.p117xs;

import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.XSAnnotation;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSNotationDeclaration;
import org.apache.xerces.p118xs.XSObjectList;

/* loaded from: classes13.dex */
public class XSNotationDecl implements XSNotationDeclaration {
    public String fName = null;
    public String fTargetNamespace = null;
    public String fPublicId = null;
    public String fSystemId = null;
    public XSObjectList fAnnotations = null;

    /* renamed from: e */
    public XSNamespaceItem f112947e = null;

    /* renamed from: a */
    public void m70254a(XSNamespaceItem xSNamespaceItem) {
        this.f112947e = xSNamespaceItem;
    }

    @Override // org.apache.xerces.p118xs.XSNotationDeclaration
    public XSAnnotation getAnnotation() {
        XSObjectList xSObjectList = this.fAnnotations;
        if (xSObjectList != null) {
            return (XSAnnotation) xSObjectList.item(0);
        }
        return null;
    }

    @Override // org.apache.xerces.p118xs.XSNotationDeclaration
    public XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.fAnnotations;
        return xSObjectList != null ? xSObjectList : XSObjectListImpl.EMPTY_LIST;
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
        return this.f112947e;
    }

    @Override // org.apache.xerces.p118xs.XSNotationDeclaration
    public String getPublicId() {
        return this.fPublicId;
    }

    @Override // org.apache.xerces.p118xs.XSNotationDeclaration
    public String getSystemId() {
        return this.fSystemId;
    }

    @Override // org.apache.xerces.p118xs.XSObject
    public short getType() {
        return (short) 11;
    }
}
