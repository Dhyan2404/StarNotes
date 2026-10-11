package org.apache.xerces.dom;

import com.sunia.HTREnginev2.mui;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Vector;
import org.apache.xerces.dom.events.EventImpl;
import org.apache.xerces.dom.events.MouseEventImpl;
import org.apache.xerces.dom.events.MutationEventImpl;
import org.apache.xerces.dom.events.UIEventImpl;
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

/* loaded from: classes13.dex */
public class DocumentImpl extends CoreDocumentImpl implements DocumentTraversal, DocumentEvent, DocumentRange {
    static final long serialVersionUID = 515687835542616694L;
    protected Hashtable eventListeners;
    protected transient ReferenceQueue iteratorReferenceQueue;
    protected transient List iterators;
    protected boolean mutationEvents;
    protected transient ReferenceQueue rangeReferenceQueue;
    protected transient List ranges;
    EnclosingAttr savedEnclosingAttr;

    /* loaded from: classes13.dex */
    public class EnclosingAttr implements Serializable {
        private static final long serialVersionUID = 5208387723391647216L;
        AttrImpl node;
        String oldvalue;

        public EnclosingAttr() {
        }
    }

    /* loaded from: classes13.dex */
    public class LEntry implements Serializable {
        private static final long serialVersionUID = -8426757059492421631L;
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

    private void mutationEventsInsertedNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
        if (mui.m55685a("DOMNodeInserted").f78020d > 0) {
            MutationEventImpl mutationEventImpl = new MutationEventImpl();
            mutationEventImpl.initMutationEvent("DOMNodeInserted", true, false, nodeImpl, null, null, null, (short) 0);
            dispatchEvent(nodeImpl2, mutationEventImpl);
        }
        if (mui.m55685a("DOMNodeInsertedIntoDocument").f78020d > 0) {
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
        if (z) {
            return;
        }
        dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
    }

    private void mutationEventsModifiedCharacterData(NodeImpl nodeImpl, String str, String str2, boolean z) {
        if (z) {
            return;
        }
        if (mui.m55685a("DOMCharacterDataModified").f78020d > 0) {
            MutationEventImpl mutationEventImpl = new MutationEventImpl();
            mutationEventImpl.initMutationEvent("DOMCharacterDataModified", true, false, null, str, str2, null, (short) 0);
            dispatchEvent(nodeImpl, mutationEventImpl);
        }
        dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
    }

    private void mutationEventsRemovedAttrNode(AttrImpl attrImpl, NodeImpl nodeImpl, String str) {
        if (mui.m55685a("DOMAttrModified").f78020d > 0) {
            MutationEventImpl mutationEventImpl = new MutationEventImpl();
            mutationEventImpl.initMutationEvent("DOMAttrModified", true, false, attrImpl, attrImpl.getNodeValue(), null, str, (short) 3);
            dispatchEvent(nodeImpl, mutationEventImpl);
        }
        dispatchAggregateEvents(nodeImpl, null, null, (short) 0);
    }

    private void mutationEventsRemovingNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
        NodeImpl nodeImpl3;
        if (!z) {
            saveEnclosingAttr(nodeImpl);
        }
        if (mui.m55685a("DOMNodeRemoved").f78020d > 0) {
            MutationEventImpl mutationEventImpl = new MutationEventImpl();
            mutationEventImpl.initMutationEvent("DOMNodeRemoved", true, false, nodeImpl, null, null, null, (short) 0);
            dispatchEvent(nodeImpl2, mutationEventImpl);
        }
        if (mui.m55685a("DOMNodeRemovedFromDocument").f78020d > 0) {
            EnclosingAttr enclosingAttr = this.savedEnclosingAttr;
            NodeImpl nodeImpl4 = enclosingAttr != null ? (NodeImpl) enclosingAttr.node.getOwnerElement() : this;
            if (nodeImpl4 == null) {
                return;
            }
            do {
                nodeImpl3 = nodeImpl4;
                nodeImpl4 = nodeImpl4.parentNode();
            } while (nodeImpl4 != null);
            if (nodeImpl3.getNodeType() == 9) {
                MutationEventImpl mutationEventImpl2 = new MutationEventImpl();
                mutationEventImpl2.initMutationEvent("DOMNodeRemovedFromDocument", false, false, null, null, null, null, (short) 0);
                dispatchEventToSubtree(nodeImpl2, mutationEventImpl2);
            }
        }
    }

