package com.sun.org.apache.xalan.internal.templates;

import com.sun.org.apache.xalan.internal.extensions.ExtensionHandler;
import com.sun.org.apache.xalan.internal.res.XSLMessages;
import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.XPathContext;
import javax.xml.transform.TransformerException;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/* loaded from: classes10.dex */
public class ElemExtensionCall extends ElemLiteralResult {
    static final long serialVersionUID = 3171339708500216920L;
    ElemExtensionDecl m_decl = null;
    String m_extns;
    String m_lang;
    String m_scriptSrc;
    String m_srcURL;

    private void executeFallbacks(TransformerImpl transformerImpl) throws TransformerException {
        for (ElemTemplateElement elemTemplateElement = this.m_firstChild; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.m_nextSibling) {
            if (elemTemplateElement.getXSLToken() == 57) {
                try {
                    transformerImpl.pushElemTemplateElement(elemTemplateElement);
                    ((ElemFallback) elemTemplateElement).executeFallback(transformerImpl);
                } finally {
                    transformerImpl.popElemTemplateElement();
                }
            }
        }
    }

    private ElemExtensionDecl getElemExtensionDecl(StylesheetRoot stylesheetRoot, String str) {
        int globalImportCount = stylesheetRoot.getGlobalImportCount();
        for (int i = 0; i < globalImportCount; i++) {
            for (ElemTemplateElement firstChildElem = stylesheetRoot.getGlobalImport(i).getFirstChildElem(); firstChildElem != null; firstChildElem = firstChildElem.getNextSiblingElem()) {
                if (85 == firstChildElem.getXSLToken()) {
                    ElemExtensionDecl elemExtensionDecl = (ElemExtensionDecl) firstChildElem;
                    if (str.equals(firstChildElem.getNamespaceForPrefix(elemExtensionDecl.getPrefix()))) {
                        return elemExtensionDecl;
                    }
                }
            }
        }
        return null;
    }

    private boolean hasFallbackChildren() {
        for (ElemTemplateElement elemTemplateElement = this.m_firstChild; elemTemplateElement != null; elemTemplateElement = elemTemplateElement.m_nextSibling) {
            if (elemTemplateElement.getXSLToken() == 57) {
                return true;
            }
        }
        return false;
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemLiteralResult, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public boolean accept(XSLTVisitor xSLTVisitor) {
        return xSLTVisitor.visitExtensionElement(this);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemLiteralResult, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void compose(StylesheetRoot stylesheetRoot) throws TransformerException {
        super.compose(stylesheetRoot);
        String namespace = getNamespace();
        this.m_extns = namespace;
        ElemExtensionDecl elemExtensionDecl = getElemExtensionDecl(stylesheetRoot, namespace);
        this.m_decl = elemExtensionDecl;
        if (elemExtensionDecl == null) {
            stylesheetRoot.getExtensionNamespacesManager().registerExtension(this.m_extns);
        }
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemLiteralResult, com.sun.org.apache.xalan.internal.templates.ElemUse, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public void execute(TransformerImpl transformerImpl) throws TransformerException {
        ExtensionHandler extensionHandler;
        if (transformerImpl.getStylesheet().isSecureProcessing()) {
            throw new TransformerException(XSLMessages.createMessage(XSLTErrorResources.ER_EXTENSION_ELEMENT_NOT_ALLOWED_IN_SECURE_PROCESSING, new Object[]{getRawName()}));
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEvent(this);
        }
        try {
            transformerImpl.getResultTreeHandler().flushPending();
            extensionHandler = transformerImpl.getExtensionsTable().get(this.m_extns);
        } catch (TransformerException e) {
            transformerImpl.getErrorListener().fatalError(e);
        } catch (SAXException e2) {
            throw new TransformerException(e2);
        }
        if (extensionHandler == null) {
            if (hasFallbackChildren()) {
                executeFallbacks(transformerImpl);
                return;
            } else {
                transformerImpl.getErrorListener().fatalError(new TransformerException(XSLMessages.createMessage("ER_CALL_TO_EXT_FAILED", new Object[]{getNodeName()})));
                return;
            }
        }
        try {
            extensionHandler.processElement(getLocalName(), this, transformerImpl, getStylesheet(), this);
        } catch (Exception e3) {
            if (hasFallbackChildren()) {
                executeFallbacks(transformerImpl);
            } else if (e3 instanceof TransformerException) {
                TransformerException transformerException = (TransformerException) e3;
                if (transformerException.getLocator() == null) {
                    transformerException.setLocator(this);
                }
                transformerImpl.getErrorListener().fatalError(transformerException);
            } else if (e3 instanceof RuntimeException) {
                transformerImpl.getErrorListener().fatalError(new TransformerException(e3));
            } else {
                transformerImpl.getErrorListener().warning(new TransformerException(e3));
            }
        }
        if (transformerImpl.getDebug()) {
            transformerImpl.getTraceManager().fireTraceEndEvent(this);
        }
    }

    public String getAttribute(String str, Node node, TransformerImpl transformerImpl) throws TransformerException {
        AVT literalResultAttribute = getLiteralResultAttribute(str);
        if (literalResultAttribute == null || !literalResultAttribute.getRawName().equals(str)) {
            return null;
        }
        XPathContext xPathContext = transformerImpl.getXPathContext();
        return literalResultAttribute.evaluate(xPathContext, xPathContext.getDTMHandleFromNode(node), this);
    }

    @Override // com.sun.org.apache.xalan.internal.templates.ElemLiteralResult, com.sun.org.apache.xalan.internal.templates.ElemTemplateElement
    public int getXSLToken() {
        return 79;
    }
}
