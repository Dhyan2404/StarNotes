package net.p110sf.saxon.expr;

import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;

@FunctionalInterface
/* loaded from: classes11.dex */
public interface ContextMappingFunction {
    SequenceIterator map(XPathContext xPathContext) throws XPathException;
}
