package net.p110sf.saxon.lib;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface ResultDocumentResolver {
    Receiver resolve(XPathContext xPathContext, String str, String str2, SerializationProperties serializationProperties) throws XPathException;
}
