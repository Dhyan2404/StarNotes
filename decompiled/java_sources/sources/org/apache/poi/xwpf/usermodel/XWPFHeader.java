package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.xml.namespace.QName;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHdrFtr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTNumbering;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.HdrDocument;

/* loaded from: classes13.dex */
public class XWPFHeader extends XWPFHeaderFooter {
    public XWPFHeader() {
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void commit() throws IOException {
        XmlOptions xmlOptions = new XmlOptions(POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        xmlOptions.setSaveSyntheticDocumentElement(new QName(CTNumbering.type.getName().getNamespaceURI(), "hdr"));
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            super._getHdrFtr().save(outputStream, xmlOptions);
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

    @Override // org.apache.poi.xwpf.usermodel.IBody
    public BodyType getPartType() {
        return BodyType.HEADER;
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFHeaderFooter, org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() throws IOException {
        if (!XmlBeanUtils.parseDocument()) {
            return;
        }
        super.onDocumentRead();
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                CTHdrFtr hdr = HdrDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getHdr();
                this.headerFooter = hdr;
                XmlCursor newCursor = hdr.newCursor();
                try {
                    newCursor.selectPath("./*");
                    while (newCursor.toNextSelection()) {
                        XmlObject object = newCursor.getObject();
                        if (object instanceof CTP) {
                            XWPFParagraph xWPFParagraph = new XWPFParagraph((CTP) object, this);
                            this.paragraphs.add(xWPFParagraph);
                            this.bodyElements.add(xWPFParagraph);
                        }
                        if (object instanceof CTTbl) {
                            XWPFTable xWPFTable = new XWPFTable((CTTbl) object, this);
                            this.tables.add(xWPFTable);
                            this.bodyElements.add(xWPFTable);
                        }
                        if (object instanceof CTSdtBlock) {
                            this.bodyElements.add(new XWPFSDT((CTSdtBlock) object, this));
                        }
                    }
                    newCursor.close();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } finally {
                }
            } finally {
            }
        } catch (XmlException e) {
            throw new POIXMLException(e);
        }
    }

    public XWPFHeader(POIXMLDocumentPart pOIXMLDocumentPart, PackagePart packagePart) throws IOException {
        super(pOIXMLDocumentPart, packagePart);
    }

    public XWPFHeader(XWPFDocument xWPFDocument, CTHdrFtr cTHdrFtr) {
        super(xWPFDocument, cTHdrFtr);
        XmlCursor newCursor = this.headerFooter.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTP) {
                    this.paragraphs.add(new XWPFParagraph((CTP) object, this));
                }
                if (object instanceof CTTbl) {
                    this.tables.add(new XWPFTable((CTTbl) object, this));
                }
            }
            newCursor.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
