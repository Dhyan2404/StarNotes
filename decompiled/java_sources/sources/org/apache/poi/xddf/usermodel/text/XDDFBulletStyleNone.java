package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextNoBullet;

/* loaded from: classes13.dex */
public class XDDFBulletStyleNone implements XDDFBulletStyle {
    private CTTextNoBullet style;

    @Internal
    public XDDFBulletStyleNone(CTTextNoBullet cTTextNoBullet) {
        this.style = cTTextNoBullet;
    }

    @Internal
    public CTTextNoBullet getXmlObject() {
        return this.style;
    }
}
