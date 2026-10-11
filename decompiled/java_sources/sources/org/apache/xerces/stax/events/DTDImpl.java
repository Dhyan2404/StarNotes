package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import java.util.Collections;
import java.util.List;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.DTD;

/* loaded from: classes13.dex */
public final class DTDImpl extends plo implements DTD {

    /* renamed from: g */
    public final String f113452g;

    public DTDImpl(String str, Location location) {
        super(11, location);
        this.f113452g = str == null ? null : str;
    }

    @Override // javax.xml.stream.events.DTD
    public String getDocumentTypeDeclaration() {
        return this.f113452g;
    }

    @Override // javax.xml.stream.events.DTD
    public List getEntities() {
        return Collections.EMPTY_LIST;
    }

    @Override // javax.xml.stream.events.DTD
    public List getNotations() {
        return Collections.EMPTY_LIST;
    }

    @Override // javax.xml.stream.events.DTD
    public Object getProcessedDTD() {
        return null;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write(this.f113452g);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
