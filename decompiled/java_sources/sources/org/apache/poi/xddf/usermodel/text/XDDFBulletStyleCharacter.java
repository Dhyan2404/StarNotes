package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharBullet;

/* loaded from: classes13.dex */
public class XDDFBulletStyleCharacter implements XDDFBulletStyle {
    private CTTextCharBullet style;

    @Internal
    public XDDFBulletStyleCharacter(CTTextCharBullet cTTextCharBullet) {
        this.style = cTTextCharBullet;
    }

    public String getCharacter() {
        return this.style.getChar();
    }

    @Internal
    public CTTextCharBullet getXmlObject() {
        return this.style;
    }

    public void setCharacter(String str) {
        this.style.setChar(str);
    }
}
