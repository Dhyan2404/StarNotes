package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.ProcessingInstruction;

/* loaded from: classes13.dex */
public final class ProcessingInstructionImpl extends plo implements ProcessingInstruction {

    /* renamed from: g */
    public final String f113464g;

    /* renamed from: h */
    public final String f113465h;

    public ProcessingInstructionImpl(String str, String str2, Location location) {
        super(3, location);
        this.f113464g = str == null ? "" : str;
        this.f113465h = str2;
    }

    @Override // javax.xml.stream.events.ProcessingInstruction
    public String getData() {
        return this.f113465h;
    }

    @Override // javax.xml.stream.events.ProcessingInstruction
    public String getTarget() {
        return this.f113464g;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write("<?");
            writer.write(this.f113464g);
            String str = this.f113465h;
            if (str != null && str.length() > 0) {
                writer.write(32);
                writer.write(this.f113465h);
            }
            writer.write("?>");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
