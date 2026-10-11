package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Attribute;

/* loaded from: classes13.dex */
public class AttributeImpl extends plo implements Attribute {

    /* renamed from: g */
    public final boolean f113446g;

    /* renamed from: h */
    public final QName f113447h;

    /* renamed from: i */
    public final String f113448i;

    /* renamed from: j */
    public final String f113449j;

    public AttributeImpl(int i, QName qName, String str, String str2, boolean z, Location location) {
        super(i, location);
        this.f113447h = qName;
        this.f113448i = str;
        this.f113449j = str2;
        this.f113446g = z;
    }

    @Override // javax.xml.stream.events.Attribute
    public final String getDTDType() {
        return this.f113449j;
    }

    @Override // javax.xml.stream.events.Attribute
    public final QName getName() {
        return this.f113447h;
    }

    @Override // javax.xml.stream.events.Attribute
    public final String getValue() {
        return this.f113448i;
    }

    @Override // javax.xml.stream.events.Attribute
    public final boolean isSpecified() {
        return this.f113446g;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public final void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            String prefix = this.f113447h.getPrefix();
            if (prefix != null && prefix.length() > 0) {
                writer.write(prefix);
                writer.write(58);
            }
            writer.write(this.f113447h.getLocalPart());
            writer.write("=\"");
            writer.write(this.f113448i);
            writer.write(34);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }

    public AttributeImpl(QName qName, String str, String str2, boolean z, Location location) {
        this(10, qName, str, str2, z, location);
    }
}
