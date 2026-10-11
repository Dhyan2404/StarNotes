package net.p110sf.saxon.om;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class OneOrMore<T extends Item> extends ZeroOrMore<T> {
    public OneOrMore(T[] tArr) {
        super(Arrays.asList(tArr));
        if (tArr.length == 0) {
            throw new IllegalArgumentException();
        }
    }

    public static OneOrMore<Item> makeOneOrMore(Sequence sequence) throws XPathException {
        final ArrayList arrayList = new ArrayList();
        SequenceTool.supply(sequence.iterate(), new ItemConsumer() { // from class: com.sunia.HTREnginev2.jgk
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                arrayList.add(item);
            }
        });
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException();
        }
        return new OneOrMore<>(arrayList);
    }

    public OneOrMore(List<T> list) {
        super(list);
        if (list.isEmpty()) {
            throw new IllegalArgumentException();
        }
    }
}
