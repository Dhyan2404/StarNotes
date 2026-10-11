package org.apache.xerces.stax.events;

import com.sunia.HTREnginev2.plo;
import java.io.IOException;
import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Characters;
import org.apache.xerces.util.XMLChar;

/* loaded from: classes13.dex */
public final class CharactersImpl extends plo implements Characters {

    /* renamed from: g */
    public final String f113450g;

    public CharactersImpl(String str, int i, Location location) {
        super(i, location);
        this.f113450g = str == null ? "" : str;
    }

    @Override // javax.xml.stream.events.Characters
    public String getData() {
        return this.f113450g;
    }

    @Override // javax.xml.stream.events.Characters
    public boolean isCData() {
        return 12 == getEventType();
    }

    @Override // javax.xml.stream.events.Characters
    public boolean isIgnorableWhiteSpace() {
        return 6 == getEventType();
    }

    @Override // javax.xml.stream.events.Characters
    public boolean isWhiteSpace() {
        String str = this.f113450g;
        int length = str != null ? str.length() : 0;
        if (length == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (!XMLChar.isSpace(this.f113450g.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.sunia.HTREnginev2.plo, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
        try {
            writer.write(this.f113450g);
        } catch (IOException e) {
            throw new XMLStreamException(e);
        }
    }
}
