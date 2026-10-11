package org.apache.poi.hwmf.draw;

import com.sunia.HTREnginev2.c5i;
import java.awt.AlphaComposite;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Composite;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Insets;
import java.awt.Paint;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.TexturePaint;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.font.LineBreakMeasurer;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Dimension2D;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.awt.image.IndexColorModel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.BiConsumer;
import java.util.function.IntPredicate;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.hwmf.draw.HwmfGraphics;
import org.apache.poi.hwmf.record.HwmfBrushStyle;
import org.apache.poi.hwmf.record.HwmfFont;
import org.apache.poi.hwmf.record.HwmfMapMode;
import org.apache.poi.hwmf.record.HwmfMisc;
import org.apache.poi.hwmf.record.HwmfObjectTableEntry;
import org.apache.poi.hwmf.record.HwmfPenStyle;
import org.apache.poi.hwmf.record.HwmfRegionMode;
import org.apache.poi.hwmf.record.HwmfTernaryRasterOp;
import org.apache.poi.hwmf.record.HwmfText;
import org.apache.poi.hwmf.usermodel.HwmfCharsetAware;
import org.apache.poi.sl.draw.BitmapImageRenderer;
import org.apache.poi.sl.draw.DrawFactory;
import org.apache.poi.sl.draw.DrawFontManager;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes12.dex */
public class HwmfGraphics implements HwmfCharsetAware {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Float[] WEIGHT_MAP = {Float.valueOf(900.0f), TextAttribute.WEIGHT_ULTRABOLD, Float.valueOf(800.0f), TextAttribute.WEIGHT_EXTRABOLD, Float.valueOf(750.0f), TextAttribute.WEIGHT_HEAVY, Float.valueOf(700.0f), TextAttribute.WEIGHT_BOLD, Float.valueOf(600.0f), TextAttribute.WEIGHT_DEMIBOLD, Float.valueOf(500.0f), TextAttribute.WEIGHT_MEDIUM, Float.valueOf(450.0f), TextAttribute.WEIGHT_SEMIBOLD, Float.valueOf(400.0f), TextAttribute.WEIGHT_REGULAR, Float.valueOf(300.0f), TextAttribute.WEIGHT_DEMILIGHT, Float.valueOf(200.0f), TextAttribute.WEIGHT_LIGHT, Float.valueOf(1.0f), TextAttribute.WEIGHT_EXTRA_LIGHT};
    private final Rectangle2D bbox;
    private Supplier<Charset> charsetProvider;
    protected final Graphics2D graphicsCtx;
    private final AffineTransform initialAT;
    protected HwmfDrawProperties prop;
    private final List<HwmfDrawProperties> propStack = new LinkedList();
    protected final BitSet objectIndexes = new BitSet();
    protected final TreeMap<Integer, HwmfObjectTableEntry> objectTable = new TreeMap<>();

    /* renamed from: org.apache.poi.hwmf.draw.HwmfGraphics$1 */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C195471 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp;
        static final /* synthetic */ int[] $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment;

        /* renamed from: $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextVerticalAlignment */
        static final /* synthetic */ int[] f111433x47e0da30;

