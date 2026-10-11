package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EntityDeclaration;

/* loaded from: classes13.dex */
public final class EntityDeclarationImpl extends plo implements EntityDeclaration {

    /* renamed from: g */
    public final String f113453g;

    /* renamed from: h */
    public final String f113454h;

    /* renamed from: i */
    public final String f113455i;

    /* renamed from: j */
    public final String f113456j;

    public EntityDeclarationImpl(String str, String str2, String str3, String str4, Location location) {
        super(15, location);
        this.f113453g = str;
        this.f113454h = str2;
        this.f113455i = str3;
        this.f113456j = str4;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getBaseURI() {
        return null;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getName() {
        return this.f113455i;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getNotationName() {
        return this.f113456j;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getPublicId() {
        return this.f113453g;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getReplacementText() {
        return null;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getSystemId() {
        return this.f113454h;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write("<!ENTITY ");
            writer.write(this.f113455i);
            if (this.f113453g != null) {
                writer.write(" PUBLIC \"");
                writer.write(this.f113453g);
                writer.write("\" \"");
                writer.write(this.f113454h);
            } else {
                writer.write(" SYSTEM \"");
                writer.write(this.f113454h);
            }
            writer.write(34);
            if (this.f113456j != null) {
                writer.write(" NDATA ");
                writer.write(this.f113456j);
            }
            writer.write(62);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
