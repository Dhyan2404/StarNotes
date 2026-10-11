package org.apache.xerces.stax.events;

import com.caverock.androidsvg.SVGParser;
import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.StartDocument;

/* loaded from: classes13.dex */
public final class StartDocumentImpl extends plo implements StartDocument {

    /* renamed from: g */
    public final String f113466g;

    /* renamed from: h */
    public final boolean f113467h;

    /* renamed from: i */
    public final String f113468i;

    /* renamed from: j */
    public final boolean f113469j;

    /* renamed from: k */
    public final boolean f113470k;

    public StartDocumentImpl(String str, boolean z, boolean z2, boolean z3, String str2, Location location) {
        super(7, location);
        this.f113466g = str;
        this.f113467h = z;
        this.f113469j = z2;
        this.f113470k = z3;
        this.f113468i = str2;
    }

    @Override // javax.xml.stream.events.StartDocument
    public boolean encodingSet() {
        return this.f113467h;
    }

    @Override // javax.xml.stream.events.StartDocument
    public String getCharacterEncodingScheme() {
        return this.f113466g;
    }

    @Override // javax.xml.stream.events.StartDocument
    public String getSystemId() {
        return getLocation().getSystemId();
    }

    @Override // javax.xml.stream.events.StartDocument
    public String getVersion() {
        return this.f113468i;
    }

    @Override // javax.xml.stream.events.StartDocument
    public boolean isStandalone() {
        return this.f113469j;
    }

    @Override // javax.xml.stream.events.StartDocument
    public boolean standaloneSet() {
        return this.f113470k;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write("<?xml version=\"");
            String str = this.f113468i;
            writer.write((str == null || str.length() <= 0) ? "1.0" : this.f113468i);
            writer.write(34);
            if (encodingSet()) {
                writer.write(" encoding=\"");
                writer.write(this.f113466g);
                writer.write(34);
            }
            if (standaloneSet()) {
                writer.write(" standalone=\"");
                writer.write(this.f113469j ? "yes" : SVGParser.f16048t);
                writer.write(34);
            }
            writer.write("?>");
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
