package net.p110sf.saxon.ma.map;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class MapCreate extends SystemFunction {
    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        SequenceIterator iterate = sequenceArr[0].iterate();
        MapItem mapItem = (MapItem) iterate.next();
        if (mapItem == null) {
            return new HashTrieMap();
        }
        if (!(mapItem instanceof HashTrieMap)) {
            mapItem = HashTrieMap.copy(mapItem);
        }
        while (true) {
            MapItem mapItem2 = (MapItem) iterate.next();
            if (mapItem2 == null) {
                return mapItem;
            }
            for (KeyValuePair keyValuePair : mapItem2.keyValuePairs()) {
                if (mapItem.get(keyValuePair.key) != null) {
                    throw new XPathException("Duplicate key value (" + keyValuePair.key + ") in map", "XQDY0137");
                }
                mapItem = mapItem.addEntry(keyValuePair.key, keyValuePair.value);
            }
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getStreamerName() {
        return "NewMap";
    }
}
