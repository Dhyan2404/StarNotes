package org.apache.poi.xdgf.usermodel;

import com.microsoft.schemas.office.visio.x2012.main.MasterContentsDocument;
import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.xdgf.exceptions.XDGFException;
import org.apache.xmlbeans.XmlException;

/* loaded from: classes13.dex */
public class XDGFMasterContents extends XDGFBaseContents {
    protected XDGFMaster _master;

    public XDGFMasterContents(PackagePart packagePart) {
        super(packagePart);
    }

    public XDGFMaster getMaster() {
        return this._master;
    }

    @Override // org.apache.poi.xdgf.usermodel.XDGFBaseContents, org.apache.poi.ooxml.POIXMLDocumentPart
    public void onDocumentRead() {
        try {
            try {
                InputStream inputStream = getPackagePart().getInputStream();
                try {
                    this._pageContents = MasterContentsDocument.Factory.parse(inputStream).getMasterContents();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    super.onDocumentRead();
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
            } catch (IOException | XmlException e) {
                throw new POIXMLException(e);
            }
        } catch (POIXMLException e2) {
            throw XDGFException.wrap(this, e2);
        }
    }

    public void setMaster(XDGFMaster xDGFMaster) {
        this._master = xDGFMaster;
    }
}
