package org.apache.poi.convert.xwpf.handler;

import java.math.BigInteger;
import java.util.ArrayDeque;
import java.util.Deque;
import org.apache.poi.convert.HtmlDocumentFacade;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.htmlgen.ConverterContext;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.LineHeight;
import org.apache.poi.style.ParagraphStyles;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.xwpf.usermodel.FldCharState;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFSettings;
import org.apache.poi.xwpf.usermodel.XWPFStyle;
import org.apache.poi.xwpf.usermodel.XWPFStyles;
import org.apache.poi.xwpf.usermodel.XWPFTheme;
import org.jsoup.nodes.Element;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocGrid;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSectPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyle;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTStyles;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocGrid;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STStyleType;

/* loaded from: classes12.dex */
public class XWPFContext extends ConverterContext {
    Element commentContainer;
    XWPFStyle defaultStyle;
    boolean docGridLine;
    XWPFDocument document;
    FldCharState fldCharState;
    Element fldContainer;
    LineHeight lineHeight;
    UnitValue linePitch;
    Element noteContainer;
    NumberingHandler numberingHandler;
    Deque<ParagraphStyles> paragraphStylesDeque;
    XWPFSettings settings;
    XWPFStyles styles;
    XWPFTheme theme;
    int tocIndex;

    public XWPFContext(XWPFDocument xWPFDocument, HtmlDocumentFacade htmlDocumentFacade) {
        super(htmlDocumentFacade);
        this.document = xWPFDocument;
        init();
        this.paragraphStylesDeque = new ArrayDeque();
        this.numberingHandler = new NumberingHandler(xWPFDocument.getNumbering());
    }

    private XWPFStyle getDefaultStyle(XWPFStyles xWPFStyles) {
        for (XWPFStyle xWPFStyle : xWPFStyles.listStyle) {
            CTStyle cTStyle = xWPFStyle.getCTStyle();
            if (STStyleType.PARAGRAPH.equals(cTStyle.getType()) && POIXMLUnits.parseOnOff(cTStyle.xgetDefault())) {
                return xWPFStyle;
            }
        }
        return null;
    }

    private void init() {
        XWPFTheme theme = this.document.getTheme();
        this.theme = theme;
        if (WordToHtmlUtils.isNull(theme)) {
            this.theme = new XWPFTheme();
        }
        XWPFSettings settings = this.document.getSettings();
        this.settings = settings;
        if (WordToHtmlUtils.isNull(settings)) {
            this.settings = new XWPFSettings();
        }
        XWPFStyles styles = this.document.getStyles();
        this.styles = styles;
        if (!WordToHtmlUtils.isNull(styles)) {
            this.defaultStyle = getDefaultStyle(this.styles);
            return;
        }
        XWPFStyles xWPFStyles = new XWPFStyles();
        this.styles = xWPFStyles;
        xWPFStyles.setStyles(CTStyles.Factory.newInstance());
    }

    private void readBodySectPr(CTSectPr cTSectPr) {
        if (cTSectPr.isSetDocGrid()) {
            CTDocGrid docGrid = cTSectPr.getDocGrid();
            STDocGrid.Enum type = docGrid.getType();
            BigInteger linePitch = docGrid.getLinePitch();
            if (type != STDocGrid.LINES || WordToHtmlUtils.isNull(linePitch)) {
                return;
            }
            this.docGridLine = true;
            this.linePitch = UnitValue.fromPX(ExtUnits.dxaToPixel(linePitch.intValue()));
        }
    }

    public void addLast(ParagraphStyles paragraphStyles) {
        this.paragraphStylesDeque.addLast(paragraphStyles);
    }

    public LineHeight getLineHeight() {
        if (WordToHtmlUtils.isNull(this.lineHeight)) {
            LineHeight lineHeight = new LineHeight();
            this.lineHeight = lineHeight;
            lineHeight.setDocGridLine(this.docGridLine);
            this.lineHeight.setLinePitch(this.linePitch);
        }
        return this.lineHeight;
    }

    public boolean isInFldChar() {
        FldCharState fldCharState = this.fldCharState;
        return fldCharState == FldCharState.BEGIN || fldCharState == FldCharState.SEPARATE;
    }

    public ParagraphStyles peekLast() {
        return this.paragraphStylesDeque.peekLast();
    }

    public ParagraphStyles pollLast() {
        return this.paragraphStylesDeque.pollLast();
    }

    public void setCurrentSectPr(CTSectPr cTSectPr) {
        readBodySectPr(cTSectPr);
        this.lineHeight = null;
    }
}
