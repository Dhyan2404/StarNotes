package com.sunia.HTREnginev2;

import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.stream.events.Characters;
import javax.xml.stream.events.Comment;
import javax.xml.stream.events.DTD;
import javax.xml.stream.events.EndDocument;
import javax.xml.stream.events.EntityReference;
import javax.xml.stream.events.ProcessingInstruction;
import javax.xml.stream.events.StartDocument;
import javax.xml.transform.stax.StAXResult;
import org.apache.xerces.xni.XMLDocumentHandler;

/* loaded from: classes13.dex */
public interface dxm extends XMLDocumentHandler {
    /* renamed from: a */
    void mo53852a(XMLStreamReader xMLStreamReader) throws XMLStreamException;

    /* renamed from: b */
    void mo53853b(XMLStreamReader xMLStreamReader) throws XMLStreamException;

    /* renamed from: c */
    void mo53854c(StAXResult stAXResult);

    /* renamed from: d */
    void mo53855d(Comment comment) throws XMLStreamException;

    /* renamed from: e */
    void mo53856e(Characters characters) throws XMLStreamException;

    /* renamed from: f */
    void mo53857f(XMLStreamReader xMLStreamReader) throws XMLStreamException;

    /* renamed from: g */
    void mo53858g(EntityReference entityReference) throws XMLStreamException;

    /* renamed from: h */
    void mo53859h(StartDocument startDocument) throws XMLStreamException;

    /* renamed from: i */
    void mo53860i(Characters characters) throws XMLStreamException;

    /* renamed from: j */
    void mo53861j(DTD dtd) throws XMLStreamException;

    /* renamed from: k */
    void mo53862k(ProcessingInstruction processingInstruction) throws XMLStreamException;

    /* renamed from: l */
    void mo53863l(XMLStreamReader xMLStreamReader) throws XMLStreamException;

    /* renamed from: m */
    void mo53864m(EndDocument endDocument) throws XMLStreamException;

    /* renamed from: n */
    void mo53865n(XMLStreamReader xMLStreamReader) throws XMLStreamException;

    void setIgnoringCharacters(boolean z);
}
