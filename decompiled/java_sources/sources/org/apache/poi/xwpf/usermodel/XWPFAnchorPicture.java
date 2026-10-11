package org.apache.poi.xwpf.usermodel;

import org.apache.poi.common.XmlBeanUtils;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.style.ParagraphStyles;
import org.apache.poi.style.page.PageStyles;
import org.apache.poi.util.ExtUnits;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTAnchor;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosH;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.CTPosV;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STAlignH;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STAlignV;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STRelFromH;
import org.openxmlformats.schemas.drawingml.x2006.wordprocessingDrawing.STRelFromV;

/* loaded from: classes13.dex */
public class XWPFAnchorPicture extends XWPFPicturePart implements AbsolutePicture {
    private boolean behindDoc;
    private CTAnchor ctAnchor;

    public XWPFAnchorPicture(XWPFPicture xWPFPicture, CTAnchor cTAnchor) {
        super(xWPFPicture);
        this.ctAnchor = cTAnchor;
        this.behindDoc = cTAnchor.getBehindDoc();
        initPosition();
        if (this.behindDoc) {
            this.position = Position.ABSOLUTE;
        }
    }

    private void appendLengthStyle(StringBuilder sb, String str, float f) {
        if (f != 0.0f) {
            sb.append(str);
            sb.append(f);
            sb.append("px;");
        }
    }

    private float getPageLeft(PageStyles pageStyles, ParagraphStyles paragraphStyles, double d) {
        return WordToHtmlUtils.isNull(paragraphStyles) ? ExtUnits.getFormatValue(this.offsetX) : ExtUnits.getFormatValue((d - pageStyles.getPageMargin().getLeft()) + getParagraphLeft(paragraphStyles, this.offsetX));
    }

    private float getParagraphLeft(ParagraphStyles paragraphStyles, double d) {
        if (WordToHtmlUtils.isNull(paragraphStyles)) {
            return ExtUnits.getFormatValue(d);
        }
        return ExtUnits.getFormatValue(d - ((WordToHtmlUtils.isNull(paragraphStyles.getTextIndent()) ? 0.0f : r1.getNumberValue()) + paragraphStyles.getMarginStyles().getLeftNumberValue()));
    }

    private float getParagraphTop(ParagraphStyles paragraphStyles, double d) {
        return WordToHtmlUtils.isNull(paragraphStyles) ? ExtUnits.getFormatValue(d) : ExtUnits.getFormatValue(d - paragraphStyles.getMarginStyles().getTopNumberValue());
    }

    private void initPosition() {
        CTPosH positionH = this.ctAnchor.getPositionH();
        if (WordToHtmlUtils.isNull(positionH)) {
            this.position = Position.ABSOLUTE;
            return;
        }
        STAlignH.Enum align = positionH.getAlign();
        if (WordToHtmlUtils.isNull(align)) {
            this.position = Position.ABSOLUTE;
            return;
        }
        int intValue = align.intValue();
        if (intValue == 1) {
            this.position = Position.FLOAT_LEFT;
        } else if (intValue != 2) {
            this.LOG.atError().log("PictureH align: {}", align);
        } else {
            this.position = Position.FLOAT_RIGHT;
        }
    }

    private void parsePositionHStyle(StringBuilder sb, PageStyles pageStyles, ParagraphStyles paragraphStyles) {
        CTPosH positionH = this.ctAnchor.getPositionH();
        if (WordToHtmlUtils.isNull(positionH)) {
            appendLengthStyle(sb, "margin-left:", getParagraphLeft(paragraphStyles, this.offsetX));
            return;
        }
        STRelFromH.Enum relativeFrom = positionH.getRelativeFrom();
        if (WordToHtmlUtils.isNull(relativeFrom)) {
            this.LOG.atError().log("Not found positionH relative");
            return;
        }
        double emuToPixel = ExtUnits.emuToPixel(positionH.getPosOffset());
        int intValue = relativeFrom.intValue();
        if (intValue == 2) {
            appendLengthStyle(sb, "margin-left:", getPageLeft(pageStyles, paragraphStyles, emuToPixel));
        } else if (intValue == 3) {
            appendLengthStyle(sb, "margin-left:", getParagraphLeft(paragraphStyles, this.offsetX + emuToPixel));
        } else {
            appendLengthStyle(sb, "margin-left:", getParagraphLeft(paragraphStyles, this.offsetX + emuToPixel));
            this.LOG.atError().log("STRelFromH, name: {}, relative: {}", this.name, relativeFrom);
        }
    }

    private void parsePositionVStyle(StringBuilder sb, ParagraphStyles paragraphStyles) {
        CTPosV positionV = this.ctAnchor.getPositionV();
        if (WordToHtmlUtils.isNull(positionV)) {
            appendLengthStyle(sb, "margin-top:", getParagraphTop(paragraphStyles, this.offsetY));
            return;
        }
        STAlignV.Enum align = positionV.getAlign();
        if (!WordToHtmlUtils.isNull(align)) {
            this.LOG.atError().log("PictureV align: {}", align);
        }
        STRelFromV.Enum relativeFrom = positionV.getRelativeFrom();
        if (WordToHtmlUtils.isNull(relativeFrom)) {
            this.LOG.atError().log("Not found positionV relative");
            appendLengthStyle(sb, "margin-top:", getParagraphTop(paragraphStyles, this.offsetY));
            return;
        }
        double emuToPixel = ExtUnits.emuToPixel(positionV.getPosOffset());
        int intValue = relativeFrom.intValue();
        if (intValue == 2) {
            appendLengthStyle(sb, "margin-top:", getParagraphTop(paragraphStyles, this.offsetY));
        } else if (intValue == 3) {
            appendLengthStyle(sb, "margin-top:", getParagraphTop(paragraphStyles, this.offsetY + emuToPixel));
        } else {
            appendLengthStyle(sb, "margin-top:", getParagraphTop(paragraphStyles, this.offsetY + emuToPixel));
            this.LOG.atError().log("STRelFromV, name: {}, relative: {}", this.name, relativeFrom);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFPicturePart, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        XmlBeanUtils.freeMemory(this.ctAnchor);
    }

    @Override // org.apache.poi.xwpf.usermodel.AbsolutePicture
    public String getAbsolutePositionStyle(PageStyles pageStyles, ParagraphStyles paragraphStyles) {
        if (this.position != Position.ABSOLUTE) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        parsePositionHStyle(sb, pageStyles, paragraphStyles);
        parsePositionVStyle(sb, paragraphStyles);
        return sb.toString();
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public boolean isBehindDoc() {
        return this.behindDoc;
    }
}
