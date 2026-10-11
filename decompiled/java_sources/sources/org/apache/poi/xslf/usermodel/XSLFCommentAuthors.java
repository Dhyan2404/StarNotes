package org.apache.poi.xslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthor;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommentAuthorList;
import org.openxmlformats.schemas.presentationml.x2006.main.CmAuthorLstDocument;

/* loaded from: classes13.dex */
public class XSLFCommentAuthors extends POIXMLDocumentPart {
    private final CTCommentAuthorList _authors;

    public XSLFCommentAuthors() {
        this._authors = CmAuthorLstDocument.Factory.newInstance().addNewCmAuthorLst();
    }

    public CTCommentAuthor getAuthorById(long j) {
        for (CTCommentAuthor cTCommentAuthor : this._authors.getCmAuthorArray()) {
            if (cTCommentAuthor.getId() == j) {
                return cTCommentAuthor;
            }
        }
        return null;
    }

    public CTCommentAuthorList getCTCommentAuthorsList() {
        return this._authors;
    }

    public XSLFCommentAuthors(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
        InputStream inputStream = getPackagePart().getInputStream();
        try {
            this._authors = CmAuthorLstDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getCmAuthorLst();
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
