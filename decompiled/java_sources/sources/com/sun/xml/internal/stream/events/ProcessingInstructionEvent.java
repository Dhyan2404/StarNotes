package com.sun.xml.internal.stream.events;

import java.io.Writer;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.ProcessingInstruction;

/* loaded from: classes10.dex */
public class ProcessingInstructionEvent extends DummyEvent implements ProcessingInstruction {
    private String fContent;
    private String fName;

    public ProcessingInstructionEvent() {
        init();
    }

    @Override // javax.xml.stream.events.ProcessingInstruction
    public String getData() {
        return this.fContent;
    }

    @Override // javax.xml.stream.events.ProcessingInstruction
    public String getTarget() {
        return this.fName;
    }

    public void init() {
        setEventType(3);
    }

    public void setData(String str) {
        this.fContent = str;
    }

    public void setTarget(String str) {
        this.fName = str;
    }

    public String toString() {
        String str = this.fContent;
        if (str != null && this.fName != null) {
            return "<?" + this.fName + this.fContent + "?>";
        }
        if (this.fName != null) {
            return "<?" + this.fName + "?>";
        }
        if (str == null) {
            return "<??>";
        }
        return "<?" + this.fContent + "?>";
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public void writeAsEncodedUnicode(Writer writer) throws XMLStreamException {
    }

    public ProcessingInstructionEvent(String str, String str2) {
        this(str, str2, null);
    }

    public ProcessingInstructionEvent(String str, String str2, Location location) {
        init();
        this.fName = str;
        this.fContent = str2;
        setLocation(location);
    }
}
