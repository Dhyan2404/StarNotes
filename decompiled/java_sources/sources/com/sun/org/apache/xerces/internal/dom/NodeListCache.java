package com.sun.org.apache.xerces.internal.dom;

import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public class NodeListCache implements Serializable {
    private static final long serialVersionUID = 3258135743263224377L;
    ChildNode fChild;
    ParentNode fOwner;
    NodeListCache next;
    int fLength = -1;
    int fChildIndex = -1;

    public NodeListCache(ParentNode parentNode) {
        this.fOwner = parentNode;
    }
}
