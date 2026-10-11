package com.sun.org.apache.xalan.internal.trace;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.objects.XObject;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class EndSelectionEvent extends SelectionEvent {
    public EndSelectionEvent(TransformerImpl transformerImpl, Node node, ElemTemplateElement elemTemplateElement, String str, XPath xPath, XObject xObject) {
        super(transformerImpl, node, elemTemplateElement, str, xPath, xObject);
    }
}
