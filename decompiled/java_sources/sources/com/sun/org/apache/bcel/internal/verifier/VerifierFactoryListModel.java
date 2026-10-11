package com.sun.org.apache.bcel.internal.verifier;

import java.util.ArrayList;
import java.util.TreeSet;
import javax.swing.ListModel;
import javax.swing.event.ListDataEvent;
import javax.swing.event.ListDataListener;

/* loaded from: classes10.dex */
public class VerifierFactoryListModel implements VerifierFactoryObserver, ListModel {
    private ArrayList listeners = new ArrayList();
    private TreeSet cache = new TreeSet();

    public VerifierFactoryListModel() {
        VerifierFactory.attach(this);
        update(null);
    }

    public synchronized void addListDataListener(ListDataListener listDataListener) {
        this.listeners.add(listDataListener);
    }

    public synchronized Object getElementAt(int i) {
        return this.cache.toArray()[i];
    }

    public synchronized int getSize() {
        return this.cache.size();
    }

    public synchronized void removeListDataListener(ListDataListener listDataListener) {
        this.listeners.remove(listDataListener);
    }

    @Override // com.sun.org.apache.bcel.internal.verifier.VerifierFactoryObserver
    public synchronized void update(String str) {
        int size = this.listeners.size();
        Verifier[] verifiers = VerifierFactory.getVerifiers();
        int length = verifiers.length;
        this.cache.clear();
        for (Verifier verifier : verifiers) {
            this.cache.add(verifier.getClassName());
        }
        for (int i = 0; i < size; i++) {
            ListDataEvent listDataEvent = new ListDataEvent(this, 0, 0, length - 1);
            ListDataListener listDataListener = (ListDataListener) this.listeners.get(i);
            ListDataListener listDataListener2 = listDataListener;
            listDataListener.contentsChanged(listDataEvent);
        }
    }
}
