package org.apache.xerces.dom;

/* loaded from: classes13.dex */
public class DeferredEntityImpl extends EntityImpl implements DeferredNode {
    static final long serialVersionUID = 4760180431078941638L;
    protected transient int fNodeIndex;

    public DeferredEntityImpl(DeferredDocumentImpl deferredDocumentImpl, int i) {
        super(deferredDocumentImpl, null);
        this.fNodeIndex = i;
        needsSyncData(true);
        needsSyncChildren(true);
    }

    @Override // org.apache.xerces.dom.DeferredNode
    public int getNodeIndex() {
        return this.fNodeIndex;
    }

    @Override // org.apache.xerces.dom.ParentNode
    public void synchronizeChildren() {
        needsSyncChildren(false);
        isReadOnly(false);
        ((DeferredDocumentImpl) ownerDocument()).synchronizeChildren(this, this.fNodeIndex);
        setReadOnly(true, true);
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public void synchronizeData() {
        needsSyncData(false);
        DeferredDocumentImpl deferredDocumentImpl = (DeferredDocumentImpl) this.ownerDocument;
        this.name = deferredDocumentImpl.getNodeName(this.fNodeIndex);
        this.publicId = deferredDocumentImpl.getNodeValue(this.fNodeIndex);
        this.systemId = deferredDocumentImpl.getNodeURI(this.fNodeIndex);
        int nodeExtra = deferredDocumentImpl.getNodeExtra(this.fNodeIndex);
        deferredDocumentImpl.getNodeType(nodeExtra);
        this.notationName = deferredDocumentImpl.getNodeName(nodeExtra);
        this.version = deferredDocumentImpl.getNodeValue(nodeExtra);
        this.encoding = deferredDocumentImpl.getNodeURI(nodeExtra);
        int nodeExtra2 = deferredDocumentImpl.getNodeExtra(nodeExtra);
        this.baseURI = deferredDocumentImpl.getNodeName(nodeExtra2);
        this.inputEncoding = deferredDocumentImpl.getNodeValue(nodeExtra2);
    }
}
