package org.apache.poi.xslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.presentationml.x2006.main.CTNotesMaster;
import org.openxmlformats.schemas.presentationml.x2006.main.NotesMasterDocument;

/* loaded from: classes13.dex */
public class XSLFNotesMaster extends XSLFSheet implements MasterSheet<XSLFShape, XSLFTextParagraph> {
    private CTNotesMaster _slide;

    public XSLFNotesMaster() {
        this._slide = prototype();
    }

    private static CTNotesMaster prototype() {
        InputStream resourceAsStream = XSLFNotesMaster.class.getResourceAsStream("notesMaster.xml");
        if (resourceAsStream == null) {
            throw new POIXMLException("Missing resource 'notesMaster.xml'");
        }
        try {
            try {
                return NotesMasterDocument.Factory.parse(resourceAsStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getNotesMaster();
            } finally {
                resourceAsStream.close();
            }
        } catch (Exception e) {
            throw new POIXMLException("Can't initialize NotesMaster", e);
        }
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public MasterSheet<XSLFShape, XSLFTextParagraph> getMasterSheet() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.MasterSheet
    public /* bridge */ /* synthetic */ SimpleShape<XSLFShape, XSLFTextParagraph> getPlaceholder(Placeholder placeholder) {
        return super.getPlaceholder(placeholder);
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public String getRootElementName() {
        return "notesMaster";
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public boolean isSupportTheme() {
        return true;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public String mapSchemeColor(String str) {
        String mapSchemeColor = mapSchemeColor(this._slide.getClrMap(), str);
        return mapSchemeColor == null ? str : mapSchemeColor;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public CTNotesMaster getXmlObject() {
        return this._slide;
    }

    public XSLFNotesMaster(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
        InputStream inputStream = getPackagePart().getInputStream();
        try {
            this._slide = NotesMasterDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getNotesMaster();
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }
}
