package org.apache.poi.ss.formula.udf;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import org.apache.poi.ss.formula.atp.AnalysisToolPak;
import org.apache.poi.ss.formula.functions.FreeRefFunction;

/* loaded from: classes13.dex */
public class AggregatingUDFFinder implements UDFFinder {
    public static final UDFFinder DEFAULT = new AggregatingUDFFinder(AnalysisToolPak.instance);
    private final Collection<UDFFinder> _usedToolPacks;

    public AggregatingUDFFinder(UDFFinder... uDFFinderArr) {
        ArrayList arrayList = new ArrayList(uDFFinderArr.length);
        this._usedToolPacks = arrayList;
        arrayList.addAll(Arrays.asList(uDFFinderArr));
    }

    public void add(UDFFinder uDFFinder) {
        this._usedToolPacks.add(uDFFinder);
    }

    @Override // org.apache.poi.ss.formula.udf.UDFFinder
    public FreeRefFunction findFunction(String str) {
        Iterator<UDFFinder> it2 = this._usedToolPacks.iterator();
        while (it2.hasNext()) {
            FreeRefFunction findFunction = it2.next().findFunction(str);
            if (findFunction != null) {
                return findFunction;
            }
        }
        return null;
    }
}
