package com.sun.org.apache.xml.internal.serializer;

import javax.xml.transform.Transformer;
import org.w3c.dom.Node;

/* loaded from: classes10.dex */
public interface TransformStateSetter {
    void resetState(Transformer transformer);

    void setCurrentNode(Node node);
}
