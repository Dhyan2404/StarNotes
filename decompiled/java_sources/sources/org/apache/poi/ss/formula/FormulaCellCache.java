package org.apache.poi.ss.formula;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public final class FormulaCellCache {
    private final Map<Object, FormulaCellCacheEntry> _formulaEntriesByCell = new HashMap();

    /* loaded from: classes13.dex */
    public interface IEntryOperation {
        void processEntry(FormulaCellCacheEntry formulaCellCacheEntry);
    }

    public void applyOperation(IEntryOperation iEntryOperation) {
        Iterator<FormulaCellCacheEntry> it2 = this._formulaEntriesByCell.values().iterator();
        while (it2.hasNext()) {
            iEntryOperation.processEntry(it2.next());
        }
    }

    public void clear() {
        this._formulaEntriesByCell.clear();
    }

    public FormulaCellCacheEntry get(EvaluationCell evaluationCell) {
        return this._formulaEntriesByCell.get(evaluationCell.getIdentityKey());
    }

    public CellCacheEntry[] getCacheEntries() {
        FormulaCellCacheEntry[] formulaCellCacheEntryArr = new FormulaCellCacheEntry[this._formulaEntriesByCell.size()];
        this._formulaEntriesByCell.values().toArray(formulaCellCacheEntryArr);
        return formulaCellCacheEntryArr;
    }

    public void put(EvaluationCell evaluationCell, FormulaCellCacheEntry formulaCellCacheEntry) {
        this._formulaEntriesByCell.put(evaluationCell.getIdentityKey(), formulaCellCacheEntry);
    }

    public FormulaCellCacheEntry remove(EvaluationCell evaluationCell) {
        return this._formulaEntriesByCell.remove(evaluationCell.getIdentityKey());
    }
}