    private void notifyIteratorsRemovingNode(NodeImpl nodeImpl) {
        removeStaleIteratorReferences();
        Iterator it2 = this.iterators.iterator();
        while (it2.hasNext()) {
            NodeIteratorImpl nodeIteratorImpl = (NodeIteratorImpl) ((Reference) it2.next()).get();
            if (nodeIteratorImpl != null) {
                nodeIteratorImpl.removeNode(nodeImpl);
            } else {
                it2.remove();
            }
        }
    }

    private void notifyRangesDeletedText(CharacterDataImpl characterDataImpl, int i, int i2) {
        removeStaleRangeReferences();
        Iterator it2 = this.ranges.iterator();
        while (it2.hasNext()) {
            RangeImpl rangeImpl = (RangeImpl) ((Reference) it2.next()).get();
            if (rangeImpl != null) {
                rangeImpl.m69779l(characterDataImpl, i, i2);
            } else {
                it2.remove();
            }
        }
    }

    private void notifyRangesInsertedNode(NodeImpl nodeImpl) {
        removeStaleRangeReferences();
        Iterator it2 = this.ranges.iterator();
        while (it2.hasNext()) {
            RangeImpl rangeImpl = (RangeImpl) ((Reference) it2.next()).get();
            if (rangeImpl != null) {
                rangeImpl.insertedNodeFromDOM(nodeImpl);
            } else {
                it2.remove();
            }
        }
    }

    private void notifyRangesInsertedText(CharacterDataImpl characterDataImpl, int i, int i2) {
        removeStaleRangeReferences();
        Iterator it2 = this.ranges.iterator();
        while (it2.hasNext()) {
            RangeImpl rangeImpl = (RangeImpl) ((Reference) it2.next()).get();
            if (rangeImpl != null) {
                rangeImpl.m69780m(characterDataImpl, i, i2);
            } else {
                it2.remove();
            }
        }
    }

    private void notifyRangesRemovingNode(NodeImpl nodeImpl) {
        removeStaleRangeReferences();
        Iterator it2 = this.ranges.iterator();
        while (it2.hasNext()) {
            RangeImpl rangeImpl = (RangeImpl) ((Reference) it2.next()).get();
            if (rangeImpl != null) {
                rangeImpl.m69784q(nodeImpl);
            } else {
                it2.remove();
            }
        }
    }

    private void notifyRangesReplacedText(CharacterDataImpl characterDataImpl) {
        removeStaleRangeReferences();
        Iterator it2 = this.ranges.iterator();
        while (it2.hasNext()) {
            RangeImpl rangeImpl = (RangeImpl) ((Reference) it2.next()).get();
            if (rangeImpl != null) {
                rangeImpl.m69781n(characterDataImpl);
            } else {
                it2.remove();
            }
        }
    }

    private void notifyRangesSplitData(Node node, Node node2, int i) {
        removeStaleRangeReferences();
        Iterator it2 = this.ranges.iterator();
        while (it2.hasNext()) {
            RangeImpl rangeImpl = (RangeImpl) ((Reference) it2.next()).get();
            if (rangeImpl != null) {
                rangeImpl.m69782o(node, node2, i);
            } else {
                it2.remove();
            }
        }
    }

    private void removeStaleIteratorReferences() {
        removeStaleReferences(this.iteratorReferenceQueue, this.iterators);
    }

    private void removeStaleRangeReferences() {
        removeStaleReferences(this.rangeReferenceQueue, this.ranges);
    }

