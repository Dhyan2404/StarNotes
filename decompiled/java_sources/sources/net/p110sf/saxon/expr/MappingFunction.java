package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface MappingFunction {
    SequenceIterator map(Item item) throws XPathException;
}
