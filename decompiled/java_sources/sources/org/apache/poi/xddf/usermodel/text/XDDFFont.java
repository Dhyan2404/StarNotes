package org.apache.poi.xddf.usermodel.text;

import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;

/* loaded from: classes13.dex */
public class XDDFFont {
    private CTTextFont font;
    private FontGroup group;

    public XDDFFont(FontGroup fontGroup, String str, Byte b, Byte b2, byte[] bArr) {
        this(fontGroup, CTTextFont.Factory.newInstance());
        if (str == null) {
            if (this.font.getTypeface() != null && !this.font.getTypeface().equals("")) {
                this.font.setTypeface("");
            }
        } else {
            this.font.setTypeface(str);
        }
        if (b == null) {
            if (this.font.isSetCharset()) {
                this.font.unsetCharset();
            }
        } else {
            this.font.setCharset(b.byteValue());
        }
        if (b2 == null) {
            if (this.font.isSetPitchFamily()) {
                this.font.unsetPitchFamily();
            }
        } else {
            this.font.setPitchFamily(b2.byteValue());
        }
        if (bArr != null && bArr.length != 0) {
            this.font.setPanose(bArr);
        } else if (this.font.isSetPanose()) {
            this.font.unsetPanose();
        }
    }

    public static XDDFFont unsetFontForGroup(FontGroup fontGroup) {
        return new XDDFFont(fontGroup, null);
    }

    public Byte getCharset() {
        if (this.font.isSetCharset()) {
            return Byte.valueOf(this.font.getCharset());
        }
        return null;
    }

    public FontGroup getGroup() {
        return this.group;
    }

    public byte[] getPanose() {
        if (this.font.isSetPanose()) {
            return this.font.getPanose();
        }
        return null;
    }

    public Byte getPitchFamily() {
        if (this.font.isSetPitchFamily()) {
            return Byte.valueOf(this.font.getPitchFamily());
        }
        return null;
    }

    public String getTypeface() {
        return this.font.getTypeface();
    }

    @Internal
    public CTTextFont getXmlObject() {
        return this.font;
    }

    @Internal
    public XDDFFont(FontGroup fontGroup, CTTextFont cTTextFont) {
        this.group = fontGroup;
        this.font = cTTextFont;
    }
}
