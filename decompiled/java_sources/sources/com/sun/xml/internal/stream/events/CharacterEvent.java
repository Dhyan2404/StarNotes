package com.sun.xml.internal.stream.events;

import com.sun.org.apache.xerces.internal.util.XMLChar;
import java.io.Writer;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.Characters;

/* loaded from: classes10.dex */
public class CharacterEvent extends DummyEvent implements Characters {
    private boolean fCheckIfSpaceNeeded;
    private String fData;
    private boolean fIsCData;
    private boolean fIsIgnorableWhitespace;
    private boolean fIsSpace;

    public CharacterEvent() {
        this.fIsSpace = false;
        this.fCheckIfSpaceNeeded = true;
        this.fIsCData = false;
        init();
    }

    private void checkWhiteSpace() {
        String str = this.fData;
        if (str == null || str.length() <= 0) {
            return;
        }
        this.fIsSpace = true;
        for (int i = 0; i < this.fData.length(); i++) {
            if (!XMLChar.isSpace(this.fData.charAt(i))) {
                this.fIsSpace = false;
                return;
            }
        }
    }

    @Override // javax.xml.stream.events.Characters
    public String getData() {
        return this.fData;
    }

    public void init() {
        setEventType(4);
    }

    @Override // javax.xml.stream.events.Characters
    public boolean isCData() {
        return this.fIsCData;
    }

    @Override // javax.xml.stream.events.Characters
    public boolean isIgnorableWhiteSpace() {
        return this.fIsIgnorableWhitespace;
    }

    @Override // javax.xml.stream.events.Characters
    public boolean isWhiteSpace() {
        if (this.fCheckIfSpaceNeeded) {
            checkWhiteSpace();
            this.fCheckIfSpaceNeeded = false;
        }
        return this.fIsSpace;
    }

    public void setData(String str) {
        this.fData = str;
        this.fCheckIfSpaceNeeded = true;
    }

    public String toString() {
        if (!this.fIsCData) {
            return this.fData;
        }
        return "<![CDATA[" + getData() + "]]>";
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }

    public CharacterEvent(String str) {
        this.fIsSpace = false;
        this.fCheckIfSpaceNeeded = true;
        this.fIsCData = false;
        init();
        this.fData = str;
    }

    public CharacterEvent(String str, boolean z) {
        this.fIsSpace = false;
        this.fCheckIfSpaceNeeded = true;
        init();
        this.fData = str;
        this.fIsCData = z;
    }

    public CharacterEvent(String str, boolean z, boolean z2) {
        this.fIsSpace = false;
        this.fCheckIfSpaceNeeded = true;
        init();
        this.fData = str;
        this.fIsCData = z;
        this.fIsIgnorableWhitespace = z2;
    }
}
