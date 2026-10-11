package org.apache.poi.xslf.usermodel;

import com.onyx.android.sdk.neopdf.NeoPdfNative;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.draw.DrawPaint;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.PlaceableShape;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.Shape;
import org.apache.poi.sl.usermodel.ShapeContainer;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.model.PropertyFetcher;
import org.apache.poi.xslf.usermodel.XSLFPropertiesDelegate;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlTokenSource;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGradientFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSchemeColor;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeStyle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTSolidColorFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTStyleMatrix;
import org.openxmlformats.schemas.drawingml.x2006.main.CTStyleMatrixReference;
import org.openxmlformats.schemas.drawingml.x2006.main.STSchemeColorVal;
import org.openxmlformats.schemas.presentationml.x2006.main.CTBackgroundProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPicture;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPlaceholder;

/* loaded from: classes13.dex */
public abstract class XSLFShape implements Shape<XSLFShape, XSLFTextParagraph> {
    static final String DML_NS = "http://schemas.openxmlformats.org/drawingml/2006/main";
    static final String PML_NS = "http://schemas.openxmlformats.org/presentationml/2006/main";
    private CTNonVisualDrawingProps _nvPr;
    private XSLFShapeContainer _parent;
    private final XmlObject _shape;
    private final XSLFSheet _sheet;
    private CTShapeStyle _spStyle;
    private static final QName[] NV_CONTAINER = {new QName("http://schemas.openxmlformats.org/presentationml/2006/main", "nvSpPr"), new QName("http://schemas.openxmlformats.org/presentationml/2006/main", "nvCxnSpPr"), new QName("http://schemas.openxmlformats.org/presentationml/2006/main", "nvGrpSpPr"), new QName("http://schemas.openxmlformats.org/presentationml/2006/main", "nvPicPr"), new QName("http://schemas.openxmlformats.org/presentationml/2006/main", "nvGraphicFramePr")};
    private static final QName[] CNV_PROPS = {new QName("http://schemas.openxmlformats.org/presentationml/2006/main", "cNvPr")};

    @Internal
    /* loaded from: classes13.dex */
    public interface ReparseFactory<T extends XmlObject> {
        T parse(XMLStreamReader xMLStreamReader) throws XmlException;
    }

    public XSLFShape(XmlObject xmlObject, XSLFSheet xSLFSheet) {
        this._shape = xmlObject;
        this._sheet = xSLFSheet;
    }

