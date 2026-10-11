package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes13.dex */
public class XDDFExtensionList {
    private CTOfficeArtExtensionList list;

    @Internal
    public XDDFExtensionList(CTOfficeArtExtensionList cTOfficeArtExtensionList) {
        this.list = cTOfficeArtExtensionList;
    }

    @Internal
    public CTOfficeArtExtensionList getXmlObject() {
        return this.list;
    }
}
