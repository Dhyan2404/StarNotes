package com.sun.org.apache.xalan.internal.templates;

/* loaded from: classes10.dex */
public class ElemOtherwise extends ElemTemplateElement {
    static final long serialVersionUID = 1863944560970181395L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.ELEMNAME_OTHERWISE_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 39;
    }
}
