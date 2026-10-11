package org.apache.poi.convert.xwpf.handler;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.TocUtils;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.Constants;
import org.apache.poi.convert.htmlgen.ParagraphHandler;
import org.apache.poi.convert.xwpf.handler.NumberingHandler;
import org.apache.poi.convert.xwpf.property.NumberingParagraphPropertyFetcher;
import org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher;
import org.apache.poi.convert.xwpf.property.ParagraphPropertyListFetcher;
import org.apache.poi.convert.xwpf.property.ParagraphRunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;
import org.apache.poi.style.ParagraphStyles;
import org.apache.poi.style.TextStyles;
import org.apache.poi.util.CloseUtils;
import org.apache.poi.util.CollectionUtils;
import org.apache.poi.util.StringUtils;
import org.apache.poi.xwpf.usermodel.IBody;
import org.apache.poi.xwpf.usermodel.IBodyElement;
import org.apache.poi.xwpf.usermodel.IRunElement;
import org.apache.poi.xwpf.usermodel.ReviseState;
import org.apache.poi.xwpf.usermodel.XWPFBookmarkRun;
import org.apache.poi.xwpf.usermodel.XWPFCommentRun;
import org.apache.poi.xwpf.usermodel.XWPFFieldRun;
import org.apache.poi.xwpf.usermodel.XWPFHyperlinkRun;
import org.apache.poi.xwpf.usermodel.XWPFMarkupRun;
import org.apache.poi.xwpf.usermodel.XWPFMathRun;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.apache.poi.xwpf.usermodel.XWPFSDT;
import org.apache.poi.xwpf.usermodel.XWPFStyle;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMath;
import org.openxmlformats.schemas.officeDocument.x2006.math.CTOMathPara;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHyperlink;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPrGeneral;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTParaRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRunTrackChange;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSimpleField;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSmartTagRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle;

/* loaded from: classes12.dex */
class XWPFParagraphHandler extends XWPFBodyElementHandler<XWPFParagraph> implements ParagraphHandler<XWPFParagraph> {
    private List<CTMarkupRange> bookmarkEndList;
    private List<CTMarkupRange> bookmarkStartList;
    private List<CTMarkupRange> commentRangeEndList;
    private List<CTMarkupRange> commentRangeStartList;
    private List<IRunElement> iruns;
    private NumberingHandler.LevelEntry levelEntry;
    private XWPFParagraph paragraph;
    private ParagraphStyles paragraphStyles;
    private ReviseState reviseState;

    public XWPFParagraphHandler(XWPFContext xWPFContext, XWPFParagraph xWPFParagraph) {
        super(xWPFContext);
        this.bookmarkStartList = new ArrayList();
        this.bookmarkEndList = new ArrayList();
        this.commentRangeStartList = new ArrayList();
        this.commentRangeEndList = new ArrayList();
        this.iruns = new ArrayList();
        this.paragraph = xWPFParagraph;
        init();
    }

    private void addFetcher(ParagraphPropertyListFetcher paragraphPropertyListFetcher, RunPropertyListFetcher runPropertyListFetcher, XWPFStyle xWPFStyle) {
        if (WordToHtmlUtils.isNull(xWPFStyle)) {
            return;
        }
        CTStyle cTStyle = xWPFStyle.getCTStyle();
        CTPPrGeneral pPr = cTStyle.getPPr();
        if (!WordToHtmlUtils.isNull(pPr)) {
            paragraphPropertyListFetcher.addFetcher(new ParagraphPropertyFetcher(pPr));
        }
        CTRPr rPr = cTStyle.getRPr();
        if (WordToHtmlUtils.isNull(rPr)) {
            return;
        }
        runPropertyListFetcher.addFetcher(new RunPropertyFetcher(rPr));
    }

