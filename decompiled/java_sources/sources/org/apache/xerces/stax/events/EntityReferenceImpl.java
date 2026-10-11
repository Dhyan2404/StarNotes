package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.EntityDeclaration;
import javax.xml.stream.events.EntityReference;

/* loaded from: classes13.dex */
public final class EntityReferenceImpl extends plo implements EntityReference {

    /* renamed from: g */
    public final String f113457g;

    /* renamed from: h */
    public final EntityDeclaration f113458h;

    public EntityReferenceImpl(String str, EntityDeclaration entityDeclaration, Location location) {
        super(9, location);
        this.f113457g = str == null ? "" : str;
        this.f113458h = entityDeclaration;
    }

    @Override // javax.xml.stream.events.EntityReference
    public EntityDeclaration getDeclaration() {
        return this.f113458h;
    }

    @Override // javax.xml.stream.events.EntityReference
    public String getName() {
        return this.f113457g;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write(38);
            writer.write(this.f113457g);
            writer.write(59);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    public EntityReferenceImpl(EntityDeclaration entityDeclaration, Location location) {
        this(entityDeclaration != null ? entityDeclaration.getName() : "", entityDeclaration, location);
    }
}
