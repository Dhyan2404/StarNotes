package com.sun.org.apache.xalan.internal.trace;

import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xalan.internal.transformer.TransformerImpl;
import com.sun.org.apache.xpath.internal.XPath;
import com.sun.org.apache.xpath.internal.objects.XObject;
import java.util.EventListener;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public class SelectionEvent implements EventListener {
    public final String m_attributeName;
    public final TransformerImpl m_processor;
    public final XObject m_selection;
    public final Node m_sourceNode;
    public final ElemTemplateElement m_styleNode;
    public final XPath m_xpath;

    public SelectionEvent(TransformerImpl transformerImpl, Node node, ElemTemplateElement elemTemplateElement, String str, XPath xPath, XObject xObject) {
        this.m_processor = transformerImpl;
        this.m_sourceNode = node;
        this.m_styleNode = elemTemplateElement;
        this.m_attributeName = str;
        this.m_xpath = xPath;
        this.m_selection = xObject;
    }
}
