package org.apache.xerces.dom;

import java.io.PrintStream;

/* loaded from: classes13.dex */
public class DeferredDocumentTypeImpl extends DocumentTypeImpl implements DeferredNode {
    static final long serialVersionUID = -2172579663227313509L;
    protected transient int fNodeIndex;

    public DeferredDocumentTypeImpl(DeferredDocumentImpl deferredDocumentImpl, int i) {
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
        NamedNodeMapImpl namedNodeMapImpl;
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
            if (nodeType != 1) {
                if (nodeType == 6) {
                    namedNodeMapImpl = this.entities;
                } else if (nodeType != 12) {
                    if (nodeType == 21) {
                        namedNodeMapImpl = this.elements;
                    }
                    PrintStream printStream = System.out;
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = ");
                    stringBuffer.append((int) nodeObject.getNodeType());
                    stringBuffer.append(", class = ");
                    stringBuffer.append(nodeObject.getClass().getName());
                    printStream.println(stringBuffer.toString());
                } else {
                    namedNodeMapImpl = this.notations;
                }
                namedNodeMapImpl.setNamedItem(nodeObject);
            } else {
                if (((DocumentImpl) getOwnerDocument()).allowGrammarAccess) {
                    insertBefore(nodeObject, deferredNode);
                    deferredNode = nodeObject;
                }
                PrintStream printStream2 = System.out;
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = ");
                stringBuffer2.append((int) nodeObject.getNodeType());
                stringBuffer2.append(", class = ");
                stringBuffer2.append(nodeObject.getClass().getName());
                printStream2.println(stringBuffer2.toString());
            }
        }
        ownerDocument().setMutationEvents(mutationEvents);
        setReadOnly(true, false);
    }

    @Override // org.apache.xerces.dom.NodeImpl
    public void synchronizeData() {
        needsSyncData(false);
        DeferredDocumentImpl deferredDocumentImpl = (DeferredDocumentImpl) this.ownerDocument;
        this.name = deferredDocumentImpl.getNodeName(this.fNodeIndex);
        this.publicID = deferredDocumentImpl.getNodeValue(this.fNodeIndex);
        this.systemID = deferredDocumentImpl.getNodeURI(this.fNodeIndex);
        this.internalSubset = deferredDocumentImpl.getNodeValue(deferredDocumentImpl.getNodeExtra(this.fNodeIndex));
    }
}
