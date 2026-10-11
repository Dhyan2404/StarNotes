package org.apache.poi.xslf.usermodel;

import com.microsoft.schemas.office.drawing.x2008.diagram.DrawingDocument;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.xmlbeans.XmlException;

/* loaded from: classes13.dex */
public class XSLFDiagramDrawing extends POIXMLDocumentPart {
    private final DrawingDocument _drawingDoc;

    public XSLFDiagramDrawing() {
        this._drawingDoc = DrawingDocument.Factory.newInstance();
    }

    private static DrawingDocument readPackagePart(PackagePart packagePart) throws IOException, XmlException {
        InputStream inputStream = packagePart.getInputStream();
        try {
            DrawingDocument parse = DrawingDocument.Factory.parse(inputStream);
            if (inputStream != null) {
                inputStream.close();
            }
            return parse;
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

    public DrawingDocument getDrawingDocument() {
        return this._drawingDoc;
    }

    public XSLFDiagramDrawing(PackagePart packagePart) throws XmlException, IOException {
        super(packagePart);
        this._drawingDoc = readPackagePart(packagePart);
    }
}
