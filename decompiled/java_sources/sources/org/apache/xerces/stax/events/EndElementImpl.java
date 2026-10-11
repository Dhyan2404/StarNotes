package org.apache.xerces.stax.events;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.jnf;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EndElement;

/* loaded from: classes13.dex */
public final class EndElementImpl extends jnf implements EndElement {
    public EndElementImpl(QName qName, Iterator it2, Location location) {
        super(qName, false, it2, location);
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write(XMLStreamWriterImpl.OPEN_END_TAG);
            QName name = getName();
            String prefix = name.getPrefix();
            if (prefix != null && prefix.length() > 0) {
                writer.write(prefix);
                writer.write(58);
            }
            writer.write(name.getLocalPart());
            writer.write(62);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
