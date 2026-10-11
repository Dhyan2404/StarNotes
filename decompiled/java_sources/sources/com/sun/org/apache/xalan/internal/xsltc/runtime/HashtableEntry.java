package com.sun.org.apache.xalan.internal.xsltc.runtime;

/* loaded from: classes10.dex */
class HashtableEntry {
    int hash;
    Object key;
    HashtableEntry next;
    Object value;

    public Object clone() {
        HashtableEntry hashtableEntry = new HashtableEntry();
        hashtableEntry.hash = this.hash;
        hashtableEntry.key = this.key;
        hashtableEntry.value = this.value;
        HashtableEntry hashtableEntry2 = this.next;
        hashtableEntry.next = hashtableEntry2 != null ? (HashtableEntry) hashtableEntry2.clone() : null;
        return hashtableEntry;
    }
}
