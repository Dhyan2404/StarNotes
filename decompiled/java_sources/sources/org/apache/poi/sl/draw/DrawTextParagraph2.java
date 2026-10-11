package org.apache.poi.sl.draw;

import com.sunia.HTREnginev2.c5i;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.font.FontRenderContext;
import java.awt.font.LineBreakMeasurer;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.text.BreakIterator;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import org.apache.poi.common.MathJc;
import org.apache.poi.common.MathUtils;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.sl.draw.DrawTextParagraph;
import org.apache.poi.sl.draw.DrawTextParagraph2;
import org.apache.poi.sl.usermodel.AutoNumberingScheme;
import org.apache.poi.sl.usermodel.HighlightColorSupport;
import org.apache.poi.sl.usermodel.Hyperlink;
import org.apache.poi.sl.usermodel.Insets2D;
import org.apache.poi.sl.usermodel.PaintStyle;
import org.apache.poi.sl.usermodel.PlaceableShape;
import org.apache.poi.sl.usermodel.PlaceholderDetails;
import org.apache.poi.sl.usermodel.SimpleShape;
import org.apache.poi.sl.usermodel.Slide;
import org.apache.poi.sl.usermodel.TextParagraph;
import org.apache.poi.sl.usermodel.TextRun;
import org.apache.poi.sl.usermodel.TextShape;
import org.apache.poi.style.TextStyles;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public class DrawTextParagraph2 extends DrawTextParagraph {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final String LATEX_END = "</latex>";
    private static final String LATEX_JC_END = "</jc>";
    private static final String LATEX_JC_START = "<jc>";
    private static final String LATEX_SIZE_END = "</size>";
    private static final String LATEX_SIZE_START = "<size>";
    private static final String LATEX_START = "<latex>";
    public static String SMALL_CAP = "ᴀʙᴄᴅᴇғɢʜɪᴊᴋʟᴍɴᴏᴘǫʀsᴛᴜᴠᴡxʏᴢ";
    private List<DrawTextFragment2> lines;

    /* renamed from: org.apache.poi.sl.draw.DrawTextParagraph2$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196101 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection;

        static {
            int[] iArr = new int[TextRun.TextCap.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap = iArr;
            try {
                iArr[TextRun.TextCap.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap[TextRun.TextCap.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[TextRun.FieldType.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType = iArr2;
            try {
                iArr2[TextRun.FieldType.SLIDE_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType[TextRun.FieldType.DATE_TIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType[TextRun.FieldType.MATH.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[TextParagraph.TextAlign.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign = iArr3;
            try {
                iArr3[TextParagraph.TextAlign.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr4 = new int[TextShape.TextDirection.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection = iArr4;
            try {
                iArr4[TextShape.TextDirection.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[TextShape.TextDirection.VERTICAL_270.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public DrawTextParagraph2(TextParagraph<?, ?, ?> textParagraph) {
        super(textParagraph);
        this.lines = new ArrayList();
    }

    private LineBreakMeasurer createCharacterBreakMeasurer(FontRenderContext fontRenderContext, AttributedCharacterIterator attributedCharacterIterator, int i) {
        LineBreakMeasurer lineBreakMeasurer = new LineBreakMeasurer(attributedCharacterIterator, BreakIterator.getCharacterInstance(), fontRenderContext);
        lineBreakMeasurer.setPosition(i);
        return lineBreakMeasurer;
    }

    private DrawTextFragment2 createTextFragment2(Rectangle2D rectangle2D) {
        DrawTextFragment2 drawTextFragment2 = new DrawTextFragment2();
        drawTextFragment2.setAnchor(rectangle2D);
        this.lines.add(drawTextFragment2);
        return drawTextFragment2;
    }

    private double[] getLeftAndIndent(boolean z) {
        Double leftMargin = this.paragraph.getLeftMargin();
        Double valueOf = Double.valueOf(0.0d);
        if (leftMargin == null) {
            leftMargin = valueOf;
        }
        Double indent = this.paragraph.getIndent();
        if (indent != null) {
            valueOf = indent;
        }
        double[] dArr = new double[2];
        if (isHSLF()) {
            if (this.bullet == null) {
                if (valueOf.doubleValue() >= leftMargin.doubleValue()) {
                    if (z) {
                        leftMargin = valueOf;
                    }
                    dArr[0] = leftMargin.doubleValue();
                } else if (z) {
                    dArr[0] = valueOf.doubleValue() >= 0.0d ? valueOf.doubleValue() : 0.0d;
                } else {
                    dArr[0] = leftMargin.doubleValue();
                }
            } else if (leftMargin.doubleValue() > valueOf.doubleValue()) {
                dArr[0] = valueOf.doubleValue() < 0.0d ? 0.0d : valueOf.doubleValue();
                if (z) {
                    dArr[1] = Math.max(leftMargin.doubleValue() - valueOf.doubleValue(), this.bullet.getWidth() + 1.0f);
                } else {
                    dArr[1] = valueOf.doubleValue() > 0.0d ? leftMargin.doubleValue() - valueOf.doubleValue() : leftMargin.doubleValue();
                }
            } else {
                dArr[0] = leftMargin.doubleValue();
                dArr[1] = z ? Math.max(valueOf.doubleValue() - leftMargin.doubleValue(), this.bullet.getWidth() + 1.0f) : 0.0d;
            }
        } else if (this.bullet != null) {
            this.paragraph.getIndentLevel();
            if (valueOf.doubleValue() < 0.0d) {
                dArr[0] = leftMargin.doubleValue() + valueOf.doubleValue() > 0.0d ? leftMargin.doubleValue() + valueOf.doubleValue() : 0.0d;
                if (z) {
                    dArr[1] = Math.max(-valueOf.doubleValue(), this.bullet.getWidth() + 1.0f);
                } else {
                    dArr[1] = leftMargin.doubleValue() + valueOf.doubleValue() > 0.0d ? -valueOf.doubleValue() : leftMargin.doubleValue();
                }
            } else {
                dArr[0] = leftMargin.doubleValue();
                dArr[1] = z ? Math.max(valueOf.doubleValue(), this.bullet.getWidth() + 1.0f) : 0.0d;
            }
        } else if (valueOf.doubleValue() >= 0.0d) {
            dArr[0] = z ? leftMargin.doubleValue() + valueOf.doubleValue() : leftMargin.doubleValue();
        } else if (z) {
            dArr[0] = leftMargin.doubleValue() + valueOf.doubleValue() > 0.0d ? leftMargin.doubleValue() + valueOf.doubleValue() : 0.0d;
        } else {
            dArr[0] = leftMargin.doubleValue();
        }
        return dArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAttributedString2$0(List list, int i, int i2, AttributedCharacterIterator.Attribute attribute, Object obj) {
        list.add(new DrawTextParagraph.AttributedStringData(attribute, obj, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAttributedString2$1(List list, AttributedCharacterIterator.Attribute attribute, Object obj) {
        list.add(new DrawTextParagraph.AttributedStringData(attribute, obj, 0, 1));
    }

    private void setTextCapFont(Map<Integer, Integer> map, List<DrawTextParagraph.AttributedStringData> list, int i) {
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
            int intValue = entry.getKey().intValue() + i;
            list.add(new DrawTextParagraph.AttributedStringData(TextAttribute.FAMILY, TextStyles.FONT_LATIN, intValue, entry.getValue().intValue() + intValue));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x01e3  */
    @Override // org.apache.poi.sl.draw.DrawTextParagraph
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void breakText(java.awt.Graphics2D r27) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.sl.draw.DrawTextParagraph2.breakText(java.awt.Graphics2D):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0123  */
    @Override // org.apache.poi.sl.draw.DrawTextParagraph, org.apache.poi.sl.draw.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(java.awt.Graphics2D r33) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.sl.draw.DrawTextParagraph2.draw(java.awt.Graphics2D):void");
    }

    public List<DrawTextParagraph.AttributedStringData> getAttributedString2(Graphics2D graphics2D, StringBuilder sb) {
        PaintStyle highlightColor;
        Graphics2D graphics2D2 = graphics2D;
        StringBuilder sb2 = sb == null ? new StringBuilder() : sb;
        DrawPaint drawPaint = new DrawPaint(getParagraphShape());
        DrawFontManager fontManager = DrawFactory.getInstance(graphics2D).getFontManager(graphics2D2);
        HashMap hashMap = new HashMap();
        final ArrayList arrayList = new ArrayList();
        HashMap hashMap2 = new HashMap();
        Iterator<T> it2 = this.paragraph.iterator();
        while (it2.hasNext()) {
            TextRun textRun = (TextRun) it2.next();
            String processTextCap = processTextCap(textRun, hashMap2, getRenderableText2(graphics2D2, textRun));
            if (textRun.getFieldType() == TextRun.FieldType.MATH) {
                sb2.append(processTextCap);
            } else if (!processTextCap.isEmpty()) {
                hashMap.clear();
                FontInfo fontInfo = textRun.getFontInfo(null);
                String mapFontCharset = fontManager.mapFontCharset(graphics2D2, fontInfo, processTextCap);
                final int length = sb2.length();
                sb2.append(mapFontCharset);
                final int length2 = sb2.length();
                hashMap.put(TextAttribute.FOREGROUND, drawPaint.getPaint(graphics2D2, textRun.getFontColor()));
                if ((textRun instanceof HighlightColorSupport) && (highlightColor = ((HighlightColorSupport) textRun).getHighlightColor()) != null) {
                    hashMap.put(TextAttribute.BACKGROUND, drawPaint.getPaint(graphics2D2, highlightColor));
                }
                Double fontSize = textRun.getFontSize();
                if (fontSize == null) {
                    fontSize = this.paragraph.getDefaultFontSize();
                }
                hashMap.put(TextAttribute.SIZE, Integer.valueOf(fontSize.intValue()));
                if (textRun.isBold()) {
                    hashMap.put(TextAttribute.WEIGHT, TextAttribute.WEIGHT_BOLD);
                }
                if (textRun.isItalic()) {
                    hashMap.put(TextAttribute.POSTURE, TextAttribute.POSTURE_OBLIQUE);
                }
                if (textRun.isUnderlined()) {
                    hashMap.put(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON);
                    hashMap.put(TextAttribute.INPUT_METHOD_UNDERLINE, Double.valueOf(0.5d));
                }
                if (textRun.isStrikethrough()) {
                    hashMap.put(TextAttribute.STRIKETHROUGH, TextAttribute.STRIKETHROUGH_ON);
                }
                if (textRun.isSubscript()) {
                    hashMap.put(TextAttribute.SUPERSCRIPT, TextAttribute.SUPERSCRIPT_SUB);
                }
                if (textRun.isSuperscript()) {
                    hashMap.put(TextAttribute.SUPERSCRIPT, TextAttribute.SUPERSCRIPT_SUPER);
                }
                Hyperlink<?, ?> hyperlink = textRun.getHyperlink();
                if (hyperlink != null) {
                    hashMap.put(DrawTextParagraph.HYPERLINK_HREF, hyperlink.getAddress());
                    hashMap.put(DrawTextParagraph.HYPERLINK_LABEL, hyperlink.getLabel());
                }
                if (fontInfo != null) {
                    hashMap.put(TextAttribute.FAMILY, fontInfo.getTypeface());
                } else {
                    hashMap.put(TextAttribute.FAMILY, this.paragraph.getDefaultFontFamily());
                }
                hashMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.hif
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DrawTextParagraph2.lambda$getAttributedString2$0(arrayList, length, length2, (AttributedCharacterIterator.Attribute) obj, obj2);
                    }
                });
                processGlyphs(graphics2D, fontManager, arrayList, length, textRun, mapFontCharset);
                setTextCapFont(hashMap2, arrayList, length);
                graphics2D2 = graphics2D;
            }
        }
        if (sb2.length() == 0) {
            sb2.append(" ");
            hashMap.put(TextAttribute.SIZE, Float.valueOf(this.paragraph.getDefaultFontSize().floatValue()));
            hashMap.put(TextAttribute.FAMILY, this.paragraph.getDefaultFontFamily());
            hashMap.put(TextAttribute.FONT, new Font(hashMap));
            hashMap.put(PlaceholderTextAttribute.instance, Boolean.TRUE);
            hashMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.iif
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DrawTextParagraph2.lambda$getAttributedString2$1(arrayList, (AttributedCharacterIterator.Attribute) obj, obj2);
                }
            });
        }
        return arrayList;
    }

    @Override // org.apache.poi.sl.draw.DrawTextParagraph
    public DrawTextFragment getBullet(Graphics2D graphics2D, AttributedCharacterIterator attributedCharacterIterator) {
        TextParagraph.BulletStyle bulletStyle = this.paragraph.getBulletStyle();
        if (bulletStyle == null) {
            return null;
        }
        AutoNumberingScheme autoNumberingScheme = bulletStyle.getAutoNumberingScheme();
        String format = autoNumberingScheme != null ? autoNumberingScheme.format(this.autoNbrIdx) : bulletStyle.getBulletCharacter();
        if (format == null || format.length() == 0) {
            return null;
        }
        PlaceableShape<?, ?> paragraphShape = getParagraphShape();
        PaintStyle bulletFontColor = bulletStyle.getBulletFontColor();
        Paint paint = bulletFontColor == null ? (Paint) attributedCharacterIterator.getAttribute(TextAttribute.FOREGROUND) : new DrawPaint(paragraphShape).getPaint(graphics2D, bulletFontColor);
        TextAttribute textAttribute = TextAttribute.SIZE;
        float floatValue = ((Number) attributedCharacterIterator.getAttribute(textAttribute)).floatValue();
        Double bulletFontSize = bulletStyle.getBulletFontSize();
        if (bulletFontSize == null) {
            bulletFontSize = Double.valueOf(100.0d);
        }
        float doubleValue = bulletFontSize.doubleValue() > 0.0d ? (float) (floatValue * bulletFontSize.doubleValue() * 0.01d) : (float) (-bulletFontSize.doubleValue());
        String bulletFont = autoNumberingScheme == null ? bulletStyle.getBulletFont() : null;
        if (bulletFont == null) {
            bulletFont = this.paragraph.getDefaultFontFamily();
        }
        DrawFontInfo drawFontInfo = new DrawFontInfo(bulletFont);
        DrawFontManager fontManager = DrawFactory.getInstance(graphics2D).getFontManager(graphics2D);
        FontInfo mappedFont = fontManager.getMappedFont(graphics2D, drawFontInfo);
        HashMap hashMap = new HashMap();
        hashMap.put(TextAttribute.FOREGROUND, paint);
        hashMap.put(TextAttribute.FAMILY, mappedFont.getTypeface());
        hashMap.put(textAttribute, Float.valueOf(doubleValue));
        hashMap.put(TextAttribute.FONT, new Font(hashMap));
        AttributedString attributedString = new AttributedString(fontManager.mapFontCharset(graphics2D, mappedFont, format));
        hashMap.forEach(new c5i(attributedString));
        return DrawFactory.getInstance(graphics2D).getTextFragment(new TextLayout(attributedString.getIterator(), graphics2D.getFontRenderContext()), attributedString);
    }

    @Override // org.apache.poi.sl.draw.DrawTextParagraph
    public float getFirstLineHeight() {
        if (this.lines.isEmpty()) {
            return 0.0f;
        }
        return this.lines.get(0).getHeight();
    }

    @Override // org.apache.poi.sl.draw.DrawTextParagraph
    public float getLastLineHeight() {
        if (this.lines.isEmpty()) {
            return 0.0f;
        }
        return this.lines.get(r1.size() - 1).getHeight();
    }

    @Override // org.apache.poi.sl.draw.DrawTextParagraph
    public String getRenderableText(TextRun textRun) {
        String rawText = textRun.getRawText();
        if (rawText == null) {
            return null;
        }
        if (rawText.contains("\t")) {
            rawText = rawText.replace("\t", tab2space(textRun));
        }
        return rawText.replace((char) 11, '\n');
    }

    public String getRenderableText2(Graphics2D graphics2D, TextRun textRun) {
        String rawText;
        TextRun.FieldType fieldType = textRun.getFieldType();
        if (fieldType == null) {
            return getRenderableText(textRun);
        }
        int i = C196101.$SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType[fieldType.ordinal()];
        if (i == 1) {
            Slide slide = (Slide) graphics2D.getRenderingHint(Drawable.CURRENT_SLIDE);
            String num = slide != null ? Integer.toString(slide.getSlideNumber()) : "";
            String renderableText = getRenderableText(textRun);
            return renderableText == null ? num : renderableText.contains("*") ? renderableText.replaceAll("\\*", num) : renderableText;
        }
        if (i == 2) {
            PlaceholderDetails placeholderDetails = ((SimpleShape) getParagraphShape()).getPlaceholderDetails();
            placeholderDetails.getPlaceholder();
            String userDate = placeholderDetails.getUserDate();
            if (userDate != null) {
                return userDate;
            }
            Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
            return LocalDateTime.ofInstant(localeCalendar.toInstant(), localeCalendar.getTimeZone().toZoneId()).format(placeholderDetails.getDateFormat());
        }
        if (i != 3 || (rawText = textRun.getRawText()) == null || rawText.isEmpty()) {
            return "";
        }
        String omml2LaTeX = MathUtils.omml2LaTeX(rawText);
        int sizeFromOMML = MathUtils.getSizeFromOMML(rawText);
        MathJc jc = MathUtils.getJc(rawText);
        if (MathUtils.isNullOrEmpty(omml2LaTeX)) {
            return "";
        }
        return LATEX_START + LATEX_SIZE_START + sizeFromOMML + LATEX_SIZE_END + LATEX_JC_START + jc.getValue() + LATEX_JC_END + omml2LaTeX + LATEX_END;
    }

    public double getWrappingWidth2(boolean z, Graphics2D graphics2D) {
        double height;
        double doubleValue;
        double height2;
        double x;
        TextShape<?, ?> parentShape = this.paragraph.getParentShape();
        Insets2D insets = parentShape.getInsets();
        double d = insets.left;
        double d2 = insets.right;
        double[] leftAndIndent = getLeftAndIndent(z);
        Double rightMargin = this.paragraph.getRightMargin();
        if (rightMargin == null) {
            rightMargin = Double.valueOf(0.0d);
        }
        Rectangle2D anchor = DrawShape.getAnchor(graphics2D, parentShape);
        TextShape.TextDirection textDirection = parentShape.getTextDirection();
        if (parentShape.getWordWrap()) {
            int i = C196101.$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[textDirection.ordinal()];
            if (i == 1 || i == 2) {
                height = ((anchor.getHeight() - d) - d2) - (leftAndIndent[0] + leftAndIndent[1]);
                doubleValue = rightMargin.doubleValue();
            } else {
                height = ((anchor.getWidth() - d) - d2) - (leftAndIndent[0] + leftAndIndent[1]);
                doubleValue = rightMargin.doubleValue();
            }
            return height - doubleValue;
        }
        Dimension pageSize = parentShape.getSheet().getSlideShow().getPageSize();
        int i2 = C196101.$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[textDirection.ordinal()];
        if (i2 == 1) {
            height2 = pageSize.getHeight();
            x = anchor.getX();
        } else {
            if (i2 == 2) {
                return anchor.getX();
            }
            height2 = pageSize.getWidth();
            x = anchor.getX();
        }
        return height2 - x;
    }

    @Override // org.apache.poi.sl.draw.DrawTextParagraph
    public void processGlyphs(Graphics2D graphics2D, DrawFontManager drawFontManager, List<DrawTextParagraph.AttributedStringData> list, int i, TextRun textRun, String str) {
        if (str == null || str.trim().isEmpty()) {
            return;
        }
        super.processGlyphs(graphics2D, drawFontManager, list, i, textRun, str);
    }

    public String processTextCap(TextRun textRun, Map<Integer, Integer> map, String str) {
        map.clear();
        if (str == null || str.isEmpty()) {
            return str;
        }
        int i = C196101.$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap[textRun.getTextCap().ordinal()];
        if (i == 1) {
            return str.toUpperCase(LocaleUtil.getUserLocale());
        }
        if (i != 2) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char[] charArray = str.toCharArray();
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            char c = charArray[i4];
            if (c < 'a' || c > 'z') {
                sb.append(c);
                if (i2 > 0) {
                    map.put(Integer.valueOf(i3), Integer.valueOf(i2));
                }
                i2 = -1;
                i3 = -1;
            } else {
                if (i3 == -1) {
                    i2 = 1;
                    i3 = i4;
                } else {
                    i2++;
                }
                sb.append(SMALL_CAP.charAt(c - 'a'));
            }
        }
        if (i2 > 0) {
            map.put(Integer.valueOf(i3), Integer.valueOf(i2));
        }
        return sb.toString();
    }
}
