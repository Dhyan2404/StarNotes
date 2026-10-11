package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBulletSizeFollowText;

/* loaded from: classes13.dex */
public class XDDFBulletSizeFollowText implements XDDFBulletSize {
    private CTTextBulletSizeFollowText follow;

    public XDDFBulletSizeFollowText() {
        this(CTTextBulletSizeFollowText.Factory.newInstance());
    }

    @Internal
    public CTTextBulletSizeFollowText getXmlObject() {
        return this.follow;
    }

    @Internal
    public XDDFBulletSizeFollowText(CTTextBulletSizeFollowText cTTextBulletSizeFollowText) {
        this.follow = cTTextBulletSizeFollowText;
    }
}
