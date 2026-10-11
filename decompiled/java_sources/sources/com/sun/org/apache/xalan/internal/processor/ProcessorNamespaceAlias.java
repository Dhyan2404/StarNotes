package com.sun.org.apache.xalan.internal.processor;

import com.sun.org.apache.xalan.internal.res.XSLTErrorResources;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.templates.NamespaceAlias;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class ProcessorNamespaceAlias extends XSLTElementProcessor {
    static final long serialVersionUID = -6309867839007018964L;

    @Override // com.sun.org.apache.xalan.internal.processor.XSLTElementProcessor
    public void startElement(StylesheetHandler stylesheetHandler, String str, String str2, String str3, Attributes attributes) throws SAXException {
        String str4;
        NamespaceAlias namespaceAlias = new NamespaceAlias(stylesheetHandler.nextUid());
        setPropertiesFromAttributes(stylesheetHandler, str3, attributes, namespaceAlias);
        String stylesheetPrefix = namespaceAlias.getStylesheetPrefix();
        if (stylesheetPrefix.equals("#default")) {
            namespaceAlias.setStylesheetPrefix("");
            stylesheetPrefix = "";
        }
        namespaceAlias.setStylesheetNamespace(stylesheetHandler.getNamespaceForPrefix(stylesheetPrefix));
        String resultPrefix = namespaceAlias.getResultPrefix();
        if (resultPrefix.equals("#default")) {
            namespaceAlias.setResultPrefix("");
            str4 = stylesheetHandler.getNamespaceForPrefix("");
            if (str4 == null) {
                stylesheetHandler.error(XSLTErrorResources.ER_INVALID_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX_FOR_DEFAULT, null, null);
            }
        } else {
            String namespaceForPrefix = stylesheetHandler.getNamespaceForPrefix(resultPrefix);
            if (namespaceForPrefix == null) {
                stylesheetHandler.error(XSLTErrorResources.ER_INVALID_NAMESPACE_URI_VALUE_FOR_RESULT_PREFIX, new Object[]{resultPrefix}, null);
            }
            str4 = namespaceForPrefix;
        }
        namespaceAlias.setResultNamespace(str4);
        stylesheetHandler.getStylesheet().setNamespaceAlias(namespaceAlias);
        stylesheetHandler.getStylesheet().appendChild((ElemTemplateElement) namespaceAlias);
    }
}
