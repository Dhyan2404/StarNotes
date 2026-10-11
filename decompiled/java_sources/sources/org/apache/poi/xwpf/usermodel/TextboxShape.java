package org.apache.poi.xwpf.usermodel;

import com.microsoft.schemas.vml.CTTextbox;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.font.TextAttribute;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.function.BiConsumer;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.convert.WordToHtmlUtils;
import org.apache.poi.convert.xwpf.XWPFWordToHtmlUtils;
import org.apache.poi.convert.xwpf.property.ParagraphPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyFetcher;
import org.apache.poi.convert.xwpf.property.RunPropertyListFetcher;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.style.TextStyles;
import org.apache.poi.style.UnitValue;
import org.apache.poi.util.ColorUtils;
import org.apache.poi.util.ExtUnits;
import org.apache.poi.util.StringUtils;
import org.apache.poi.util.Units;
import org.apache.poi.xwpf.usermodel.TextParagraph;
import org.apache.poi.xwpf.usermodel.TextboxShape;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSpacing;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTxbxContent;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLineSpacingRule;

/* loaded from: classes13.dex */
public class TextboxShape extends XWPFShape<CTTextbox> {
    private Insets insets;
    private List<TextParagraph> list;

    public TextboxShape(ShapeContainer<XWPFShape<?>> shapeContainer, CTTextbox cTTextbox) {
        super(shapeContainer, cTTextbox);
        this.list = new ArrayList();
    }

    private void fetchParagraphStyle(TextParagraph textParagraph, CTP ctp) {
        CTPPr pPr = ctp.getPPr();
        if (pPr != null) {
            ParagraphPropertyFetcher paragraphPropertyFetcher = new ParagraphPropertyFetcher(pPr);
            textParagraph.lineSpacing = parseLineSpace(paragraphPropertyFetcher);
            if (!WordToHtmlUtils.isNull(paragraphPropertyFetcher.getSpacingBefore())) {
                textParagraph.spaceBefore = r3.getNumberValue();
            }
            if (!WordToHtmlUtils.isNull(paragraphPropertyFetcher.getSpacingAfter())) {
                textParagraph.spaceAfter = r3.getNumberValue();
            }
            if (WordToHtmlUtils.isNull(paragraphPropertyFetcher.getIndentationFirstLineChars())) {
                if (!WordToHtmlUtils.isNull(paragraphPropertyFetcher.getIndentationFirstLine())) {
                    textParagraph.indent = r3.getNumberValue();
                }
            } else {
                textParagraph.indent = r3.getNumberValue();
            }
            if (!WordToHtmlUtils.isNull(paragraphPropertyFetcher.getIndentationLeft())) {
                textParagraph.marginLeft = r3.getNumberValue();
            }
            if (WordToHtmlUtils.isNull(paragraphPropertyFetcher.getIndentationRight())) {
                return;
            }
            textParagraph.marginRight = r3.getNumberValue();
        }
    }

