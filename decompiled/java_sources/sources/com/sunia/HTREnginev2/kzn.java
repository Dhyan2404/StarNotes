package com.sunia.HTREnginev2;

import com.github.promeg.pinyinhelper.PinyinDict;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import org.ahocorasick.trie.Trie;

/* loaded from: classes4.dex */
public final class kzn {
    /* renamed from: a */
    public static Trie m55353a(List<PinyinDict> list) {
        TreeSet treeSet = new TreeSet();
        Trie.TrieBuilder builder = Trie.builder();
        if (list == null) {
            return null;
        }
        for (PinyinDict pinyinDict : list) {
            if (pinyinDict != null && pinyinDict.words() != null) {
                treeSet.addAll(pinyinDict.words());
            }
        }
        if (treeSet.size() <= 0) {
            return null;
        }
        Iterator it2 = treeSet.iterator();
        while (it2.hasNext()) {
            builder.addKeyword((String) it2.next());
        }
        return builder.build();
    }
}