        static {
            int[] iArr = new int[HwmfTernaryRasterOp.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp = iArr;
            try {
                iArr[HwmfTernaryRasterOp.SRCCOPY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp[HwmfTernaryRasterOp.SRCINVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp[HwmfTernaryRasterOp.SRCAND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp[HwmfTernaryRasterOp.D.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp[HwmfTernaryRasterOp.PATCOPY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp[HwmfTernaryRasterOp.BLACKNESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp[HwmfTernaryRasterOp.WHITENESS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr2 = new int[HwmfText.HwmfTextVerticalAlignment.values().length];
            f111433x47e0da30 = iArr2;
            try {
                iArr2[HwmfText.HwmfTextVerticalAlignment.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f111433x47e0da30[HwmfText.HwmfTextVerticalAlignment.BASELINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f111433x47e0da30[HwmfText.HwmfTextVerticalAlignment.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr3 = new int[HwmfText.HwmfTextAlignment.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment = iArr3;
            try {
                iArr3[HwmfText.HwmfTextAlignment.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment[HwmfText.HwmfTextAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment[HwmfText.HwmfTextAlignment.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr4 = new int[HwmfMapMode.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode = iArr4;
            try {
                iArr4[HwmfMapMode.MM_ANISOTROPIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[HwmfMapMode.MM_ISOTROPIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[HwmfMapMode.MM_LOMETRIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[HwmfMapMode.MM_HIMETRIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[HwmfMapMode.MM_LOENGLISH.ordinal()] = 5;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[HwmfMapMode.MM_HIENGLISH.ordinal()] = 6;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[HwmfMapMode.MM_TWIPS.ordinal()] = 7;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[HwmfMapMode.MM_TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError unused21) {
            }
            int[] iArr5 = new int[HwmfBrushStyle.values().length];
            $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle = iArr5;
            try {
                iArr5[HwmfBrushStyle.BS_INDEXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_PATTERN8X8.ordinal()] = 2;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_DIBPATTERN8X8.ordinal()] = 3;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_MONOPATTERN.ordinal()] = 4;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_PATTERN.ordinal()] = 6;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_DIBPATTERN.ordinal()] = 7;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_DIBPATTERNPT.ordinal()] = 8;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_SOLID.ordinal()] = 9;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_HATCHED.ordinal()] = 10;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[HwmfBrushStyle.BS_LINEAR_GRADIENT.ordinal()] = 11;
            } catch (NoSuchFieldError unused32) {
            }
        }
    }

    @Internal
    /* loaded from: classes12.dex */
    public static class BufferedImageRenderer extends BitmapImageRenderer {
        public BufferedImageRenderer(BufferedImage bufferedImage) {
            this.img = bufferedImage;
        }
    }

    /* loaded from: classes12.dex */
    public static class DxLayout {
        int beginIndex;

        /* renamed from: dx */
        double f111434dx;
        int endIndex;
        double pos0;
        double pos1;

        private DxLayout() {
        }

        public /* synthetic */ DxLayout(C195471 c195471) {
            this();
        }
    }

    /* loaded from: classes12.dex */
    public enum FillDrawStyle {
        NONE(new BiConsumer() { // from class: com.sunia.HTREnginev2.e5i
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                HwmfGraphics.FillDrawStyle.fillNone((HwmfGraphics) obj, (Shape) obj2);
            }
        }),
        FILL(new BiConsumer() { // from class: com.sunia.HTREnginev2.f5i
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((HwmfGraphics) obj).fill((Shape) obj2);
            }
        }),
        DRAW(new BiConsumer() { // from class: com.sunia.HTREnginev2.g5i
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((HwmfGraphics) obj).draw((Shape) obj2);
            }
        }),
        FILL_DRAW(new BiConsumer() { // from class: com.sunia.HTREnginev2.h5i
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                HwmfGraphics.FillDrawStyle.fillDraw((HwmfGraphics) obj, (Shape) obj2);
            }
        });

        public final BiConsumer<HwmfGraphics, Shape> handler;

        FillDrawStyle(BiConsumer biConsumer) {
            this.handler = biConsumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void fillDraw(HwmfGraphics hwmfGraphics, Shape shape) {
            hwmfGraphics.fill(shape);
            hwmfGraphics.draw(shape);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void fillNone(HwmfGraphics hwmfGraphics, Shape shape) {
        }
    }

    public HwmfGraphics(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        AffineTransform affineTransform = new AffineTransform();
        this.initialAT = affineTransform;
        this.charsetProvider = new Supplier() { // from class: com.sunia.HTREnginev2.a5i
            @Override // java.util.function.Supplier
            public final Object get() {
                Charset charset;
                charset = LocaleUtil.CHARSET_1252;
                return charset;
            }
        };
        this.graphicsCtx = graphics2D;
        this.bbox = (Rectangle2D) rectangle2D.clone();
        affineTransform.setTransform(graphics2D.getTransform());
    }

    private void addAttributes(BiConsumer<TextAttribute, Object> biConsumer, HwmfFont hwmfFont, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(TextAttribute.FAMILY, str);
        hashMap.put(TextAttribute.SIZE, Double.valueOf(getFontHeight(hwmfFont)));
        if (hwmfFont.isStrikeOut()) {
            hashMap.put(TextAttribute.STRIKETHROUGH, TextAttribute.STRIKETHROUGH_ON);
        }
        if (hwmfFont.isUnderline()) {
            hashMap.put(TextAttribute.UNDERLINE, TextAttribute.UNDERLINE_ON);
        }
        if (hwmfFont.isItalic()) {
            hashMap.put(TextAttribute.POSTURE, TextAttribute.POSTURE_OBLIQUE);
        }
        int weight = hwmfFont.getWeight();
        Float f = TextAttribute.WEIGHT_REGULAR;
        int i = 0;
        while (true) {
            Float[] fArr = WEIGHT_MAP;
            if (i >= fArr.length) {
                break;
            }
            if (weight >= fArr[i].floatValue()) {
                f = fArr[i + 1];
                break;
            }
            i += 2;
        }
        hashMap.put(TextAttribute.WEIGHT, f);
        hashMap.put(TextAttribute.FONT, new Font(hashMap));
        hashMap.forEach(biConsumer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void calculateDx(String str, List<Integer> list, HwmfFont hwmfFont, FontInfo fontInfo, FontRenderContext fontRenderContext, AttributedString attributedString) {
        DxLayout dxLayout;
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList<DxLayout> arrayList = new ArrayList();
        final HashMap hashMap = new HashMap();
        addAttributes(new BiConsumer() { // from class: com.sunia.HTREnginev2.b5i
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                hashMap.put((TextAttribute) obj, obj2);
            }
        }, hwmfFont, fontInfo.getTypeface());
        GlyphVector createGlyphVector = new Font(hashMap).createGlyphVector(fontRenderContext, str);
        hashMap.put(TextAttribute.TRACKING, 1);
        GlyphVector createGlyphVector2 = new Font(hashMap).createGlyphVector(fontRenderContext, str);
        int i = 0;
        int i2 = 0;
        while (true) {
            dxLayout = null;
            if (i >= list.size() || i2 >= str.length()) {
                break;
            }
            DxLayout dxLayout2 = new DxLayout(null == true ? 1 : 0);
            dxLayout2.f111434dx = list.get(i).intValue();
            dxLayout2.pos0 = createGlyphVector.getGlyphPosition(i).getX();
            dxLayout2.pos1 = createGlyphVector2.getGlyphPosition(i).getX();
            dxLayout2.beginIndex = i2;
            dxLayout2.endIndex = str.offsetByCodePoints(i2, 1);
            arrayList.add(dxLayout2);
            i2 = dxLayout2.endIndex;
            i++;
        }
        for (DxLayout dxLayout3 : arrayList) {
            if (dxLayout != null) {
                double d = dxLayout3.pos0 - dxLayout.pos0;
                double d2 = dxLayout3.pos1 - dxLayout.pos1;
                double d3 = d2 - d;
                attributedString.addAttribute(TextAttribute.TRACKING, Float.valueOf((float) (((1.0d / d3) * dxLayout.f111434dx) + (((d2 * 0.0d) - (d * 1.0d)) / d3))), dxLayout.beginIndex, dxLayout.endIndex);
            }
            dxLayout = dxLayout3;
        }
    }

    private int getCharByteLength(Charset charset, char c) {
        String valueOf = String.valueOf(c);
        if (charset == null) {
            return valueOf.getBytes().length;
        }
        try {
            return valueOf.getBytes(charset).length;
        } catch (Exception unused) {
            return valueOf.getBytes().length;
        }
    }

    private int getCharWidth(List<Integer> list, int i, int i2) {
        int i3 = 0;
        for (int i4 = i; i4 < list.size() && i4 < i + i2; i4++) {
            i3 += list.get(i4).intValue();
        }
        return i3;
    }

    private Charset getCharset(HwmfFont hwmfFont, boolean z) {
        Charset charset;
        if (z) {
            return StandardCharsets.UTF_16LE;
        }
        FontCharset charset2 = hwmfFont.getCharset();
        return (charset2 == FontCharset.DEFAULT || (charset = charset2.getCharset()) == null) ? this.charsetProvider.get() : charset;
    }

    private double getFontHeight(HwmfFont hwmfFont) {
        double height = hwmfFont.getHeight();
        if (height == 0.0d) {
            return 12.0d;
        }
        return height < 0.0d ? -height : (height * 3.0d) / 4.0d;
    }

    public static BufferedImage getPatternFromLong(long j, Color color, Color color2, boolean z) {
        int[] iArr = {color.getRGB(), color2.getRGB()};
        BufferedImage bufferedImage = new BufferedImage(8, 8, 13, new IndexColorModel(1, 2, iArr, 0, z, z ? 0 : -1, 0));
        byte[] bArr = new byte[64];
        for (int i = 0; i < 64; i++) {
            bArr[i] = (byte) ((j >>> i) & 1);
        }
        bufferedImage.getRaster().setDataElements(0, 0, 8, 8, bArr);
        return bufferedImage;
    }

    private Point2D getRotatedOffset(double d, FontRenderContext fontRenderContext, AttributedString attributedString, boolean z) {
        TextLayout textLayout = new TextLayout(attributedString.getIterator(), fontRenderContext);
        AffineTransform affineTransform = new AffineTransform();
        updateHorizontalAlign(affineTransform, textLayout, z);
        updateVerticalAlign(affineTransform, textLayout, z);
        affineTransform.rotate(d);
        return affineTransform.transform(new Point2D.Double(), null);
    }

    private static Insets getSubImageInsets(Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        int round = (int) Math.round(((rectangle2D.getX() - rectangle2D2.getX()) / rectangle2D2.getWidth()) * 100000.0d);
        return new Insets((int) Math.round(((rectangle2D.getY() - rectangle2D2.getY()) / rectangle2D2.getHeight()) * 100000.0d), round, (int) Math.round(((rectangle2D2.getMaxY() - rectangle2D.getMaxY()) / rectangle2D2.getHeight()) * 100000.0d), (int) Math.round(((rectangle2D2.getMaxX() - rectangle2D.getMaxX()) / rectangle2D2.getWidth()) * 100000.0d));
    }

    private static Rectangle2D normalizeRect(Rectangle2D rectangle2D) {
        return new Rectangle2D.Double(rectangle2D.getWidth() >= 0.0d ? rectangle2D.getMinX() : rectangle2D.getMaxX(), rectangle2D.getHeight() >= 0.0d ? rectangle2D.getMinY() : rectangle2D.getMaxY(), Math.abs(rectangle2D.getWidth()), Math.abs(rectangle2D.getHeight()));
    }

    private String trimText(Charset charset, byte[] bArr, int i) {
        int i2 = 0;
        while (true) {
            if (i2 < bArr.length) {
                if (i2 != bArr.length - 1) {
                    byte b = bArr[i2];
                    if ((b == -1 && bArr[i2 + 1] == -1) || ((b & 224) == 0 && bArr[i2 + 1] == 0)) {
                        break;
                    }
                    i2 += 2;
                } else if (bArr[i2] != 0) {
                    i2++;
                }
            } else {
                break;
            }
        }
        String str = new String(bArr, 0, i2, charset);
        return str.substring(0, Math.min(str.length(), i));
    }

    private void updateClipping(Graphics2D graphics2D, Rectangle2D rectangle2D, double d, HwmfText.WmfExtTextOutOptions wmfExtTextOutOptions) {
        if (rectangle2D == null || rectangle2D.getBounds2D().isEmpty()) {
            return;
        }
        AffineTransform transform = graphics2D.getTransform();
        graphics2D.translate(-rectangle2D.getCenterX(), -rectangle2D.getCenterY());
        graphics2D.rotate(d);
        graphics2D.translate(rectangle2D.getCenterX(), rectangle2D.getCenterY());
        if (this.prop.getBkMode() == HwmfMisc.WmfSetBkMode.HwmfBkMode.OPAQUE && wmfExtTextOutOptions.isOpaque()) {
            graphics2D.setPaint(this.prop.getBackgroundColor().getColor());
            graphics2D.fill(rectangle2D);
        }
        if (wmfExtTextOutOptions.isClipped()) {
            graphics2D.setClip(rectangle2D);
        }
        graphics2D.setTransform(transform);
    }

    private void updateHorizontalAlign(AffineTransform affineTransform, TextLayout textLayout, boolean z) {
        int i = C195471.$SwitchMap$org$apache$poi$hwmf$record$HwmfText$HwmfTextAlignment[this.prop.getTextAlignLatin().ordinal()];
        if (i == 2) {
            affineTransform.translate((-textLayout.getBounds().getWidth()) / 2.0d, 0.0d);
        } else {
            if (i != 3) {
                return;
            }
            affineTransform.translate(-textLayout.getAdvance(), 0.0d);
        }
    }

    private void updateVerticalAlign(AffineTransform affineTransform, TextLayout textLayout, boolean z) {
        int[] iArr = C195471.f111433x47e0da30;
        HwmfDrawProperties hwmfDrawProperties = this.prop;
        int i = iArr[(z ? hwmfDrawProperties.getTextVAlignAsian() : hwmfDrawProperties.getTextVAlignLatin()).ordinal()];
        if (i == 1) {
            affineTransform.translate(0.0d, textLayout.getAscent());
        } else {
            if (i != 3) {
                return;
            }
            affineTransform.translate(0.0d, -(textLayout.getBounds().getHeight() - textLayout.getDescent()));
        }
    }

    public void addObjectTableEntry(HwmfObjectTableEntry hwmfObjectTableEntry) {
        int nextClearBit = this.objectIndexes.nextClearBit(0);
        this.objectIndexes.set(nextClearBit);
        this.objectTable.put(Integer.valueOf(nextClearBit), hwmfObjectTableEntry);
    }

    public void applyObjectTableEntry(int i) {
        HwmfObjectTableEntry hwmfObjectTableEntry = this.objectTable.get(Integer.valueOf(i));
        if (hwmfObjectTableEntry != null) {
            hwmfObjectTableEntry.applyObject(this);
            return;
        }
        throw new NoSuchElementException("WMF reference exception - object table entry on index " + i + " was deleted before.");
    }

    public void draw(Shape shape) {
        HwmfPenStyle.HwmfLineDash lineDash;
        HwmfPenStyle penStyle = getProperties().getPenStyle();
        if (penStyle == null || (lineDash = penStyle.getLineDash()) == HwmfPenStyle.HwmfLineDash.NULL) {
            return;
        }
        BasicStroke stroke = getStroke();
        if (getProperties().getBkMode() == HwmfMisc.WmfSetBkMode.HwmfBkMode.OPAQUE && lineDash != HwmfPenStyle.HwmfLineDash.SOLID && lineDash != HwmfPenStyle.HwmfLineDash.INSIDEFRAME) {
            this.graphicsCtx.setStroke(new BasicStroke(stroke.getLineWidth()));
            this.graphicsCtx.setColor(getProperties().getBackgroundColor().getColor());
            this.graphicsCtx.draw(shape);
        }
        this.graphicsCtx.setStroke(stroke);
        this.graphicsCtx.setColor(getProperties().getPenColor().getColor());
        this.graphicsCtx.draw(shape);
    }

    public void drawImage(BufferedImage bufferedImage, Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        drawImage(new BufferedImageRenderer(bufferedImage), rectangle2D, rectangle2D2);
    }

    public void drawString(byte[] bArr, int i, Point2D point2D) {
        drawString(bArr, i, point2D, null, null, null, null, false);
    }

    public void fill(Shape shape) {
        if (getProperties().getBrushStyle() != HwmfBrushStyle.BS_NULL) {
            Composite composite = this.graphicsCtx.getComposite();
            this.graphicsCtx.setComposite(AlphaComposite.getInstance(3));
            this.graphicsCtx.setPaint(getFill());
            this.graphicsCtx.fill(shape);
            this.graphicsCtx.setComposite(composite);
        }
        draw(shape);
    }

    public Paint getFill() {
        switch (C195471.$SwitchMap$org$apache$poi$hwmf$record$HwmfBrushStyle[getProperties().getBrushStyle().ordinal()]) {
            case 6:
            case 7:
            case 8:
                return getPatternPaint();
            case 9:
                return getSolidFill();
            case 10:
                return getHatchedFill();
            case 11:
                return getLinearGradient();
            default:
                return null;
        }
    }

    public Paint getHatchedFill() {
        HwmfDrawProperties properties = getProperties();
        return new TexturePaint(getPatternFromLong(properties.getBrushHatch().getPattern(), properties.getBackgroundColor().getColor(), properties.getBrushColor().getColor(), properties.getBkMode() == HwmfMisc.WmfSetBkMode.HwmfBkMode.TRANSPARENT), new Rectangle(0, 0, 8, 8));
    }

    public ImageRenderer getImageRenderer(String str) {
        return DrawPictureShape.getImageRenderer(this.graphicsCtx, str);
    }

    public AffineTransform getInitTransform() {
        return new AffineTransform(this.initialAT);
    }

    public Paint getLinearGradient() {
        return null;
    }

    public Paint getPatternPaint() {
        HwmfDrawProperties properties = getProperties();
        ImageRenderer brushBitmap = properties.getBrushBitmap();
        if (brushBitmap == null) {
            return null;
        }
        Dimension2D dimension = brushBitmap.getDimension();
        return new TexturePaint(brushBitmap.getImage(), properties.getBrushTransform().createTransformedShape(new Rectangle2D.Double(0.0d, 0.0d, dimension.getWidth(), dimension.getHeight())).getBounds2D());
    }

    public HwmfDrawProperties getProperties() {
        if (this.prop == null) {
            this.prop = newProperties(null);
        }
        return this.prop;
    }

    public Paint getSolidFill() {
        return getProperties().getBrushColor().getColor();
    }

    public BasicStroke getStroke() {
        HwmfDrawProperties properties = getProperties();
        HwmfPenStyle penStyle = properties.getPenStyle();
        float penWidth = (float) properties.getPenWidth();
        float f = 0.0f;
        float f2 = penWidth == 0.0f ? 1.0f : penWidth;
        int i = penStyle.getLineCap().awtFlag;
        int i2 = penStyle.getLineJoin().awtFlag;
        float penMiterLimit = (float) properties.getPenMiterLimit();
        float[] lineDashes = penStyle.getLineDashes();
        if (penStyle.isAlternateDash() && lineDashes != null && lineDashes.length > 1) {
            f = lineDashes[0];
        }
        return new BasicStroke(f2, i, i2, Math.max(1.0f, penMiterLimit), lineDashes, f);
    }

    public AffineTransform getTransform() {
        return new AffineTransform(this.graphicsCtx.getTransform());
    }

    public HwmfDrawProperties newProperties(HwmfDrawProperties hwmfDrawProperties) {
        return hwmfDrawProperties == null ? new HwmfDrawProperties() : new HwmfDrawProperties(hwmfDrawProperties);
    }

    public void restoreProperties(int i) {
        if (i == 0) {
            return;
        }
        if (i < 0) {
            int indexOf = this.propStack.indexOf(getProperties());
            if (indexOf == -1) {
                indexOf = this.propStack.size();
            }
            i += indexOf;
        }
        if (i == -1) {
            i = this.propStack.size() - 1;
        }
        for (int size = this.propStack.size() - 1; size >= i; size--) {
            this.prop = this.propStack.remove(size);
        }
        this.graphicsCtx.setTransform(this.prop.getTransform());
        this.graphicsCtx.setClip(this.prop.getClip());
    }

    public void saveProperties() {
        HwmfDrawProperties properties = getProperties();
        properties.setTransform(this.graphicsCtx.getTransform());
        properties.setClip(this.graphicsCtx.getClip());
        this.propStack.add(properties);
        this.prop = newProperties(properties);
    }

    @Override // org.apache.poi.hwmf.usermodel.HwmfCharsetAware
    public void setCharsetProvider(Supplier<Charset> supplier) {
        this.charsetProvider = supplier;
    }

    public void setClip(Shape shape, HwmfRegionMode hwmfRegionMode, boolean z) {
        AffineTransform transform = this.graphicsCtx.getTransform();
        if (z) {
            this.graphicsCtx.setTransform(getInitTransform());
        }
        Shape clip = this.graphicsCtx.getClip();
        Shape applyOp = hwmfRegionMode.applyOp(clip, shape);
        if (!Objects.equals(clip, applyOp)) {
            this.graphicsCtx.setClip(applyOp);
        }
        if (z) {
            this.graphicsCtx.setTransform(transform);
        }
        this.prop.setClip(this.graphicsCtx.getClip());
    }

    public void setTransform(AffineTransform affineTransform) {
        this.graphicsCtx.setTransform(affineTransform);
    }

    public void unsetObjectTableEntry(int i) {
        if (i >= 0) {
            this.objectTable.remove(Integer.valueOf(i));
            this.objectIndexes.clear(i);
        } else {
            throw new IndexOutOfBoundsException("Invalid index: " + i);
        }
    }

    public void updateWindowMapMode() {
        Rectangle2D window = getProperties().getWindow();
        Rectangle2D viewport = getProperties().getViewport();
        HwmfMapMode mapMode = getProperties().getMapMode();
        this.graphicsCtx.setTransform(getInitTransform());
        switch (C195471.$SwitchMap$org$apache$poi$hwmf$record$HwmfMapMode[mapMode.ordinal()]) {
            case 2:
                this.graphicsCtx.translate(this.bbox.getCenterX(), this.bbox.getCenterY());
                this.graphicsCtx.scale(this.bbox.getWidth() / window.getWidth(), this.bbox.getWidth() / window.getWidth());
                this.graphicsCtx.translate(-window.getCenterX(), -window.getCenterY());
                return;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                this.graphicsCtx.transform(this.graphicsCtx.getDeviceConfiguration().getNormalizingTransform());
                Graphics2D graphics2D = this.graphicsCtx;
                int i = mapMode.scale;
                graphics2D.scale(1.0d / i, (-1.0d) / i);
                this.graphicsCtx.translate(-window.getX(), -window.getY());
                return;
            case 8:
                return;
            default:
                if (viewport != null) {
                    this.graphicsCtx.translate(viewport.getCenterX(), viewport.getCenterY());
                    this.graphicsCtx.scale(viewport.getWidth() / window.getWidth(), viewport.getHeight() / window.getHeight());
                    this.graphicsCtx.translate(-window.getCenterX(), -window.getCenterY());
                    return;
                }
                return;
        }
    }

    public void drawImage(ImageRenderer imageRenderer, Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        if (rectangle2D.isEmpty()) {
            return;
        }
        HwmfDrawProperties properties = getProperties();
        int[] iArr = C195471.$SwitchMap$org$apache$poi$hwmf$record$HwmfTernaryRasterOp;
        int i = iArr[properties.getRasterOp3().ordinal()];
        if (i != 4) {
            int i2 = 5;
            if (i == 5) {
                this.graphicsCtx.setPaint(getFill());
                this.graphicsCtx.fill(rectangle2D2);
                return;
            }
            if (i == 6) {
                this.graphicsCtx.setPaint(Color.BLACK);
                this.graphicsCtx.fill(rectangle2D2);
                return;
            }
            if (i == 7) {
                this.graphicsCtx.setPaint(Color.WHITE);
                this.graphicsCtx.fill(rectangle2D2);
                return;
            }
            if (imageRenderer == null) {
                return;
            }
            Shape clip = this.graphicsCtx.getClip();
            AffineTransform transform = this.graphicsCtx.getTransform();
            Rectangle2D normalizeRect = normalizeRect(rectangle2D2);
            if (properties.getBkMode() == HwmfMisc.WmfSetBkMode.HwmfBkMode.OPAQUE) {
                Paint paint = this.graphicsCtx.getPaint();
                this.graphicsCtx.setPaint(properties.getBackgroundColor().getColor());
                this.graphicsCtx.fill(rectangle2D2);
                this.graphicsCtx.setPaint(paint);
            }
            this.graphicsCtx.translate(normalizeRect.getCenterX(), normalizeRect.getCenterY());
            this.graphicsCtx.scale(Math.signum(rectangle2D2.getWidth()), Math.signum(rectangle2D2.getHeight()));
            this.graphicsCtx.translate(-normalizeRect.getCenterX(), -normalizeRect.getCenterY());
            Composite composite = this.graphicsCtx.getComposite();
            int i3 = iArr[properties.getRasterOp3().ordinal()];
            if (i3 != 2) {
                i2 = 3;
                if (i3 == 3) {
                    i2 = 2;
                }
            }
            this.graphicsCtx.setComposite(AlphaComposite.getInstance(i2));
            imageRenderer.drawImage(this.graphicsCtx, normalizeRect, getSubImageInsets(rectangle2D, imageRenderer.useDeviceBounds() ? imageRenderer.getNativeBounds() : imageRenderer.getBounds()));
            this.graphicsCtx.setComposite(composite);
            this.graphicsCtx.setTransform(transform);
            this.graphicsCtx.setClip(clip);
        }
    }

    public void drawString(byte[] bArr, int i, Point2D point2D, Dimension2D dimension2D, Rectangle2D rectangle2D, HwmfText.WmfExtTextOutOptions wmfExtTextOutOptions, List<Integer> list, boolean z) {
        Shape shape;
        double d;
        double width;
        HwmfDrawProperties properties = getProperties();
        AffineTransform transform = this.graphicsCtx.getTransform();
        try {
            transform.createInverse();
            HwmfFont font = properties.getFont();
            if (font == null || bArr == null || bArr.length == 0) {
                return;
            }
            Charset charset = getCharset(font, z);
            String trimText = trimText(charset, bArr, i);
            if (trimText.isEmpty()) {
                return;
            }
            DrawFontManager fontManager = DrawFactory.getInstance(this.graphicsCtx).getFontManager(this.graphicsCtx);
            FontInfo mappedFont = fontManager.getMappedFont(this.graphicsCtx, font);
            String mapFontCharset = fontManager.mapFontCharset(this.graphicsCtx, mappedFont, trimText);
            AttributedString attributedString = new AttributedString(mapFontCharset);
            addAttributes(new c5i(attributedString), font, mappedFont.getTypeface());
            FontRenderContext fontRenderContext = this.graphicsCtx.getFontRenderContext();
            TextLayout nextLayout = new LineBreakMeasurer(attributedString.getIterator(), fontRenderContext).nextLayout(2.14748365E9f);
            double radians = Math.toRadians((-font.getEscapement()) / 10.0d);
            Point2D rotatedOffset = getRotatedOffset(radians, fontRenderContext, attributedString, wmfExtTextOutOptions == null && mapFontCharset.codePoints().anyMatch(new IntPredicate() { // from class: com.sunia.HTREnginev2.d5i
                @Override // java.util.function.IntPredicate
                public final boolean test(int i2) {
                    return Character.isIdeographic(i2);
                }
            }) && charset.displayName(Locale.ROOT).startsWith("GB"));
            Shape clip = this.graphicsCtx.getClip();
            try {
                try {
                    updateClipping(this.graphicsCtx, rectangle2D, radians, wmfExtTextOutOptions);
                    Point2D point2D2 = point2D;
                    if (point2D2.distance(0.0d, 0.0d) == 0.0d) {
                        point2D2 = properties.getLocation();
                    }
                    this.graphicsCtx.translate(point2D2.getX(), point2D2.getY());
                    this.graphicsCtx.rotate(radians);
                    if (dimension2D != null) {
                        d = radians;
                        this.graphicsCtx.scale(dimension2D.getWidth() < 0.0d ? -1.0d : 1.0d, dimension2D.getHeight() < 0.0d ? -1.0d : 1.0d);
                    } else {
                        d = radians;
                    }
                    this.graphicsCtx.scale(transform.getScaleX() < 0.0d ? -1.0d : 1.0d, transform.getScaleY() < 0.0d ? -1.0d : 1.0d);
                    this.graphicsCtx.translate(rotatedOffset.getX(), rotatedOffset.getY());
                    this.graphicsCtx.setColor(properties.getTextColor().getColor());
                    if (list != null && list.size() == i) {
                        boolean z2 = list.size() == mapFontCharset.length();
                        int i2 = 0;
                        int i3 = 0;
                        width = 0.0d;
                        while (i2 < mapFontCharset.length()) {
                            int i4 = i2 + 1;
                            AttributedCharacterIterator iterator = attributedString.getIterator(null, i2, i4);
                            this.graphicsCtx.drawString(iterator, (int) width, 0);
                            int charByteLength = z2 ? 1 : getCharByteLength(charset, iterator.first());
                            int charWidth = getCharWidth(list, i3, charByteLength);
                            i3 += charByteLength;
                            width += charWidth;
                            mapFontCharset = mapFontCharset;
                            i2 = i4;
                        }
                    } else {
                        this.graphicsCtx.drawString(attributedString.getIterator(), 0, 0);
                        width = nextLayout.getBounds().getWidth();
                    }
                    AffineTransform affineTransform = new AffineTransform();
                    affineTransform.translate(-rotatedOffset.getX(), -rotatedOffset.getY());
                    if (dimension2D != null) {
                        affineTransform.scale(dimension2D.getWidth() < 0.0d ? 1.0d : -1.0d, dimension2D.getHeight() < 0.0d ? 1.0d : -1.0d);
                    }
                    affineTransform.rotate(-d);
                    Point2D.Double r0 = new Point2D.Double(width, 0.0d);
                    Point2D location = properties.getLocation();
                    properties.setLocation(location.getX() + r0.getX(), location.getY() + r0.getY());
                    this.graphicsCtx.setTransform(transform);
                    this.graphicsCtx.setClip(clip);
                } catch (Throwable th) {
                    th = th;
                    shape = clip;
                    this.graphicsCtx.setTransform(transform);
                    this.graphicsCtx.setClip(shape);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                shape = clip;
            }
        } catch (NoninvertibleTransformException unused) {
        }
    }
}
