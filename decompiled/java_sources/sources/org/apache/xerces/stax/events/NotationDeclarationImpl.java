package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.NotationDeclaration;

/* loaded from: classes13.dex */
public final class NotationDeclarationImpl extends plo implements NotationDeclaration {

    /* renamed from: g */
    public final String f113461g;

    /* renamed from: h */
    public final String f113462h;

    /* renamed from: i */
    public final String f113463i;

    public NotationDeclarationImpl(String str, String str2, String str3, Location location) {
        super(14, location);
        this.f113463i = str;
        this.f113462h = str2;
        this.f113461g = str3;
    }

    @Override // javax.xml.stream.events.NotationDeclaration
    public String getName() {
        return this.f113463i;
    }

    @Override // javax.xml.stream.events.NotationDeclaration
    public String getPublicId() {
        return this.f113462h;
    }

    @Override // javax.xml.stream.events.NotationDeclaration
    public String getSystemId() {
        return this.f113461g;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write("<!NOTATION ");
            if (this.f113462h != null) {
                writer.write("PUBLIC \"");
                writer.write(this.f113462h);
                writer.write(34);
                if (this.f113461g != null) {
                    writer.write(" \"");
                    writer.write(this.f113461g);
                }
                writer.write(this.f113463i);
                writer.write(62);
            }
            writer.write("SYSTEM \"");
            writer.write(this.f113461g);
            writer.write(34);
            writer.write(this.f113463i);
            writer.write(62);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
