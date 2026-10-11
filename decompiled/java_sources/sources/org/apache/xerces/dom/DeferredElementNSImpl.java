package org.apache.xerces.dom;

import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.xni.NamespaceContext;
import org.w3c.dom.NamedNodeMap;

/* loaded from: classes13.dex */
public class DeferredElementNSImpl extends ElementNSImpl implements DeferredNode {
    static final long serialVersionUID = -5001885145370927385L;
    protected transient int fNodeIndex;

    public DeferredElementNSImpl(DeferredDocumentImpl deferredDocumentImpl, int i) {
        super(deferredDocumentImpl, null);
        this.fNodeIndex = i;
        needsSyncChildren(true);
    }

    @Override // org.apache.xerces.dom.DeferredNode
    public final int getNodeIndex() {
        return this.fNodeIndex;
    }

    @Override // org.apache.xerces.dom.ParentNode
    public final void synchronizeChildren() {
        ((DeferredDocumentImpl) ownerDocument()).synchronizeChildren(this, this.fNodeIndex);
    }

    @Override // org.apache.xerces.dom.ElementImpl, org.apache.xerces.dom.NodeImpl
    public final void synchronizeData() {
        boolean z = false;
        needsSyncData(false);
        DeferredDocumentImpl deferredDocumentImpl = (DeferredDocumentImpl) this.ownerDocument;
        boolean z2 = deferredDocumentImpl.mutationEvents;
        deferredDocumentImpl.mutationEvents = false;
        String nodeName = deferredDocumentImpl.getNodeName(this.fNodeIndex);
        this.name = nodeName;
        int indexOf = nodeName.indexOf(58);
        this.localName = indexOf < 0 ? this.name : this.name.substring(indexOf + 1);
        this.namespaceURI = deferredDocumentImpl.getNodeURI(this.fNodeIndex);
        this.type = (XSTypeDefinition) deferredDocumentImpl.getTypeInfo(this.fNodeIndex);
        setupDefaultAttributes();
        int nodeExtra = deferredDocumentImpl.getNodeExtra(this.fNodeIndex);
        if (nodeExtra != -1) {
            NamedNodeMap attributes = getAttributes();
            do {
                AttrImpl attrImpl = (AttrImpl) deferredDocumentImpl.getNodeObject(nodeExtra);
                if (attrImpl.getSpecified() || (!z && (attrImpl.getNamespaceURI() == null || attrImpl.getNamespaceURI() == NamespaceContext.XMLNS_URI || attrImpl.getName().indexOf(58) >= 0))) {
                    attributes.setNamedItem(attrImpl);
                } else {
                    attributes.setNamedItemNS(attrImpl);
                    z = true;
                }
                nodeExtra = deferredDocumentImpl.getPrevSibling(nodeExtra);
            } while (nodeExtra != -1);
        }
        deferredDocumentImpl.mutationEvents = z2;
    }
}