    private static int getPlaceholderType(CTPlaceholder cTPlaceholder) {
        if (!cTPlaceholder.isSetType()) {
            return 2;
        }
        int intValue = cTPlaceholder.getType().intValue();
        if (intValue == 1 || intValue == 3) {
            return 1;
        }
        if (intValue == 5 || intValue == 6 || intValue == 7) {
            return cTPlaceholder.getType().intValue();
        }
        return 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Internal
    public void copy(XSLFShape xSLFShape) {
        if (!getClass().isInstance(xSLFShape)) {
            throw new IllegalArgumentException("Can't copy " + xSLFShape.getClass().getSimpleName() + " into " + getClass().getSimpleName());
        }
        if (this instanceof PlaceableShape) {
            PlaceableShape placeableShape = (PlaceableShape) this;
            Rectangle2D anchor = xSLFShape.getAnchor();
            if (anchor != null) {
                placeableShape.setAnchor(anchor);
            }
        }
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public void draw(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        DrawFactory.getInstance(graphics2D).drawShape(graphics2D, this, rectangle2D);
    }

    @Internal
    public boolean fetchShapeProperty(PropertyFetcher<?> propertyFetcher) {
        if (propertyFetcher.fetch(this)) {
            return true;
        }
        CTPlaceholder cTPlaceholder = getPlaceholderDetails().getCTPlaceholder(false);
        if (cTPlaceholder == null) {
            return false;
        }
        MasterSheet<XSLFShape, XSLFTextParagraph> masterSheet = getSheet().getMasterSheet();
        if (masterSheet instanceof XSLFSlideLayout) {
            XSLFSlideLayout xSLFSlideLayout = (XSLFSlideLayout) masterSheet;
            XSLFSimpleShape placeholder = xSLFSlideLayout.getPlaceholder(cTPlaceholder);
            if (placeholder != null && propertyFetcher.fetch(placeholder)) {
                return true;
            }
            masterSheet = xSLFSlideLayout.getMasterSheet();
        }
        if (!(masterSheet instanceof XSLFSlideMaster)) {
            return false;
        }
        XSLFSimpleShape placeholderByType = ((XSLFSlideMaster) masterSheet).getPlaceholderByType(getPlaceholderType(cTPlaceholder));
        return placeholderByType != null && propertyFetcher.fetch(placeholderByType);
    }

    public CTBackgroundProperties getBgPr() {
        return (CTBackgroundProperties) getChild(CTBackgroundProperties.class, "http://schemas.openxmlformats.org/presentationml/2006/main", "bgPr");
    }

    public CTStyleMatrixReference getBgRef() {
        return (CTStyleMatrixReference) getChild(CTStyleMatrixReference.class, "http://schemas.openxmlformats.org/presentationml/2006/main", "bgRef");
    }

    public CTNonVisualDrawingProps getCNvPr() {
        try {
            if (this._nvPr == null) {
                this._nvPr = (CTNonVisualDrawingProps) XPathHelper.selectProperty(getXmlObject(), CTNonVisualDrawingProps.class, null, NV_CONTAINER, CNV_PROPS);
            }
            return this._nvPr;
        } catch (XmlException unused) {
            return null;
        }
    }

    public <T extends XmlObject> T getChild(Class<T> cls, String str, String str2) {
        XmlCursor newCursor = getXmlObject().newCursor();
        try {
            T t = newCursor.toChild(str, str2) ? (T) newCursor.getObject() : null;
            if (newCursor.toChild("http://schemas.openxmlformats.org/drawingml/2006/main", str2)) {
                t = (T) newCursor.getObject();
            }
            newCursor.close();
            return t;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet] */
    public PaintStyle getFillPaint() {
        final XSLFTheme theme = getSheet().getTheme();
        final boolean z = getPlaceholder() != null;
        PropertyFetcher<PaintStyle> propertyFetcher = new PropertyFetcher<PaintStyle>() { // from class: org.apache.poi.xslf.usermodel.XSLFShape.1
            /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.ooxml.POIXMLDocumentPart] */
            @Override // org.apache.poi.xslf.model.PropertyFetcher
            public boolean fetch(XSLFShape xSLFShape) {
                PackagePart packagePart = xSLFShape.getSheet().getPackagePart();
                if (xSLFShape instanceof XSLFPictureShape) {
                    CTPicture cTPicture = (CTPicture) xSLFShape.getXmlObject();
                    if (cTPicture.getBlipFill() != null) {
                        setValue(XSLFShape.this.selectPaint(cTPicture.getBlipFill(), packagePart, (CTSchemeColor) null, theme));
                        return true;
                    }
                }
                XSLFPropertiesDelegate.XSLFFillProperties fillDelegate = XSLFPropertiesDelegate.getFillDelegate(xSLFShape.getShapeProperties());
                if (fillDelegate == null) {
                    return false;
                }
                if (fillDelegate.isSetNoFill()) {
                    setValue(null);
                    return true;
                }
                PaintStyle selectPaint = XSLFShape.this.selectPaint(fillDelegate, null, packagePart, theme, z);
                if (selectPaint != null) {
                    setValue(selectPaint);
                    return true;
                }
                ShapeContainer<XSLFShape, XSLFTextParagraph> parent = XSLFShape.this.getParent();
                if (parent instanceof XSLFGroupShape) {
                    CTGroupShapeProperties grpSpPr = ((XSLFGroupShape) parent).getGrpSpPr();
                    if (grpSpPr != null && grpSpPr.isSetNoFill()) {
                        setValue(null);
                        return true;
                    }
                    if (grpSpPr != null) {
                        selectPaint = XSLFShape.this.selectPaint(XSLFPropertiesDelegate.getFillDelegate(grpSpPr.getSolidFill()), null, packagePart, theme, z);
                    }
                    if (selectPaint != null) {
                        setValue(selectPaint);
                        return true;
                    }
                }
                CTShapeStyle spStyle = xSLFShape.getSpStyle();
                if (spStyle != null) {
                    selectPaint = XSLFShape.this.selectPaint(XSLFPropertiesDelegate.getFillDelegate(spStyle.getFillRef()), null, packagePart, theme, z);
                }
                if (selectPaint == null) {
                    return false;
                }
                setValue(selectPaint);
                return true;
            }
        };
        fetchShapeProperty(propertyFetcher);
        return propertyFetcher.getValue();
    }

    public CTGroupShapeProperties getGrpSpPr() {
        return (CTGroupShapeProperties) getChild(CTGroupShapeProperties.class, "http://schemas.openxmlformats.org/presentationml/2006/main", "grpSpPr");
    }

    public Placeholder getPlaceholder() {
        return getPlaceholderDetails().getPlaceholder();
    }

    public XSLFPlaceholderDetails getPlaceholderDetails() {
        return new XSLFPlaceholderDetails(this);
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public int getShapeId() {
        CTNonVisualDrawingProps cNvPr = getCNvPr();
        if (cNvPr != null) {
            return Math.toIntExact(cNvPr.getId());
        }
        throw new IllegalStateException("no underlying shape exists");
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public String getShapeName() {
        CTNonVisualDrawingProps cNvPr = getCNvPr();
        if (cNvPr == null) {
            return null;
        }
        return cNvPr.getName();
    }

    public XmlObject getShapeProperties() {
        return getChild(CTShapeProperties.class, "http://schemas.openxmlformats.org/presentationml/2006/main", "spPr");
    }

    public CTShapeStyle getSpStyle() {
        if (this._spStyle == null) {
            this._spStyle = (CTShapeStyle) getChild(CTShapeStyle.class, "http://schemas.openxmlformats.org/presentationml/2006/main", "style");
        }
        return this._spStyle;
    }

    public final XmlObject getXmlObject() {
        return this._shape;
    }

    public boolean isPlaceholder() {
        return getPlaceholderDetails().getCTPlaceholder(false) != null;
    }

    public PaintStyle selectPaint(XSLFPropertiesDelegate.XSLFFillProperties xSLFFillProperties, CTSchemeColor cTSchemeColor, PackagePart packagePart, XSLFTheme xSLFTheme, boolean z) {
        if (xSLFFillProperties != null && !xSLFFillProperties.isSetNoFill()) {
            if (xSLFFillProperties.isSetSolidFill()) {
                return selectPaint(xSLFFillProperties.getSolidFill(), cTSchemeColor, xSLFTheme);
            }
            if (xSLFFillProperties.isSetBlipFill()) {
                return selectPaint(xSLFFillProperties.getBlipFill(), packagePart, cTSchemeColor, xSLFTheme);
            }
            if (xSLFFillProperties.isSetGradFill()) {
                return selectPaint(xSLFFillProperties.getGradFill(), cTSchemeColor, xSLFTheme);
            }
            if (xSLFFillProperties.isSetMatrixStyle()) {
                return selectPaint(xSLFFillProperties.getMatrixStyle(), xSLFTheme, xSLFFillProperties.isLineStyle(), z);
            }
            if (cTSchemeColor != null) {
                return selectPaint(cTSchemeColor, xSLFTheme);
            }
        }
        return null;
    }

    public <T extends XmlObject> T selectProperty(Class<T> cls, String str) {
        XmlObject[] selectPath = getXmlObject().selectPath(str);
        if (selectPath.length != 0 && cls.isInstance(selectPath[0])) {
            return (T) selectPath[0];
        }
        return null;
    }

    public void setParent(XSLFShapeContainer xSLFShapeContainer) {
        this._parent = xSLFShapeContainer;
    }

    public void setPlaceholder(Placeholder placeholder) {
        getPlaceholderDetails().setPlaceholder(placeholder);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.apache.poi.sl.usermodel.Shape
    public ShapeContainer<XSLFShape, XSLFTextParagraph> getParent() {
        return this._parent;
    }

    @Override // org.apache.poi.sl.usermodel.Shape
    public Sheet<XSLFShape, XSLFTextParagraph> getSheet() {
        return this._sheet;
    }

    public PaintStyle selectPaint(CTSchemeColor cTSchemeColor, XSLFTheme xSLFTheme) {
        return DrawPaint.createSolidPaint(new XSLFColor(null, xSLFTheme, cTSchemeColor, this._sheet).getColorStyle());
    }

    public PaintStyle selectPaint(CTSolidColorFillProperties cTSolidColorFillProperties, CTSchemeColor cTSchemeColor, XSLFTheme xSLFTheme) {
        CTSchemeColor schemeClr = cTSolidColorFillProperties.getSchemeClr();
        if ((schemeClr == null || schemeClr.getVal() == null || STSchemeColorVal.PH_CLR.equals(schemeClr.getVal())) ? false : true) {
            cTSchemeColor = schemeClr;
        }
        return DrawPaint.createSolidPaint(new XSLFColor(cTSolidColorFillProperties, xSLFTheme, cTSchemeColor, this._sheet).getColorStyle());
    }

    public PaintStyle selectPaint(CTBlipFillProperties cTBlipFillProperties, PackagePart packagePart, CTSchemeColor cTSchemeColor, XSLFTheme xSLFTheme) {
        return new XSLFTexturePaint(this, cTBlipFillProperties, packagePart, cTSchemeColor, xSLFTheme, this._sheet);
    }

    public PaintStyle selectPaint(CTGradientFillProperties cTGradientFillProperties, CTSchemeColor cTSchemeColor, XSLFTheme xSLFTheme) {
        return new XSLFGradientPaint(cTGradientFillProperties, cTSchemeColor, xSLFTheme, this._sheet);
    }

    public PaintStyle selectPaint(CTStyleMatrixReference cTStyleMatrixReference, XSLFTheme xSLFTheme, boolean z, boolean z2) {
        long j;
        XmlTokenSource bgFillStyleLst;
        if (cTStyleMatrixReference == null) {
            return null;
        }
        long idx = cTStyleMatrixReference.getIdx();
        CTStyleMatrix fmtScheme = xSLFTheme.getXmlObject().getThemeElements().getFmtScheme();
        if (idx >= 1 && idx <= 999) {
            j = idx - 1;
            bgFillStyleLst = z ? fmtScheme.getLnStyleLst() : fmtScheme.getFillStyleLst();
        } else {
            if (idx < NeoPdfNative.ERROR_SECURITY_ADOBE_DRM) {
                return null;
            }
            j = idx - NeoPdfNative.ERROR_SECURITY_ADOBE_DRM;
            bgFillStyleLst = fmtScheme.getBgFillStyleLst();
        }
        XmlCursor newCursor = bgFillStyleLst.newCursor();
        try {
            XSLFPropertiesDelegate.XSLFFillProperties fillDelegate = newCursor.toChild(Math.toIntExact(j)) ? XSLFPropertiesDelegate.getFillDelegate(newCursor.getObject()) : null;
            newCursor.close();
            CTSchemeColor schemeClr = cTStyleMatrixReference.getSchemeClr();
            PaintStyle selectPaint = selectPaint(fillDelegate, schemeClr, xSLFTheme.getPackagePart(), xSLFTheme, z2);
            return (selectPaint != null || z2) ? selectPaint : DrawPaint.createSolidPaint(new XSLFColor(cTStyleMatrixReference, xSLFTheme, schemeClr, this._sheet).getColorStyle());
        } finally {
        }
    }
}
