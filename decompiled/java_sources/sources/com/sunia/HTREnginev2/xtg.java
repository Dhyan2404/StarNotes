package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.sqf;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.TreeSet;
import org.ahocorasick.trie.Emit;

/* loaded from: classes4.dex */
public final class xtg implements tdm {

    /* renamed from: a */
    public static final sqf.C14413a f90055a = new sqf.C14413a();

    @Override // com.sunia.HTREnginev2.tdm
    /* renamed from: a */
    public List<Emit> mo57365a(Collection<Emit> collection) {
        if (collection == null) {
            return null;
        }
        ArrayList<Emit> arrayList = new ArrayList(collection);
        Collections.sort(arrayList, f90055a);
        TreeSet treeSet = new TreeSet();
        int i = -1;
        for (Emit emit : arrayList) {
            if (emit.getStart() <= i || emit.getEnd() <= i) {
                treeSet.add(emit);
            } else {
                i = emit.getEnd();
            }
        }
        arrayList.removeAll(treeSet);
        return arrayList;
    }
}
