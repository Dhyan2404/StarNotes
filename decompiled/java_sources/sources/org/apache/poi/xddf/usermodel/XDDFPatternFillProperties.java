package org.apache.poi.xddf.usermodel;

import org.apache.poi.util.Internal;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPatternFillProperties;

/* loaded from: classes13.dex */
public class XDDFPatternFillProperties implements XDDFFillProperties {
    private CTPatternFillProperties props;

    public XDDFPatternFillProperties() {
        this(CTPatternFillProperties.Factory.newInstance());
    }

    public XDDFColor getBackgroundColor() {
        if (this.props.isSetBgClr()) {
            return XDDFColor.forColorContainer(this.props.getBgClr());
        }
        return null;
    }

    public XDDFColor getForegroundColor() {
        if (this.props.isSetFgClr()) {
            return XDDFColor.forColorContainer(this.props.getFgClr());
        }
        return null;
    }

    public PresetPattern getPresetPattern() {
        if (this.props.isSetPrst()) {
            return PresetPattern.valueOf(this.props.getPrst());
        }
        return null;
    }

    @Internal
    public CTPatternFillProperties getXmlObject() {
        return this.props;
    }

    public void setBackgroundColor(XDDFColor xDDFColor) {
        if (xDDFColor != null) {
            this.props.setBgClr(xDDFColor.getColorContainer());
        } else if (this.props.isSetBgClr()) {
            this.props.unsetBgClr();
        }
    }

    public void setForegroundColor(XDDFColor xDDFColor) {
        if (xDDFColor != null) {
            this.props.setFgClr(xDDFColor.getColorContainer());
        } else if (this.props.isSetFgClr()) {
            this.props.unsetFgClr();
        }
    }

    public void setPresetPattern(PresetPattern presetPattern) {
        if (presetPattern != null) {
            this.props.setPrst(presetPattern.underlying);
        } else if (this.props.isSetPrst()) {
            this.props.unsetPrst();
        }
    }

    public XDDFPatternFillProperties(CTPatternFillProperties cTPatternFillProperties) {
        this.props = cTPatternFillProperties;
    }
}
