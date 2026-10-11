package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;
import com.sun.org.apache.xerces.internal.p056xs.XSNotationDeclaration;

/* loaded from: classes10.dex */
public class XSNotationDecl implements XSNotationDeclaration {
    public String fName = null;
    public String fTargetNamespace = null;
    public String fPublicId = null;
    public String fSystemId = null;
    public XSAnnotationImpl fAnnotation = null;

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNotationDeclaration
    public XSAnnotation getAnnotation() {
        return this.fAnnotation;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getName() {
        return this.fName;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public String getNamespace() {
        return this.fTargetNamespace;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public XSNamespaceItem getNamespaceItem() {
        return null;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNotationDeclaration
    public String getPublicId() {
        return this.fPublicId;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSNotationDeclaration
    public String getSystemId() {
        return this.fSystemId;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 11;
    }
}
