package net.p110sf.saxon.stax;

import java.util.Properties;
import javax.xml.transform.Result;
import javax.xml.transform.stax.StAXResult;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.lib.StAXResultHandler;

/* loaded from: classes11.dex */
public class StAXResultHandlerImpl implements StAXResultHandler {
    @Override // net.p110sf.saxon.lib.StAXResultHandler
    public Receiver getReceiver(Result result, Properties properties) {
        StAXResult stAXResult = (StAXResult) result;
        if (stAXResult.getXMLStreamWriter() != null) {
            return new ReceiverToXMLStreamWriter(stAXResult.getXMLStreamWriter());
        }
        if (stAXResult.getXMLEventWriter() != null) {
            throw new UnsupportedOperationException("XMLEventWriter is currently not supported as a Saxon output destination");
        }
        throw new IllegalStateException("StAXResult contains neither an XMLStreamWriter nor XMLEventWriter");
    }
}
