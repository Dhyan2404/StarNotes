package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.p056xs.XSAnnotation;
import com.sun.org.apache.xerces.internal.p056xs.XSModelGroup;
import com.sun.org.apache.xerces.internal.p056xs.XSModelGroupDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItem;

/* loaded from: classes10.dex */
public class XSGroupDecl implements XSModelGroupDefinition {
    public String fName = null;
    public String fTargetNamespace = null;
    public XSModelGroupImpl fModelGroup = null;
    public XSAnnotationImpl fAnnotation = null;

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModelGroupDefinition
    public XSAnnotation getAnnotation() {
        return this.fAnnotation;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModelGroupDefinition
    public XSModelGroup getModelGroup() {
        return this.fModelGroup;
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

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSObject
    public short getType() {
        return (short) 6;
    }
}
