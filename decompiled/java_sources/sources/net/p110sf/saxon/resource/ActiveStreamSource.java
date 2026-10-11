package net.p110sf.saxon.resource;

import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public class ActiveStreamSource extends StreamSource implements ActiveSource {
    public ActiveStreamSource(StreamSource streamSource) {
        setInputStream(streamSource.getInputStream());
        setReader(streamSource.getReader());
        setSystemId(streamSource.getSystemId());
        setPublicId(streamSource.getPublicId());
    }

    @Override // net.p110sf.saxon.lib.ActiveSource
    public void deliver(Receiver receiver, ParseOptions parseOptions) throws XPathException {
        boolean z;
        Configuration configuration = receiver.getPipelineConfiguration().getConfiguration();
        String systemId = getSystemId();
        InputSource inputSource = new InputSource(systemId);
        inputSource.setCharacterStream(getReader());
        inputSource.setByteStream(getInputStream());
        XMLReader obtainXMLReader = parseOptions.obtainXMLReader();
        if (obtainXMLReader == null) {
            obtainXMLReader = configuration.getSourceParser();
            if (parseOptions.getEntityResolver() != null && obtainXMLReader.getEntityResolver() == null) {
                obtainXMLReader.setEntityResolver(parseOptions.getEntityResolver());
            }
            z = true;
        } else {
            z = false;
        }
        ActiveSAXSource activeSAXSource = new ActiveSAXSource(obtainXMLReader, inputSource);
        activeSAXSource.setSystemId(systemId);
        activeSAXSource.deliver(receiver, parseOptions);
        if (z) {
            configuration.reuseSourceParser(obtainXMLReader);
        }
    }
}
