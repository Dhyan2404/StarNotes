package org.apache.poi.sl.draw;

import androidx.core.app.C0619b;
import com.sunia.HTREnginev2.c5i;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.font.FontRenderContext;
import java.awt.font.LineBreakMeasurer;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.io.InvalidObjectException;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.function.BiConsumer;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.util.Unbox;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.sl.draw.DrawTextParagraph;
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
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;
import org.apache.poi.util.StringUtil;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public class DrawTextParagraph implements Drawable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected int autoNbrIdx;
    protected DrawTextFragment bullet;
    protected TextParagraph<?, ?, ?> paragraph;
    protected String rawText;

    /* renamed from: x */
    double f111471x;

    /* renamed from: y */
    double f111472y;
    private static final Logger LOG = LogManager.getLogger((Class<?>) DrawTextParagraph.class);
    public static final XlinkAttribute HYPERLINK_HREF = new XlinkAttribute("href");
    public static final XlinkAttribute HYPERLINK_LABEL = new XlinkAttribute(C0619b.f5199k);
    protected List<DrawTextFragment> lines = new ArrayList();
    protected boolean firstParagraph = true;

    /* renamed from: org.apache.poi.sl.draw.DrawTextParagraph$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C196091 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection;

        static {
            int[] iArr = new int[TextShape.TextDirection.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection = iArr;
            try {
                iArr[TextShape.TextDirection.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[TextShape.TextDirection.VERTICAL_270.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[TextRun.TextCap.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap = iArr2;
            try {
                iArr2[TextRun.TextCap.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap[TextRun.TextCap.SMALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[TextRun.FieldType.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType = iArr3;
            try {
                iArr3[TextRun.FieldType.SLIDE_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType[TextRun.FieldType.DATE_TIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr4 = new int[TextParagraph.TextAlign.values().length];
            $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign = iArr4;
            try {
                iArr4[TextParagraph.TextAlign.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$poi$sl$usermodel$TextParagraph$TextAlign[TextParagraph.TextAlign.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* loaded from: classes12.dex */
    public static class AttributedStringData {
        AttributedCharacterIterator.Attribute attribute;
        int beginIndex;
        int endIndex;
        Object value;

        public AttributedStringData(AttributedCharacterIterator.Attribute attribute, Object obj, int i, int i2) {
            this.attribute = attribute;
            this.value = obj;
            this.beginIndex = i;
            this.endIndex = i2;
        }
    }

    /* loaded from: classes12.dex */
    public static class XlinkAttribute extends AttributedCharacterIterator.Attribute {
        public XlinkAttribute(String str) {
            super(str);
        }

        @Override // java.text.AttributedCharacterIterator.Attribute
        public Object readResolve() throws InvalidObjectException {
            XlinkAttribute xlinkAttribute = DrawTextParagraph.HYPERLINK_HREF;
            if (xlinkAttribute.getName().equals(getName())) {
                return xlinkAttribute;
            }
            XlinkAttribute xlinkAttribute2 = DrawTextParagraph.HYPERLINK_LABEL;
            if (xlinkAttribute2.getName().equals(getName())) {
                return xlinkAttribute2;
            }
            throw new InvalidObjectException("unknown attribute name");
        }
    }

    public DrawTextParagraph(TextParagraph<?, ?, ?> textParagraph) {
        this.paragraph = textParagraph;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAttributedString$0(List list, int i, int i2, AttributedCharacterIterator.Attribute attribute, Object obj) {
        list.add(new AttributedStringData(attribute, obj, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAttributedString$1(List list, AttributedCharacterIterator.Attribute attribute, Object obj) {
        list.add(new AttributedStringData(attribute, obj, 0, 1));
    }

    private static int nextPart(Font font, String str, int i, int i2, boolean z) {
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (font.canDisplay(codePointAt) != z) {
                break;
            }
            i += Character.charCount(codePointAt);
        }
        return i;
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void applyTransform(Graphics2D graphics2D) {
    }

    public void breakText(Graphics2D graphics2D) {
        int i;
        TextLayout nextLayout;
        this.lines.clear();
        DrawFactory drawFactory = DrawFactory.getInstance(graphics2D);
        StringBuilder sb = new StringBuilder();
        List<AttributedStringData> attributedString = getAttributedString(graphics2D, sb);
        AttributedString attributedString2 = new AttributedString(sb.toString());
        AttributedString attributedString3 = new AttributedString(sb.toString().replaceAll("[\\r\\n]", " "));
        for (AttributedStringData attributedStringData : attributedString) {
            attributedString2.addAttribute(attributedStringData.attribute, attributedStringData.value, attributedStringData.beginIndex, attributedStringData.endIndex);
            attributedString3.addAttribute(attributedStringData.attribute, attributedStringData.value, attributedStringData.beginIndex, attributedStringData.endIndex);
        }
        AttributedCharacterIterator iterator = attributedString2.getIterator();
        AttributedCharacterIterator iterator2 = attributedString3.getIterator();
        LineBreakMeasurer lineBreakMeasurer = new LineBreakMeasurer(iterator, graphics2D.getFontRenderContext());
        do {
            int position = lineBreakMeasurer.getPosition();
            double wrappingWidth = getWrappingWidth(this.lines.isEmpty(), graphics2D) + 1.0d;
            double d = wrappingWidth >= 0.0d ? wrappingWidth : 1.0d;
            i = 1;
            if (position == 0 && sb.toString().startsWith("\n")) {
                nextLayout = lineBreakMeasurer.nextLayout((float) d, 1, false);
            } else {
                int indexOf = sb.indexOf("\n", position + 1);
                if (indexOf == -1) {
                    indexOf = iterator.getEndIndex();
                }
                float f = (float) d;
                TextLayout nextLayout2 = lineBreakMeasurer.nextLayout(f, indexOf, true);
                nextLayout = nextLayout2 == null ? lineBreakMeasurer.nextLayout(f, indexOf, false) : nextLayout2;
                if (nextLayout == null) {
                    break;
                }
                i = lineBreakMeasurer.getPosition();
                if (i < iterator.getEndIndex() && sb.charAt(i) == '\n') {
                    lineBreakMeasurer.setPosition(i + 1);
                }
                TextParagraph.TextAlign textAlign = this.paragraph.getTextAlign();
                if (textAlign == TextParagraph.TextAlign.JUSTIFY || textAlign == TextParagraph.TextAlign.JUSTIFY_LOW) {
                    nextLayout = nextLayout.getJustifiedLayout(f);
                }
            }
            this.lines.add(drawFactory.getTextFragment(nextLayout, new AttributedString(iterator2, position, i)));
        } while (i != iterator.getEndIndex());
        this.rawText = sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0158  */
    @Override // org.apache.poi.sl.draw.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(java.awt.Graphics2D r22) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.poi.sl.draw.DrawTextParagraph.draw(java.awt.Graphics2D):void");
    }

    @Override // org.apache.poi.sl.draw.Drawable
    public void drawContent(Graphics2D graphics2D) {
    }

    public List<AttributedStringData> getAttributedString(Graphics2D graphics2D, StringBuilder sb) {
        PaintStyle highlightColor;
        if (sb == null) {
            sb = new StringBuilder();
        }
        DrawPaint drawPaint = new DrawPaint(getParagraphShape());
        DrawFontManager fontManager = DrawFactory.getInstance(graphics2D).getFontManager(graphics2D);
        HashMap hashMap = new HashMap();
        final ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = this.paragraph.iterator();
        while (it2.hasNext()) {
            TextRun textRun = (TextRun) it2.next();
            String renderableText = getRenderableText(graphics2D, textRun);
            if (!renderableText.isEmpty()) {
                hashMap.clear();
                FontInfo fontInfo = textRun.getFontInfo(null);
                String mapFontCharset = fontManager.mapFontCharset(graphics2D, fontInfo, renderableText);
                final int length = sb.length();
                sb.append(mapFontCharset);
                final int length2 = sb.length();
                hashMap.put(TextAttribute.FOREGROUND, drawPaint.getPaint(graphics2D, textRun.getFontColor()));
                if ((textRun instanceof HighlightColorSupport) && (highlightColor = ((HighlightColorSupport) textRun).getHighlightColor()) != null) {
                    hashMap.put(TextAttribute.BACKGROUND, drawPaint.getPaint(graphics2D, highlightColor));
                }
                Double fontSize = textRun.getFontSize();
                if (fontSize == null) {
                    fontSize = this.paragraph.getDefaultFontSize();
                }
                hashMap.put(TextAttribute.SIZE, Float.valueOf(fontSize.floatValue()));
                if (textRun.isBold()) {
                    hashMap.put(TextAttribute.WEIGHT, TextAttribute.WEIGHT_BOLD);
                }
                if (textRun.isItalic()) {
                    hashMap.put(TextAttribute.POSTURE, TextAttribute.POSTURE_OBLIQUE);
                }
                if (textRun.isUnderlined()) {
                    hashMap.put(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON);
                    hashMap.put(TextAttribute.INPUT_METHOD_UNDERLINE, TextAttribute.UNDERLINE_LOW_TWO_PIXEL);
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
                    hashMap.put(HYPERLINK_HREF, hyperlink.getAddress());
                    hashMap.put(HYPERLINK_LABEL, hyperlink.getLabel());
                }
                if (fontInfo != null) {
                    hashMap.put(TextAttribute.FAMILY, fontInfo.getTypeface());
                } else {
                    hashMap.put(TextAttribute.FAMILY, this.paragraph.getDefaultFontFamily());
                }
                hashMap.put(TextAttribute.FONT, new Font(hashMap));
                hashMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.fif
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        DrawTextParagraph.lambda$getAttributedString$0(arrayList, length, length2, (AttributedCharacterIterator.Attribute) obj, obj2);
                    }
                });
                processGlyphs(graphics2D, fontManager, arrayList, length, textRun, mapFontCharset);
            }
        }
        if (sb.length() == 0) {
            sb.append(" ");
            hashMap.put(TextAttribute.SIZE, Float.valueOf(this.paragraph.getDefaultFontSize().floatValue()));
            hashMap.put(TextAttribute.FAMILY, this.paragraph.getDefaultFontFamily());
            hashMap.put(TextAttribute.FONT, new Font(hashMap));
            hashMap.forEach(new BiConsumer() { // from class: com.sunia.HTREnginev2.gif
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    DrawTextParagraph.lambda$getAttributedString$1(arrayList, (AttributedCharacterIterator.Attribute) obj, obj2);
                }
            });
        }
        return arrayList;
    }

    public DrawTextFragment getBullet(Graphics2D graphics2D, AttributedCharacterIterator attributedCharacterIterator) {
        TextParagraph.BulletStyle bulletStyle = this.paragraph.getBulletStyle();
        if (bulletStyle == null) {
            return null;
        }
        AutoNumberingScheme autoNumberingScheme = bulletStyle.getAutoNumberingScheme();
        String format = autoNumberingScheme != null ? autoNumberingScheme.format(this.autoNbrIdx) : bulletStyle.getBulletCharacter();
        if (format == null) {
            return null;
        }
        PlaceableShape<?, ?> paragraphShape = getParagraphShape();
        PaintStyle bulletFontColor = bulletStyle.getBulletFontColor();
        Paint paint = bulletFontColor == null ? (Paint) attributedCharacterIterator.getAttribute(TextAttribute.FOREGROUND) : new DrawPaint(paragraphShape).getPaint(graphics2D, bulletFontColor);
        TextAttribute textAttribute = TextAttribute.SIZE;
        float floatValue = ((Float) attributedCharacterIterator.getAttribute(textAttribute)).floatValue();
        Double bulletFontSize = bulletStyle.getBulletFontSize();
        if (bulletFontSize == null) {
            bulletFontSize = Double.valueOf(100.0d);
        }
        float doubleValue = bulletFontSize.doubleValue() > 0.0d ? floatValue * ((float) (bulletFontSize.doubleValue() * 0.01d)) : (float) (-bulletFontSize.doubleValue());
        String bulletFont = bulletStyle.getBulletFont();
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

    public float getFirstLineHeight() {
        if (this.lines.isEmpty()) {
            return 0.0f;
        }
        return this.lines.get(0).getHeight();
    }

    public float getFirstLineLeading() {
        if (this.lines.isEmpty()) {
            return 0.0f;
        }
        return this.lines.get(0).getLeading();
    }

    public float getLastLineHeight() {
        if (this.lines.isEmpty()) {
            return 0.0f;
        }
        return this.lines.get(r1.size() - 1).getHeight();
    }

    public PlaceableShape<?, ?> getParagraphShape() {
        return this.paragraph.getParentShape();
    }

    public String getRenderableText(Graphics2D graphics2D, TextRun textRun) {
        TextRun.FieldType fieldType = textRun.getFieldType();
        if (fieldType == null) {
            return getRenderableText(textRun);
        }
        if (textRun.getRawText() == null || textRun.getRawText().isEmpty()) {
            return "";
        }
        int i = C196091.$SwitchMap$org$apache$poi$sl$usermodel$TextRun$FieldType[fieldType.ordinal()];
        if (i == 1) {
            Slide slide = (Slide) graphics2D.getRenderingHint(Drawable.CURRENT_SLIDE);
            return slide == null ? "" : Integer.toString(slide.getSlideNumber());
        }
        if (i != 2) {
            return "";
        }
        PlaceholderDetails placeholderDetails = ((SimpleShape) getParagraphShape()).getPlaceholderDetails();
        placeholderDetails.getPlaceholder();
        String userDate = placeholderDetails.getUserDate();
        if (userDate != null) {
            return userDate;
        }
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
        return LocalDateTime.ofInstant(localeCalendar.toInstant(), localeCalendar.getTimeZone().toZoneId()).format(placeholderDetails.getDateFormat());
    }

    public double getWrappingWidth(boolean z, Graphics2D graphics2D) {
        double height;
        double doubleValue;
        double height2;
        double x;
        TextShape<?, ?> parentShape = this.paragraph.getParentShape();
        Insets2D insets = parentShape.getInsets();
        double d = insets.left;
        double d2 = insets.right;
        int indentLevel = this.paragraph.getIndentLevel();
        if (indentLevel == -1) {
            indentLevel = 0;
        }
        Double leftMargin = this.paragraph.getLeftMargin();
        if (leftMargin == null) {
            leftMargin = Double.valueOf(Units.toPoints(indentLevel * 347663));
        }
        Double indent = this.paragraph.getIndent();
        if (indent == null) {
            indent = Double.valueOf(0.0d);
        }
        Double rightMargin = this.paragraph.getRightMargin();
        if (rightMargin == null) {
            rightMargin = Double.valueOf(0.0d);
        }
        Rectangle2D anchor = DrawShape.getAnchor(graphics2D, parentShape);
        TextShape.TextDirection textDirection = parentShape.getTextDirection();
        if (!parentShape.getWordWrap()) {
            Dimension pageSize = parentShape.getSheet().getSlideShow().getPageSize();
            int i = C196091.$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[textDirection.ordinal()];
            if (i == 1) {
                height2 = pageSize.getHeight();
                x = anchor.getX();
            } else {
                if (i == 2) {
                    return anchor.getX();
                }
                height2 = pageSize.getWidth();
                x = anchor.getX();
            }
            return height2 - x;
        }
        int i2 = C196091.$SwitchMap$org$apache$poi$sl$usermodel$TextShape$TextDirection[textDirection.ordinal()];
        if (i2 == 1 || i2 == 2) {
            height = ((anchor.getHeight() - d) - d2) - leftMargin.doubleValue();
            doubleValue = rightMargin.doubleValue();
        } else {
            height = ((anchor.getWidth() - d) - d2) - leftMargin.doubleValue();
            doubleValue = rightMargin.doubleValue();
        }
        double d3 = height - doubleValue;
        if (z && this.bullet == null) {
            return (isHSLF() ? leftMargin.doubleValue() - indent.doubleValue() : -indent.doubleValue()) + d3;
        }
        return d3;
    }

    public double getY() {
        return this.f111472y;
    }

    public boolean isEmptyParagraph() {
        return this.lines.isEmpty() || StringUtil.isBlank(this.rawText);
    }

    public boolean isFirstParagraph() {
        return this.firstParagraph;
    }

    public boolean isHSLF() {
        return DrawShape.isHSLF(this.paragraph.getParentShape());
    }

    public void processGlyphs(Graphics2D graphics2D, DrawFontManager drawFontManager, List<AttributedStringData> list, int i, TextRun textRun, String str) {
        int i2;
        int i3;
        Graphics2D graphics2D2 = graphics2D;
        int i4 = 0;
        for (FontGroup.FontGroupRange fontGroupRange : FontGroup.getFontGroupRanges(str)) {
            FontInfo fontInfo = textRun.getFontInfo(fontGroupRange.getFontGroup());
            if (fontInfo == null) {
                fontInfo = textRun.getFontInfo(FontGroup.LATIN);
            }
            FontInfo mappedFont = drawFontManager.getMappedFont(graphics2D2, fontInfo);
            FontInfo fallbackFont = drawFontManager.getFallbackFont(graphics2D2, null);
            if (mappedFont == null) {
                mappedFont = drawFontManager.getMappedFont(graphics2D2, new DrawFontInfo(this.paragraph.getDefaultFontFamily()));
            }
            Font createAWTFont = drawFontManager.createAWTFont(graphics2D, mappedFont == null ? fallbackFont : mappedFont, 10.0d, textRun.isBold(), textRun.isItalic());
            Font createAWTFont2 = drawFontManager.createAWTFont(graphics2D, fallbackFont, 10.0d, textRun.isBold(), textRun.isItalic());
            int length = fontGroupRange.getLength();
            int i5 = i4;
            while (true) {
                i2 = i4 + length;
                if (i5 < i2) {
                    int nextPart = nextPart(createAWTFont, str, i5, i2, true);
                    if (i5 < nextPart) {
                        String fontName = createAWTFont.getFontName(Locale.ROOT);
                        int i6 = i + i5;
                        int i7 = i + nextPart;
                        i3 = length;
                        list.add(new AttributedStringData(TextAttribute.FAMILY, fontName, i6, i7));
                        LOG.atDebug().log("mapped: {} {} {} - {}", fontName, Unbox.box(i6), Unbox.box(i7), str.substring(i5, nextPart));
                    } else {
                        i3 = length;
                    }
                    i5 = nextPart(createAWTFont, str, nextPart, i2, false);
                    if (nextPart < i5) {
                        String fontName2 = createAWTFont2.getFontName(Locale.ROOT);
                        int i8 = i + nextPart;
                        int i9 = i + i5;
                        list.add(new AttributedStringData(TextAttribute.FAMILY, fontName2, i8, i9));
                        LOG.atDebug().log("fallback: {} {} {} - {}", fontName2, Unbox.box(i8), Unbox.box(i9), str.substring(nextPart, i5));
                    }
                    length = i3;
                }
            }
            graphics2D2 = graphics2D;
            i4 = i2;
        }
    }

    public void setAutoNumberingIdx(int i) {
        this.autoNbrIdx = i;
    }

    public void setFirstParagraph(boolean z) {
        this.firstParagraph = z;
    }

    public void setPosition(double d, double d2) {
        this.f111471x = d;
        this.f111472y = d2;
    }

    public String tab2space(TextRun textRun) {
        int min;
        AttributedString attributedString = new AttributedString(" ");
        String fontFamily = textRun.getFontFamily();
        if (fontFamily == null) {
            fontFamily = "Lucida Sans";
        }
        attributedString.addAttribute(TextAttribute.FAMILY, fontFamily);
        Double fontSize = textRun.getFontSize();
        if (fontSize == null) {
            fontSize = Double.valueOf(12.0d);
        }
        attributedString.addAttribute(TextAttribute.SIZE, Float.valueOf(fontSize.floatValue()));
        double advance = new TextLayout(attributedString.getIterator(), new FontRenderContext((AffineTransform) null, true, true)).getAdvance();
        Double defaultTabSize = this.paragraph.getDefaultTabSize();
        if (advance <= 0.0d) {
            min = 4;
        } else {
            if (defaultTabSize == null) {
                defaultTabSize = Double.valueOf(4.0d * advance);
            }
            min = (int) Math.min(Math.ceil(defaultTabSize.doubleValue() / advance), 20.0d);
        }
        char[] cArr = new char[min];
        Arrays.fill(cArr, ' ');
        return new String(cArr);
    }

    @Internal
    public String getRenderableText(TextRun textRun) {
        String rawText = textRun.getRawText();
        if (rawText == null) {
            return null;
        }
        if (rawText.contains("\t")) {
            rawText = rawText.replace("\t", tab2space(textRun));
        }
        String replace = rawText.replace((char) 11, '\n');
        Locale userLocale = LocaleUtil.getUserLocale();
        int i = C196091.$SwitchMap$org$apache$poi$sl$usermodel$TextRun$TextCap[textRun.getTextCap().ordinal()];
        if (i != 1) {
            return i != 2 ? replace : replace.toLowerCase(userLocale);
        }
        return replace.toUpperCase(userLocale);
    }
}
