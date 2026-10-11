package net.p110sf.saxon.event;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.trans.UncheckedXPathException;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class SequenceCopier {
    public static void copySequence(SequenceIterator sequenceIterator, final Receiver receiver) throws XPathException {
        receiver.open();
        try {
            SequenceTool.supply(sequenceIterator, new ItemConsumer() { // from class: com.sunia.HTREnginev2.xgm
                @Override // net.p110sf.saxon.om.ItemConsumer
                public final void accept(Item item) {
                    Receiver.this.append(item);
                }
            });
            receiver.close();
        } catch (UncheckedXPathException e) {
            throw e.getXPathException();
        }
    }
}