    private List<TextParagraph.AttributedStringData> getAttributedString(CTP ctp, StringBuilder sb) {
        if (sb == null) {
            sb = new StringBuilder();
        }
        HashMap hashMap = new HashMap();
        final ArrayList arrayList = new ArrayList();
        CTR[] rArray = ctp.getRArray();
        int length = rArray.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            CTR ctr = rArray[i];
            if (ctr.sizeOfTArray() != 0) {
                String stringValue = ctr.getTArray(0).getStringValue();
                if (!StringUtils.isNullOrEmpty(stringValue)) {
                    final int length2 = sb.length();
                    sb.append(stringValue);
                    final int length3 = sb.length();
                    CTRPr rPr = ctr.getRPr();
                    if (rPr != null) {
                        FontGroup fontGroupFirst = FontGroup.getFontGroupFirst(stringValue);
                        RunPropertyListFetcher runPropertyListFetcher = new RunPropertyListFetcher(null);
                        runPropertyListFetcher.addFetcher(new RunPropertyFetcher(rPr));
                        hashMap.put(TextAttribute.FOREGROUND, ColorUtils.decode(runPropertyListFetcher.getColor()));
                        UnitValue fontSize = runPropertyListFetcher.getFontSize(fontGroupFirst);
                        if (WordToHtmlUtils.isNull(fontSize)) {
                            fontSize = TextStyles.DEFAULT_FONT_SIZE;
                        }
                        hashMap.put(TextAttribute.SIZE, Float.valueOf(fontSize.getNumberValue()));
                        String fontFamily = runPropertyListFetcher.getFontFamily(fontGroupFirst);
                        hashMap.put(TextAttribute.FAMILY, fontFamily != null ? fontFamily : "Serif");
                    }
                    hashMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.ugn
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            TextboxShape.lambda$getAttributedString$0(arrayList, length2, length3, (AttributedCharacterIterator.Attribute) obj, obj2);
                        }
                    });
                }
            }
            i++;
        }
        if (sb.length() == 0) {
            sb.append(" ");
            hashMap.put(TextAttribute.SIZE, 12);
            hashMap.put(TextAttribute.FAMILY, "Serif");
            hashMap.put(TextAttribute.FONT, new Font(hashMap));
            hashMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.vgn
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    TextboxShape.lambda$getAttributedString$1(arrayList, (AttributedCharacterIterator.Attribute) obj, obj2);
                }
            });
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAttributedString$0(List list, int i, int i2, AttributedCharacterIterator.Attribute attribute, Object obj) {
        list.add(new TextParagraph.AttributedStringData(attribute, obj, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAttributedString$1(List list, AttributedCharacterIterator.Attribute attribute, Object obj) {
        list.add(new TextParagraph.AttributedStringData(attribute, obj, 0, 1));
    }

    private Insets parseInset(String str) {
        if (str == null) {
            return new Insets(0, 0, 0, 0);
        }
        String[] split = str.split(",");
        if (split.length != 4) {
            return new Insets(0, 0, 0, 0);
        }
        return new Insets((int) XWPFWordToHtmlUtils.parseNumberValue(split[0]), (int) XWPFWordToHtmlUtils.parseNumberValue(split[1]), (int) XWPFWordToHtmlUtils.parseNumberValue(split[3]), (int) XWPFWordToHtmlUtils.parseNumberValue(split[2]));
    }

    private Double parseLineSpace(ParagraphPropertyFetcher paragraphPropertyFetcher) {
        CTSpacing cTSpacing = paragraphPropertyFetcher.getCTSpacing();
        if (WordToHtmlUtils.isNull(cTSpacing) || !cTSpacing.isSetLine()) {
            return null;
        }
        double dxa = Units.toDXA(POIXMLUnits.parseLength(cTSpacing.xgetLine()));
        STLineSpacingRule.Enum lineSpaceRule = XWPFWordToHtmlUtils.getLineSpaceRule(cTSpacing);
        if (lineSpaceRule == STLineSpacingRule.AT_LEAST) {
            return null;
        }
        return lineSpaceRule == STLineSpacingRule.EXACT ? Double.valueOf(-ExtUnits.dxaToPixel(dxa)) : Double.valueOf((dxa / 240.0d) * 100.0d);
    }

    private void parseTextParagraph(Graphics2D graphics2D) {
        CTTxbxContent txbxContent;
        if (!this.list.isEmpty() || (txbxContent = getXmlObject().getTxbxContent()) == null || txbxContent.sizeOfPArray() == 0) {
            return;
        }
        for (CTP ctp : txbxContent.getPArray()) {
            TextParagraph textParagraph = new TextParagraph(this.parent.getAnchor(), this.insets);
            fetchParagraphStyle(textParagraph, ctp);
            StringBuilder sb = new StringBuilder();
            textParagraph.breakText(graphics2D, sb.toString(), getAttributedString(ctp, sb));
            this.list.add(textParagraph);
        }
    }

    @Override // org.apache.poi.xwpf.usermodel.Shape
    public void draw(Graphics2D graphics2D) {
        parseTextParagraph(graphics2D);
        Rectangle2D anchor = this.parent.getAnchor();
        if (anchor.isEmpty()) {
            return;
        }
        TextParagraph.draw(graphics2D, this.list, anchor.getX() + this.insets.left, anchor.getY() + this.insets.top);
    }

    @Override // org.apache.poi.xwpf.usermodel.XWPFShape
    public void parseShapeProperties(CTTextbox cTTextbox) {
        parseStyleProperties(cTTextbox.getStyle());
        this.properties.shapeId = cTTextbox.getId();
        this.insets = parseInset(cTTextbox.getInset());
    }
}
