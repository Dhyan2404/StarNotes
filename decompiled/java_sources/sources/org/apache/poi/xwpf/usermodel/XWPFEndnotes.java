package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEndnotes;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdn;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.EndnotesDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFtnEdn;

/* loaded from: classes13.dex */
public class XWPFEndnotes extends XWPFAbstractFootnotesEndnotes {
    protected CTEndnotes ctEndnotes;

    public XWPFEndnotes() {
    }

    public void addEndnote(XWPFEndnote xWPFEndnote) {
        this.listFootnote.add(xWPFEndnote);
        this.ctEndnotes.addNewEndnote().set(xWPFEndnote.getCTFtnEdn());
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTEndnotes.type.getName().getNamespaceURI(), "endnotes"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            this.ctEndnotes.save(outputStream, xmlOptions);
            if (outputStream != null) {
                outputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public XWPFEndnote createEndnote() {
        CTFtnEdn newInstance = CTFtnEdn.Factory.newInstance();
        newInstance.setType(STFtnEdn.NORMAL);
        XWPFEndnote addEndnote = addEndnote(newInstance);
        addEndnote.getCTFtnEdn().setId(getIdManager().nextId());
        return addEndnote;
    }

    public List<XWPFEndnote> getEndnotesList() {
        ArrayList arrayList = new ArrayList();
        Iterator<XWPFAbstractFootnoteEndnote> it2 = this.listFootnote.iterator();
        while (it2.hasNext()) {
            arrayList.add((XWPFEndnote) it2.next());
        }
        return arrayList;
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                this.ctEndnotes = EndnotesDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getEndnotes();
                if (inputStream != null) {
                    inputStream.close();
                }
                Iterator<CTFtnEdn> it2 = this.ctEndnotes.getEndnoteList().iterator();
                while (it2.hasNext()) {
                    this.listFootnote.add(new XWPFEndnote(it2.next(), this));
                }
            } finally {
            }
        } catch (XmlException unused) {
            throw new POIXMLException();
        }
    }

    public boolean removeEndnote(int i) {
        if (this.ctEndnotes.sizeOfEndnoteArray() < i - 1) {
            return false;
        }
        this.ctEndnotes.removeEndnote(i);
        this.listFootnote.remove(i);
        return true;
    }

    public boolean removeFootnote(int i) {
        if (this.ctEndnotes.sizeOfEndnoteArray() < i - 1) {
            return false;
        }
        this.ctEndnotes.removeEndnote(i);
        this.listFootnote.remove(i);
        return true;
    }

    @Internal
    public void setEndnotes(CTEndnotes cTEndnotes) {
        this.ctEndnotes = cTEndnotes;
    }

    public XWPFEndnotes(PackagePart packagePart) {
        super(packagePart);
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFAbstractFootnotesEndnotes
    public XWPFEndnote getFootnoteById(int i) {
        return (XWPFEndnote) super.getFootnoteById(i);
    }

    @Internal
    public XWPFEndnote addEndnote(CTFtnEdn cTFtnEdn) {
        CTFtnEdn addNewEndnote = this.ctEndnotes.addNewEndnote();
        addNewEndnote.set(cTFtnEdn);
        XWPFEndnote xWPFEndnote = new XWPFEndnote(addNewEndnote, this);
        this.listFootnote.add(xWPFEndnote);
        return xWPFEndnote;
    }
}
