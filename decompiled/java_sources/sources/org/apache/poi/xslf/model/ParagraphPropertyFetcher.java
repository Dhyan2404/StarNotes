package org.apache.poi.xslf.model;

import java.util.function.Consumer;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.poi.ooxml.util.XPathHelper;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.util.Internal;
import org.apache.poi.xslf.model.ParagraphPropertyFetcher;
import org.apache.poi.xslf.usermodel.XSLFShape;
import org.apache.poi.xslf.usermodel.XSLFSlideMaster;
import org.apache.poi.xslf.usermodel.XSLFTextParagraph;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextListStyle;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraph;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties;

@Internal
/* loaded from: classes13.dex */
public final class ParagraphPropertyFetcher<T> extends PropertyFetcher<T> {
    static final String DML_NS = "http://schemas.openxmlformats.org/drawingml/2006/main";
    static final String PML_NS = "http://schemas.openxmlformats.org/presentationml/2006/main";
    int _level;
    private final ParaPropFetcher<T> fetcher;
    private final XSLFTextParagraph para;
    private static final QName[] TX_BODY = {new QName("http://schemas.openxmlformats.org/presentationml/2006/main", "txBody")};
    private static final QName[] LST_STYLE = {new QName("http://schemas.openxmlformats.org/drawingml/2006/main", "lstStyle")};

    /* loaded from: classes13.dex */
    public interface ParaPropFetcher<S> {
        void fetch(CTTextParagraphProperties cTTextParagraphProperties, Consumer<S> consumer);
    }

    public ParagraphPropertyFetcher(XSLFTextParagraph xSLFTextParagraph, ParaPropFetcher<T> paraPropFetcher) {
        this.para = xSLFTextParagraph;
        this._level = xSLFTextParagraph.getIndentLevel();
        this.fetcher = paraPropFetcher;
    }

    private void fetchMasterProp() {
        if (isSet()) {
            return;
        }
        fetchProp(this.para.getDefaultMasterStyle());
    }

    private void fetchParagraphProp() {
        fetchProp(this.para.getXmlObject().getPPr());
    }

    private void fetchProp(CTTextParagraphProperties cTTextParagraphProperties) {
        if (cTTextParagraphProperties != null) {
            this.fetcher.fetch(cTTextParagraphProperties, new Consumer() { // from class: com.sunia.HTREnginev2.yuk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ParagraphPropertyFetcher.this.setValue(obj);
                }
            });
        }
    }

    private void fetchShapeProp(XSLFShape xSLFShape) {
        if (isSet()) {
            return;
        }
        xSLFShape.fetchShapeProperty(this);
    }

    private void fetchThemeProp(XSLFShape xSLFShape) {
        if (isSet()) {
            return;
        }
        fetchProp(getThemeProps(xSLFShape, this._level));
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [org.apache.poi.xslf.usermodel.XMLSlideShow] */
    public static CTTextParagraphProperties getThemeProps(XSLFShape xSLFShape, int i) {
        CTTextListStyle defaultTextStyle;
        if (xSLFShape.isPlaceholder() || (defaultTextStyle = xSLFShape.getSheet().getSlideShow().getCTPresentation().getDefaultTextStyle()) == null) {
            return null;
        }
        switch (i) {
            case 0:
                return defaultTextStyle.getLvl1PPr();
            case 1:
                return defaultTextStyle.getLvl2PPr();
            case 2:
                return defaultTextStyle.getLvl3PPr();
            case 3:
                return defaultTextStyle.getLvl4PPr();
            case 4:
                return defaultTextStyle.getLvl5PPr();
            case 5:
                return defaultTextStyle.getLvl6PPr();
            case 6:
                return defaultTextStyle.getLvl7PPr();
            case 7:
                return defaultTextStyle.getLvl8PPr();
            case 8:
                return defaultTextStyle.getLvl9PPr();
            default:
                return null;
        }
    }

    public static CTTextParagraphProperties parse(XMLStreamReader xMLStreamReader) throws XmlException {
        CTTextParagraph parse = CTTextParagraph.Factory.parse(xMLStreamReader);
        if (parse == null || !parse.isSetPPr()) {
            return null;
        }
        return parse.getPPr();
    }

    public static CTTextParagraphProperties select(XSLFShape xSLFShape, int i) throws XmlException {
        return (CTTextParagraphProperties) XPathHelper.selectProperty(xSLFShape.getXmlObject(), CTTextParagraphProperties.class, new XSLFShape.ReparseFactory() { // from class: com.sunia.HTREnginev2.zuk
            @Override // org.apache.poi.xslf.usermodel.XSLFShape.ReparseFactory
            public final XmlObject parse(XMLStreamReader xMLStreamReader) {
                return ParagraphPropertyFetcher.parse(xMLStreamReader);
            }
        }, TX_BODY, LST_STYLE, new QName[]{new QName("http://schemas.openxmlformats.org/drawingml/2006/main", "lvl" + (i + 1) + "pPr")});
    }

    @Override // org.apache.poi.xslf.model.PropertyFetcher
    public boolean fetch(XSLFShape xSLFShape) {
        try {
            fetchProp(select(xSLFShape, this._level));
        } catch (XmlException unused) {
        }
        return isSet();
    }

    public T fetchProperty(XSLFShape xSLFShape) {
        Sheet<XSLFShape, XSLFTextParagraph> sheet = xSLFShape.getSheet();
        fetchParagraphProp();
        if (!(sheet instanceof XSLFSlideMaster)) {
            fetchShapeProp(xSLFShape);
            fetchThemeProp(xSLFShape);
        }
        fetchMasterProp();
        if (isSet()) {
            return getValue();
        }
        return null;
    }
}
