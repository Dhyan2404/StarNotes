package org.apache.xerces.stax.events;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Comment;

/* loaded from: classes13.dex */
public final class CommentImpl extends plo implements Comment {

    /* renamed from: g */
    public final String f113451g;

    public CommentImpl(String str, Location location) {
        super(5, location);
        this.f113451g = str == null ? "" : str;
    }

    @Override // javax.xml.stream.events.Comment
    public String getText() {
        return this.f113451g;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write(XMLStreamWriterImpl.START_COMMENT);
            writer.write(this.f113451g);
            writer.write(XMLStreamWriterImpl.END_COMMENT);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
