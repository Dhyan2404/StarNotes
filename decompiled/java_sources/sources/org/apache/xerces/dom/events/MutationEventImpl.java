package org.apache.xerces.dom.events;

import org.w3c.dom.Node;
import org.w3c.dom.events.MutationEvent;

/* loaded from: classes13.dex */
public class MutationEventImpl extends EventImpl implements MutationEvent {
    public static final String DOM_ATTR_MODIFIED = "DOMAttrModified";
    public static final String DOM_CHARACTER_DATA_MODIFIED = "DOMCharacterDataModified";
    public static final String DOM_NODE_INSERTED = "DOMNodeInserted";
    public static final String DOM_NODE_INSERTED_INTO_DOCUMENT = "DOMNodeInsertedIntoDocument";
    public static final String DOM_NODE_REMOVED = "DOMNodeRemoved";
    public static final String DOM_NODE_REMOVED_FROM_DOCUMENT = "DOMNodeRemovedFromDocument";
    public static final String DOM_SUBTREE_MODIFIED = "DOMSubtreeModified";
    public short attrChange;

    /* renamed from: a */
    public Node f111933a = null;

    /* renamed from: b */
    public String f111934b = null;

    /* renamed from: c */
    public String f111935c = null;

    /* renamed from: d */
    public String f111936d = null;

    @Override // org.w3c.dom.events.MutationEvent
    public short getAttrChange() {
        return this.attrChange;
    }

    @Override // org.w3c.dom.events.MutationEvent
    public String getAttrName() {
        return this.f111936d;
    }

    @Override // org.w3c.dom.events.MutationEvent
    public String getNewValue() {
        return this.f111935c;
    }

    @Override // org.w3c.dom.events.MutationEvent
    public String getPrevValue() {
        return this.f111934b;
    }

    @Override // org.w3c.dom.events.MutationEvent
    public Node getRelatedNode() {
        return this.f111933a;
    }

    @Override // org.w3c.dom.events.MutationEvent
    public void initMutationEvent(String str, boolean z, boolean z2, Node node, String str2, String str3, String str4, short s) {
        this.f111933a = node;
        this.f111934b = str2;
        this.f111935c = str3;
        this.f111936d = str4;
        this.attrChange = s;
        super.initEvent(str, z, z2);
    }
}
