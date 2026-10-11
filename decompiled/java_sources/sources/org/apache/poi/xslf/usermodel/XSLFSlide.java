package org.apache.poi.xslf.usermodel;

import java.awt.Graphics2D;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.openxml4j.opc.PackagePart;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.usermodel.Background;
import org.apache.poi.sl.usermodel.MasterSheet;
import org.apache.poi.sl.usermodel.Notes;
import org.apache.poi.sl.usermodel.Placeholder;
import org.apache.poi.sl.usermodel.Slide;
import org.apache.poi.util.NotImplemented;
import org.apache.xmlbeans.XmlException;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGroupTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.presentationml.x2006.main.CTBackground;
import org.openxmlformats.schemas.presentationml.x2006.main.CTComment;
import org.openxmlformats.schemas.presentationml.x2006.main.CTCommonSlideData;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShape;
import org.openxmlformats.schemas.presentationml.x2006.main.CTGroupShapeNonVisual;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlide;
import org.openxmlformats.schemas.presentationml.x2006.main.SldDocument;

/* loaded from: classes13.dex */
public final class XSLFSlide extends XSLFSheet implements Slide<XSLFShape, XSLFTextParagraph> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private XSLFCommentAuthors _commentAuthors;
    private XSLFComments _comments;
    private XSLFSlideLayout _layout;
    private XSLFNotes _notes;
    private CTSlide _slide;

    public XSLFSlide() {
        this._slide = prototype();
    }

    private void parseSlide() throws POIXMLException {
        if (this._slide != null) {
            return;
        }
        try {
            InputStream inputStream = getPackagePart().getInputStream();
            try {
                this._slide = SldDocument.Factory.parse(DocumentHelper.readDocument(inputStream), POIXMLTypeLoader.DEFAULT_XML_OPTIONS).getSld();
                if (inputStream != null) {
                    inputStream.close();
                }
            } finally {
            }
        } catch (Exception e) {
            throw new POIXMLException(e);
        }
    }

    private static CTSlide prototype() {
        CTSlide newInstance = CTSlide.Factory.newInstance();
        CTGroupShape addNewSpTree = newInstance.addNewCSld().addNewSpTree();
        CTGroupShapeNonVisual addNewNvGrpSpPr = addNewSpTree.addNewNvGrpSpPr();
        CTNonVisualDrawingProps addNewCNvPr = addNewNvGrpSpPr.addNewCNvPr();
        addNewCNvPr.setId(1L);
        addNewCNvPr.setName("");
        addNewNvGrpSpPr.addNewCNvGrpSpPr();
        addNewNvGrpSpPr.addNewNvPr();
        CTGroupTransform2D addNewXfrm = addNewSpTree.addNewGrpSpPr().addNewXfrm();
        CTPoint2D addNewOff = addNewXfrm.addNewOff();
        addNewOff.setX(0);
        addNewOff.setY(0);
        CTPositiveSize2D addNewExt = addNewXfrm.addNewExt();
        addNewExt.setCx(0L);
        addNewExt.setCy(0L);
        CTPoint2D addNewChOff = addNewXfrm.addNewChOff();
        addNewChOff.setX(0);
        addNewChOff.setY(0);
        CTPositiveSize2D addNewChExt = addNewXfrm.addNewChExt();
        addNewChExt.setCx(0L);
        addNewChExt.setCy(0L);
        newInstance.addNewClrMapOvr().addNewMasterClrMapping();
        return newInstance;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public void draw(Graphics2D graphics2D) {
        DrawFactory.getInstance(graphics2D).getDrawable((Slide<?, ?>) this).draw(graphics2D);
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void free() {
        if (getPackagePart() != null) {
            this._slide = null;
            this._drawing = null;
            this._spTree = null;
            this._shapes = null;
            XSLFSlideLayout xSLFSlideLayout = this._layout;
            if (xSLFSlideLayout != null) {
                xSLFSlideLayout.free();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [org.apache.poi.ooxml.POIXMLDocumentPart, org.apache.poi.xslf.usermodel.XMLSlideShow] */
    public XSLFCommentAuthors getCommentAuthorsPart() {
        if (this._commentAuthors != null) {
            return null;
        }
        for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
            if (pOIXMLDocumentPart instanceof XSLFCommentAuthors) {
                XSLFCommentAuthors xSLFCommentAuthors = (XSLFCommentAuthors) pOIXMLDocumentPart;
                this._commentAuthors = xSLFCommentAuthors;
                return xSLFCommentAuthors;
            }
        }
        for (POIXMLDocumentPart pOIXMLDocumentPart2 : getSlideShow().getRelations()) {
            if (pOIXMLDocumentPart2 instanceof XSLFCommentAuthors) {
                XSLFCommentAuthors xSLFCommentAuthors2 = (XSLFCommentAuthors) pOIXMLDocumentPart2;
                this._commentAuthors = xSLFCommentAuthors2;
                return xSLFCommentAuthors2;
            }
        }
        return null;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public List<XSLFComment> getComments() {
        ArrayList arrayList = new ArrayList();
        XSLFComments commentsPart = getCommentsPart();
        XSLFCommentAuthors commentAuthorsPart = getCommentAuthorsPart();
        if (commentsPart != null) {
            for (CTComment cTComment : commentsPart.getCTCommentsList().getCmArray()) {
                arrayList.add(new XSLFComment(cTComment, commentAuthorsPart));
            }
        }
        return arrayList;
    }

    public XSLFComments getCommentsPart() {
        if (this._comments == null) {
            Iterator<POIXMLDocumentPart> it2 = getRelations().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                POIXMLDocumentPart next = it2.next();
                if (next instanceof XSLFComments) {
                    this._comments = (XSLFComments) next;
                    break;
                }
            }
        }
        return this._comments;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getFollowMasterBackground() {
        return false;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getFollowMasterColourScheme() {
        return false;
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public boolean getFollowMasterGraphics() {
        return this._slide.getShowMasterSp();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean getFollowMasterObjects() {
        return getFollowMasterGraphics();
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public String getRootElementName() {
        return "sld";
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFSlideLayout] */
    public XSLFSlideMaster getSlideMaster() {
        return getSlideLayout2().getSlideMaster();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public String getSlideName() {
        CTCommonSlideData cSld = getXmlObject().getCSld();
        if (cSld.isSetName()) {
            return cSld.getName();
        }
        return "Slide" + getSlideNumber();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public int getSlideNumber() {
        int indexOf = getSlideShow().getSlides().indexOf(this);
        return indexOf == -1 ? indexOf : indexOf + 1;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFSlideLayout] */
    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public XSLFTheme getTheme() {
        return getSlideLayout2().getSlideMaster().getTheme();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public String getTitle() {
        XSLFTextShape textShapeByType = getTextShapeByType(Placeholder.TITLE);
        if (textShapeByType == null) {
            return null;
        }
        return textShapeByType.getText();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFSlideLayout] */
    @Override // org.apache.poi.sl.usermodel.Slide
    public void init() {
        parseSlide();
        getSlideLayout2().init();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public boolean isHidden() {
        CTSlide xmlObject = getXmlObject();
        return xmlObject.isSetShow() && !xmlObject.getShow();
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public String mapSchemeColor(String str) {
        return mapSchemeColor(this._slide.getClrMapOvr(), str);
    }

    public void removeChartRelation(XSLFChart xSLFChart) {
        removeRelation(xSLFChart);
    }

    public void removeLayoutRelation(XSLFSlideLayout xSLFSlideLayout) {
        removeRelation((POIXMLDocumentPart) xSLFSlideLayout, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.poi.xslf.usermodel.XSLFNotes, org.apache.poi.ooxml.POIXMLDocumentPart] */
    public XSLFNotes removeNotes(XSLFNotesMaster xSLFNotesMaster) {
        ?? notes2 = getNotes2();
        if (notes2 == 0) {
            return null;
        }
        notes2.removeRelations(this, xSLFNotesMaster);
        removeRelation((POIXMLDocumentPart) notes2);
        this._notes = null;
        return notes2;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    @NotImplemented
    public void setFollowMasterBackground(boolean z) {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    @NotImplemented
    public void setFollowMasterColourScheme(boolean z) {
        throw new UnsupportedOperationException();
    }

    public void setFollowMasterGraphics(boolean z) {
        this._slide.setShowMasterSp(z);
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void setFollowMasterObjects(boolean z) {
        setFollowMasterGraphics(z);
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    public void setHidden(boolean z) {
        CTSlide xmlObject = getXmlObject();
        if (z) {
            xmlObject.setShow(false);
        } else if (xmlObject.isSetShow()) {
            xmlObject.unsetShow();
        }
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    @NotImplemented
    public void setNotes(Notes<XSLFShape, XSLFTextParagraph> notes) {
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet, org.apache.poi.sl.usermodel.Sheet
    public Background<XSLFShape, XSLFTextParagraph> getBackground() {
        CTBackground bg = this._slide.getCSld().getBg();
        if (bg != null) {
            return new XSLFBackground(bg, this);
        }
        return getMasterSheet().getBackground();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.xslf.usermodel.XSLFSlideLayout] */
    @Override // org.apache.poi.sl.usermodel.Sheet
    public XSLFSlideLayout getMasterSheet() {
        return getSlideLayout2();
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    /* renamed from: getNotes, reason: avoid collision after fix types in other method */
    public Notes<XSLFShape, XSLFTextParagraph> getNotes2() {
        if (this._notes == null) {
            for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
                if (pOIXMLDocumentPart instanceof XSLFNotes) {
                    this._notes = (XSLFNotes) pOIXMLDocumentPart;
                }
            }
        }
        XSLFNotes xSLFNotes = this._notes;
        if (xSLFNotes == null) {
            return null;
        }
        return xSLFNotes;
    }

    @Override // org.apache.poi.sl.usermodel.Slide
    /* renamed from: getSlideLayout, reason: avoid collision after fix types in other method */
    public MasterSheet<XSLFShape, XSLFTextParagraph> getSlideLayout2() {
        if (this._layout == null) {
            for (POIXMLDocumentPart pOIXMLDocumentPart : getRelations()) {
                if (pOIXMLDocumentPart instanceof XSLFSlideLayout) {
                    this._layout = (XSLFSlideLayout) pOIXMLDocumentPart;
                }
            }
        }
        XSLFSlideLayout xSLFSlideLayout = this._layout;
        if (xSLFSlideLayout != null) {
            return xSLFSlideLayout;
        }
        throw new IllegalArgumentException("SlideLayout was not found for " + this);
    }

    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public CTSlide getXmlObject() {
        return this._slide;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [org.apache.poi.xslf.usermodel.XSLFNotes, org.apache.poi.xslf.usermodel.XSLFSheet] */
    /* JADX WARN: Type inference failed for: r2v6, types: [org.apache.poi.xslf.usermodel.XMLSlideShow] */
    @Override // org.apache.poi.xslf.usermodel.XSLFSheet
    public XSLFSlide importContent(XSLFSheet xSLFSheet) {
        super.importContent(xSLFSheet);
        if (!(xSLFSheet instanceof XSLFSlide)) {
            return this;
        }
        XSLFSlide xSLFSlide = (XSLFSlide) xSLFSheet;
        ?? notes2 = xSLFSlide.getNotes2();
        if (notes2 != 0) {
            getSlideShow().getNotesSlide(this).importContent(notes2);
        }
        CTBackground bg = xSLFSlide._slide.getCSld().getBg();
        if (bg == null) {
            return this;
        }
        CTBackground bg2 = this._slide.getCSld().getBg();
        if (bg2 != null) {
            if (bg2.isSetBgPr() && bg2.getBgPr().isSetBlipFill()) {
                removeRelation(bg2.getBgPr().getBlipFill().getBlip().getEmbed());
            }
            this._slide.getCSld().unsetBg();
        }
        CTBackground cTBackground = (CTBackground) this._slide.getCSld().addNewBg().set(bg);
        if (bg.isSetBgPr() && bg.getBgPr().isSetBlipFill()) {
            cTBackground.getBgPr().getBlipFill().getBlip().setEmbed(importBlip(bg.getBgPr().getBlipFill().getBlip().getEmbed(), xSLFSheet));
        }
        return this;
    }

    public XSLFSlide(PackagePart packagePart) throws IOException, XmlException {
        super(packagePart);
        if (XmlBeanUtils.parseDocument()) {
            parseSlide();
        }
    }
}
