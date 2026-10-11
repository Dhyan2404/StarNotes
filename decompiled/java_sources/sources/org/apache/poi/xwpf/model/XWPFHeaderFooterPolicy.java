package org.apache.poi.xwpf.model;

import com.microsoft.schemas.office.office.STConnectType;
import com.microsoft.schemas.vml.CTFormulas;
import com.microsoft.schemas.vml.CTGroup;
import com.microsoft.schemas.vml.CTH;
import com.microsoft.schemas.vml.CTPath;
import com.microsoft.schemas.vml.CTShape;
import com.microsoft.schemas.vml.CTShapetype;
import com.microsoft.schemas.vml.CTTextPath;
import com.microsoft.schemas.vml.STExt;
import java.io.IOException;
import java.util.Iterator;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFFactory;
import org.apache.poi.xwpf.usermodel.XWPFFooter;
import org.apache.poi.xwpf.usermodel.XWPFHeader;
import org.apache.poi.xwpf.usermodel.XWPFHeaderFooter;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRelation;
import org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHdrFtr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHdrFtrRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.FtrDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.HdrDocument;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHdrFtr;

/* loaded from: classes13.dex */
public class XWPFHeaderFooterPolicy {
    public static final STHdrFtr.Enum DEFAULT = STHdrFtr.DEFAULT;
    public static final STHdrFtr.Enum EVEN = STHdrFtr.EVEN;
    public static final STHdrFtr.Enum FIRST = STHdrFtr.FIRST;
    private XWPFFooter defaultFooter;
    private XWPFHeader defaultHeader;
    private XWPFDocument doc;
    private XWPFFooter evenPageFooter;
    private XWPFHeader evenPageHeader;
    private XWPFFooter firstPageFooter;
    private XWPFHeader firstPageHeader;
    private CTSectPr sectPr;

    public XWPFHeaderFooterPolicy(XWPFDocument xWPFDocument) {
        this(xWPFDocument, null);
    }

    private void assignFooter(XWPFFooter xWPFFooter, STHdrFtr.Enum r3) {
        if (r3 == STHdrFtr.FIRST) {
            this.firstPageFooter = xWPFFooter;
        } else if (r3 == STHdrFtr.EVEN) {
            this.evenPageFooter = xWPFFooter;
        } else {
            this.defaultFooter = xWPFFooter;
        }
    }

    private void assignHeader(XWPFHeader xWPFHeader, STHdrFtr.Enum r3) {
        if (r3 == STHdrFtr.FIRST) {
            this.firstPageHeader = xWPFHeader;
        } else if (r3 == STHdrFtr.EVEN) {
            this.evenPageHeader = xWPFHeader;
        } else {
            this.defaultHeader = xWPFHeader;
        }
    }

    private CTHdrFtr buildFtr(STHdrFtr.Enum r1, XWPFHeaderFooter xWPFHeaderFooter, XWPFParagraph[] xWPFParagraphArr) {
        CTHdrFtr buildHdrFtr = buildHdrFtr(xWPFParagraphArr, xWPFHeaderFooter);
        setFooterReference(r1, xWPFHeaderFooter);
        return buildHdrFtr;
    }

    private CTHdrFtr buildHdr(STHdrFtr.Enum r1, XWPFHeaderFooter xWPFHeaderFooter, XWPFParagraph[] xWPFParagraphArr) {
        CTHdrFtr buildHdrFtr = buildHdrFtr(xWPFParagraphArr, xWPFHeaderFooter);
        setHeaderReference(r1, xWPFHeaderFooter);
        return buildHdrFtr;
    }

    private CTHdrFtr buildHdrFtr(XWPFParagraph[] xWPFParagraphArr, XWPFHeaderFooter xWPFHeaderFooter) {
        CTHdrFtr _getHdrFtr = xWPFHeaderFooter._getHdrFtr();
        if (xWPFParagraphArr != null) {
            for (int i = 0; i < xWPFParagraphArr.length; i++) {
                _getHdrFtr.addNewP();
                _getHdrFtr.setPArray(i, xWPFParagraphArr[i].getCTP());
            }
        }
        return _getHdrFtr;
    }

    private int getRelationIndex(XWPFRelation xWPFRelation) {
        Iterator<POIXMLDocumentPart.RelationPart> it2 = this.doc.getRelationParts().iterator();
        int i = 1;
        while (it2.hasNext()) {
            if (it2.next().getRelationship().getRelationshipType().equals(xWPFRelation.getRelation())) {
                i++;
            }
        }
        return i;
    }

