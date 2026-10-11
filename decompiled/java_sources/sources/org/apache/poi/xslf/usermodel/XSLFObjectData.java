package org.apache.poi.xslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.usermodel.ObjectData;

/* loaded from: classes13.dex */
public final class XSLFObjectData extends POIXMLDocumentPart implements ObjectData {
    public XSLFObjectData() {
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public String getFileName() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public InputStream getInputStream() throws IOException {
        return getPackagePart().getInputStream();
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public String getOLE2ClassName() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.ObjectData
    public OutputStream getOutputStream() throws IOException {
        PackagePart packagePart = getPackagePart();
        packagePart.clear();
        return packagePart.getOutputStream();
    }

    @Override // org.apache.poi.ooxml.POIXMLDocumentPart
    public void prepareForCommit() {
    }

    public void setData(byte[] bArr) throws IOException {
        OutputStream outputStream = getPackagePart().getOutputStream();
        try {
            outputStream.write(bArr);
            outputStream.close();
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

    public XSLFObjectData(PackagePart packagePart) {
        super(packagePart);
    }
}
