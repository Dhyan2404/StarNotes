package com.sun.org.apache.xerces.internal.dom;

/* loaded from: classes10.dex */
public class DeferredDocumentTypeImpl extends DocumentTypeImpl implements DeferredNode {
    static final long serialVersionUID = -2172579663227313509L;
    protected transient int fNodeIndex;

    public DeferredDocumentTypeImpl(DeferredDocumentImpl deferredDocumentImpl, int i) {
        super(deferredDocumentImpl, null);
        this.fNodeIndex = i;
        needsSyncData(true);
        needsSyncChildren(true);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.DeferredNode
    public int getNodeIndex() {
        return this.fNodeIndex;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.ParentNode
    public void synchronizeChildren() {
        boolean mutationEvents = ownerDocument().getMutationEvents();
        ownerDocument().setMutationEvents(false);
        needsSyncChildren(false);
        DeferredDocumentImpl deferredDocumentImpl = (DeferredDocumentImpl) this.ownerDocument;
        this.entities = new NamedNodeMapImpl(this);
        this.notations = new NamedNodeMapImpl(this);
        this.elements = new NamedNodeMapImpl(this);
        DeferredNode deferredNode = null;
        for (int lastChild = deferredDocumentImpl.getLastChild(this.fNodeIndex); lastChild != -1; lastChild = deferredDocumentImpl.getPrevSibling(lastChild)) {
            DeferredNode nodeObject = deferredDocumentImpl.getNodeObject(lastChild);
            short nodeType = nodeObject.getNodeType();
            if (nodeType == 1) {
                if (((DocumentImpl) getOwnerDocument()).allowGrammarAccess) {
                    insertBefore(nodeObject, deferredNode);
                    deferredNode = nodeObject;
                }
                System.out.println("DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = " + ((int) nodeObject.getNodeType()) + ", class = " + nodeObject.getClass().getName());
            } else if (nodeType == 6) {
                this.entities.setNamedItem(nodeObject);
            } else if (nodeType != 12) {
                if (nodeType == 21) {
                    this.elements.setNamedItem(nodeObject);
                }
                System.out.println("DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = " + ((int) nodeObject.getNodeType()) + ", class = " + nodeObject.getClass().getName());
            } else {
                this.notations.setNamedItem(nodeObject);
            }
        }
        ownerDocument().setMutationEvents(mutationEvents);
        setReadOnly(true, false);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.NodeImpl
    public void synchronizeData() {
        needsSyncData(false);
        DeferredDocumentImpl deferredDocumentImpl = (DeferredDocumentImpl) this.ownerDocument;
        this.name = deferredDocumentImpl.getNodeName(this.fNodeIndex);
        this.publicID = deferredDocumentImpl.getNodeValue(this.fNodeIndex);
        this.systemID = deferredDocumentImpl.getNodeURI(this.fNodeIndex);
        this.internalSubset = deferredDocumentImpl.getNodeValue(deferredDocumentImpl.getNodeExtra(this.fNodeIndex));
    }
}
