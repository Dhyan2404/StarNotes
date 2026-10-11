package org.apache.poi.xwpf.usermodel;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.common.usermodel.PictureType;
import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ooxml.POIXMLTypeLoader;
import org.apache.poi.ooxml.util.DocumentHelper;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.p114wp.usermodel.CharacterRun;
import org.apache.poi.util.HexDump;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.Removal;
import org.apache.poi.util.Units;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.values.XmlAnyTypeImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChart;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlipFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTGraphicalObject;
import org.openxmlformats.schemas.drawingml.x2006.main.CTNonVisualDrawingProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPoint2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPositiveSize2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTPresetGeometry2D;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTransform2D;
import org.openxmlformats.schemas.drawingml.x2006.main.STShapeType;
import org.openxmlformats.schemas.drawingml.x2006.picture.CTPicture;
import org.openxmlformats.schemas.drawingml.x2006.picture.CTPictureNonVisual;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTAnchor;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTInline;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STHexColorRGB;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STVerticalAlignRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDrawing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFFCheckBox;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFldChar;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFtnEdnRef;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHighlight;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPTab;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRuby;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRubyContent;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTUnderline;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTVerticalAlignRun;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STBrClear;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STBrType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STEm;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFldCharType;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHexColorAuto;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STHighlightColor;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STThemeColor;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STUnderline;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes13.dex */
public class XWPFRun implements ISDTContents, IRunElement, CharacterRun {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private IRunBody parent;
    private String pictureText;
    private List<XWPFPicture> pictures;
    private CTR run;

    /* renamed from: org.apache.poi.xwpf.usermodel.XWPFRun$1 */
    /* loaded from: classes13.dex */
    public static /* synthetic */ class C199901 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange;

