package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceSupport;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.VariableStack;
import com.sun.org.apache.xpath.internal.objects.XObject;
import javax.xml.transform.TransformerException;
import org.w3c.dom.NodeList;

/* loaded from: classes10.dex */
public class ElemExsltFunction extends ElemTemplate {
    static final long serialVersionUID = 272154954793534771L;

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplate, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        String namespace = getName().getNamespace();
        String extensionHandlerClass = stylesheetRoot.getExtensionHandlerClass();
        stylesheetRoot.getExtensionNamespacesManager().registerExtension(new ExtensionNamespaceSupport(namespace, extensionHandlerClass, new Object[]{namespace, stylesheetRoot}));
        if (namespace.equals(com.sun.org.apache.xml.internal.utils.Constants.S_EXSLT_FUNCTIONS_URL)) {
            return;
        }
        stylesheetRoot.getExtensionNamespacesManager().registerExtension(new ExtensionNamespaceSupport(com.sun.org.apache.xml.internal.utils.Constants.S_EXSLT_FUNCTIONS_URL, extensionHandlerClass, new Object[]{com.sun.org.apache.xml.internal.utils.Constants.S_EXSLT_FUNCTIONS_URL, stylesheetRoot}));
    }

    public void execute(TransformerImpl transformerImpl, XObject[] xObjectArr) throws TransformerException {
        VariableStack varStack = transformerImpl.getXPathContext().getVarStack();
        int stackFrame = varStack.getStackFrame();
        int link = varStack.link(this.m_frameSize);
        int i = this.m_inArgsSize;
        if (i < xObjectArr.length) {
            throw new TransformerException("function called with too many args");
        }
        if (i > 0) {
            varStack.clearLocalSlots(0, i);
            if (xObjectArr.length > 0) {
                varStack.setStackFrame(stackFrame);
                NodeList childNodes = getChildNodes();
                for (int i2 = 0; i2 < xObjectArr.length; i2++) {
                    childNodes.item(i2);
                    if (childNodes.item(i2) instanceof ElemParam) {
                        varStack.setLocalVariable(((ElemParam) childNodes.item(i2)).getIndex(), xObjectArr[i2], link);
                    }
                }
                varStack.setStackFrame(link);
            }
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        varStack.setStackFrame(link);
        transformerImpl.executeChildTemplates((ElemTemplateElement) this, true);
        varStack.unlink(stackFrame);
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplate, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement, com.sun.org.apache.xml.internal.utils.UnImplNode, org.w3c.dom.Node
    public String getNodeName() {
        return Constants.EXSLT_ELEMNAME_FUNCTION_STRING;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemTemplate, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 88;
    }
}
