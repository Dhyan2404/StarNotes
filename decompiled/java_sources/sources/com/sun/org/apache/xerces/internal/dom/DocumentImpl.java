package com.sun.org.apache.xerces.internal.dom;

import com.sun.org.apache.xerces.internal.dom.events.EventImpl;
import com.sun.org.apache.xerces.internal.dom.events.MutationEventImpl;
import java.io.Serializable;
import java.util.Hashtable;
import java.util.Vector;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.events.DocumentEvent;
import org.w3c.dom.events.Event;
import org.w3c.dom.events.EventException;
import org.w3c.dom.events.EventListener;
import org.w3c.dom.ranges.DocumentRange;
import org.w3c.dom.ranges.Range;
import org.w3c.dom.traversal.DocumentTraversal;
import org.w3c.dom.traversal.NodeFilter;
import org.w3c.dom.traversal.NodeIterator;
import org.w3c.dom.traversal.TreeWalker;

/* loaded from: classes10.dex */
public class DocumentImpl extends CoreDocumentImpl implements DocumentTraversal, DocumentEvent, DocumentRange {
    static final long serialVersionUID = 515687835542616694L;
    protected Hashtable eventListeners;
    protected Vector iterators;
    protected boolean mutationEvents;
    protected Vector ranges;
    EnclosingAttr savedEnclosingAttr;

    /* loaded from: classes10.dex */
    public class EnclosingAttr implements Serializable {
        private static final long serialVersionUID = 3257001077260759859L;
        AttrImpl node;
        String oldvalue;

        public EnclosingAttr() {
        }
    }

    /* loaded from: classes10.dex */
    public class LEntry implements Serializable {
        private static final long serialVersionUID = 3258416144514626360L;
        EventListener listener;
        String type;
        boolean useCapture;

        public LEntry(String str, EventListener eventListener, boolean z) {
            this.type = str;
            this.listener = eventListener;
            this.useCapture = z;
        }
    }

