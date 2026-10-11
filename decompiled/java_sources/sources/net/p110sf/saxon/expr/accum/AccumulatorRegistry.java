package net.p110sf.saxon.expr.accum;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import net.p110sf.saxon.functions.AccumulatorFn;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.StyleElement;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class AccumulatorRegistry {
    protected Map<StructuredQName, Accumulator> accumulatorsByName = new HashMap();

    public void addAccumulator(Accumulator accumulator) {
        if (accumulator.getAccumulatorName() != null) {
            this.accumulatorsByName.put(accumulator.getAccumulatorName(), accumulator);
        }
    }

    public Accumulator getAccumulator(StructuredQName structuredQName) {
        return this.accumulatorsByName.get(structuredQName);
    }

    public Iterable<Accumulator> getAllAccumulators() {
        return this.accumulatorsByName.values();
    }

    public Sequence getStreamingAccumulatorValue(NodeInfo nodeInfo, Accumulator accumulator, AccumulatorFn.Phase phase) throws XPathException {
        return null;
    }

    public Set<Accumulator> getUsedAccumulators(String str, StyleElement styleElement) {
        HashSet hashSet = new HashSet();
        String[] split = Whitespace.trim(str).split("[ \t\r\n]+");
        int i = 0;
        if (split.length == 1 && split[0].equals("#all")) {
            Iterator<Accumulator> it2 = getAllAccumulators().iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next());
            }
        } else if (split.length != 1 || !split[0].isEmpty()) {
            ArrayList arrayList = new ArrayList(split.length);
            int length = split.length;
            while (true) {
                if (i >= length) {
                    break;
                }
                String str2 = split[i];
                if (str2.equals("#all")) {
                    styleElement.compileErrorInAttribute("If use-accumulators contains the token '#all', it must be the only token", "XTSE3300", "use-accumulators");
                    break;
                }
                StructuredQName makeQName = styleElement.makeQName(str2, "XTSE3300", "use-accumulators");
                if (arrayList.contains(makeQName)) {
                    styleElement.compileErrorInAttribute("Duplicate QName in use-accumulators attribute: " + str2, "XTSE3300", "use-accumuators");
                    break;
                }
                Accumulator accumulator = getAccumulator(makeQName);
                if (accumulator == null) {
                    styleElement.compileErrorInAttribute("Unknown accumulator name: " + str2, "XTSE3300", "use-accumulators");
                    break;
                }
                arrayList.add(makeQName);
                hashSet.add(accumulator);
                i++;
            }
        }
        return hashSet;
    }
}
