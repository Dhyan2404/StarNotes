package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer;

/* loaded from: classes13.dex */
public class XDDFEffectContainer {
    private CTEffectContainer container;

    @Internal
    public XDDFEffectContainer(CTEffectContainer cTEffectContainer) {
        this.container = cTEffectContainer;
    }

    @Internal
    public CTEffectContainer getXmlObject() {
        return this.container;
    }
}