    private XWPFParagraph getWatermarkParagraph(String str, int i) {
        byte[] rsidRDefault;
        byte[] bArr;
        CTP newInstance = CTP.Factory.newInstance();
        CTBody body = this.doc.getDocument().getBody();
        if (body.sizeOfPArray() == 0) {
            bArr = null;
            rsidRDefault = null;
        } else {
            CTP pArray = body.getPArray(0);
            byte[] rsidR = pArray.getRsidR();
            rsidRDefault = pArray.getRsidRDefault();
            bArr = rsidR;
        }
        newInstance.setRsidP(bArr);
        newInstance.setRsidRDefault(rsidRDefault);
        newInstance.addNewPPr().addNewPStyle().setVal("Header");
        CTR addNewR = newInstance.addNewR();
        addNewR.addNewRPr().addNewNoProof();
        CTPicture addNewPict = addNewR.addNewPict();
        CTGroup newInstance2 = CTGroup.Factory.newInstance();
        CTShapetype addNewShapetype = newInstance2.addNewShapetype();
        addNewShapetype.setId("_x0000_t136");
        addNewShapetype.setCoordsize("1600,21600");
        addNewShapetype.setSpt(136.0f);
        addNewShapetype.setAdj("10800");
        addNewShapetype.setPath2("m@7,0l@8,0m@5,21600l@6,21600e");
        CTFormulas addNewFormulas = addNewShapetype.addNewFormulas();
        addNewFormulas.addNewF().setEqn("sum #0 0 10800");
        addNewFormulas.addNewF().setEqn("prod #0 2 1");
        addNewFormulas.addNewF().setEqn("sum 21600 0 @1");
        addNewFormulas.addNewF().setEqn("sum 0 0 @2");
        addNewFormulas.addNewF().setEqn("sum 21600 0 @3");
        addNewFormulas.addNewF().setEqn("if @0 @3 0");
        addNewFormulas.addNewF().setEqn("if @0 21600 @1");
        addNewFormulas.addNewF().setEqn("if @0 0 @2");
        addNewFormulas.addNewF().setEqn("if @0 @4 21600");
        addNewFormulas.addNewF().setEqn("mid @5 @6");
        addNewFormulas.addNewF().setEqn("mid @8 @5");
        addNewFormulas.addNewF().setEqn("mid @7 @8");
        addNewFormulas.addNewF().setEqn("mid @6 @7");
        addNewFormulas.addNewF().setEqn("sum @6 0 @5");
        CTPath addNewPath = addNewShapetype.addNewPath();
        STTrueFalse.Enum r5 = STTrueFalse.f115764T;
        addNewPath.setTextpathok(r5);
        addNewPath.setConnecttype(STConnectType.CUSTOM);
        addNewPath.setConnectlocs("@9,0;@10,10800;@11,21600;@12,10800");
        addNewPath.setConnectangles("270,180,90,0");
        CTTextPath addNewTextpath = addNewShapetype.addNewTextpath();
        addNewTextpath.setOn(r5);
        addNewTextpath.setFitshape(r5);
        CTH addNewH = addNewShapetype.addNewHandles().addNewH();
        addNewH.setPosition("#0,bottomRight");
        addNewH.setXrange("6629,14971");
        addNewShapetype.addNewLock().setExt(STExt.EDIT);
        CTShape addNewShape = newInstance2.addNewShape();
        addNewShape.setId("PowerPlusWaterMarkObject" + i);
        addNewShape.setSpid("_x0000_s102" + (i + 4));
        addNewShape.setType("#_x0000_t136");
        addNewShape.setStyle("position:absolute;margin-left:0;margin-top:0;width:415pt;height:207.5pt;z-index:-251654144;mso-wrap-edited:f;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin");
        addNewShape.setWrapcoords("616 5068 390 16297 39 16921 -39 17155 7265 17545 7186 17467 -39 17467 18904 17467 10507 17467 8710 17545 18904 17077 18787 16843 18358 16297 18279 12554 19178 12476 20701 11774 20779 11228 21131 10059 21248 8811 21248 7563 20975 6316 20935 5380 19490 5146 14022 5068 2616 5068");
        addNewShape.setFillcolor("black");
        addNewShape.setStroked(STTrueFalse.FALSE);
        CTTextPath addNewTextpath2 = addNewShape.addNewTextpath();
        addNewTextpath2.setStyle("font-family:&quot;Cambria&quot;;font-size:1pt");
        addNewTextpath2.setString(str);
        addNewPict.set(newInstance2);
        return new XWPFParagraph(newInstance, this.doc);
    }

