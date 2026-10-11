package org.apache.poi.convert.xwpf.handler;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.RunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.style.ParagraphStyles;
import org.apache.poi.style.TextRunStyles;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.CollectionUtils;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.IRunPart;
import org.apache.poi.xwpf.usermodel.ReviseState;
import org.apache.poi.xwpf.usermodel.XWPFAbstractFootnoteEndnote;
import org.apache.poi.xwpf.usermodel.XWPFAnchorPicture;
import org.apache.poi.xwpf.usermodel.XWPFBreak;
import org.apache.poi.xwpf.usermodel.XWPFCTText;
import org.apache.poi.xwpf.usermodel.XWPFEmpty;
import org.apache.poi.xwpf.usermodel.XWPFFieldRun;
import org.apache.poi.xwpf.usermodel.XWPFFldChar;
import org.apache.poi.xwpf.usermodel.XWPFFtnEdnRef;
import org.apache.poi.xwpf.usermodel.XWPFGraphicalFrame;
import org.apache.poi.xwpf.usermodel.XWPFHyperlinkRun;
import org.apache.poi.xwpf.usermodel.XWPFInlinePicture;
import org.apache.poi.xwpf.usermodel.XWPFPicture;
import org.apache.poi.xwpf.usermodel.XWPFPicturePart;
import org.apache.poi.xwpf.usermodel.XWPFRuby;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFStyle;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.values.XmlAnyTypeImpl;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObjectData;
import org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTAnchor;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTInline;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFldChar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdnRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTObject;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPTab;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRuby;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public class XWPFRunHandler extends XWPFIRunHandler implements Closeable {
    private List<IRunPart> partList;
    private ReviseState reviseState;
    private TextRunStyles textStyles;
    private XWPFRun xwpfRun;

    public XWPFRunHandler(XWPFContext xWPFContext, XWPFRun xWPFRun) {
        super(xWPFContext);
        this.partList = new ArrayList();
        this.xwpfRun = xWPFRun;
        init();
    }

    private CTPicture getCTPicture(CTGraphicalObject cTGraphicalObject) {
        if (WordToHtmlUtils.isNull(cTGraphicalObject)) {
            return null;
        }
        CTGraphicalObjectData graphicData = cTGraphicalObject.getGraphicData();
        if (WordToHtmlUtils.isNull(graphicData)) {
            return null;
        }
        XmlObject[] selectPath = graphicData.selectPath("declare namespace pic='" + CTPicture.type.getName().getNamespaceURI() + "' .//pic:pic");
        if (CollectionUtils.isNullOrEmpty(selectPath)) {
            return null;
        }
        for (XmlObject xmlObject : selectPath) {
            if (xmlObject instanceof CTPicture) {
                return (CTPicture) xmlObject;
            }
            try {
                return CTPicture.Factory.parse(xmlObject.xmlText());
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static ReviseState getReviseState(CTR ctr) {
        String nodeName = ctr.getDomNode().getParentNode().getNodeName();
        return "w:ins".equals(nodeName) ? ReviseState.INSERT : "w:del".equals(nodeName) ? ReviseState.DELETE : ReviseState.NORMAL;
    }

    public static XWPFIRunHandler handleRun(XWPFContext xWPFContext, XWPFRun xWPFRun, Element element, int i, int i2, int i3) {
        XWPFIRunHandler xWPFRunHandler;
        if (xWPFRun instanceof XWPFHyperlinkRun) {
            xWPFRunHandler = new XWPFHyperlinkHandler(xWPFContext, (XWPFHyperlinkRun) xWPFRun);
        } else if (xWPFRun instanceof XWPFFieldRun) {
            xWPFRunHandler = new XWPFFieldHandler(xWPFContext, (XWPFFieldRun) xWPFRun);
        } else {
            xWPFRunHandler = new XWPFRunHandler(xWPFContext, xWPFRun);
        }
        xWPFRunHandler.handleRun(element, i, i2, i3);
        xWPFRunHandler.close();
        return xWPFRunHandler;
    }

    private void handlerRunPart(IRunPart iRunPart, Element element, int i, int i2, int i3) {
        XWPFRunPartHandler.handleRunPart(this.context, iRunPart, element, this.textStyles, i, i2, i3);
    }

    private void init() {
        readReviseState();
        rebuildFromXml();
        initTextStyles();
    }

    private void initTextStyles() {
        RunPropertyListFetcher runPropertyListFetcher = new RunPropertyListFetcher(this.context.theme);
        ParagraphStyles peekLast = this.context.peekLast();
        CTRPr rPr = this.xwpfRun.getCTR().getRPr();
        if (!WordToHtmlUtils.isNull(rPr)) {
            runPropertyListFetcher.addFetcher(new RunPropertyFetcher(rPr));
            String style = this.xwpfRun.getStyle();
            if (!StringUtils.isNullOrEmpty(style)) {
                XWPFStyle style2 = this.context.styles.getStyle(style);
                if (!WordToHtmlUtils.isNull(style2)) {
                    Iterator<XWPFStyle> it2 = this.context.styles.getUsedStyleList(style2).iterator();
                    while (it2.hasNext()) {
                        CTRPr rPr2 = it2.next().getCTStyle().getRPr();
                        if (!WordToHtmlUtils.isNull(rPr2)) {
                            runPropertyListFetcher.addFetcher(new RunPropertyFetcher(rPr2));
                        }
                    }
                }
            }
        }
        if (!WordToHtmlUtils.isNull(peekLast)) {
            runPropertyListFetcher.addFetcher(peekLast.getTextStyles().getFetcher().getList());
        }
        this.textStyles = new TextRunStyles(peekLast, runPropertyListFetcher, isInsert());
    }

    private CTDrawing parseCTDrawing(XmlObject xmlObject) {
        try {
            return CTDrawing.Factory.parse(xmlObject.xmlText(), POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
            return null;
        }
    }

    private org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture parseCTPicture(XmlObject xmlObject) {
        try {
            return org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture.Factory.parse(xmlObject.xmlText(), POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
            return null;
        }
    }

    private void readReviseState() {
        this.reviseState = getReviseState(this.xwpfRun.getCTR());
    }

    private int rebuildFromDrawing(CTDrawing cTDrawing) {
        XmlCursor newCursor = cTDrawing.newCursor();
        newCursor.selectPath("./*");
        int i = 0;
        while (newCursor.toNextSelection()) {
            XmlObject object = newCursor.getObject();
            if (object instanceof CTAnchor) {
                CTAnchor cTAnchor = (CTAnchor) object;
                CTPicture cTPicture = getCTPicture(cTAnchor.getGraphic());
                if (!WordToHtmlUtils.isNull(cTPicture)) {
                    this.partList.add(new XWPFAnchorPicture(new XWPFPicture(cTPicture, this.xwpfRun), cTAnchor));
                    i++;
                }
            } else if (object instanceof CTInline) {
                CTInline cTInline = (CTInline) object;
                CTPicture cTPicture2 = getCTPicture(cTInline.getGraphic());
                if (!WordToHtmlUtils.isNull(cTPicture2)) {
                    this.partList.add(new XWPFInlinePicture(new XWPFPicture(cTPicture2, this.xwpfRun), cTInline));
                    i++;
                }
            }
        }
        return i;
    }

    private void rebuildFromXml() {
        if (isDelete()) {
            return;
        }
        rebuildFromXml(this.xwpfRun.getCTR());
    }

    public void buildFromXmlAnyType(XmlAnyTypeImpl xmlAnyTypeImpl) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        XmlCursor newCursor = xmlAnyTypeImpl.newCursor();
        newCursor.selectPath("./*");
        while (newCursor.toNextSelection()) {
            String localName = newCursor.getObject().getDomNode().getLocalName();
            if ("Choice".equals(localName)) {
                if (newCursor.toFirstChild()) {
                    CTDrawing parseCTDrawing = parseCTDrawing(newCursor.getObject());
                    if (!WordToHtmlUtils.isNull(parseCTDrawing)) {
                        arrayList.add(parseCTDrawing);
                    }
                }
            } else if ("Fallback".equals(localName) && newCursor.toFirstChild()) {
                org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture parseCTPicture = parseCTPicture(newCursor.getObject());
                if (!WordToHtmlUtils.isNull(parseCTPicture)) {
                    arrayList2.add(parseCTPicture);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (rebuildFromDrawing((CTDrawing) it2.next()) > 0) {
                return;
            }
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            XWPFGraphicalFrame xWPFGraphicalFrame = new XWPFGraphicalFrame((org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture) it3.next(), this.xwpfRun);
            if (!xWPFGraphicalFrame.getAnchor().isEmpty()) {
                this.partList.add(xWPFGraphicalFrame);
                return;
            }
        }
    }

    @Override // org.apache.poi.convert.xwpf.handler.XWPFIRunHandler, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        CloseUtils.close(this.xwpfRun);
        this.partList.clear();
    }

    public String getText() {
        StringBuilder sb = new StringBuilder();
        for (IRunPart iRunPart : this.partList) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(iRunPart.getText());
        }
        return sb.toString();
    }

    public boolean isDelete() {
        return this.reviseState == ReviseState.DELETE;
    }

    public boolean isInsert() {
        return this.reviseState == ReviseState.INSERT;
    }

    public String toString() {
        return "XWPFRunHandler{" + getText() + '}';
    }

    private void rebuildFromXml(XmlObject xmlObject) {
        XWPFAbstractFootnoteEndnote endnoteByID;
        XmlCursor newCursor = xmlObject.newCursor();
        newCursor.selectPath("./*");
        while (newCursor.toNextSelection()) {
            XmlObject object = newCursor.getObject();
            if (object instanceof CTRuby) {
                this.partList.add(new XWPFRuby((CTRuby) object));
            } else if (object instanceof CTText) {
                this.partList.add(new XWPFCTText((CTText) object));
            } else if (object instanceof CTEmpty) {
                this.partList.add(new XWPFEmpty((CTEmpty) object));
            } else if (object instanceof CTFldChar) {
                this.partList.add(new XWPFFldChar((CTFldChar) object));
            } else if (object instanceof CTPTab) {
                this.partList.add(new XWPFEmpty('\t'));
            } else if (object instanceof CTBr) {
                this.partList.add(new XWPFBreak((CTBr) object));
            } else if (object instanceof CTFtnEdnRef) {
                CTFtnEdnRef cTFtnEdnRef = (CTFtnEdnRef) object;
                int intValue = cTFtnEdnRef.getId().intValue();
                if (cTFtnEdnRef.getDomNode().getLocalName().equals("footnoteReference")) {
                    endnoteByID = this.xwpfRun.getDocument().getFootnoteByID(intValue);
                } else {
                    endnoteByID = this.xwpfRun.getDocument().getEndnoteByID(intValue);
                }
                if (endnoteByID != null) {
                    this.partList.add(new XWPFFtnEdnRef(endnoteByID, intValue));
                }
            } else if (object instanceof CTPicture) {
                this.partList.add(new XWPFPicturePart(new XWPFPicture((CTPicture) object, this.xwpfRun)));
            } else if (object instanceof CTDrawing) {
                rebuildFromDrawing((CTDrawing) object);
            } else if (object instanceof CTObject) {
                this.partList.add(new XWPFGraphicalFrame(object, this.xwpfRun));
            } else if (object instanceof org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture) {
                this.partList.add(new XWPFGraphicalFrame(object, this.xwpfRun));
            } else if (object instanceof XmlAnyTypeImpl) {
                buildFromXmlAnyType((XmlAnyTypeImpl) object);
            }
        }
        newCursor.close();
    }

    @Override // org.apache.poi.convert.htmlgen.RunHandler
    public void handleRun(Element element, int i, int i2, int i3) {
        int i4 = i3 + 1;
        int size = this.partList.size();
        Iterator<IRunPart> it2 = this.partList.iterator();
        int i5 = 0;
        while (it2.hasNext()) {
            handlerRunPart(it2.next(), element, i5, size, i4);
            i5++;
        }
    }
}
