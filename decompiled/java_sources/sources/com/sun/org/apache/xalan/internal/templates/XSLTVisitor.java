package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xpath.internal.XPathVisitor;

/* loaded from: classes10.dex */
public class XSLTVisitor extends XPathVisitor {
    public boolean visitAVT(AVT avt) {
        return true;
    }

    public boolean visitExtensionElement(ElemExtensionCall elemExtensionCall) {
        return true;
    }

    public boolean visitInstruction(ElemTemplateElement elemTemplateElement) {
        return true;
    }

    public boolean visitLiteralResultElement(ElemLiteralResult elemLiteralResult) {
        return true;
    }

    public boolean visitStylesheet(ElemTemplateElement elemTemplateElement) {
        return true;
    }

    public boolean visitTopLevelInstruction(ElemTemplateElement elemTemplateElement) {
        return true;
    }

    public boolean visitTopLevelVariableOrParamDecl(ElemTemplateElement elemTemplateElement) {
        return true;
    }

    public boolean visitVariableOrParamDecl(ElemVariable elemVariable) {
        return true;
    }
}
