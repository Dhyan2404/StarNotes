package net.p110sf.saxon.om;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public final class DocumentPool {

    /* renamed from: a */
    public final Map<DocumentKey, TreeInfo> f100778a = new HashMap(10);

    /* renamed from: b */
    public final Set<DocumentKey> f100779b = new HashSet(10);

    public synchronized void add(TreeInfo treeInfo, String str) throws XPathException {
        if (str != null) {
            add(treeInfo, new DocumentKey(str));
        }
    }

    public synchronized boolean contains(TreeInfo treeInfo) {
        return this.f100778a.values().contains(treeInfo);
    }

    public synchronized TreeInfo discard(TreeInfo treeInfo) {
        for (Map.Entry<DocumentKey, TreeInfo> entry : this.f100778a.entrySet()) {
            DocumentKey key = entry.getKey();
            if (entry.getValue().equals(treeInfo)) {
                this.f100778a.remove(key);
                return treeInfo;
            }
        }
        return treeInfo;
    }

    public void discardIndexes(KeyManager keyManager) {
        Iterator<TreeInfo> it2 = this.f100778a.values().iterator();
        while (it2.hasNext()) {
            keyManager.clearDocumentIndexes(it2.next());
        }
    }

    public synchronized TreeInfo find(String str) {
        return this.f100778a.get(new DocumentKey(str));
    }

    public synchronized String getDocumentURI(NodeInfo nodeInfo) {
        for (DocumentKey documentKey : this.f100778a.keySet()) {
            TreeInfo find = find(documentKey);
            if (find != null && find.getRootNode().equals(nodeInfo)) {
                return documentKey.toString();
            }
        }
        return null;
    }

    public boolean isMarkedUnavailable(DocumentKey documentKey) {
        return this.f100779b.contains(documentKey);
    }

    public void markUnavailable(DocumentKey documentKey) {
        this.f100779b.add(documentKey);
    }

    public synchronized TreeInfo find(DocumentKey documentKey) {
        return this.f100778a.get(documentKey);
    }

    public synchronized void add(TreeInfo treeInfo, DocumentKey documentKey) throws XPathException {
        if (documentKey != null) {
            TreeInfo treeInfo2 = this.f100778a.get(documentKey);
            if (treeInfo2 != null && treeInfo2 != treeInfo) {
                throw new XPathException("Cannot have two different documents with the same document-uri " + documentKey.getAbsoluteURI());
            }
            this.f100778a.put(documentKey, treeInfo);
        }
    }
}