    private void addNumberFetcher(ParagraphPropertyListFetcher paragraphPropertyListFetcher, RunPropertyListFetcher runPropertyListFetcher) {
        if (WordToHtmlUtils.isNull(this.levelEntry)) {
            return;
        }
        CTPPrGeneral pPr = this.levelEntry.getCtLvl().getPPr();
        if (WordToHtmlUtils.isNull(pPr)) {
            return;
        }
        paragraphPropertyListFetcher.addFetcher(new NumberingParagraphPropertyFetcher(pPr));
    }

    private List<IRunElement> addXWPFMarkupRun(CTMarkupRange cTMarkupRange, List<IRunElement> list) {
        if (this.bookmarkStartList.contains(cTMarkupRange)) {
            list.add(new XWPFBookmarkRun(cTMarkupRange));
            return list;
        }
        if (this.bookmarkEndList.contains(cTMarkupRange)) {
            return list;
        }
        if (!this.commentRangeStartList.contains(cTMarkupRange)) {
            return this.commentRangeEndList.contains(cTMarkupRange) ? this.iruns : list;
        }
        XWPFCommentRun xWPFCommentRun = new XWPFCommentRun(cTMarkupRange);
        this.iruns.add(xWPFCommentRun);
        return xWPFCommentRun.getIruns();
    }

    private void afterHandleParagraph(Element element) {
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        if (element.childNodeSize() == 0) {
            documentFacade.createSpan().appendTo(element).appendChild(documentFacade.createText(Constants.UNICODECHAR_NO_BREAK_SPACE));
            return;
        }
        if (!this.paragraphStyles.hasTextChild()) {
            documentFacade.createSpan().appendTo(element).appendChild(documentFacade.createText(Constants.UNICODECHAR_NO_BREAK_SPACE));
        }
        WordToHtmlUtils.compactSpans(element);
        WordToHtmlUtils.compactTextNode(element);
    }

    private String getLineHeightStyle() {
        if (this.paragraphStyles.hasTextChild()) {
            return null;
        }
        TextStyles textStyles = this.paragraphStyles.getTextStyles();
        return this.paragraphStyles.getLineHeight().toStyle(this.context.getFontHeight(textStyles.getFontFamily(), textStyles.getFontSize().getNumberValue()));
    }

