package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xml.internal.dtm.DTMIterator;
import com.sun.org.apache.xml.internal.dtm.ref.DTMNodeIterator;
import javax.xml.transform.Transformer;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes10.dex */
public class XalanTransformState implements TransformState {
    Node m_node = null;
    ElemTemplateElement m_currentElement = null;
    ElemTemplate m_currentTemplate = null;
    ElemTemplate m_matchedTemplate = null;
    int m_currentNodeHandle = -1;
    Node m_currentNode = null;
    int m_matchedNode = -1;
    DTMIterator m_contextNodeList = null;
    boolean m_elemPending = false;
    TransformerImpl m_transformer = null;

    @Override // com.sun.org.apache.xalan.internal.transformer.TransformState
    public NodeIterator getContextNodeList() {
        return this.m_elemPending ? new DTMNodeIterator(this.m_contextNodeList) : new DTMNodeIterator(this.m_transformer.getContextNodeList());
    }

    @Override // com.sun.org.apache.xalan.internal.transformer.TransformState
    public ElemTemplateElement getCurrentElement() {
        return this.m_elemPending ? this.m_currentElement : this.m_transformer.getCurrentElement();
    }

    @Override // com.sun.org.apache.xalan.internal.transformer.TransformState
    public Node getCurrentNode() {
        Node node = this.m_currentNode;
        return node != null ? node : this.m_transformer.getXPathContext().getDTM(this.m_transformer.getCurrentNode()).getNode(this.m_transformer.getCurrentNode());
    }

    @Override // com.sun.org.apache.xalan.internal.transformer.TransformState
    public ElemTemplate getCurrentTemplate() {
        return this.m_elemPending ? this.m_currentTemplate : this.m_transformer.getCurrentTemplate();
    }

    @Override // com.sun.org.apache.xalan.internal.transformer.TransformState
    public Node getMatchedNode() {
        return this.m_elemPending ? this.m_transformer.getXPathContext().getDTM(this.m_matchedNode).getNode(this.m_matchedNode) : this.m_transformer.getXPathContext().getDTM(this.m_transformer.getMatchedNode()).getNode(this.m_transformer.getMatchedNode());
    }

    @Override // com.sun.org.apache.xalan.internal.transformer.TransformState
    public ElemTemplate getMatchedTemplate() {
        return this.m_elemPending ? this.m_matchedTemplate : this.m_transformer.getMatchedTemplate();
    }

    @Override // com.sun.org.apache.xalan.internal.transformer.TransformState
    public Transformer getTransformer() {
        return this.m_transformer;
    }

    @Override // com.sun.org.apache.xml.internal.serializer.TransformStateSetter
    public void resetState(Transformer transformer) {
        if (transformer == null || !(transformer instanceof TransformerImpl)) {
            return;
        }
        TransformerImpl transformerImpl = (TransformerImpl) transformer;
        this.m_transformer = transformerImpl;
        this.m_currentElement = transformerImpl.getCurrentElement();
        this.m_currentTemplate = this.m_transformer.getCurrentTemplate();
        this.m_matchedTemplate = this.m_transformer.getMatchedTemplate();
        int currentNode = this.m_transformer.getCurrentNode();
        this.m_currentNode = this.m_transformer.getXPathContext().getDTM(currentNode).getNode(currentNode);
        this.m_matchedNode = this.m_transformer.getMatchedNode();
        this.m_contextNodeList = this.m_transformer.getContextNodeList();
    }

    @Override // com.sun.org.apache.xml.internal.serializer.TransformStateSetter
    public void setCurrentNode(Node node) {
        this.m_node = node;
    }
}