    private void readeHeaderFooter(XWPFHeaderFooter xWPFHeaderFooter) {
        if (xWPFHeaderFooter != null) {
            try {
                POIXMLDocumentPart._invokeOnDocumentRead(xWPFHeaderFooter);
            } catch (IOException e) {
                throw new POIXMLException(e);
            }
        }
    }

    private void setFooterReference(STHdrFtr.Enum r2, XWPFHeaderFooter xWPFHeaderFooter) {
        CTHdrFtrRef addNewFooterReference = this.sectPr.addNewFooterReference();
        addNewFooterReference.setType(r2);
        addNewFooterReference.setId(this.doc.getRelationId(xWPFHeaderFooter));
    }

    private void setHeaderReference(STHdrFtr.Enum r2, XWPFHeaderFooter xWPFHeaderFooter) {
        CTHdrFtrRef addNewHeaderReference = this.sectPr.addNewHeaderReference();
        addNewHeaderReference.setType(r2);
        addNewHeaderReference.setId(this.doc.getRelationId(xWPFHeaderFooter));
    }

    public void closeFooter() {
        XmlBeanUtils.close(this.firstPageFooter);
        XmlBeanUtils.close(this.evenPageFooter);
        XmlBeanUtils.close(this.defaultFooter);
        this.firstPageFooter = null;
        this.evenPageFooter = null;
        this.defaultFooter = null;
    }

    public void closeHeader() {
        XmlBeanUtils.close(this.firstPageHeader);
        XmlBeanUtils.close(this.evenPageHeader);
        XmlBeanUtils.close(this.defaultHeader);
        this.firstPageHeader = null;
        this.evenPageHeader = null;
        this.defaultHeader = null;
    }

    public XWPFFooter createFooter(STHdrFtr.Enum r2) {
        return createFooter(r2, null);
    }

    public XWPFHeader createHeader(STHdrFtr.Enum r2) {
        return createHeader(r2, null);
    }

    public void createWatermark(String str) {
        XWPFParagraph[] xWPFParagraphArr = {getWatermarkParagraph(str, 1)};
        createHeader(DEFAULT, xWPFParagraphArr);
        xWPFParagraphArr[0] = getWatermarkParagraph(str, 2);
        createHeader(FIRST, xWPFParagraphArr);
        xWPFParagraphArr[0] = getWatermarkParagraph(str, 3);
        createHeader(EVEN, xWPFParagraphArr);
    }

    public XWPFFooter getDefaultFooter() {
        return this.defaultFooter;
    }

    public XWPFHeader getDefaultHeader() {
        return this.defaultHeader;
    }

    public XWPFFooter getEvenPageFooter() {
        return this.evenPageFooter;
    }

    public XWPFHeader getEvenPageHeader() {
        return this.evenPageHeader;
    }

    public XWPFFooter getFirstPageFooter() {
        return this.firstPageFooter;
    }

    public XWPFHeader getFirstPageHeader() {
        return this.firstPageHeader;
    }

    public XWPFFooter getFooter(int i) {
        XWPFFooter xWPFFooter;
        XWPFFooter xWPFFooter2;
        return (i != 1 || (xWPFFooter2 = this.firstPageFooter) == null) ? (i % 2 != 0 || (xWPFFooter = this.evenPageFooter) == null) ? this.defaultFooter : xWPFFooter : xWPFFooter2;
    }

    public XWPFHeader getHeader(int i) {
        XWPFHeader xWPFHeader;
        XWPFHeader xWPFHeader2;
        return (i != 1 || (xWPFHeader2 = this.firstPageHeader) == null) ? (i % 2 != 0 || (xWPFHeader = this.evenPageHeader) == null) ? this.defaultHeader : xWPFHeader : xWPFHeader2;
    }

    public XWPFFooter getOddPageFooter() {
        return this.defaultFooter;
    }

    public XWPFHeader getOddPageHeader() {
        return this.defaultHeader;
    }

    public void readFooter() {
        readeHeaderFooter(this.firstPageFooter);
        readeHeaderFooter(this.evenPageFooter);
        readeHeaderFooter(this.defaultFooter);
    }