    private void removeStaleReferences(ReferenceQueue referenceQueue, List list) {
        Reference poll = referenceQueue.poll();
        int i = 0;
        while (poll != null) {
            i++;
            poll = referenceQueue.poll();
        }
        if (i > 0) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                if (((Reference) it2.next()).get() == null) {
                    it2.remove();
                    i--;
                    if (i <= 0) {
                        return;
                    }
                }
            }
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void addEventListener(NodeImpl nodeImpl, String str, EventListener eventListener, boolean z) {
        if (str == null || str.length() == 0 || eventListener == null) {
            return;
        }
        removeEventListener(nodeImpl, str, eventListener, z);
        Vector eventListeners = getEventListeners(nodeImpl);
        if (eventListeners == null) {
            eventListeners = new Vector();
            setEventListeners(nodeImpl, eventListeners);
        }
        eventListeners.addElement(new LEntry(str, eventListener, z));
        mui m55685a = mui.m55685a(str);
        if (z) {
            m55685a.f78017a++;
        } else {
            m55685a.f78018b++;
        }
        m55685a.f78020d++;
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.apache.xerces.dom.ParentNode, org.apache.xerces.dom.ChildNode, org.apache.xerces.dom.NodeImpl, org.w3c.dom.Node
    public Node cloneNode(boolean z) {
        DocumentImpl documentImpl = new DocumentImpl();
        callUserDataHandlers(this, documentImpl, (short) 1);
        cloneNode(documentImpl, z);
        documentImpl.mutationEvents = this.mutationEvents;
        return documentImpl;
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
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
        if (str.equalsIgnoreCase("UIEvents") || "UIEvent".equals(str)) {
            return new UIEventImpl();
        }
        if (str.equalsIgnoreCase("MouseEvents") || "MouseEvent".equals(str)) {
            return new MouseEventImpl();
        }
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.w3c.dom.traversal.DocumentTraversal
    public NodeIterator createNodeIterator(Node node, int i, NodeFilter nodeFilter, boolean z) {
        if (node == null) {
            throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
        }
        NodeIteratorImpl nodeIteratorImpl = new NodeIteratorImpl(this, node, i, nodeFilter, z);
        if (this.iterators == null) {
            this.iterators = new LinkedList();
            this.iteratorReferenceQueue = new ReferenceQueue();
        }
        removeStaleIteratorReferences();
        this.iterators.add(new WeakReference(nodeIteratorImpl, this.iteratorReferenceQueue));
        return nodeIteratorImpl;
    }

    @Override // org.w3c.dom.ranges.DocumentRange
    public Range createRange() {
        if (this.ranges == null) {
            this.ranges = new LinkedList();
            this.rangeReferenceQueue = new ReferenceQueue();
        }
        RangeImpl rangeImpl = new RangeImpl(this);
        removeStaleRangeReferences();
        this.ranges.add(new WeakReference(rangeImpl, this.rangeReferenceQueue));
        return rangeImpl;
    }

    @Override // org.w3c.dom.traversal.DocumentTraversal
    public TreeWalker createTreeWalker(Node node, int i, NodeFilter nodeFilter, boolean z) {
        if (node != null) {
            return new TreeWalkerImpl(node, i, nodeFilter, z);
        }
        throw new DOMException((short) 9, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "NOT_SUPPORTED_ERR", null));
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void deletedText(CharacterDataImpl characterDataImpl, int i, int i2) {
        if (this.ranges != null) {
            notifyRangesDeletedText(characterDataImpl, i, i2);
        }
    }

    public void dispatchAggregateEvents(NodeImpl nodeImpl, AttrImpl attrImpl, String str, short s) {
        NodeImpl nodeImpl2;
        if (attrImpl != null) {
            mui m55685a = mui.m55685a("DOMAttrModified");
            nodeImpl2 = (NodeImpl) attrImpl.getOwnerElement();
            if (m55685a.f78020d > 0 && nodeImpl2 != null) {
                MutationEventImpl mutationEventImpl = new MutationEventImpl();
                mutationEventImpl.initMutationEvent("DOMAttrModified", true, false, attrImpl, str, attrImpl.getNodeValue(), attrImpl.getNodeName(), s);
                nodeImpl2.dispatchEvent(mutationEventImpl);
            }
        } else {
            nodeImpl2 = null;
        }
        if (mui.m55685a("DOMSubtreeModified").f78020d > 0) {
            MutationEventImpl mutationEventImpl2 = new MutationEventImpl();
            mutationEventImpl2.initMutationEvent("DOMSubtreeModified", true, false, null, null, null, null, (short) 0);
            if (attrImpl == null) {
                dispatchEvent(nodeImpl, mutationEventImpl2);
                return;
            }
            dispatchEvent(attrImpl, mutationEventImpl2);
            if (nodeImpl2 != null) {
                dispatchEvent(nodeImpl2, mutationEventImpl2);
            }
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public boolean dispatchEvent(NodeImpl nodeImpl, Event event) {
        String str;
        if (event == null) {
            return false;
        }
        EventImpl eventImpl = (EventImpl) event;
        if (!eventImpl.initialized || (str = eventImpl.type) == null || str.length() == 0) {
            throw new EventException((short) 0, DOMMessageFormatter.formatMessage("http://www.w3.org/dom/DOMTR", "UNSPECIFIED_EVENT_TYPE_ERR", null));
        }
        mui m55685a = mui.m55685a(eventImpl.getType());
        if (m55685a.f78020d == 0) {
            return eventImpl.preventDefault;
        }
        eventImpl.target = nodeImpl;
        eventImpl.stopPropagation = false;
        eventImpl.preventDefault = false;
        ArrayList arrayList = new ArrayList(10);
        for (Node parentNode = nodeImpl.getParentNode(); parentNode != null; parentNode = parentNode.getParentNode()) {
            arrayList.add(parentNode);
        }
        if (m55685a.f78017a > 0) {
            eventImpl.eventPhase = (short) 1;
            for (int size = arrayList.size() - 1; size >= 0 && !eventImpl.stopPropagation; size--) {
                NodeImpl nodeImpl2 = (NodeImpl) arrayList.get(size);
                eventImpl.currentTarget = nodeImpl2;
                Vector eventListeners = getEventListeners(nodeImpl2);
                if (eventListeners != null) {
                    Vector vector = (Vector) eventListeners.clone();
                    int size2 = vector.size();
                    for (int i = 0; i < size2; i++) {
                        LEntry lEntry = (LEntry) vector.elementAt(i);
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
        if (m55685a.f78018b > 0) {
            eventImpl.eventPhase = (short) 2;
            eventImpl.currentTarget = nodeImpl;
            Vector eventListeners2 = getEventListeners(nodeImpl);
            if (!eventImpl.stopPropagation && eventListeners2 != null) {
                Vector vector2 = (Vector) eventListeners2.clone();
                int size3 = vector2.size();
                for (int i2 = 0; i2 < size3; i2++) {
                    LEntry lEntry2 = (LEntry) vector2.elementAt(i2);
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
                int size4 = arrayList.size();
                for (int i3 = 0; i3 < size4 && !eventImpl.stopPropagation; i3++) {
                    NodeImpl nodeImpl3 = (NodeImpl) arrayList.get(i3);
                    eventImpl.currentTarget = nodeImpl3;
                    Vector eventListeners3 = getEventListeners(nodeImpl3);
                    if (eventListeners3 != null) {
                        Vector vector3 = (Vector) eventListeners3.clone();
                        int size5 = vector3.size();
                        for (int i4 = 0; i4 < size5; i4++) {
                            LEntry lEntry3 = (LEntry) vector3.elementAt(i4);
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

    @Override // org.apache.xerces.dom.CoreDocumentImpl, org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        return DOMImplementationImpl.getDOMImplementation();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public boolean getMutationEvents() {
        return this.mutationEvents;
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void insertedNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
        if (this.mutationEvents) {
            mutationEventsInsertedNode(nodeImpl, nodeImpl2, z);
        }
        if (this.ranges != null) {
            notifyRangesInsertedNode(nodeImpl2);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void insertedText(CharacterDataImpl characterDataImpl, int i, int i2) {
        if (this.ranges != null) {
            notifyRangesInsertedText(characterDataImpl, i, i2);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void insertingNode(NodeImpl nodeImpl, boolean z) {
        if (!this.mutationEvents || z) {
            return;
        }
        saveEnclosingAttr(nodeImpl);
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void modifiedAttrValue(AttrImpl attrImpl, String str) {
        if (this.mutationEvents) {
            dispatchAggregateEvents(attrImpl, attrImpl, str, (short) 1);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void modifiedCharacterData(NodeImpl nodeImpl, String str, String str2, boolean z) {
        if (this.mutationEvents) {
            mutationEventsModifiedCharacterData(nodeImpl, str, str2, z);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void modifyingCharacterData(NodeImpl nodeImpl, boolean z) {
        if (!this.mutationEvents || z) {
            return;
        }
        saveEnclosingAttr(nodeImpl);
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void removeEventListener(NodeImpl nodeImpl, String str, EventListener eventListener, boolean z) {
        Vector eventListeners;
        if (str == null || str.length() == 0 || eventListener == null || (eventListeners = getEventListeners(nodeImpl)) == null) {
            return;
        }
        for (int size = eventListeners.size() - 1; size >= 0; size--) {
            LEntry lEntry = (LEntry) eventListeners.elementAt(size);
            if (lEntry.useCapture == z && lEntry.listener == eventListener && lEntry.type.equals(str)) {
                eventListeners.removeElementAt(size);
                if (eventListeners.size() == 0) {
                    setEventListeners(nodeImpl, null);
                }
                mui m55685a = mui.m55685a(str);
                if (z) {
                    m55685a.f78017a--;
                } else {
                    m55685a.f78018b--;
                }
                m55685a.f78020d--;
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeNodeIterator(NodeIterator nodeIterator) {
        if (nodeIterator == null || this.iterators == null) {
            return;
        }
        removeStaleIteratorReferences();
        Iterator it2 = this.iterators.iterator();
        while (it2.hasNext()) {
            Object obj = ((Reference) it2.next()).get();
            if (obj == nodeIterator) {
                it2.remove();
                return;
            } else if (obj == null) {
                it2.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeRange(Range range) {
        if (range == null || this.ranges == null) {
            return;
        }
        removeStaleRangeReferences();
        Iterator it2 = this.ranges.iterator();
        while (it2.hasNext()) {
            Object obj = ((Reference) it2.next()).get();
            if (obj == range) {
                it2.remove();
                return;
            } else if (obj == null) {
                it2.remove();
            }
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void removedAttrNode(AttrImpl attrImpl, NodeImpl nodeImpl, String str) {
        if (this.mutationEvents) {
            mutationEventsRemovedAttrNode(attrImpl, nodeImpl, str);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void removedNode(NodeImpl nodeImpl, boolean z) {
        if (!this.mutationEvents || z) {
            return;
        }
        dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void removingNode(NodeImpl nodeImpl, NodeImpl nodeImpl2, boolean z) {
        if (this.iterators != null) {
            notifyIteratorsRemovingNode(nodeImpl2);
        }
        if (this.ranges != null) {
            notifyRangesRemovingNode(nodeImpl2);
        }
        if (this.mutationEvents) {
            mutationEventsRemovingNode(nodeImpl, nodeImpl2, z);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    void renamedAttrNode(Attr attr, Attr attr2) {
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    void renamedElement(Element element, Element element2) {
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void replacedCharacterData(NodeImpl nodeImpl, String str, String str2) {
        modifiedCharacterData(nodeImpl, str, str2, false);
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void replacedNode(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            dispatchAggregateEvents(nodeImpl, this.savedEnclosingAttr);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void replacedText(CharacterDataImpl characterDataImpl) {
        if (this.ranges != null) {
            notifyRangesReplacedText(characterDataImpl);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void replacingData(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            saveEnclosingAttr(nodeImpl);
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void replacingNode(NodeImpl nodeImpl) {
        if (this.mutationEvents) {
            saveEnclosingAttr(nodeImpl);
        }
    }

    public void saveEnclosingAttr(NodeImpl nodeImpl) {
        this.savedEnclosingAttr = null;
        if (mui.m55685a("DOMAttrModified").f78020d > 0) {
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
                if (nodeType != 5 && nodeType != 3) {
                    return;
                } else {
                    nodeImpl = nodeImpl.parentNode();
                }
            }
        }
    }

    @Override // org.apache.xerces.dom.CoreDocumentImpl
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
        boolean z;
        if (this.eventListeners == null) {
            this.eventListeners = new Hashtable();
        }
        if (vector == null) {
            this.eventListeners.remove(nodeImpl);
            if (!this.eventListeners.isEmpty()) {
                return;
            } else {
                z = false;
            }
        } else {
            this.eventListeners.put(nodeImpl, vector);
            z = true;
        }
        this.mutationEvents = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.apache.xerces.dom.CoreDocumentImpl
    public void setMutationEvents(boolean z) {
        this.mutationEvents = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void splitData(Node node, Node node2, int i) {
        if (this.ranges != null) {
            notifyRangesSplitData(node, node2, i);
        }
    }

    public DocumentImpl(DocumentType documentType) {
        super(documentType);
        this.mutationEvents = false;
    }

    public NodeIterator createNodeIterator(Node node, short s, NodeFilter nodeFilter) {
        return createNodeIterator(node, s, nodeFilter, true);
    }

    public TreeWalker createTreeWalker(Node node, short s, NodeFilter nodeFilter) {
        return createTreeWalker(node, s, nodeFilter, true);
    }

    public void dispatchAggregateEvents(NodeImpl nodeImpl, EnclosingAttr enclosingAttr) {
        if (enclosingAttr != null) {
            dispatchAggregateEvents(nodeImpl, enclosingAttr.node, enclosingAttr.oldvalue, (short) 1);
        } else {
            dispatchAggregateEvents(nodeImpl, null, null, (short) 0);
        }
    }

    public DocumentImpl(DocumentType documentType, boolean z) {
        super(documentType, z);
        this.mutationEvents = false;
    }

    public DocumentImpl(boolean z) {
        super(z);
        this.mutationEvents = false;
    }
}