    public DocumentImpl() {
        this.mutationEvents = false;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void addEventListener(NodeImpl nodeImpl, String str, EventListener eventListener, boolean z) {
        if (str == null || str.equals("") || eventListener == null) {
            return;
        }
        removeEventListener(nodeImpl, str, eventListener, z);
        Vector eventListeners = getEventListeners(nodeImpl);
        if (eventListeners == null) {
            eventListeners = new Vector();
            setEventListeners(nodeImpl, eventListeners);
        }
        eventListeners.addElement(new LEntry(str, eventListener, z));
        LCount lookup = LCount.lookup(str);
        if (z) {
            lookup.captures++;
            lookup.total++;
        } else {
            lookup.bubbles++;
            lookup.total++;
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, com.sun.org.apache.xerces.internal.dom.ParentNode, com.sun.org.apache.xerces.internal.dom.ChildNode, com.sun.org.apache.xerces.internal.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        DocumentImpl documentImpl = new DocumentImpl();
        callUserDataHandlers(this, documentImpl, (short) 1);
        cloneNode(documentImpl, z);
        documentImpl.mutationEvents = this.mutationEvents;
        return documentImpl;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void copyEventListeners(NodeImpl nodeImpl, NodeImpl nodeImpl2) {
        Vector eventListeners = getEventListeners(nodeImpl);
        if (eventListeners == null) {
            return;
        }
        setEventListeners(nodeImpl2, (Vector) eventListeners.clone());
    }

    @Override // org.w3c.dom.events.DocumentEvent
    public Event createEvent(String str) throws DOMException {
        if (str.equalsIgnoreCase("Events") || "Event".equals(str)) {
            return new EventImpl();
        }
        if (str.equalsIgnoreCase("MutationEvents") || "MutationEvent".equals(str)) {
            return new MutationEventImpl();
        }
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public NodeIterator createNodeIterator(Node node, short s, NodeFilter nodeFilter) {
        return createNodeIterator(node, s, nodeFilter, true);
    }

    @Override // org.w3c.dom.ranges.DocumentRange
    public Range createRange() {
        if (this.ranges == null) {
            this.ranges = new Vector();
        }
        RangeImpl rangeImpl = new RangeImpl(this);
        this.ranges.addElement(rangeImpl);
        return rangeImpl;
    }

    public TreeWalker createTreeWalker(Node node, short s, NodeFilter nodeFilter) {
        return createTreeWalker(node, s, nodeFilter, true);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void deletedText(NodeImpl nodeImpl, int i, int i2) {
        Vector vector = this.ranges;
        if (vector != null) {
            int size = vector.size();
            for (int i3 = 0; i3 != size; i3++) {
                ((RangeImpl) this.ranges.elementAt(i3)).receiveDeletedText(nodeImpl, i, i2);
            }
        }
    }

    public void dispatchAggregateEvents(NodeImpl nodeImpl, EnclosingAttr enclosingAttr) {
        if (enclosingAttr != null) {
            dispatchAggregateEvents(nodeImpl, enclosingAttr.node, enclosingAttr.oldvalue, (short) 1);
        } else {
            dispatchAggregateEvents(nodeImpl, null, null, (short) 0);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public boolean dispatchEvent(NodeImpl nodeImpl, Event event) {
        String str;
        if (event == null) {
            return false;
        }
        EventImpl eventImpl = (EventImpl) event;
        if (!eventImpl.initialized || (str = eventImpl.type) == null || str.equals("")) {
            throw new EventException((short) 0, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "UNSPECIFIED_EVENT_TYPE_ERR", null));
        }
        LCount lookup = LCount.lookup(eventImpl.getType());
        if (lookup.total == 0) {
            return eventImpl.preventDefault;
        }
        eventImpl.target = nodeImpl;
        eventImpl.stopPropagation = false;
        eventImpl.preventDefault = false;
        Vector vector = new Vector(10, 10);
        for (Node parentNode = nodeImpl.getParentNode(); parentNode != null; parentNode = parentNode.getParentNode()) {
            vector.addElement(parentNode);
        }
        if (lookup.captures > 0) {
            eventImpl.eventPhase = (short) 1;
            for (int size = vector.size() - 1; size >= 0 && !eventImpl.stopPropagation; size--) {
                NodeImpl nodeImpl2 = (NodeImpl) vector.elementAt(size);
                eventImpl.currentTarget = nodeImpl2;
                Vector eventListeners = getEventListeners(nodeImpl2);
                if (eventListeners != null) {
                    Vector vector2 = (Vector) eventListeners.clone();
                    int size2 = vector2.size();
                    for (int i = 0; i < size2; i++) {
                        LEntry lEntry = (LEntry) vector2.elementAt(i);
                        if (lEntry.useCapture && lEntry.type.equals(eventImpl.type) && eventListeners.contains(lEntry)) {
                            try {
                                lEntry.listener.handleEvent(eventImpl);
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
        }
        if (lookup.bubbles > 0) {
            eventImpl.eventPhase = (short) 2;
            eventImpl.currentTarget = nodeImpl;
            Vector eventListeners2 = getEventListeners(nodeImpl);
            if (!eventImpl.stopPropagation && eventListeners2 != null) {
                Vector vector3 = (Vector) eventListeners2.clone();
                int size3 = vector3.size();
                for (int i2 = 0; i2 < size3; i2++) {
                    LEntry lEntry2 = (LEntry) vector3.elementAt(i2);
                    if (!lEntry2.useCapture && lEntry2.type.equals(eventImpl.type) && eventListeners2.contains(lEntry2)) {
                        try {
                            lEntry2.listener.handleEvent(eventImpl);
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
            if (eventImpl.bubbles) {
                eventImpl.eventPhase = (short) 3;
                int size4 = vector.size();
                for (int i3 = 0; i3 < size4 && !eventImpl.stopPropagation; i3++) {
                    NodeImpl nodeImpl3 = (NodeImpl) vector.elementAt(i3);
                    eventImpl.currentTarget = nodeImpl3;
                    Vector eventListeners3 = getEventListeners(nodeImpl3);
                    if (eventListeners3 != null) {
                        Vector vector4 = (Vector) eventListeners3.clone();
                        int size5 = vector4.size();
                        for (int i4 = 0; i4 < size5; i4++) {
                            LEntry lEntry3 = (LEntry) vector4.elementAt(i4);
                            if (!lEntry3.useCapture && lEntry3.type.equals(eventImpl.type) && eventListeners3.contains(lEntry3)) {
                                try {
                                    lEntry3.listener.handleEvent(eventImpl);
                                } catch (Exception unused3) {
                                }
                            }
                        }
                    }
                }
            }
        }
        return eventImpl.preventDefault;
    }

    public void dispatchEventToSubtree(Node node, Event event) {
        ((NodeImpl) node).dispatchEvent(event);
        if (node.getNodeType() == 1) {
            NamedNodeMap attributes = node.getAttributes();
            for (int length = attributes.getLength() - 1; length >= 0; length--) {
                dispatchingEventToSubtree(attributes.item(length), event);
            }
        }
        dispatchingEventToSubtree(node.getFirstChild(), event);
    }

    public void dispatchingEventToSubtree(Node node, Event event) {
        if (node == null) {
            return;
        }
        ((NodeImpl) node).dispatchEvent(event);
        if (node.getNodeType() == 1) {
            NamedNodeMap attributes = node.getAttributes();
            for (int length = attributes.getLength() - 1; length >= 0; length--) {
                dispatchingEventToSubtree(attributes.item(length), event);
            }
        }
        dispatchingEventToSubtree(node.getFirstChild(), event);
        dispatchingEventToSubtree(node.getNextSibling(), event);
    }

    public Vector getEventListeners(NodeImpl nodeImpl) {
        Hashtable hashtable = this.eventListeners;
        if (hashtable == null) {
            return null;
        }
        return (Vector) hashtable.get(nodeImpl);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        return DOMImplementationImpl.getDOMImplementation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public boolean getMutationEvents() {
        return this.mutationEvents;
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void insertedNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
        if (this.mutationEvents) {
            if (LCount.lookup("DOMNodeInserted").total > 0) {
                MutationEventImpl mutationEventImpl = new MutationEventImpl();
                mutationEventImpl.initMutationEvent("DOMNodeInserted", true, false, nodeImpl, null, null, null, (short) 0);
                dispatchEvent(nodeImpl2, mutationEventImpl);
            }
            if (LCount.lookup("DOMNodeInsertedIntoDocument").total > 0) {
                EnclosingAttr enclosingAttr = this.savedEnclosingAttr;
                NodeImpl nodeImpl3 = enclosingAttr != null ? (NodeImpl) enclosingAttr.node.getOwnerElement() : nodeImpl;
                if (nodeImpl3 != null) {
                    NodeImpl nodeImpl4 = nodeImpl3;
                    while (nodeImpl3 != null) {
                        nodeImpl4 = nodeImpl3;
                        nodeImpl3 = nodeImpl3.getNodeType() == 2 ? (NodeImpl) ((AttrImpl) nodeImpl3).getOwnerElement() : nodeImpl3.parentNode();
                    }
                    if (nodeImpl4.getNodeType() == 9) {
                        MutationEventImpl mutationEventImpl2 = new MutationEventImpl();
                        mutationEventImpl2.initMutationEvent("DOMNodeInsertedIntoDocument", false, false, null, null, null, null, (short) 0);
                        dispatchEventToSubtree(nodeImpl2, mutationEventImpl2);
                    }
                }
            }
            if (!z) {
                dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
            }
        }
        Vector vector = this.ranges;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i != size; i++) {
                ((RangeImpl) this.ranges.elementAt(i)).insertedNodeFromDOM(nodeImpl2);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void insertedText(NodeImpl nodeImpl, int i, int i2) {
        Vector vector = this.ranges;
        if (vector != null) {
            int size = vector.size();
            for (int i3 = 0; i3 != size; i3++) {
                ((RangeImpl) this.ranges.elementAt(i3)).receiveInsertedText(nodeImpl, i, i2);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void insertingNode(NodeImpl nodeImpl, boolean z) {
        if (!this.mutationEvents || z) {
            return;
        }
        saveEnclosingAttr(nodeImpl);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void modifiedAttrValue(AttrImpl attrImpl, String str) {
        if (this.mutationEvents) {
            dispatchAggregateEvents(attrImpl, attrImpl, str, (short) 1);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void modifiedCharacterData(NodeImpl nodeImpl, String str, String str2, boolean z) {
        if (!this.mutationEvents || z) {
            return;
        }
        if (LCount.lookup("DOMCharacterDataModified").total > 0) {
            MutationEventImpl mutationEventImpl = new MutationEventImpl();
            mutationEventImpl.initMutationEvent("DOMCharacterDataModified", true, false, null, str, str2, null, (short) 0);
            dispatchEvent(nodeImpl, mutationEventImpl);
        }
        dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void modifyingCharacterData(NodeImpl nodeImpl, boolean z) {
        if (!this.mutationEvents || z) {
            return;
        }
        saveEnclosingAttr(nodeImpl);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void removeEventListener(NodeImpl nodeImpl, String str, EventListener eventListener, boolean z) {
        Vector eventListeners;
        if (str == null || str.equals("") || eventListener == null || (eventListeners = getEventListeners(nodeImpl)) == null) {
            return;
        }
        for (int size = eventListeners.size() - 1; size >= 0; size--) {
            LEntry lEntry = (LEntry) eventListeners.elementAt(size);
            if (lEntry.useCapture == z && lEntry.listener == eventListener && lEntry.type.equals(str)) {
                eventListeners.removeElementAt(size);
                if (eventListeners.size() == 0) {
                    setEventListeners(nodeImpl, null);
                }
                LCount lookup = LCount.lookup(str);
                if (z) {
                    lookup.captures--;
                    lookup.total--;
                    return;
                } else {
                    lookup.bubbles--;
                    lookup.total--;
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeNodeIterator(NodeIterator nodeIterator) {
        Vector vector;
        if (nodeIterator == null || (vector = this.iterators) == null) {
            return;
        }
        vector.removeElement(nodeIterator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeRange(Range range) {
        Vector vector;
        if (range == null || (vector = this.ranges) == null) {
            return;
        }
        vector.removeElement(range);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void removedAttrNode(AttrImpl attrImpl, NodeImpl nodeImpl, String str) {
        if (this.mutationEvents) {
            if (LCount.lookup("DOMAttrModified").total > 0) {
                MutationEventImpl mutationEventImpl = new MutationEventImpl();
                mutationEventImpl.initMutationEvent("DOMAttrModified", true, false, attrImpl, attrImpl.getNodeValue(), null, str, (short) 3);
                dispatchEvent(nodeImpl, mutationEventImpl);
            }
            dispatchAggregateEvents(nodeImpl, null, null, (short) 0);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void removedNode(NodeImpl nodeImpl, boolean z) {
        if (!this.mutationEvents || z) {
            return;
        }
        dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void removingNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
        NodeImpl nodeImpl3;
        Vector vector = this.iterators;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i != size; i++) {
                ((NodeIteratorImpl) this.iterators.elementAt(i)).removeNode(nodeImpl2);
            }
        }
        Vector vector2 = this.ranges;
        if (vector2 != null) {
            int size2 = vector2.size();
            for (int i2 = 0; i2 != size2; i2++) {
                ((RangeImpl) this.ranges.elementAt(i2)).removeNode(nodeImpl2);
            }
        }
        if (this.mutationEvents) {
            if (!z) {
                saveEnclosingAttr(nodeImpl);
            }
            if (LCount.lookup("DOMNodeRemoved").total > 0) {
                MutationEventImpl mutationEventImpl = new MutationEventImpl();
                mutationEventImpl.initMutationEvent("DOMNodeRemoved", true, false, nodeImpl, null, null, null, (short) 0);
                dispatchEvent(nodeImpl2, mutationEventImpl);
            }
            if (LCount.lookup("DOMNodeRemovedFromDocument").total > 0) {
                EnclosingAttr enclosingAttr = this.savedEnclosingAttr;
                NodeImpl nodeImpl4 = enclosingAttr != null ? (NodeImpl) enclosingAttr.node.getOwnerElement() : this;
                if (nodeImpl4 != null) {
                    NodeImpl parentNode = nodeImpl4.parentNode();
                    while (true) {
                        NodeImpl nodeImpl5 = parentNode;
                        nodeImpl3 = nodeImpl4;
                        nodeImpl4 = nodeImpl5;
                        if (nodeImpl4 == null) {
                            break;
                        } else {
                            parentNode = nodeImpl4.parentNode();
                        }
                    }
                    if (nodeImpl3.getNodeType() == 9) {
                        MutationEventImpl mutationEventImpl2 = new MutationEventImpl();
                        mutationEventImpl2.initMutationEvent("DOMNodeRemovedFromDocument", false, false, null, null, null, null, (short) 0);
                        dispatchEventToSubtree(nodeImpl2, mutationEventImpl2);
                    }
                }
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    void renamedAttrNode(Attr attr, Attr attr2) {
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    void renamedElement(Element element, Element element2) {
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void replacedCharacterData(NodeImpl nodeImpl, String str, String str2) {
        modifiedCharacterData(nodeImpl, str, str2, false);
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void replacedNode(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void replacedText(NodeImpl nodeImpl) {
        Vector vector = this.ranges;
        if (vector != null) {
            int size = vector.size();
            for (int i = 0; i != size; i++) {
                ((RangeImpl) this.ranges.elementAt(i)).receiveReplacedText(nodeImpl);
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void replacingData(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            saveEnclosingAttr(nodeImpl);
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void replacingNode(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            saveEnclosingAttr(nodeImpl);
        }
    }

    public void saveEnclosingAttr(NodeImpl nodeImpl) {
        this.savedEnclosingAttr = null;
        if (LCount.lookup("DOMAttrModified").total > 0) {
            while (nodeImpl != null) {
                short nodeType = nodeImpl.getNodeType();
                if (nodeType == 2) {
                    EnclosingAttr enclosingAttr = new EnclosingAttr();
                    AttrImpl attrImpl = (AttrImpl) nodeImpl;
                    enclosingAttr.node = attrImpl;
                    enclosingAttr.oldvalue = attrImpl.getNodeValue();
                    this.savedEnclosingAttr = enclosingAttr;
                    return;
                }
                if (nodeType == 5) {
                    nodeImpl = nodeImpl.parentNode();
                } else if (nodeType != 3) {
                    return;
                } else {
                    nodeImpl = nodeImpl.parentNode();
                }
            }
        }
    }

    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void setAttrNode(AttrImpl attrImpl, AttrImpl attrImpl2) {
        if (this.mutationEvents) {
            if (attrImpl2 == null) {
                dispatchAggregateEvents(attrImpl.ownerNode, attrImpl, null, (short) 2);
            } else {
                dispatchAggregateEvents(attrImpl.ownerNode, attrImpl, attrImpl2.getNodeValue(), (short) 1);
            }
        }
    }

    public void setEventListeners(NodeImpl nodeImpl, Vector vector) {
        if (this.eventListeners == null) {
            this.eventListeners = new Hashtable();
        }
        if (vector != null) {
            this.eventListeners.put(nodeImpl, vector);
            this.mutationEvents = true;
        } else {
            this.eventListeners.remove(nodeImpl);
            if (this.eventListeners.isEmpty()) {
                this.mutationEvents = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl
    public void setMutationEvents(boolean z) {
        this.mutationEvents = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void splitData(Node node, Node node2, int i) {
        Vector vector = this.ranges;
        if (vector != null) {
            int size = vector.size();
            for (int i2 = 0; i2 != size; i2++) {
                ((RangeImpl) this.ranges.elementAt(i2)).receiveSplitData(node, node2, i);
            }
        }
    }

    @Override // org.w3c.dom.traversal.DocumentTraversal
    public NodeIterator createNodeIterator(Node node, int i, NodeFilter nodeFilter, boolean z) {
        if (node != null) {
            NodeIteratorImpl nodeIteratorImpl = new NodeIteratorImpl(this, node, i, nodeFilter, z);
            if (this.iterators == null) {
                this.iterators = new Vector();
            }
            this.iterators.addElement(nodeIteratorImpl);
            return nodeIteratorImpl;
        }
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.w3c.dom.traversal.DocumentTraversal
    public TreeWalker createTreeWalker(Node node, int i, NodeFilter nodeFilter, boolean z) {
        if (node != null) {
            return new TreeWalkerImpl(node, i, nodeFilter, z);
        }
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    public DocumentImpl(boolean z) {
        super(z);
        this.mutationEvents = false;
    }

    public void dispatchAggregateEvents(NodeImpl nodeImpl, AttrImpl attrImpl, String str, short s) {
        NodeImpl nodeImpl2;
        if (attrImpl != null) {
            LCount lookup = LCount.lookup("DOMAttrModified");
            nodeImpl2 = (NodeImpl) attrImpl.getOwnerElement();
            if (lookup.total > 0 && nodeImpl2 != null) {
                MutationEventImpl mutationEventImpl = new MutationEventImpl();
                mutationEventImpl.initMutationEvent("DOMAttrModified", true, false, attrImpl, str, attrImpl.getNodeValue(), attrImpl.getNodeName(), s);
                nodeImpl2.dispatchEvent(mutationEventImpl);
            }
        } else {
            nodeImpl2 = null;
        }
        if (LCount.lookup("DOMSubtreeModified").total > 0) {
            MutationEventImpl mutationEventImpl2 = new MutationEventImpl();
            mutationEventImpl2.initMutationEvent("DOMSubtreeModified", true, false, null, null, null, null, (short) 0);
            if (attrImpl != null) {
                dispatchEvent(attrImpl, mutationEventImpl2);
                if (nodeImpl2 != null) {
                    dispatchEvent(nodeImpl2, mutationEventImpl2);
                    return;
                }
                return;
            }
            dispatchEvent(nodeImpl, mutationEventImpl2);
        }
    }

    public DocumentImpl(DocumentType documentType) {
        super(documentType);
        this.mutationEvents = false;
    }

    public DocumentImpl(DocumentType documentType, boolean z) {
        super(documentType, z);
        this.mutationEvents = false;
    }
}
