package net.p110sf.saxon.lib;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.expr.PJConverter;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public interface ExternalObjectModel {
    default ActiveSource getActiveSource(Source source) {
        return null;
    }

    Receiver getDocumentBuilder(Result result) throws XPathException;

    String getDocumentClassName();

    String getIdentifyingURI();

    JPConverter getJPConverter(Class cls, Configuration configuration);

    PJConverter getNodeListCreator(Object obj);

    PJConverter getPJConverter(Class<?> cls);

    NodeInfo unravel(Source source, Configuration configuration);
}
