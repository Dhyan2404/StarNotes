package com.sunia.HTREnginev2;

import java.util.List;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes5.dex */
public class fci implements NodeList {

    /* renamed from: e */
    public List<? extends Node> f69873e;

    public fci(List<? extends Node> list) {
        this.f69873e = list;
    }

    @Override // org.w3c.dom.NodeList
    public int getLength() {
        return this.f69873e.size();
    }

    @Override // org.w3c.dom.NodeList
    public Node item(int i) {
        if (i < 0 || i >= this.f69873e.size()) {
            return null;
        }
        return this.f69873e.get(i);
    }
}