    private void handleRunElement(IRunElement iRunElement, Element element, int i, int i2, int i3) {
        if (iRunElement instanceof XWPFSDT) {
            this.LOG.atWarn().log("Paragraph sdt: paragraph:{}/{}, depth:{}", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            this.paragraphSize += XWPFBodyElementHandler.handleBodyElement(this.context, (IBodyElement) iRunElement, element, i, i2, i3);
        } else {
            if (iRunElement instanceof XWPFRun) {
                XWPFRunHandler.handleRun(this.context, (XWPFRun) iRunElement, element, i, i2, i3);
                return;
            }
            if (iRunElement instanceof XWPFMarkupRun) {
                XWPFMarkupHandler.handleRun(this.context, (XWPFMarkupRun) iRunElement, element, i, i2, i3);
            } else if (iRunElement instanceof XWPFMathRun) {
                XWPFMathHandler.handleRun(this.context, (XWPFMathRun) iRunElement, element, i, i2, i3);
            } else {
                this.LOG.atWarn().log("Unknown run :{}, {}/{}, depth:{}", iRunElement.getClass().getName(), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
            }
        }
    }

    private void init() {
        rebuildFromXml();
        readReviseState();
        initParagraphNumbering();
        initParagraphStyles();
    }

    private void initParagraphNumbering() {
        XWPFContext xWPFContext = this.context;
        this.levelEntry = xWPFContext.numberingHandler.getParagraphCTLvl(xWPFContext.styles, this.paragraph);
    }

    private void initParagraphStyles() {
        ParagraphPropertyListFetcher paragraphPropertyListFetcher = new ParagraphPropertyListFetcher();
        RunPropertyListFetcher runPropertyListFetcher = new RunPropertyListFetcher(this.context.theme);
        CTPPr pPr = this.paragraph.getCTP().getPPr();
        if (!WordToHtmlUtils.isNull(pPr)) {
            paragraphPropertyListFetcher.addFetcher(new ParagraphPropertyFetcher(pPr));
            CTParaRPr rPr = pPr.getRPr();
            if (!WordToHtmlUtils.isNull(rPr)) {
                runPropertyListFetcher.addFetcher(new ParagraphRunPropertyFetcher(rPr));
            }
        }
        addNumberFetcher(paragraphPropertyListFetcher, runPropertyListFetcher);
        String style = this.paragraph.getStyle();
        if (StringUtils.isNullOrEmpty(style)) {
            addFetcher(paragraphPropertyListFetcher, runPropertyListFetcher, this.context.defaultStyle);
        } else {
            XWPFStyle style2 = this.context.styles.getStyle(style);
            if (!WordToHtmlUtils.isNull(style2)) {
                Iterator<XWPFStyle> it2 = this.context.styles.getUsedStyleList(style2).iterator();
                while (it2.hasNext()) {
                    addFetcher(paragraphPropertyListFetcher, runPropertyListFetcher, it2.next());
                }
            }
        }
        paragraphPropertyListFetcher.addFetcher(new ParagraphPropertyFetcher(this.context.styles.getDefaultParagraphStyle().getPPr()));
        runPropertyListFetcher.addFetcher(new RunPropertyFetcher(this.context.styles.getDefaultRunStyle().getRPr()));
        ParagraphStyles paragraphStyles = new ParagraphStyles(paragraphPropertyListFetcher, runPropertyListFetcher);
        this.paragraphStyles = paragraphStyles;
        paragraphStyles.getLineHeight().setDocGridLine(this.context.docGridLine);
        this.paragraphStyles.getLineHeight().setLinePitch(this.context.linePitch);
    }

    private boolean isDisplay(Element element) {
        return true;
    }

    private boolean isParagraphDelete() {
        CTPPr pPr = this.paragraph.getCTP().getPPr();
        if (WordToHtmlUtils.isNull(pPr)) {
            return false;
        }
        CTParaRPr rPr = pPr.getRPr();
        return !WordToHtmlUtils.isNull(rPr) && rPr.isSetDel();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
    
        if (org.apache.poi.convert.xwpf.handler.XWPFRunHandler.getReviseState(((org.apache.poi.xwpf.usermodel.XWPFRun) r4).getCTR()) != org.apache.poi.xwpf.usermodel.ReviseState.DELETE) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
    
        r3 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readReviseState() {
        /*
            r6 = this;
            java.util.List<org.apache.poi.xwpf.usermodel.IRunElement> r0 = r6.iruns
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L13
            boolean r0 = r6.isParagraphDelete()
            if (r0 == 0) goto L12
            org.apache.poi.xwpf.usermodel.ReviseState r0 = org.apache.poi.xwpf.usermodel.ReviseState.DELETE
            r6.reviseState = r0
        L12:
            return
        L13:
            java.util.List<org.apache.poi.xwpf.usermodel.IRunElement> r0 = r6.iruns
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = r1
        L1b:
            r3 = r2
        L1c:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L3f
            java.lang.Object r4 = r0.next()
            org.apache.poi.xwpf.usermodel.IRunElement r4 = (org.apache.poi.xwpf.usermodel.IRunElement) r4
            boolean r5 = r4 instanceof org.apache.poi.xwpf.usermodel.XWPFRun
            if (r5 == 0) goto L1c
            org.apache.poi.xwpf.usermodel.XWPFRun r4 = (org.apache.poi.xwpf.usermodel.XWPFRun) r4
            org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR r2 = r4.getCTR()
            org.apache.poi.xwpf.usermodel.ReviseState r2 = org.apache.poi.convert.xwpf.handler.XWPFRunHandler.getReviseState(r2)
            org.apache.poi.xwpf.usermodel.ReviseState r3 = org.apache.poi.xwpf.usermodel.ReviseState.DELETE
            r4 = 1
            if (r2 != r3) goto L3d
            r2 = r4
            goto L1b
        L3d:
            r3 = r4
            goto L40
        L3f:
            r1 = r2
        L40:
            if (r1 != 0) goto L4a
            if (r3 != 0) goto L4e
            boolean r0 = r6.isParagraphDelete()
            if (r0 == 0) goto L4e
        L4a:
            org.apache.poi.xwpf.usermodel.ReviseState r0 = org.apache.poi.xwpf.usermodel.ReviseState.DELETE
            r6.reviseState = r0
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.convert.xwpf.handler.XWPFParagraphHandler.readReviseState():void");
    }

    private void rebuildFromXml() {
        CTP ctp = this.paragraph.getCTP();
        IBody body = this.paragraph.getBody();
        CollectionUtils.ensureAddAll(this.bookmarkStartList, ctp.getBookmarkStartList());
        CollectionUtils.ensureAddAll(this.bookmarkEndList, ctp.getBookmarkEndList());
        CollectionUtils.ensureAddAll(this.commentRangeStartList, ctp.getCommentRangeStartList());
        CollectionUtils.ensureAddAll(this.commentRangeEndList, ctp.getCommentRangeEndList());
        rebuildFromXml(ctp, body, this.iruns);
    }

    private void setPElementTocAttr(Element element) {
        if (TocUtils.setPElementTocAttr(element, getOutlineLevel(), this.context.tocIndex)) {
            this.context.tocIndex++;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Iterator<CTMarkupRange> it2 = this.bookmarkStartList.iterator();
        while (it2.hasNext()) {
            XmlBeanUtils.freeMemory(it2.next());
        }
        Iterator<CTMarkupRange> it3 = this.bookmarkEndList.iterator();
        while (it3.hasNext()) {
            XmlBeanUtils.freeMemory(it3.next());
        }
        Iterator<CTMarkupRange> it4 = this.commentRangeStartList.iterator();
        while (it4.hasNext()) {
            XmlBeanUtils.freeMemory(it4.next());
        }
        Iterator<CTMarkupRange> it5 = this.commentRangeEndList.iterator();
        while (it5.hasNext()) {
            XmlBeanUtils.freeMemory(it5.next());
        }
        Iterator<IRunElement> it6 = this.iruns.iterator();
        while (it6.hasNext()) {
            CloseUtils.close(it6.next());
        }
        CloseUtils.close(this.paragraph);
        this.bookmarkStartList.clear();
        this.bookmarkEndList.clear();
        this.commentRangeStartList.clear();
        this.commentRangeEndList.clear();
        this.iruns.clear();
    }

    public Integer getOutlineLevel() {
        XWPFStyle style;
        CTPPrGeneral pPr;
        CTDecimalNumber outlineLvl;
        BigInteger val;
        CTDecimalNumber outlineLvl2;
        BigInteger val2;
        CTPPr pPr2 = this.paragraph.getCTP().getPPr();
        if (pPr2 != null && (outlineLvl2 = pPr2.getOutlineLvl()) != null && (val2 = outlineLvl2.getVal()) != null) {
            return Integer.valueOf(val2.intValue());
        }
        String style2 = this.paragraph.getStyle();
        if (style2 == null || (style = this.context.styles.getStyle(style2)) == null || (pPr = style.getCTStyle().getPPr()) == null || (outlineLvl = pPr.getOutlineLvl()) == null || (val = outlineLvl.getVal()) == null) {
            return null;
        }
        return Integer.valueOf(val.intValue());
    }

    public String getText() {
        StringBuilder sb = new StringBuilder(64);
        for (IRunElement iRunElement : this.iruns) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            if (iRunElement instanceof XWPFSDT) {
                sb.append(((XWPFSDT) iRunElement).getContent().getText());
            } else {
                sb.append(iRunElement);
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.convert.htmlgen.BodyElementHandler
    public void handleBodyElement(Element element, int i, int i2, int i3) {
        if (this.reviseState == ReviseState.DELETE) {
            return;
        }
        if (this.iruns.isEmpty() && i3 == 0 && i == i2 - 1) {
            return;
        }
        XWPFContext xWPFContext = this.context;
        xWPFContext.fldCharState = null;
        xWPFContext.checkAbortConvert();
        this.context.addLast(this.paragraphStyles);
        HtmlDocumentFacade documentFacade = this.context.getDocumentFacade();
        Element createParagraph = documentFacade.createParagraph();
        setPElementTocAttr(createParagraph);
        element.appendChild(createParagraph);
        int size = this.iruns.size();
        int i4 = i3 + 1;
        Iterator<IRunElement> it2 = this.iruns.iterator();
        Element element2 = createParagraph;
        int i5 = 0;
        while (it2.hasNext()) {
            int i6 = i5 + 1;
            handleRunElement(it2.next(), element2, i5, size, i4);
            element2 = (!this.context.isInFldChar() || WordToHtmlUtils.isNull(this.context.fldContainer)) ? createParagraph : this.context.fldContainer;
            i5 = i6;
        }
        afterHandleParagraph(createParagraph);
        XWPFContext xWPFContext2 = this.context;
        xWPFContext2.numberingHandler.handleNumbering(xWPFContext2, this.paragraphStyles, this.levelEntry, createParagraph);
        documentFacade.addStyleClass(createParagraph, "p", this.paragraphStyles.toStyle());
        documentFacade.addStyleClass(createParagraph, "s", this.paragraphStyles.getTextStyles().toStyle());
        documentFacade.addStyleClass(createParagraph, "l", getLineHeightStyle());
        this.context.setBreakElement(createParagraph);
        this.context.pollLast();
    }

    public String toString() {
        return "XWPFParagraphHandler{" + getText() + '}';
    }

    private void rebuildFromXml(XmlObject xmlObject, IBody iBody, List<IRunElement> list) {
        XmlCursor newCursor = xmlObject.newCursor();
        newCursor.selectPath("child::*");
        while (newCursor.toNextSelection()) {
            XmlObject object = newCursor.getObject();
            if (object instanceof CTMarkupRange) {
                list = addXWPFMarkupRun((CTMarkupRange) object, list);
            }
            if (object instanceof CTR) {
                list.add(new XWPFRun((CTR) object, this.paragraph));
            }
            if (object instanceof CTHyperlink) {
                CTHyperlink cTHyperlink = (CTHyperlink) object;
                CTR[] rArray = cTHyperlink.getRArray();
                if (rArray.length > 0) {
                    list.add(new XWPFHyperlinkRun(cTHyperlink, rArray[0], this.paragraph));
                }
            }
            if (object instanceof CTSimpleField) {
                CTSimpleField cTSimpleField = (CTSimpleField) object;
                CTR[] rArray2 = cTSimpleField.getRArray();
                if (rArray2.length > 0) {
                    list.add(new XWPFFieldRun(cTSimpleField, rArray2[0], this.paragraph));
                }
            }
            if (object instanceof CTSdtBlock) {
                list.add(new XWPFSDT((CTSdtBlock) object, iBody));
            }
            if (object instanceof CTSdtRun) {
                list.add(new XWPFSDT((CTSdtRun) object, iBody));
            }
            boolean z = object instanceof CTRunTrackChange;
            if (z) {
                for (CTR ctr : ((CTRunTrackChange) object).getRArray()) {
                    list.add(new XWPFRun(ctr, this.paragraph));
                }
            }
            if (object instanceof CTSmartTagRun) {
                rebuildFromXml(object, iBody, list);
            }
            if (z) {
                for (CTRunTrackChange cTRunTrackChange : ((CTRunTrackChange) object).getInsArray()) {
                    rebuildFromXml(cTRunTrackChange, iBody, list);
                }
            }
            if (object instanceof CTOMath) {
                list.add(new XWPFMathRun((CTOMath) object));
            }
            if (object instanceof CTOMathPara) {
                list.add(new XWPFMathRun((CTOMathPara) object));
            }
        }
        newCursor.dispose();
    }
}
