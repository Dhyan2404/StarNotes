package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EndDocument;

/* loaded from: classes13.dex */
public final class EndDocumentImpl extends plo implements EndDocument {
    public EndDocumentImpl(Location location) {
        super(8, location);
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }
}
