package com.sun.org.apache.xalan.internal.transformer;

import com.sun.org.apache.xalan.internal.templates.ElemTemplate;
import com.sun.org.apache.xalan.internal.templates.ElemTemplateElement;
import com.sun.org.apache.xml.internal.serializer.TransformStateSetter;
import javax.xml.transform.Transformer;
import org.w3c.dom.Node;
import org.w3c.dom.traversal.NodeIterator;

/* loaded from: classes10.dex */
public interface TransformState extends TransformStateSetter {
    NodeIterator getContextNodeList();

    ElemTemplateElement getCurrentElement();

    Node getCurrentNode();

    ElemTemplate getCurrentTemplate();

    Node getMatchedNode();

    ElemTemplate getMatchedTemplate();

    Transformer getTransformer();
}
