package org.apache.poi.xslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.usermodel.Background;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextListStyle;
import org.openxmlformats.schemas.presentationml.x2006.main.CTBackground;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMaster;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideMasterTextStyles;
import org.openxmlformats.schemas.presentationml.x2006.main.SldMasterDocument;

/* loaded from: classes13.dex */
public class XSLFSlideMaster extends XSLFSheet implements MasterSheet<XSLFShape, XSLFTextParagraph> {
    private Map<String, XSLFSlideLayout> _layouts;
    private CTSlideMaster _slide;

    /* renamed from: org.apache.poi.xslf.usermodel.XSLFSlideMaster$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199111 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$Placeholder;

        static {
            int[] iArr = new int[Placeholder.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$Placeholder = iArr;
            try {
                iArr[Placeholder.TITLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.CENTERED_TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.SUBTITLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$Placeholder[Placeholder.BODY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public XSLFSlideMaster(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
        if (XmlBeanUtils.parseDocument()) {
            parseSlideMaster();
        }
    }

    private Map<String, XSLFSlideLayout> getLayouts() {
        if (this._layouts == null) {
            this._layouts = new HashMap();
            for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
                if (pOIXMLDocumentPart instanceof XSLFSlideLayout) {
                    XSLFSlideLayout xSLFSlideLayout = (XSLFSlideLayout) pOIXMLDocumentPart;
                    this._layouts.put(xSLFSlideLayout.getName().toLowerCase(Locale.ROOT), xSLFSlideLayout);
                }
            }
        }
        return this._layouts;
    }

    private void parseSlideMaster() {
        if (this._slide != null) {
            return;
        }
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                this._slide = SldMasterDocument.Factory.parse(inputStream, POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getSldMaster();
                if (inputStream != null) {
                    inputStream.close();
                }
            } finally {
            }
        } catch (Exception e) {
            throw new POIXMLException(e);
        }
    }

    public void free() {
        this._slide = null;
        this._drawing = null;
        this._spTree = null;
        this._shapes = null;
    }

    public XSLFSlideLayout getLayout(SlideLayout slideLayout) {
        for (XSLFSlideLayout xSLFSlideLayout : getLayouts().values()) {
            if (xSLFSlideLayout.getType() == slideLayout) {
                return xSLFSlideLayout;
            }
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.Sheet
    public XSLFSlideMaster getMasterSheet() {
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.MasterSheet
    public /* bridge */ /* synthetic */ SimpleShape<XSLFShape, XSLFTextParagraph> getPlaceholder(Placeholder placeholder) {
        return super.getPlaceholder(placeholder);
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public String getRootElementName() {
        return "sldMaster";
    }

    public XSLFSlideLayout[] getSlideLayouts() {
        return (XSLFSlideLayout[]) getLayouts().values().toArray(new XSLFSlideLayout[this._layouts.size()]);
    }

    public CTTextListStyle getTextProperties(Placeholder placeholder) {
        CTSlideMasterTextStyles txStyles = getXmlObject().getTxStyles();
        int i = C199111.$SwitchMap$org$apache$poi$sl$usermodel$Placeholder[placeholder.ordinal()];
        return (i == 1 || i == 2 || i == 3) ? txStyles.getTitleStyle() : i != 4 ? txStyles.getOtherStyle() : txStyles.getBodyStyle();
    }

    public void init() {
        parseSlideMaster();
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public boolean isSupportTheme() {
        return true;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public String mapSchemeColor(String str) {
        String mapSchemeColor = mapSchemeColor(this._slide.getClrMap(), str);
        return mapSchemeColor == null ? str : mapSchemeColor;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public Background<XSLFShape, XSLFTextParagraph> getBackground() {
        CTBackground bg = this._slide.getCSld().getBg();
        if (bg != null) {
            return new XSLFBackground(bg, this);
        }
        return null;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public CTSlideMaster getXmlObject() {
        return this._slide;
    }

    public XSLFSlideLayout getLayout(String str) {
        return getLayouts().get(str.toLowerCase(Locale.ROOT));
    }
}
