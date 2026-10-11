package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import org.w3c.dom.NamedNodeMap;

/* loaded from: classes10.dex */
public class DeferredElementNSImpl extends ElementNSImpl implements DeferredNode {
    static final long serialVersionUID = -5001885145370927385L;
    protected transient int fNodeIndex;

    public DeferredElementNSImpl(DeferredDocumentImpl deferredDocumentImpl, int i) {
        super(deferredDocumentImpl, null);
        this.fNodeIndex = i;
        needsSyncChildren(true);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.DeferredNode
    public final int getNodeIndex() {
        return this.fNodeIndex;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode
    public final void synchronizeChildren() {
        ((DeferredDocumentImpl) ownerDocument()).synchronizeChildren(this, this.fNodeIndex);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ElementImpl, com.sun.org.apache.xerces.internal.dom.NodeImpl
    public final void synchronizeData() {
        needsSyncData(false);
        DeferredDocumentImpl deferredDocumentImpl = (DeferredDocumentImpl) this.ownerDocument;
        boolean z = deferredDocumentImpl.mutationEvents;
        deferredDocumentImpl.mutationEvents = false;
        String nodeName = deferredDocumentImpl.getNodeName(this.fNodeIndex);
        this.name = nodeName;
        int indexOf = nodeName.indexOf(58);
        if (indexOf < 0) {
            this.localName = this.name;
        } else {
            this.localName = this.name.substring(indexOf + 1);
        }
        this.namespaceURI = deferredDocumentImpl.getNodeURI(this.fNodeIndex);
        this.type = (XSTypeDefinition) deferredDocumentImpl.getTypeInfo(this.fNodeIndex);
        setupDefaultAttributes();
        int nodeExtra = deferredDocumentImpl.getNodeExtra(this.fNodeIndex);
        if (nodeExtra != -1) {
            NamedNodeMap attributes = getAttributes();
            do {
                attributes.setNamedItem((NodeImpl) deferredDocumentImpl.getNodeObject(nodeExtra));
                nodeExtra = deferredDocumentImpl.getPrevSibling(nodeExtra);
            } while (nodeExtra != -1);
        }
        deferredDocumentImpl.mutationEvents = z;
    }
}
