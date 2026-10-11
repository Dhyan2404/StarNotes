package org.apache.poi.xslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.openxml4j.opc.PackagingURIHelper;
import org.apache.poi.sl.usermodel.MetroShapeProvider;
import org.apache.poi.util.Internal;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape;

@Internal
/* loaded from: classes13.dex */
public class XSLFMetroShape implements MetroShapeProvider {
    @Override // org.apache.poi.sl.usermodel.MetroShapeProvider
    public XSLFShape parseShape(byte[] bArr) throws IOException {
        try {
            OPCPackage open = OPCPackage.open(new UnsynchronizedByteArrayInputStream(bArr));
            try {
                PackagePart part = open.getPart(PackagingURIHelper.createPartName("/drs/shapexml.xml"));
                if (part == null) {
                    open.close();
                    return null;
                }
                InputStream inputStream = part.getInputStream();
                try {
                    XSLFShape xSLFShape = new XSLFGroupShape(CTGroupShape.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS), null).getShapes().get(0);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    open.close();
                    return xSLFShape;
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (open != null) {
                        try {
                            open.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (InvalidFormatException | XmlException e) {
            throw new IOException("can't parse metro shape", e);
        }
    }
}
