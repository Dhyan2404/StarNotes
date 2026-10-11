package com.sun.org.apache.html.internal.dom;

/* loaded from: classes10.dex */
class CollectionIndex {
    private int _index;

    public CollectionIndex(int i) {
        this._index = i;
    }

    public void decrement() {
        this._index--;
    }

    public int getIndex() {
        return this._index;
    }

    public boolean isZero() {
        return this._index <= 0;
    }
}