    public void readHeader() {
        readeHeaderFooter(this.firstPageHeader);
        readeHeaderFooter(this.evenPageHeader);
        readeHeaderFooter(this.defaultHeader);
    }

    public XWPFHeaderFooterPolicy(XWPFDocument xWPFDocument, CTSectPr cTSectPr) {
        STHdrFtr.Enum r1;
        STHdrFtr.Enum r2;
        if (cTSectPr == null) {
            CTBody body = xWPFDocument.getDocument().getBody();
            if (body.isSetSectPr()) {
                cTSectPr = body.getSectPr();
            } else {
                cTSectPr = body.addNewSectPr();
            }
        }
        this.doc = xWPFDocument;
        this.sectPr = cTSectPr;
        int i = 0;
        while (true) {
            if (i >= cTSectPr.sizeOfHeaderReferenceArray()) {
                break;
            }
            CTHdrFtrRef headerReferenceArray = cTSectPr.getHeaderReferenceArray(i);
            POIXMLDocumentPart relationById = xWPFDocument.getRelationById(headerReferenceArray.getId());
            XWPFHeader xWPFHeader = relationById instanceof XWPFHeader ? (XWPFHeader) relationById : null;
            try {
                r2 = headerReferenceArray.getType();
            } catch (XmlValueOutOfRangeException unused) {
                r2 = STHdrFtr.DEFAULT;
            }
            assignHeader(xWPFHeader, r2);
            i++;
        }
        for (int i2 = 0; i2 < cTSectPr.sizeOfFooterReferenceArray(); i2++) {
            CTHdrFtrRef footerReferenceArray = cTSectPr.getFooterReferenceArray(i2);
            POIXMLDocumentPart relationById2 = xWPFDocument.getRelationById(footerReferenceArray.getId());
            XWPFFooter xWPFFooter = relationById2 instanceof XWPFFooter ? (XWPFFooter) relationById2 : null;
            try {
                r1 = footerReferenceArray.getType();
            } catch (XmlValueOutOfRangeException unused2) {
                r1 = STHdrFtr.DEFAULT;
            }
            assignFooter(xWPFFooter, r1);
        }
    }

    public XWPFFooter createFooter(STHdrFtr.Enum r6, XWPFParagraph[] xWPFParagraphArr) {
        XWPFFooter footer = getFooter(r6);
        if (footer != null) {
            return footer;
        }
        FtrDocument newInstance = FtrDocument.Factory.newInstance();
        XWPFRelation xWPFRelation = XWPFRelation.FOOTER;
        XWPFFooter xWPFFooter = (XWPFFooter) this.doc.createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
        xWPFFooter.setXWPFDocument(this.doc);
        CTHdrFtr buildFtr = buildFtr(r6, xWPFFooter, xWPFParagraphArr);
        xWPFFooter.setHeaderFooter(buildFtr);
        newInstance.setFtr(buildFtr);
        assignFooter(xWPFFooter, r6);
        return xWPFFooter;
    }

    public XWPFHeader createHeader(STHdrFtr.Enum r6, XWPFParagraph[] xWPFParagraphArr) {
        XWPFHeader header = getHeader(r6);
        if (header != null) {
            return header;
        }
        HdrDocument newInstance = HdrDocument.Factory.newInstance();
        XWPFRelation xWPFRelation = XWPFRelation.HEADER;
        XWPFHeader xWPFHeader = (XWPFHeader) this.doc.createRelationship(xWPFRelation, XWPFFactory.getInstance(), getRelationIndex(xWPFRelation));
        xWPFHeader.setXWPFDocument(this.doc);
        CTHdrFtr buildHdr = buildHdr(r6, xWPFHeader, xWPFParagraphArr);
        xWPFHeader.setHeaderFooter(buildHdr);
        newInstance.setHdr(buildHdr);
        assignHeader(xWPFHeader, r6);
        return xWPFHeader;
    }

    public XWPFFooter getFooter(STHdrFtr.Enum r2) {
        if (r2 == STHdrFtr.EVEN) {
            return this.evenPageFooter;
        }
        if (r2 == STHdrFtr.FIRST) {
            return this.firstPageFooter;
        }
        return this.defaultFooter;
    }

    public XWPFHeader getHeader(STHdrFtr.Enum r2) {
        if (r2 == STHdrFtr.EVEN) {
            return this.evenPageHeader;
        }
        if (r2 == STHdrFtr.FIRST) {
            return this.firstPageHeader;
        }
        return this.defaultHeader;
    }
}
