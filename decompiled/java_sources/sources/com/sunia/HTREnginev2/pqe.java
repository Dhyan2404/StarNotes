package com.sunia.HTREnginev2;

import javax.xml.transform.dom.DOMResult;
import org.apache.xerces.xni.XMLDocumentHandler;
import org.apache.xerces.xni.XNIException;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;

/* loaded from: classes13.dex */
public interface pqe extends XMLDocumentHandler {
    void cdata(CDATASection cDATASection) throws XNIException;

    void characters(Text text) throws XNIException;

    void comment(Comment comment) throws XNIException;

    void doctypeDecl(DocumentType documentType) throws XNIException;

    void processingInstruction(ProcessingInstruction processingInstruction) throws XNIException;

    void setDOMResult(DOMResult dOMResult);

    void setIgnoringCharacters(boolean z);
}
