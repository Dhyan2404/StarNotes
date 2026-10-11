package org.apache.poi.hslf.usermodel;

import androidx.core.net.MailTo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.ListIterator;
import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.hslf.record.ExHyperlink;
import org.apache.poi.hslf.record.ExObjList;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;
import org.apache.poi.hslf.record.InteractiveInfo;
import org.apache.poi.hslf.record.InteractiveInfoAtom;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.TxInteractiveInfoAtom;
import org.apache.poi.sl.usermodel.Hyperlink;
import org.apache.poi.sl.usermodel.Slide;

/* loaded from: classes12.dex */
public final class HSLFHyperlink implements Hyperlink<HSLFShape, HSLFTextParagraph> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final ExHyperlink exHyper;
    private final InteractiveInfo info;
    private TxInteractiveInfoAtom txinfo;

    public HSLFHyperlink(ExHyperlink exHyperlink, InteractiveInfo interactiveInfo) {
        this.info = interactiveInfo;
        this.exHyper = exHyperlink;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public static HSLFHyperlink createHyperlink(HSLFSimpleShape hSLFSimpleShape) {
        ExHyperlink exHyperlink = new ExHyperlink();
        int addToObjListAtom = hSLFSimpleShape.getSheet().getSlideShow().addToObjListAtom(exHyperlink);
        exHyperlink.getExHyperlinkAtom().setNumber(addToObjListAtom);
        InteractiveInfo interactiveInfo = new InteractiveInfo();
        interactiveInfo.getInteractiveInfoAtom().setHyperlinkID(addToObjListAtom);
        hSLFSimpleShape.getClientData(true).addChild(interactiveInfo);
        HSLFHyperlink hSLFHyperlink = new HSLFHyperlink(exHyperlink, interactiveInfo);
        hSLFHyperlink.linkToNextSlide();
        hSLFSimpleShape.setHyperlink(hSLFHyperlink);
        return hSLFHyperlink;
    }

    public static List<HSLFHyperlink> find(HSLFTextShape hSLFTextShape) {
        return find(hSLFTextShape.getTextParagraphs());
    }

    private void linkToDocument(int i, int i2, String str, int i3) {
        this.exHyper.setLinkURL(i + "," + i2 + "," + str);
        this.exHyper.setLinkTitle(str);
        this.exHyper.setLinkOptions(i3);
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public String getAddress() {
        return this.exHyper.getLinkURL();
    }

    public int getEndIndex() {
        TxInteractiveInfoAtom txInteractiveInfoAtom = this.txinfo;
        if (txInteractiveInfoAtom == null) {
            return -1;
        }
        return txInteractiveInfoAtom.getEndIndex();
    }

    public ExHyperlink getExHyperlink() {
        return this.exHyper;
    }

    public int getId() {
        return this.exHyper.getExHyperlinkAtom().getNumber();
    }

    public InteractiveInfo getInfo() {
        return this.info;
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public String getLabel() {
        return this.exHyper.getLinkTitle();
    }

    public int getStartIndex() {
        TxInteractiveInfoAtom txInteractiveInfoAtom = this.txinfo;
        if (txInteractiveInfoAtom == null) {
            return -1;
        }
        return txInteractiveInfoAtom.getStartIndex();
    }

    public TxInteractiveInfoAtom getTextRunInfo() {
        return this.txinfo;
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public HyperlinkType getType() {
        switch (this.info.getInteractiveInfoAtom().getHyperlinkType()) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 7:
                return HyperlinkType.DOCUMENT;
            case 4:
            case 5:
            default:
                return HyperlinkType.NONE;
            case 6:
            case 9:
            case 10:
                return HyperlinkType.FILE;
            case 8:
                return this.exHyper.getLinkURL().startsWith(MailTo.MAILTO_SCHEME) ? HyperlinkType.EMAIL : HyperlinkType.URL;
        }
    }

    @Override // org.apache.poi.sl.usermodel.Hyperlink
    public void linkToEmail(String str) {
        InteractiveInfoAtom interactiveInfoAtom = this.info.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 4);
        interactiveInfoAtom.setJump((byte) 0);
        interactiveInfoAtom.setHyperlinkType((byte) 8);
        this.exHyper.setLinkURL(MailTo.MAILTO_SCHEME + str);
        this.exHyper.setLinkTitle(str);
        this.exHyper.setLinkOptions(16);
    }

    @Override // org.apache.poi.sl.usermodel.Hyperlink
    public void linkToFirstSlide() {
        InteractiveInfoAtom interactiveInfoAtom = this.info.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 3);
        interactiveInfoAtom.setJump((byte) 3);
        interactiveInfoAtom.setHyperlinkType((byte) 2);
        linkToDocument(1, -1, "FIRST", 16);
    }

    @Override // org.apache.poi.sl.usermodel.Hyperlink
    public void linkToLastSlide() {
        InteractiveInfoAtom interactiveInfoAtom = this.info.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 3);
        interactiveInfoAtom.setJump((byte) 4);
        interactiveInfoAtom.setHyperlinkType((byte) 3);
        linkToDocument(1, -1, "LAST", 16);
    }

    @Override // org.apache.poi.sl.usermodel.Hyperlink
    public void linkToNextSlide() {
        InteractiveInfoAtom interactiveInfoAtom = this.info.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 3);
        interactiveInfoAtom.setJump((byte) 1);
        interactiveInfoAtom.setHyperlinkType((byte) 0);
        linkToDocument(1, -1, "NEXT", 16);
    }

    @Override // org.apache.poi.sl.usermodel.Hyperlink
    public void linkToPreviousSlide() {
        InteractiveInfoAtom interactiveInfoAtom = this.info.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 3);
        interactiveInfoAtom.setJump((byte) 2);
        interactiveInfoAtom.setHyperlinkType((byte) 1);
        linkToDocument(1, -1, "PREV", 16);
    }

    @Override // org.apache.poi.sl.usermodel.Hyperlink
    public void linkToSlide(Slide<HSLFShape, HSLFTextParagraph> slide) {
        HSLFSlide hSLFSlide = (HSLFSlide) slide;
        int slideNumber = slide.getSlideNumber();
        InteractiveInfoAtom interactiveInfoAtom = this.info.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 4);
        interactiveInfoAtom.setJump((byte) 0);
        interactiveInfoAtom.setHyperlinkType((byte) 7);
        linkToDocument(hSLFSlide._getSheetNumber(), slideNumber, "Slide " + slideNumber, 48);
    }

    @Override // org.apache.poi.sl.usermodel.Hyperlink
    public void linkToUrl(String str) {
        InteractiveInfoAtom interactiveInfoAtom = this.info.getInteractiveInfoAtom();
        interactiveInfoAtom.setAction((byte) 4);
        interactiveInfoAtom.setJump((byte) 0);
        interactiveInfoAtom.setHyperlinkType((byte) 8);
        this.exHyper.setLinkURL(str);
        this.exHyper.setLinkTitle(str);
        this.exHyper.setLinkOptions(16);
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public void setAddress(String str) {
        this.exHyper.setLinkURL(str);
    }

    public void setEndIndex(int i) {
        TxInteractiveInfoAtom txInteractiveInfoAtom = this.txinfo;
        if (txInteractiveInfoAtom != null) {
            txInteractiveInfoAtom.setEndIndex(i);
        }
    }

    @Override // org.apache.poi.common.usermodel.Hyperlink
    public void setLabel(String str) {
        this.exHyper.setLinkTitle(str);
    }

    public void setStartIndex(int i) {
        TxInteractiveInfoAtom txInteractiveInfoAtom = this.txinfo;
        if (txInteractiveInfoAtom != null) {
            txInteractiveInfoAtom.setStartIndex(i);
        }
    }

    public void setTextRunInfo(TxInteractiveInfoAtom txInteractiveInfoAtom) {
        this.txinfo = txInteractiveInfoAtom;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public static List<HSLFHyperlink> find(List<HSLFTextParagraph> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && !list.isEmpty()) {
            HSLFTextParagraph hSLFTextParagraph = list.get(0);
            ExObjList exObjList = hSLFTextParagraph.getSheet().getSlideShow().getDocumentRecord().getExObjList(false);
            if (exObjList != null) {
                find(Arrays.asList(hSLFTextParagraph.getRecords()), exObjList, arrayList);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public static HSLFHyperlink find(HSLFShape hSLFShape) {
        ExObjList exObjList = hSLFShape.getSheet().getSlideShow().getDocumentRecord().getExObjList(false);
        HSLFEscherClientDataRecord clientData = hSLFShape.getClientData(false);
        if (exObjList == null || clientData == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        find(clientData.getHSLFChildRecords(), exObjList, arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (HSLFHyperlink) arrayList.get(0);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public static HSLFHyperlink createHyperlink(HSLFTextRun hSLFTextRun) {
        ExHyperlink exHyperlink = new ExHyperlink();
        int addToObjListAtom = hSLFTextRun.getTextParagraph().getSheet().getSlideShow().addToObjListAtom(exHyperlink);
        exHyperlink.getExHyperlinkAtom().setNumber(addToObjListAtom);
        InteractiveInfo interactiveInfo = new InteractiveInfo();
        interactiveInfo.getInteractiveInfoAtom().setHyperlinkID(addToObjListAtom);
        HSLFHyperlink hSLFHyperlink = new HSLFHyperlink(exHyperlink, interactiveInfo);
        hSLFHyperlink.linkToNextSlide();
        TxInteractiveInfoAtom txInteractiveInfoAtom = new TxInteractiveInfoAtom();
        int startIdxOfTextRun = hSLFTextRun.getTextParagraph().getStartIdxOfTextRun(hSLFTextRun);
        int length = hSLFTextRun.getLength() + startIdxOfTextRun;
        txInteractiveInfoAtom.setStartIndex(startIdxOfTextRun);
        txInteractiveInfoAtom.setEndIndex(length);
        hSLFHyperlink.setTextRunInfo(txInteractiveInfoAtom);
        hSLFTextRun.setHyperlink(hSLFHyperlink);
        return hSLFHyperlink;
    }

    private static void find(List<? extends Record> list, ExObjList exObjList, List<HSLFHyperlink> list2) {
        InteractiveInfo interactiveInfo;
        InteractiveInfoAtom interactiveInfoAtom;
        ExHyperlink exHyperlink;
        ListIterator<? extends Record> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            Record next = listIterator.next();
            if ((next instanceof InteractiveInfo) && (interactiveInfoAtom = (interactiveInfo = (InteractiveInfo) next).getInteractiveInfoAtom()) != null && (exHyperlink = exObjList.get(interactiveInfoAtom.getHyperlinkID())) != null) {
                HSLFHyperlink hSLFHyperlink = new HSLFHyperlink(exHyperlink, interactiveInfo);
                list2.add(hSLFHyperlink);
                if (listIterator.hasNext()) {
                    Record next2 = listIterator.next();
                    if (!(next2 instanceof TxInteractiveInfoAtom)) {
                        listIterator.previous();
                    } else {
                        hSLFHyperlink.setTextRunInfo((TxInteractiveInfoAtom) next2);
                    }
                }
            }
        }
    }
}