        static {
            int[] iArr = new int[FontCharRange.values().length];
            $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange = iArr;
            try {
                iArr[FontCharRange.ascii.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange[FontCharRange.cs.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange[FontCharRange.eastAsia.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange[FontCharRange.hAnsi.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes13.dex */
    public enum FontCharRange {
        ascii,
        cs,
        eastAsia,
        hAnsi
    }

    public XWPFRun(CTR ctr, IRunBody iRunBody) {
        this.run = ctr;
        this.parent = iRunBody;
        readDocument();
    }

    private void _getText(XmlObject xmlObject, StringBuilder sb) {
        StringBuilder sb2;
        String stringValue;
        if (xmlObject instanceof CTText) {
            Node domNode = xmlObject.getDomNode();
            if ((!"instrText".equals(domNode.getLocalName()) || !XSSFRelation.NS_WORDPROCESSINGML.equals(domNode.getNamespaceURI())) && (stringValue = ((CTText) xmlObject).getStringValue()) != null) {
                if (isCapitalized() || isSmallCaps()) {
                    stringValue = stringValue.toUpperCase(LocaleUtil.getUserLocale());
                }
                sb.append(stringValue);
            }
        }
        if (xmlObject instanceof CTFldChar) {
            CTFldChar cTFldChar = (CTFldChar) xmlObject;
            if (cTFldChar.getFldCharType() == STFldCharType.BEGIN && cTFldChar.getFfData() != null) {
                for (CTFFCheckBox cTFFCheckBox : cTFldChar.getFfData().getCheckBoxList()) {
                    sb.append((cTFFCheckBox.getDefault() == null || !POIXMLUnits.parseOnOff(cTFFCheckBox.getDefault().xgetVal())) ? "|_|" : "|X|");
                }
            }
        }
        if (xmlObject instanceof CTPTab) {
            sb.append('\t');
        }
        if (xmlObject instanceof CTBr) {
            sb.append('\n');
        }
        if (xmlObject instanceof CTEmpty) {
            Node domNode2 = xmlObject.getDomNode();
            if (XSSFRelation.NS_WORDPROCESSINGML.equals(domNode2.getNamespaceURI())) {
                String localName = domNode2.getLocalName();
                localName.hashCode();
                char c = 65535;
                switch (localName.hashCode()) {
                    case 3152:
                        if (localName.equals("br")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 3183:
                        if (localName.equals("cr")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 114581:
                        if (localName.equals("tab")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                    case 1:
                        sb.append('\n');
                        break;
                    case 2:
                        sb.append('\t');
                        break;
                }
            }
        }
        if (xmlObject instanceof CTFtnEdnRef) {
            CTFtnEdnRef cTFtnEdnRef = (CTFtnEdnRef) xmlObject;
            if (cTFtnEdnRef.getDomNode().getLocalName().equals("footnoteReference")) {
                sb2 = new StringBuilder();
                sb2.append("[footnoteRef:");
            } else {
                sb2 = new StringBuilder();
                sb2.append("[endnoteRef:");
            }
            sb2.append(cTFtnEdnRef.getId().intValue());
            sb2.append(IteratorUtils.f104924b);
            sb.append(sb2.toString());
        }
    }

    private List<CTPicture> getCTPictures(XmlObject xmlObject) {
        ArrayList arrayList = new ArrayList();
        XmlObject[] selectPath = xmlObject.selectPath("declare namespace pic='" + CTPicture.type.getName().getNamespaceURI() + "' .//pic:pic");
        int length = selectPath.length;
        for (int i = 0; i < length; i++) {
            CTPicture cTPicture = selectPath[i];
            if (cTPicture instanceof XmlAnyTypeImpl) {
                try {
                    cTPicture = CTPicture.Factory.parse(cTPicture.toString(), POIXMLTypeLoader.DEFAULT_XML_OPTIONS);
                } catch (XmlException e) {
                    throw new POIXMLException(e);
                }
            }
            if (cTPicture instanceof CTPicture) {
                arrayList.add((CTPicture) cTPicture);
            }
        }
        return arrayList;
    }

    private CTUnderline getCTUnderline(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        if (runProperties.sizeOfUArray() > 0) {
            return runProperties.getUArray(0);
        }
        if (z) {
            return runProperties.addNewU();
        }
        return null;
    }

    private BigDecimal getFontSizeAsBigDecimal(int i) {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null || runProperties.sizeOfSzArray() <= 0) {
            return null;
        }
        return BigDecimal.valueOf(Units.toPoints(POIXMLUnits.parseLength(runProperties.getSzArray(0).xgetVal()))).divide(BigDecimal.valueOf(4L), i, RoundingMode.HALF_UP);
    }

    private void handleRuby(XmlObject xmlObject, StringBuilder sb, boolean z) {
        XmlCursor newCursor = xmlObject.newCursor();
        try {
            newCursor.selectPath(".//*");
            boolean z2 = false;
            boolean z3 = false;
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTRubyContent) {
                    Node domNode = object.getDomNode();
                    if (XSSFRelation.NS_WORDPROCESSINGML.equals(domNode.getNamespaceURI())) {
                        String localName = domNode.getLocalName();
                        if (WebvttCueParser.f27242v.equals(localName)) {
                            z2 = true;
                        } else if ("rubyBase".equals(localName)) {
                            z2 = false;
                            z3 = true;
                        }
                    }
                } else if (z && z2) {
                    _getText(object, sb);
                } else if (!z && z3) {
                    _getText(object, sb);
                }
            }
            newCursor.close();
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

    private static boolean isCTOnOff(CTOnOff cTOnOff) {
        return !cTOnOff.isSetVal() || POIXMLUnits.parseOnOff(cTOnOff);
    }

    public static void preserveSpaces(XmlString xmlString) {
        String stringValue = xmlString.getStringValue();
        if (stringValue == null || stringValue.length() < 1) {
            return;
        }
        if (Character.isWhitespace(stringValue.charAt(0)) || Character.isWhitespace(stringValue.charAt(stringValue.length() - 1))) {
            XmlCursor newCursor = xmlString.newCursor();
            try {
                newCursor.toNextToken();
                newCursor.insertAttributeWithValue(new QName("http://www.w3.org/XML/1998/namespace", "space"), "preserve");
                newCursor.close();
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
    }

    public void addBreak() {
        this.run.addNewBr();
    }

    public void addCarriageReturn() {
        this.run.addNewCr();
    }

    @Internal
    public CTInline addChart(String str) throws InvalidFormatException, IOException {
        try {
            CTInline addNewInline = this.run.addNewDrawing().addNewInline();
            StringBuilder sb = new StringBuilder();
            sb.append("<a:graphic xmlns:a=\"");
            sb.append(CTGraphicalObject.type.getName().getNamespaceURI());
            sb.append("\"><a:graphicData uri=\"");
            SchemaType schemaType = CTChart.type;
            sb.append(schemaType.getName().getNamespaceURI());
            sb.append("\"><c:chart xmlns:c=\"");
            sb.append(schemaType.getName().getNamespaceURI());
            sb.append("\" xmlns:r=\"http://schemas.openxmlformats.org/officeDocument/2006/relationships\" r:id=\"");
            sb.append(str);
            sb.append("\" /></a:graphicData></a:graphic>");
            addNewInline.set(XmlToken.Factory.parse(DocumentHelper.readDocument(new InputSource(new StringReader(sb.toString()))).getDocumentElement(), POIXMLTypeLoader.DEFAULT_XML_OPTIONS));
            addNewInline.setDistT(0L);
            addNewInline.setDistR(0L);
            addNewInline.setDistB(0L);
            addNewInline.setDistL(0L);
            CTNonVisualDrawingProps addNewDocPr = addNewInline.addNewDocPr();
            long reserveNew = getParent().getDocument().getDrawingIdManager().reserveNew();
            addNewDocPr.setId(reserveNew);
            addNewDocPr.setName("chart " + reserveNew);
            return addNewInline;
        } catch (XmlException | SAXException e) {
            throw new IllegalStateException(e);
        }
    }

    public XWPFPicture addPicture(InputStream inputStream, int i, String str, int i2, int i3) throws InvalidFormatException, IOException {
        return addPicture(inputStream, PictureType.findByOoxmlId(i), str, i2, i3);
    }

    public void addTab() {
        this.run.addNewTab();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        XmlBeanUtils.freeMemory(this.run);
        this.run = null;
        List<XWPFPicture> list = this.pictures;
        if (list != null) {
            list.clear();
        }
    }

    @Internal
    public CTR getCTR() {
        return this.run;
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public int getCharacterSpacing() {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null || runProperties.sizeOfSpacingArray() == 0) {
            return 0;
        }
        return (int) Units.toDXA(POIXMLUnits.parseLength(runProperties.getSpacingArray(0).xgetVal()));
    }

    public String getColor() {
        CTRPr runProperties;
        if (!this.run.isSetRPr() || (runProperties = getRunProperties(false)) == null || runProperties.sizeOfColorArray() <= 0) {
            return null;
        }
        return runProperties.getColorArray(0).xgetVal().getStringValue();
    }

    public XWPFDocument getDocument() {
        IRunBody iRunBody = this.parent;
        if (iRunBody != null) {
            return iRunBody.getDocument();
        }
        return null;
    }

    public List<XWPFPicture> getEmbeddedPictures() {
        return this.pictures;
    }

    public STEm.Enum getEmphasisMark() {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null) {
            return STEm.NONE;
        }
        STEm.Enum val = (runProperties.sizeOfEmArray() > 0 ? runProperties.getEmArray(0) : runProperties.addNewEm()).getVal();
        return val == null ? STEm.NONE : val;
    }

    public String getFontFamily() {
        return getFontFamily(null);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public String getFontName() {
        return getFontFamily();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    @Removal(version = "6.0.0")
    @Deprecated
    public int getFontSize() {
        BigDecimal fontSizeAsBigDecimal = getFontSizeAsBigDecimal(0);
        if (fontSizeAsBigDecimal == null) {
            return -1;
        }
        return fontSizeAsBigDecimal.intValue();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public Double getFontSizeAsDouble() {
        BigDecimal fontSizeAsBigDecimal = getFontSizeAsBigDecimal(1);
        if (fontSizeAsBigDecimal == null) {
            return null;
        }
        return Double.valueOf(fontSizeAsBigDecimal.doubleValue());
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public int getKerning() {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null || runProperties.sizeOfKernArray() == 0) {
            return 0;
        }
        return (int) POIXMLUnits.parseLength(runProperties.getKernArray(0).xgetVal());
    }

    public String getLang() {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null || runProperties.sizeOfLangArray() == 0) {
            return null;
        }
        return runProperties.getLangArray(0).getVal();
    }

    @Deprecated
    public XWPFParagraph getParagraph() {
        IRunBody iRunBody = this.parent;
        if (iRunBody instanceof XWPFParagraph) {
            return (XWPFParagraph) iRunBody;
        }
        return null;
    }

    public IRunBody getParent() {
        return this.parent;
    }

    public String getPhonetic() {
        StringBuilder sb = new StringBuilder(64);
        XmlCursor newCursor = this.run.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTRuby) {
                    handleRuby(object, sb, true);
                }
            }
            String str = this.pictureText;
            if (str != null && str.length() > 0) {
                sb.append("\n");
                sb.append(this.pictureText);
                sb.append("\n");
            }
            newCursor.close();
            return sb.toString();
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

    public String getPictureText() {
        return this.pictureText;
    }

    public CTRPr getRunProperties(boolean z) {
        CTRPr rPr = this.run.isSetRPr() ? this.run.getRPr() : null;
        return (z && rPr == null) ? this.run.addNewRPr() : rPr;
    }

    public String getStyle() {
        CTString rStyleArray;
        CTRPr rPr = getCTR().getRPr();
        return (rPr == null || rPr.sizeOfRStyleArray() <= 0 || (rStyleArray = rPr.getRStyleArray(0)) == null) ? "" : rStyleArray.getVal();
    }

    public String getText(int i) {
        if (this.run.sizeOfTArray() == 0) {
            return null;
        }
        return this.run.getTArray(i).getStringValue();
    }

    public STHighlightColor.Enum getTextHighlightColor() {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null) {
            return STHighlightColor.NONE;
        }
        STHighlightColor xgetVal = (runProperties.sizeOfHighlightArray() > 0 ? runProperties.getHighlightArray(0) : runProperties.addNewHighlight()).xgetVal();
        if (xgetVal == null) {
            xgetVal = STHighlightColor.Factory.newInstance();
            xgetVal.setEnumValue(STHighlightColor.NONE);
        }
        return (STHighlightColor.Enum) xgetVal.getEnumValue();
    }

    @Removal(version = "7.0.0")
    @Deprecated
    public STHighlightColor.Enum getTextHightlightColor() {
        return getTextHighlightColor();
    }

    public int getTextPosition() {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null || runProperties.sizeOfPositionArray() <= 0) {
            return -1;
        }
        return (int) (Units.toPoints(POIXMLUnits.parseLength(runProperties.getPositionArray(0).xgetVal())) / 2.0d);
    }

    public int getTextScale() {
        int parsePercent;
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null || runProperties.sizeOfWArray() == 0 || (parsePercent = POIXMLUnits.parsePercent(runProperties.getWArray(0).xgetVal())) == 0) {
            return 100;
        }
        return parsePercent / 1000;
    }

    public UnderlinePatterns getUnderline() {
        STUnderline.Enum val;
        UnderlinePatterns underlinePatterns = UnderlinePatterns.NONE;
        CTUnderline cTUnderline = getCTUnderline(false);
        return (cTUnderline == null || (val = cTUnderline.getVal()) == null) ? underlinePatterns : UnderlinePatterns.valueOf(val.intValue());
    }

    public String getUnderlineColor() {
        Object color = getCTUnderline(true).getColor();
        if (color == null) {
            return "auto";
        }
        if (color instanceof String) {
            return (String) color;
        }
        byte[] bArr = (byte[]) color;
        return HexDump.toHex(bArr[0]) + HexDump.toHex(bArr[1]) + HexDump.toHex(bArr[2]);
    }

    public STThemeColor.Enum getUnderlineThemeColor() {
        CTUnderline cTUnderline = getCTUnderline(false);
        return cTUnderline != null ? cTUnderline.getThemeColor() : STThemeColor.NONE;
    }

    public STVerticalAlignRun.Enum getVerticalAlignment() {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null) {
            return STVerticalAlignRun.BASELINE;
        }
        STVerticalAlignRun.Enum val = (runProperties.sizeOfVertAlignArray() > 0 ? runProperties.getVertAlignArray(0) : runProperties.addNewVertAlign()).getVal();
        return val == null ? STVerticalAlignRun.BASELINE : val;
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isBold() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfBArray() > 0 && isCTOnOff(runProperties.getBArray(0));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isCapitalized() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfCapsArray() > 0 && isCTOnOff(runProperties.getCapsArray(0));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isDoubleStrikeThrough() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfDstrikeArray() > 0 && isCTOnOff(runProperties.getDstrikeArray(0));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isEmbossed() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfEmbossArray() > 0 && isCTOnOff(runProperties.getEmbossArray(0));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isHighlighted() {
        STHighlightColor.Enum val;
        CTRPr runProperties = getRunProperties(false);
        return (runProperties == null || runProperties.sizeOfHighlightArray() == 0 || (val = runProperties.getHighlightArray(0).getVal()) == null || val == STHighlightColor.NONE) ? false : true;
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isImprinted() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfImprintArray() > 0 && isCTOnOff(runProperties.getImprintArray(0));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isItalic() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfIArray() > 0 && isCTOnOff(runProperties.getIArray(0));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isShadowed() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfShadowArray() > 0 && isCTOnOff(runProperties.getShadowArray(0));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isSmallCaps() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfSmallCapsArray() > 0 && isCTOnOff(runProperties.getSmallCapsArray(0));
    }

    @Deprecated
    public boolean isStrike() {
        return isStrikeThrough();
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public boolean isStrikeThrough() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfStrikeArray() > 0 && isCTOnOff(runProperties.getStrikeArray(0));
    }

    public boolean isVanish() {
        CTRPr runProperties = getRunProperties(false);
        return runProperties != null && runProperties.sizeOfVanishArray() > 0 && isCTOnOff(runProperties.getVanishArray(0));
    }

    public void readDocument() {
        if (XmlBeanUtils.parseDocument()) {
            for (CTDrawing cTDrawing : this.run.getDrawingArray()) {
                for (CTAnchor cTAnchor : cTDrawing.getAnchorArray()) {
                    if (cTAnchor.getDocPr() != null) {
                        getDocument().getDrawingIdManager().reserve(cTAnchor.getDocPr().getId());
                    }
                }
                for (CTInline cTInline : cTDrawing.getInlineArray()) {
                    if (cTInline.getDocPr() != null) {
                        getDocument().getDrawingIdManager().reserve(cTInline.getDocPr().getId());
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(Arrays.asList(this.run.getPictArray()));
            arrayList.addAll(Arrays.asList(this.run.getDrawingArray()));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                for (XmlObject xmlObject : ((XmlObject) it2.next()).selectPath("declare namespace w='http://schemas.openxmlformats.org/wordprocessingml/2006/main' .//w:t")) {
                    NodeList childNodes = xmlObject.getDomNode().getChildNodes();
                    for (int i = 0; i < childNodes.getLength(); i++) {
                        if (childNodes.item(i) instanceof Text) {
                            if (sb.length() > 0) {
                                sb.append("\n");
                            }
                            sb.append(childNodes.item(i).getNodeValue());
                        }
                    }
                }
            }
            this.pictureText = sb.toString();
            this.pictures = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                Iterator<CTPicture> it4 = getCTPictures((XmlObject) it3.next()).iterator();
                while (it4.hasNext()) {
                    this.pictures.add(new XWPFPicture(it4.next(), this));
                }
            }
        }
    }

    public void removeBreak() {
    }

    public void removeCarriageReturn() {
    }

    public void removeTab() {
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setBold(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfBArray() > 0 ? runProperties.getBArray(0) : runProperties.addNewB()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setCapitalized(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfCapsArray() > 0 ? runProperties.getCapsArray(0) : runProperties.addNewCaps()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setCharacterSpacing(int i) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfSpacingArray() > 0 ? runProperties.getSpacingArray(0) : runProperties.addNewSpacing()).setVal(BigInteger.valueOf(i));
    }

    public void setColor(String str) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfColorArray() > 0 ? runProperties.getColorArray(0) : runProperties.addNewColor()).setVal(str);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setDoubleStrikethrough(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfDstrikeArray() > 0 ? runProperties.getDstrikeArray(0) : runProperties.addNewDstrike()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setEmbossed(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfEmbossArray() > 0 ? runProperties.getEmbossArray(0) : runProperties.addNewEmboss()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    public void setEmphasisMark(String str) {
        CTRPr runProperties = getRunProperties(true);
        CTEm emArray = runProperties.sizeOfEmArray() > 0 ? runProperties.getEmArray(0) : runProperties.addNewEm();
        STEm xgetVal = emArray.xgetVal();
        if (xgetVal == null) {
            xgetVal = STEm.Factory.newInstance();
        }
        STEm.Enum forString = STEm.Enum.forString(str);
        if (forString != null) {
            xgetVal.setStringValue(forString.toString());
            emArray.xsetVal(xgetVal);
        }
    }

    public void setFontFamily(String str) {
        setFontFamily(str, null);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setFontSize(int i) {
        BigInteger valueOf = BigInteger.valueOf(i);
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfSzArray() > 0 ? runProperties.getSzArray(0) : runProperties.addNewSz()).setVal(valueOf.multiply(BigInteger.valueOf(2L)));
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setImprinted(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfImprintArray() > 0 ? runProperties.getImprintArray(0) : runProperties.addNewImprint()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setItalic(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfIArray() > 0 ? runProperties.getIArray(0) : runProperties.addNewI()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setKerning(int i) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfKernArray() > 0 ? runProperties.getKernArray(0) : runProperties.addNewKern()).setVal(BigInteger.valueOf(i));
    }

    public void setLang(String str) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfLangArray() > 0 ? runProperties.getLangArray(0) : runProperties.addNewLang()).setVal(str);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setShadow(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfShadowArray() > 0 ? runProperties.getShadowArray(0) : runProperties.addNewShadow()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setSmallCaps(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfSmallCapsArray() > 0 ? runProperties.getSmallCapsArray(0) : runProperties.addNewSmallCaps()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    @Deprecated
    public void setStrike(boolean z) {
        setStrikeThrough(z);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setStrikeThrough(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfStrikeArray() > 0 ? runProperties.getStrikeArray(0) : runProperties.addNewStrike()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    public void setStyle(String str) {
        CTRPr rPr = getCTR().getRPr();
        if (rPr == null) {
            rPr = getCTR().addNewRPr();
        }
        (rPr.sizeOfRStyleArray() > 0 ? rPr.getRStyleArray(0) : rPr.addNewRStyle()).setVal(str);
    }

    public void setSubscript(VerticalAlign verticalAlign) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfVertAlignArray() > 0 ? runProperties.getVertAlignArray(0) : runProperties.addNewVertAlign()).setVal(STVerticalAlignRun.Enum.forInt(verticalAlign.getValue()));
    }

    public void setText(String str) {
        setText(str, this.run.sizeOfTArray());
    }

    public void setTextHighlightColor(String str) {
        CTRPr runProperties = getRunProperties(true);
        CTHighlight highlightArray = runProperties.sizeOfHighlightArray() > 0 ? runProperties.getHighlightArray(0) : runProperties.addNewHighlight();
        STHighlightColor xgetVal = highlightArray.xgetVal();
        if (xgetVal == null) {
            xgetVal = STHighlightColor.Factory.newInstance();
        }
        STHighlightColor.Enum forString = STHighlightColor.Enum.forString(str);
        if (forString != null) {
            xgetVal.setStringValue(forString.toString());
            highlightArray.xsetVal(xgetVal);
        }
    }

    public void setTextPosition(int i) {
        BigInteger bigInteger = new BigInteger(Integer.toString(i));
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfPositionArray() > 0 ? runProperties.getPositionArray(0) : runProperties.addNewPosition()).setVal(bigInteger);
    }

    public void setTextScale(int i) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfWArray() > 0 ? runProperties.getWArray(0) : runProperties.addNewW()).setVal(Integer.valueOf(i));
    }

    public void setUnderline(UnderlinePatterns underlinePatterns) {
        getCTUnderline(true).setVal(STUnderline.Enum.forInt(underlinePatterns.getValue()));
    }

    public void setUnderlineColor(String str) {
        SimpleValue simpleValue;
        CTUnderline cTUnderline = getCTUnderline(true);
        if (str.equals("auto")) {
            STHexColorAuto newInstance = STHexColorAuto.Factory.newInstance();
            newInstance.setEnumValue(STHexColorAuto.Enum.forString(str));
            simpleValue = (SimpleValue) newInstance;
        } else {
            STHexColorRGB newInstance2 = STHexColorRGB.Factory.newInstance();
            newInstance2.setStringValue(str);
            simpleValue = (SimpleValue) newInstance2;
        }
        cTUnderline.setColor(simpleValue);
    }

    public void setUnderlineThemeColor(String str) {
        CTUnderline cTUnderline = getCTUnderline(true);
        STThemeColor.Enum forString = STThemeColor.Enum.forString(str);
        if (forString != null) {
            cTUnderline.setThemeColor(forString);
        }
    }

    public void setVanish(boolean z) {
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfVanishArray() > 0 ? runProperties.getVanishArray(0) : runProperties.addNewVanish()).setVal(z ? STOnOff1.f115762ON : STOnOff1.OFF);
    }

    public void setVerticalAlignment(String str) {
        CTRPr runProperties = getRunProperties(true);
        CTVerticalAlignRun vertAlignArray = runProperties.sizeOfVertAlignArray() > 0 ? runProperties.getVertAlignArray(0) : runProperties.addNewVertAlign();
        STVerticalAlignRun xgetVal = vertAlignArray.xgetVal();
        if (xgetVal == null) {
            xgetVal = STVerticalAlignRun.Factory.newInstance();
        }
        STVerticalAlignRun.Enum forString = STVerticalAlignRun.Enum.forString(str);
        if (forString != null) {
            xgetVal.setStringValue(forString.toString());
            vertAlignArray.xsetVal(xgetVal);
        }
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public String text() {
        StringBuilder sb = new StringBuilder(64);
        XmlCursor newCursor = this.run.newCursor();
        try {
            newCursor.selectPath("./*");
            while (newCursor.toNextSelection()) {
                XmlObject object = newCursor.getObject();
                if (object instanceof CTRuby) {
                    handleRuby(object, sb, false);
                } else {
                    _getText(object, sb);
                }
            }
            newCursor.close();
            return sb.toString();
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

    public String toString() {
        String phonetic = getPhonetic();
        if (phonetic.length() <= 0) {
            return text();
        }
        return text() + " (" + phonetic + MotionUtils.f31762d;
    }

    public void addBreak(BreakType breakType) {
        this.run.addNewBr().setType(STBrType.Enum.forInt(breakType.getValue()));
    }

    public XWPFPicture addPicture(InputStream inputStream, PictureType pictureType, String str, int i, int i2) throws InvalidFormatException, IOException {
        XWPFPictureData xWPFPictureData;
        if (pictureType != null) {
            if (this.parent.getPart() instanceof XWPFHeaderFooter) {
                XWPFHeaderFooter xWPFHeaderFooter = (XWPFHeaderFooter) this.parent.getPart();
                xWPFPictureData = (XWPFPictureData) xWPFHeaderFooter.getRelationById(xWPFHeaderFooter.addPictureData(inputStream, pictureType));
            } else if (this.parent.getPart() instanceof XWPFComments) {
                XWPFComments xWPFComments = (XWPFComments) this.parent.getPart();
                xWPFPictureData = (XWPFPictureData) xWPFComments.getRelationById(xWPFComments.addPictureData(inputStream, pictureType));
            } else {
                XWPFDocument document = this.parent.getDocument();
                xWPFPictureData = (XWPFPictureData) document.getRelationById(document.addPictureData(inputStream, pictureType));
            }
            try {
                CTInline addNewInline = this.run.addNewDrawing().addNewInline();
                StringBuilder sb = new StringBuilder();
                sb.append("<a:graphic xmlns:a=\"");
                sb.append(CTGraphicalObject.type.getName().getNamespaceURI());
                sb.append("\"><a:graphicData uri=\"");
                SchemaType schemaType = CTPicture.type;
                sb.append(schemaType.getName().getNamespaceURI());
                sb.append("\"><pic:pic xmlns:pic=\"");
                sb.append(schemaType.getName().getNamespaceURI());
                sb.append("\" /></a:graphicData></a:graphic>");
                addNewInline.set(XmlToken.Factory.parse(DocumentHelper.readDocument(new InputSource(new StringReader(sb.toString()))).getDocumentElement(), POIXMLTypeLoader.DEFAULT_XML_OPTIONS));
                addNewInline.setDistT(0L);
                addNewInline.setDistR(0L);
                addNewInline.setDistB(0L);
                addNewInline.setDistL(0L);
                CTNonVisualDrawingProps addNewDocPr = addNewInline.addNewDocPr();
                long reserveNew = getParent().getDocument().getDrawingIdManager().reserveNew();
                addNewDocPr.setId(reserveNew);
                addNewDocPr.setName("Drawing " + reserveNew);
                addNewDocPr.setDescr(str);
                CTPositiveSize2D addNewExtent = addNewInline.addNewExtent();
                long j = (long) i;
                addNewExtent.setCx(j);
                long j2 = i2;
                addNewExtent.setCy(j2);
                CTPicture cTPicture = getCTPictures(addNewInline.getGraphic().getGraphicData()).get(0);
                CTPictureNonVisual addNewNvPicPr = cTPicture.addNewNvPicPr();
                CTNonVisualDrawingProps addNewCNvPr = addNewNvPicPr.addNewCNvPr();
                addNewCNvPr.setId(0L);
                addNewCNvPr.setName("Picture " + reserveNew);
                addNewCNvPr.setDescr(str);
                addNewNvPicPr.addNewCNvPicPr().addNewPicLocks().setNoChangeAspect(true);
                CTBlipFillProperties addNewBlipFill = cTPicture.addNewBlipFill();
                addNewBlipFill.addNewBlip().setEmbed(this.parent.getPart().getRelationId(xWPFPictureData));
                addNewBlipFill.addNewStretch().addNewFillRect();
                CTShapeProperties addNewSpPr = cTPicture.addNewSpPr();
                CTTransform2D addNewXfrm = addNewSpPr.addNewXfrm();
                CTPoint2D addNewOff = addNewXfrm.addNewOff();
                addNewOff.setX(0);
                addNewOff.setY(0);
                CTPositiveSize2D addNewExt = addNewXfrm.addNewExt();
                addNewExt.setCx(j);
                addNewExt.setCy(j2);
                CTPresetGeometry2D addNewPrstGeom = addNewSpPr.addNewPrstGeom();
                addNewPrstGeom.setPrst(STShapeType.RECT);
                addNewPrstGeom.addNewAvLst();
                XWPFPicture xWPFPicture = new XWPFPicture(cTPicture, this);
                this.pictures.add(xWPFPicture);
                return xWPFPicture;
            } catch (XmlException | SAXException e) {
                throw new IllegalStateException(e);
            }
        }
        throw new InvalidFormatException("pictureType is not supported");
    }

    public String getFontFamily(FontCharRange fontCharRange) {
        CTRPr runProperties = getRunProperties(false);
        if (runProperties == null || runProperties.sizeOfRFontsArray() == 0) {
            return null;
        }
        CTFonts rFontsArray = runProperties.getRFontsArray(0);
        int[] iArr = C199901.$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange;
        if (fontCharRange == null) {
            fontCharRange = FontCharRange.ascii;
        }
        int i = iArr[fontCharRange.ordinal()];
        if (i == 2) {
            return rFontsArray.getCs();
        }
        if (i == 3) {
            return rFontsArray.getEastAsia();
        }
        if (i != 4) {
            return rFontsArray.getAscii();
        }
        return rFontsArray.getHAnsi();
    }

    public void setFontFamily(String str, FontCharRange fontCharRange) {
        CTRPr runProperties = getRunProperties(true);
        CTFonts rFontsArray = runProperties.sizeOfRFontsArray() > 0 ? runProperties.getRFontsArray(0) : runProperties.addNewRFonts();
        if (fontCharRange == null) {
            rFontsArray.setAscii(str);
            if (!rFontsArray.isSetHAnsi()) {
                rFontsArray.setHAnsi(str);
            }
            if (!rFontsArray.isSetCs()) {
                rFontsArray.setCs(str);
            }
            if (rFontsArray.isSetEastAsia()) {
                return;
            }
            rFontsArray.setEastAsia(str);
            return;
        }
        int i = C199901.$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange[fontCharRange.ordinal()];
        if (i == 1) {
            rFontsArray.setAscii(str);
            return;
        }
        if (i == 2) {
            rFontsArray.setCs(str);
        } else if (i == 3) {
            rFontsArray.setEastAsia(str);
        } else {
            if (i != 4) {
                return;
            }
            rFontsArray.setHAnsi(str);
        }
    }

    public void setText(String str, int i) {
        if (i <= this.run.sizeOfTArray()) {
            CTText addNewT = (i >= this.run.sizeOfTArray() || i < 0) ? this.run.addNewT() : this.run.getTArray(i);
            addNewT.setStringValue(str);
            preserveSpaces(addNewT);
            return;
        }
        throw new ArrayIndexOutOfBoundsException("Value too large for the parameter position in XWPFRun.setText(String value,int pos)");
    }

    public void addBreak(BreakClear breakClear) {
        CTBr addNewBr = this.run.addNewBr();
        addNewBr.setType(STBrType.Enum.forInt(BreakType.TEXT_WRAPPING.getValue()));
        addNewBr.setClear(STBrClear.Enum.forInt(breakClear.getValue()));
    }

    @Deprecated
    public XWPFRun(CTR ctr, XWPFParagraph xWPFParagraph) {
        this(ctr, (IRunBody) xWPFParagraph);
    }

    @Override // org.apache.poi.p114wp.usermodel.CharacterRun
    public void setFontSize(double d) {
        BigDecimal valueOf = BigDecimal.valueOf(d);
        CTRPr runProperties = getRunProperties(true);
        (runProperties.sizeOfSzArray() > 0 ? runProperties.getSzArray(0) : runProperties.addNewSz()).setVal(valueOf.multiply(BigDecimal.valueOf(2L)).setScale(0, RoundingMode.HALF_UP).toBigInteger());
    }
}
