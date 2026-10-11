package java.awt;

import com.onyx.common.util.FileUtils;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphVector;
import java.awt.font.LineMetrics;
import java.awt.font.TextAttribute;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.peer.FontPeer;
import java.io.File;
import java.io.FilePermission;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.SoftReference;
import java.text.AttributedCharacterIterator;
import java.text.CharacterIterator;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;
import sun.font.AndroidGlyphVector;
import sun.font.AttributeMap;
import sun.font.AttributeValues;
import sun.font.CompositeFont;
import sun.font.CoreMetrics;
import sun.font.CreatedFontTracker;
import sun.font.EAttribute;
import sun.font.Font2D;
import sun.font.Font2DHandle;
import sun.font.FontAccess;
import sun.font.FontLineMetrics;
import sun.font.FontManager;
import sun.font.FontManagerFactory;
import sun.font.FontUtilities;
import sun.font.GlyphLayout;

/* loaded from: classes4.dex */
public class Font implements Serializable {
    public static final int BOLD = 1;
    public static final int CENTER_BASELINE = 1;
    public static final Font DEFAULT_FONT;
    public static final int DEFAULT_SIZE = 12;
    public static final String DIALOG = "Dialog";
    public static final String DIALOG_INPUT = "DialogInput";
    private static final int EXTRA_MASK;
    public static final int HANGING_BASELINE = 2;
    public static final int ITALIC = 2;
    public static final int LAYOUT_LEFT_TO_RIGHT = 0;
    private static final int LAYOUT_MASK;
    public static final int LAYOUT_NO_LIMIT_CONTEXT = 4;
    public static final int LAYOUT_NO_START_CONTEXT = 2;
    public static final int LAYOUT_RIGHT_TO_LEFT = 1;
    public static final String MONOSPACED = "Monospaced";
    public static final int PLAIN = 0;
    private static final int PRIMARY_MASK;
    private static final int RECOGNIZED_MASK;
    public static final int ROMAN_BASELINE = 0;
    public static final String SANS_SERIF = "SansSerif";
    private static final int SECONDARY_MASK;
    public static final String SERIF = "Serif";
    public static final int TRUETYPE_FONT = 0;
    public static final int TYPE1_FONT = 1;
    private static final AffineTransform identityTx;
    private static final long serialVersionUID = -4206021311591459213L;
    private static final float[] ssinfo;
    private transient boolean createdFont;
    private Hashtable<Object, Object> fRequestedAttributes;
    private transient SoftReference<FontLineMetrics> flmref;
    private transient Font2DHandle font2DHandle;
    private int fontSerializedDataVersion;
    private transient boolean hasLayoutAttributes;
    transient int hash;
    protected String name;
    private transient boolean nonIdentityTx;
    private transient long pData;
    private transient FontPeer peer;
    protected float pointSize;
    protected int size;
    protected int style;
    private transient AttributeValues values;

    /* loaded from: classes4.dex */
    public static class FontAccessImpl extends FontAccess {
        private FontAccessImpl() {
        }

        @Override // sun.font.FontAccess
        public Font2D getFont2D(Font font) {
            return font.getFont2D();
        }

        @Override // sun.font.FontAccess
        public boolean isCreatedFont(Font font) {
            return font.createdFont;
        }

        @Override // sun.font.FontAccess
        public void setCreatedFont(Font font) {
            font.createdFont = true;
        }

        @Override // sun.font.FontAccess
        public void setFont2D(Font font, Font2DHandle font2DHandle) {
            font.font2DHandle = font2DHandle;
        }
    }

    static {
        Toolkit.loadLibraries();
        initIDs();
        FontAccess.setFontAccess(new FontAccessImpl());
        identityTx = new AffineTransform();
        DEFAULT_FONT = new Font(DIALOG, 0, 12);
        int i = AttributeValues.MASK_ALL & (~AttributeValues.getMask(EAttribute.EFONT));
        RECOGNIZED_MASK = i;
        EAttribute eAttribute = EAttribute.EFAMILY;
        EAttribute eAttribute2 = EAttribute.EWEIGHT;
        EAttribute eAttribute3 = EAttribute.EWIDTH;
        EAttribute eAttribute4 = EAttribute.EPOSTURE;
        EAttribute eAttribute5 = EAttribute.ESIZE;
        EAttribute eAttribute6 = EAttribute.ETRANSFORM;
        EAttribute eAttribute7 = EAttribute.ESUPERSCRIPT;
        EAttribute eAttribute8 = EAttribute.ETRACKING;
        int mask = AttributeValues.getMask(eAttribute, eAttribute2, eAttribute3, eAttribute4, eAttribute5, eAttribute6, eAttribute7, eAttribute8);
        PRIMARY_MASK = mask;
        SECONDARY_MASK = i & (~mask);
        LAYOUT_MASK = AttributeValues.getMask(EAttribute.ECHAR_REPLACEMENT, EAttribute.EFOREGROUND, EAttribute.EBACKGROUND, EAttribute.EUNDERLINE, EAttribute.ESTRIKETHROUGH, EAttribute.ERUN_DIRECTION, EAttribute.EBIDI_EMBEDDING, EAttribute.EJUSTIFICATION, EAttribute.EINPUT_METHOD_HIGHLIGHT, EAttribute.EINPUT_METHOD_UNDERLINE, EAttribute.ESWAP_COLORS, EAttribute.ENUMERIC_SHAPING, EAttribute.EKERNING, EAttribute.ELIGATURES, eAttribute8, eAttribute7);
        EXTRA_MASK = AttributeValues.getMask(eAttribute6, eAttribute7, eAttribute3);
        ssinfo = new float[]{0.0f, 0.375f, 0.625f, 0.7916667f, 0.9027778f, 0.9768519f, 1.0262346f, 1.0591564f};
    }

    public Font(String str, int i, int i2) {
        this.createdFont = false;
        this.fontSerializedDataVersion = 1;
        this.name = str == null ? "Default" : str;
        this.style = (i & (-4)) != 0 ? 0 : i;
        this.size = i2;
        this.pointSize = i2;
    }

    private static void applyStyle(int i, AttributeValues attributeValues) {
        attributeValues.setWeight((i & 1) != 0 ? 2.0f : 1.0f);
        attributeValues.setPosture((i & 2) != 0 ? 0.2f : 0.0f);
    }

    private static void applyTransform(AffineTransform affineTransform, AttributeValues attributeValues) {
        if (affineTransform == null) {
            throw new IllegalArgumentException("transform must not be null");
        }
        attributeValues.setTransform(affineTransform);
    }

    public static Font createFont(int i, InputStream inputStream) throws FontFormatException, IOException {
        if (hasTempPermission()) {
            return createFont0(i, inputStream, null);
        }
        CreatedFontTracker tracker = CreatedFontTracker.getTracker();
        try {
            try {
                boolean acquirePermit = tracker.acquirePermit();
                if (acquirePermit) {
                    Font createFont0 = createFont0(i, inputStream, tracker);
                    if (acquirePermit) {
                        tracker.releasePermit();
                    }
                    return createFont0;
                }
                throw new IOException("Timed out waiting for resources.");
            } catch (InterruptedException unused) {
                throw new IOException("Problem reading font data.");
            }
        } catch (Throwable th) {
            if (0 != 0) {
                tracker.releasePermit();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x003a, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x003d, code lost:
    
        r11 = new java.awt.Font(r1, r10, true, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0042, code lost:
    
        if (r12 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0044, code lost:
    
        r12.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0047, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0048, code lost:
    
        r10 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0081, code lost:
    
        r2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0085, code lost:
    
        if (r12 != null) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0087, code lost:
    
        r12.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x008a, code lost:
    
        if (r0 == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x008c, code lost:
    
        if (r12 != null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x008e, code lost:
    
        r12.subBytes(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0091, code lost:
    
        java.security.AccessController.doPrivileged(new java.awt.Font.C176613());
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0099, code lost:
    
        throw r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.awt.Font createFont0(int r10, java.io.InputStream r11, sun.font.CreatedFontTracker r12) throws java.awt.FontFormatException, java.io.IOException {
        /*
            r0 = 1
            if (r10 == 0) goto Le
            if (r10 != r0) goto L6
            goto Le
        L6:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "font format not recognized"
            r10.<init>(r11)
            throw r10
        Le:
            java.awt.Font$1 r1 = new java.awt.Font$1     // Catch: java.lang.Throwable -> L9a
            r1.<init>()     // Catch: java.lang.Throwable -> L9a
            java.lang.Object r1 = java.security.AccessController.doPrivileged(r1)     // Catch: java.lang.Throwable -> L9a
            java.io.File r1 = (java.io.File) r1     // Catch: java.lang.Throwable -> L9a
            if (r12 == 0) goto L1e
            r12.add(r1)     // Catch: java.lang.Throwable -> L9a
        L1e:
            r2 = 0
            java.awt.Font$2 r3 = new java.awt.Font$2     // Catch: java.lang.Throwable -> L83
            r3.<init>()     // Catch: java.lang.Throwable -> L83
            java.lang.Object r3 = java.security.AccessController.doPrivileged(r3)     // Catch: java.lang.Throwable -> L83
            java.io.OutputStream r3 = (java.io.OutputStream) r3     // Catch: java.lang.Throwable -> L83
            if (r12 == 0) goto L2f
            r12.set(r1, r3)     // Catch: java.lang.Throwable -> L83
        L2f:
            r4 = 8192(0x2000, float:1.14794E-41)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L79
            r5 = r2
        L34:
            int r6 = r11.read(r4)     // Catch: java.lang.Throwable -> L77
            if (r6 >= 0) goto L4a
            r3.close()     // Catch: java.lang.Throwable -> L7f
            java.awt.Font r11 = new java.awt.Font     // Catch: java.lang.Throwable -> L48
            r11.<init>(r1, r10, r0, r12)     // Catch: java.lang.Throwable -> L48
            if (r12 == 0) goto L47
            r12.remove(r1)     // Catch: java.lang.Throwable -> L9a
        L47:
            return r11
        L48:
            r10 = move-exception
            goto L81
        L4a:
            if (r12 == 0) goto L73
            int r7 = r5 + r6
            r8 = 33554432(0x2000000, float:9.403955E-38)
            if (r7 > r8) goto L6b
            int r8 = r12.getNumBytes()     // Catch: java.lang.Throwable -> L77
            int r8 = r8 + r5
            r9 = 335544320(0x14000000, float:6.4623485E-27)
            if (r8 > r9) goto L63
            r12.addBytes(r6)     // Catch: java.lang.Throwable -> L60
            r5 = r7
            goto L73
        L60:
            r10 = move-exception
            r5 = r7
            goto L7b
        L63:
            java.io.IOException r10 = new java.io.IOException     // Catch: java.lang.Throwable -> L77
            java.lang.String r11 = "Total files too big."
            r10.<init>(r11)     // Catch: java.lang.Throwable -> L77
            throw r10     // Catch: java.lang.Throwable -> L77
        L6b:
            java.io.IOException r10 = new java.io.IOException     // Catch: java.lang.Throwable -> L77
            java.lang.String r11 = "File too big."
            r10.<init>(r11)     // Catch: java.lang.Throwable -> L77
            throw r10     // Catch: java.lang.Throwable -> L77
        L73:
            r3.write(r4, r2, r6)     // Catch: java.lang.Throwable -> L77
            goto L34
        L77:
            r10 = move-exception
            goto L7b
        L79:
            r10 = move-exception
            r5 = r2
        L7b:
            r3.close()     // Catch: java.lang.Throwable -> L7f
            throw r10     // Catch: java.lang.Throwable -> L7f
        L7f:
            r10 = move-exception
            r0 = r2
        L81:
            r2 = r5
            goto L85
        L83:
            r10 = move-exception
            r0 = r2
        L85:
            if (r12 == 0) goto L8a
            r12.remove(r1)     // Catch: java.lang.Throwable -> L9a
        L8a:
            if (r0 != 0) goto L99
            if (r12 == 0) goto L91
            r12.subBytes(r2)     // Catch: java.lang.Throwable -> L9a
        L91:
            java.awt.Font$3 r11 = new java.awt.Font$3     // Catch: java.lang.Throwable -> L9a
            r11.<init>()     // Catch: java.lang.Throwable -> L9a
            java.security.AccessController.doPrivileged(r11)     // Catch: java.lang.Throwable -> L9a
        L99:
            throw r10     // Catch: java.lang.Throwable -> L9a
        L9a:
            r10 = move-exception
            boolean r11 = r10 instanceof java.awt.FontFormatException
            if (r11 != 0) goto Lb9
            boolean r11 = r10 instanceof java.io.IOException
            if (r11 != 0) goto Lb6
            java.lang.Throwable r10 = r10.getCause()
            boolean r11 = r10 instanceof java.awt.FontFormatException
            if (r11 == 0) goto Lae
            java.awt.FontFormatException r10 = (java.awt.FontFormatException) r10
            throw r10
        Lae:
            java.io.IOException r10 = new java.io.IOException
            java.lang.String r11 = "Problem reading font data."
            r10.<init>(r11)
            throw r10
        Lb6:
            java.io.IOException r10 = (java.io.IOException) r10
            throw r10
        Lb9:
            java.awt.FontFormatException r10 = (java.awt.FontFormatException) r10
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.Font.createFont0(int, java.io.InputStream, sun.font.CreatedFontTracker):java.awt.Font");
    }

    public static Font decode(String str) {
        int i;
        String substring;
        int i2;
        int i3;
        int i4;
        int i5 = 12;
        int i6 = 0;
        if (str == null) {
            return new Font(DIALOG, 0, 12);
        }
        char c = str.lastIndexOf(45) <= str.lastIndexOf(32) ? ' ' : '-';
        int lastIndexOf = str.lastIndexOf(c);
        int lastIndexOf2 = str.lastIndexOf(c, lastIndexOf - 1);
        int length = str.length();
        if (lastIndexOf > 0 && (i4 = lastIndexOf + 1) < length) {
            try {
                int intValue = Integer.valueOf(str.substring(i4)).intValue();
                if (intValue > 0) {
                    i5 = intValue;
                }
            } catch (NumberFormatException unused) {
                i = str.charAt(length + (-1)) == c ? length - 1 : length;
            }
        }
        i = lastIndexOf;
        lastIndexOf = lastIndexOf2;
        if (lastIndexOf < 0 || (i2 = lastIndexOf + 1) >= length) {
            if (lastIndexOf > 0) {
                length = lastIndexOf;
            } else if (i > 0) {
                length = i;
            }
            if (length > 0 && str.charAt(length - 1) == c) {
                length--;
            }
            substring = str.substring(0, length);
        } else {
            String lowerCase = str.substring(i2, i).toLowerCase(Locale.ENGLISH);
            if (lowerCase.equals("bolditalic")) {
                i3 = 3;
            } else if (lowerCase.equals("italic")) {
                i3 = 2;
            } else if (lowerCase.equals("bold")) {
                i3 = 1;
            } else {
                if (!lowerCase.equals("plain")) {
                    if (str.charAt(i - 1) == c) {
                        lastIndexOf = i - 1;
                    } else {
                        i3 = 0;
                        lastIndexOf = i;
                    }
                }
                i3 = 0;
            }
            substring = str.substring(0, lastIndexOf);
            i6 = i3;
        }
        return new Font(substring, i6, i5);
    }

    private FontLineMetrics defaultLineMetrics(FontRenderContext fontRenderContext) {
        float f;
        float f2;
        float f3;
        FontLineMetrics fontLineMetrics;
        AffineTransform charTransform;
        SoftReference<FontLineMetrics> softReference = this.flmref;
        if (softReference == null || (fontLineMetrics = softReference.get()) == null || !fontLineMetrics.frc.equals(fontRenderContext)) {
            float[] fArr = new float[8];
            getFont2D().getFontMetrics(this, identityTx, fontRenderContext.getAntiAliasingHint(), fontRenderContext.getFractionalMetricsHint(), fArr);
            float f4 = fArr[0];
            float f5 = fArr[1];
            float f6 = fArr[2];
            AttributeValues attributeValues = this.values;
            if (attributeValues == null || attributeValues.getSuperscript() == 0) {
                f = f4;
                f2 = f5;
                f3 = 0.0f;
            } else {
                float translateY = (float) getTransform().getTranslateY();
                f = f4 - translateY;
                f2 = f5 + translateY;
                f3 = translateY;
            }
            float f7 = f + f2 + f6;
            float[] fArr2 = {0.0f, ((f2 / 2.0f) - f) / 2.0f, -f};
            float f8 = fArr[4];
            float f9 = fArr[5];
            float f10 = fArr[6];
            float f11 = fArr[7];
            float italicAngle = getItalicAngle(fontRenderContext);
            if (isTransformed() && (charTransform = this.values.getCharTransform()) != null) {
                Point2D.Float r8 = new Point2D.Float();
                r8.setLocation(0.0f, f8);
                charTransform.deltaTransform(r8, r8);
                f8 = r8.f97778y;
                r8.setLocation(0.0f, f9);
                charTransform.deltaTransform(r8, r8);
                f9 = r8.f97778y;
                r8.setLocation(0.0f, f10);
                charTransform.deltaTransform(r8, r8);
                f10 = r8.f97778y;
                r8.setLocation(0.0f, f11);
                charTransform.deltaTransform(r8, r8);
                f11 = r8.f97778y;
            }
            FontLineMetrics fontLineMetrics2 = new FontLineMetrics(0, new CoreMetrics(f, f2, f6, f7, 0, fArr2, f8 + f3, f9, f10 + f3, f11, f3, italicAngle), fontRenderContext);
            this.flmref = new SoftReference<>(fontLineMetrics2);
            fontLineMetrics = fontLineMetrics2;
        }
        return (FontLineMetrics) fontLineMetrics.clone();
    }

    private AttributeValues getAttributeValues() {
        if (this.values == null) {
            AttributeValues attributeValues = new AttributeValues();
            attributeValues.setFamily(this.name);
            attributeValues.setSize(this.pointSize);
            if ((this.style & 1) != 0) {
                attributeValues.setWeight(2.0f);
            }
            if ((this.style & 2) != 0) {
                attributeValues.setPosture(0.2f);
            }
            attributeValues.defineAll(PRIMARY_MASK);
            this.values = attributeValues;
        }
        return this.values;
    }

    public static Font getFont(Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        if (map instanceof AttributeMap) {
            AttributeMap attributeMap = (AttributeMap) map;
            if (attributeMap.getValues() != null) {
                AttributeValues values = attributeMap.getValues();
                if (values.isNonDefault(EAttribute.EFONT)) {
                    Font font = values.getFont();
                    int i = SECONDARY_MASK;
                    if (!values.anyDefined(i)) {
                        return font;
                    }
                    AttributeValues clone = font.getAttributeValues().clone();
                    clone.merge(map, i);
                    return new Font(clone, font.name, font.style, font.createdFont, font.font2DHandle);
                }
                return new Font(map);
            }
        }
        Font font2 = (Font) map.get(TextAttribute.FONT);
        if (font2 != null) {
            if (map.size() <= 1) {
                return font2;
            }
            AttributeValues clone2 = font2.getAttributeValues().clone();
            clone2.merge(map, SECONDARY_MASK);
            return new Font(clone2, font2.name, font2.style, font2.createdFont, font2.font2DHandle);
        }
        return new Font(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Font2D getFont2D() {
        Font2DHandle font2DHandle;
        FontManager fontManagerFactory = FontManagerFactory.getInstance();
        if (fontManagerFactory.usingPerAppContextComposites() && (font2DHandle = this.font2DHandle) != null) {
            Font2D font2D = font2DHandle.font2D;
            if ((font2D instanceof CompositeFont) && ((CompositeFont) font2D).isStdComposite()) {
                return fontManagerFactory.findFont2D(this.name, this.style, 2);
            }
        }
        if (this.font2DHandle == null) {
            this.font2DHandle = fontManagerFactory.findFont2D(this.name, this.style, 2).handle;
        }
        return this.font2DHandle.font2D;
    }

    private static boolean hasTempPermission() {
        if (System.getSecurityManager() == null) {
            return true;
        }
        try {
            FileUtils.createTempFile("+~JT", ".tmp").delete();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private void initFromValues(AttributeValues attributeValues) {
        this.values = attributeValues;
        attributeValues.defineAll(PRIMARY_MASK);
        this.name = attributeValues.getFamily();
        this.pointSize = attributeValues.getSize();
        this.size = (int) (attributeValues.getSize() + 0.5d);
        if (attributeValues.getWeight() >= 2.0f) {
            this.style |= 1;
        }
        if (attributeValues.getPosture() >= 0.2f) {
            this.style |= 2;
        }
        this.nonIdentityTx = attributeValues.anyNonDefault(EXTRA_MASK);
        this.hasLayoutAttributes = attributeValues.anyNonDefault(LAYOUT_MASK);
    }

    private static void initIDs() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        if (this.pointSize == 0.0f) {
            this.pointSize = this.size;
        }
        if (this.fRequestedAttributes != null) {
            this.values = getAttributeValues();
            AttributeValues fromSerializableHashtable = AttributeValues.fromSerializableHashtable(this.fRequestedAttributes);
            if (!AttributeValues.is16Hashtable(this.fRequestedAttributes)) {
                fromSerializableHashtable.unsetDefault();
            }
            AttributeValues merge = getAttributeValues().merge(fromSerializableHashtable);
            this.values = merge;
            this.nonIdentityTx = merge.anyNonDefault(EXTRA_MASK);
            this.hasLayoutAttributes = this.values.anyNonDefault(LAYOUT_MASK);
            this.fRequestedAttributes = null;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws ClassNotFoundException, IOException {
        AttributeValues attributeValues = this.values;
        if (attributeValues == null) {
            objectOutputStream.defaultWriteObject();
            return;
        }
        synchronized (attributeValues) {
            this.fRequestedAttributes = this.values.toSerializableHashtable();
            objectOutputStream.defaultWriteObject();
            this.fRequestedAttributes = null;
        }
    }

    public boolean canDisplay(char c) {
        return getFont2D().canDisplay(c);
    }

    public int canDisplayUpTo(String str) {
        Font2D font2D = getFont2D();
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (!font2D.canDisplay(charAt)) {
                if (!Character.isHighSurrogate(charAt) || !font2D.canDisplay(str.codePointAt(i))) {
                    return i;
                }
                i++;
            }
            i++;
        }
        return -1;
    }

    public GlyphVector createGlyphVector(FontRenderContext fontRenderContext, String str) {
        return new AndroidGlyphVector(this, str, fontRenderContext);
    }

    public Font deriveFont(int i, float f) {
        if (this.values == null) {
            return new Font(this.name, i, f, this.createdFont, this.font2DHandle);
        }
        AttributeValues clone = getAttributeValues().clone();
        int i2 = this.style;
        if (i2 == i) {
            i2 = -1;
        }
        applyStyle(i, clone);
        clone.setSize(f);
        return new Font(clone, (String) null, i2, this.createdFont, this.font2DHandle);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        try {
            Font font = (Font) obj;
            if (this.size != font.size || this.style != font.style || this.nonIdentityTx != font.nonIdentityTx || this.hasLayoutAttributes != font.hasLayoutAttributes || this.pointSize != font.pointSize || !this.name.equals(font.name)) {
                return false;
            }
            AttributeValues attributeValues = this.values;
            if (attributeValues != null) {
                return attributeValues.equals(font.getAttributeValues());
            }
            if (font.values == null) {
                return true;
            }
            return getAttributeValues().equals(font.values);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public Map<TextAttribute, ?> getAttributes() {
        return new AttributeMap(getAttributeValues());
    }

    public AttributedCharacterIterator.Attribute[] getAvailableAttributes() {
        return new AttributedCharacterIterator.Attribute[]{TextAttribute.FAMILY, TextAttribute.WEIGHT, TextAttribute.WIDTH, TextAttribute.POSTURE, TextAttribute.SIZE, TextAttribute.TRANSFORM, TextAttribute.SUPERSCRIPT, TextAttribute.CHAR_REPLACEMENT, TextAttribute.FOREGROUND, TextAttribute.BACKGROUND, TextAttribute.UNDERLINE, TextAttribute.STRIKETHROUGH, TextAttribute.RUN_DIRECTION, TextAttribute.BIDI_EMBEDDING, TextAttribute.JUSTIFICATION, TextAttribute.INPUT_METHOD_HIGHLIGHT, TextAttribute.INPUT_METHOD_UNDERLINE, TextAttribute.SWAP_COLORS, TextAttribute.NUMERIC_SHAPING, TextAttribute.KERNING, TextAttribute.LIGATURES, TextAttribute.TRACKING};
    }

    public byte getBaselineFor(char c) {
        return getFont2D().getBaselineFor(c);
    }

    public String getFamily() {
        return getFamily_NoClientCode();
    }

    public final String getFamily_NoClientCode() {
        return getFamily(Locale.getDefault());
    }

    public String getFontName() {
        return getFontName(Locale.getDefault());
    }

    public float getItalicAngle() {
        return getItalicAngle(null);
    }

    public LineMetrics getLineMetrics(String str, FontRenderContext fontRenderContext) {
        FontLineMetrics defaultLineMetrics = defaultLineMetrics(fontRenderContext);
        defaultLineMetrics.numchars = str.length();
        return defaultLineMetrics;
    }

    public Rectangle2D getMaxCharBounds(FontRenderContext fontRenderContext) {
        float[] fArr = new float[4];
        getFont2D().getFontMetrics(this, fontRenderContext, fArr);
        float f = fArr[0];
        return new Rectangle2D.Float(0.0f, -f, fArr[3], f + fArr[1] + fArr[2]);
    }

    public int getMissingGlyphCode() {
        return getFont2D().getMissingGlyphCode();
    }

    public String getName() {
        return this.name;
    }

    public int getNumGlyphs() {
        return getFont2D().getNumGlyphs();
    }

    public String getPSName() {
        return getFont2D().getPostscriptName();
    }

    @Deprecated
    public FontPeer getPeer() {
        return getPeer_NoClientCode();
    }

    public final FontPeer getPeer_NoClientCode() {
        if (this.peer == null) {
            this.peer = Toolkit.getDefaultToolkit().getFontPeer(this.name, this.style);
        }
        return this.peer;
    }

    public int getSize() {
        return this.size;
    }

    public float getSize2D() {
        return this.pointSize;
    }

    public Rectangle2D getStringBounds(String str, FontRenderContext fontRenderContext) {
        char[] charArray = str.toCharArray();
        return getStringBounds(charArray, 0, charArray.length, fontRenderContext);
    }

    public int getStyle() {
        return this.style;
    }

    public AffineTransform getTransform() {
        if (!this.nonIdentityTx) {
            return new AffineTransform();
        }
        AttributeValues attributeValues = getAttributeValues();
        AffineTransform affineTransform = attributeValues.isNonDefault(EAttribute.ETRANSFORM) ? new AffineTransform(attributeValues.getTransform()) : new AffineTransform();
        if (attributeValues.getSuperscript() != 0) {
            int superscript = attributeValues.getSuperscript();
            int i = 0;
            boolean z = superscript > 0;
            int i2 = z ? -1 : 1;
            if (!z) {
                superscript = -superscript;
            }
            double d = 0.0d;
            while (true) {
                int i3 = superscript & 7;
                if (i3 <= i) {
                    break;
                }
                float[] fArr = ssinfo;
                d += i2 * (fArr[i3] - fArr[i]);
                superscript >>= 3;
                i2 = -i2;
                i = i3;
            }
            double pow = Math.pow(0.6666666666666666d, i);
            affineTransform.preConcatenate(AffineTransform.getTranslateInstance(0.0d, d * this.pointSize));
            affineTransform.scale(pow, pow);
        }
        if (attributeValues.isNonDefault(EAttribute.EWIDTH)) {
            affineTransform.scale(attributeValues.getWidth(), 1.0d);
        }
        return affineTransform;
    }

    public boolean hasLayoutAttributes() {
        return this.hasLayoutAttributes;
    }

    public boolean hasUniformLineMetrics() {
        return false;
    }

    public int hashCode() {
        AttributeValues attributeValues;
        if (this.hash == 0) {
            this.hash = (this.name.hashCode() ^ this.style) ^ this.size;
            if (this.nonIdentityTx && (attributeValues = this.values) != null && attributeValues.getTransform() != null) {
                this.hash ^= this.values.getTransform().hashCode();
            }
        }
        return this.hash;
    }

    public boolean isBold() {
        return (this.style & 1) != 0;
    }

    public boolean isItalic() {
        return (this.style & 2) != 0;
    }

    public boolean isPlain() {
        return this.style == 0;
    }

    public boolean isTransformed() {
        return this.nonIdentityTx;
    }

    public GlyphVector layoutGlyphVector(FontRenderContext fontRenderContext, char[] cArr, int i, int i2, int i3) {
        GlyphLayout glyphLayout = GlyphLayout.get(null);
        AndroidGlyphVector layout = glyphLayout.layout(this, fontRenderContext, cArr, i, i2 - i, i3, null);
        GlyphLayout.done(glyphLayout);
        return layout;
    }

    public String toString() {
        return getClass().getName() + "[family=" + getFamily() + ",name=" + this.name + ",style=" + (isBold() ? isItalic() ? "bolditalic" : "bold" : isItalic() ? "italic" : "plain") + ",size=" + this.size + IteratorUtils.f104924b;
    }

    private float getItalicAngle(FontRenderContext fontRenderContext) {
        Object fractionalMetricsHint;
        Object obj;
        if (fontRenderContext == null) {
            obj = RenderingHints.VALUE_TEXT_ANTIALIAS_OFF;
            fractionalMetricsHint = RenderingHints.VALUE_FRACTIONALMETRICS_OFF;
        } else {
            Object antiAliasingHint = fontRenderContext.getAntiAliasingHint();
            fractionalMetricsHint = fontRenderContext.getFractionalMetricsHint();
            obj = antiAliasingHint;
        }
        return getFont2D().getItalicAngle(this, identityTx, obj, fractionalMetricsHint);
    }

    public boolean canDisplay(int i) {
        if (Character.isValidCodePoint(i)) {
            return getFont2D().canDisplay(i);
        }
        throw new IllegalArgumentException("invalid code point: " + Integer.toHexString(i));
    }

    public GlyphVector createGlyphVector(FontRenderContext fontRenderContext, char[] cArr) {
        return new AndroidGlyphVector(this, cArr, fontRenderContext);
    }

    public String getFamily(Locale locale) {
        if (locale != null) {
            return getFont2D().getFamilyName(locale);
        }
        throw new NullPointerException("null locale doesn't mean default");
    }

    public String getFontName(Locale locale) {
        if (locale != null) {
            return getFont2D().getFontName(locale);
        }
        throw new NullPointerException("null locale doesn't mean default");
    }

    public GlyphVector createGlyphVector(FontRenderContext fontRenderContext, CharacterIterator characterIterator) {
        return new AndroidGlyphVector(this, characterIterator, fontRenderContext);
    }

    public LineMetrics getLineMetrics(String str, int i, int i2, FontRenderContext fontRenderContext) {
        FontLineMetrics defaultLineMetrics = defaultLineMetrics(fontRenderContext);
        int i3 = i2 - i;
        if (i3 < 0) {
            i3 = 0;
        }
        defaultLineMetrics.numchars = i3;
        return defaultLineMetrics;
    }

    public Rectangle2D getStringBounds(String str, int i, int i2, FontRenderContext fontRenderContext) {
        return getStringBounds(str.substring(i, i2), fontRenderContext);
    }

    public GlyphVector createGlyphVector(FontRenderContext fontRenderContext, int[] iArr) {
        return new AndroidGlyphVector(this, iArr, fontRenderContext);
    }

    public LineMetrics getLineMetrics(char[] cArr, int i, int i2, FontRenderContext fontRenderContext) {
        FontLineMetrics defaultLineMetrics = defaultLineMetrics(fontRenderContext);
        int i3 = i2 - i;
        if (i3 < 0) {
            i3 = 0;
        }
        defaultLineMetrics.numchars = i3;
        return defaultLineMetrics;
    }

    public Rectangle2D getStringBounds(char[] cArr, int i, int i2, FontRenderContext fontRenderContext) {
        if (i >= 0) {
            if (i2 > cArr.length) {
                throw new IndexOutOfBoundsException("limit: " + i2);
            }
            if (i <= i2) {
                AttributeValues attributeValues = this.values;
                boolean z = attributeValues == null || (attributeValues.getKerning() == 0 && this.values.getLigatures() == 0 && this.values.getBaselineTransform() == null);
                if (z) {
                    z = !FontUtilities.isComplexText(cArr, i, i2);
                }
                if (z) {
                    return new AndroidGlyphVector(this, cArr, i, i2 - i, fontRenderContext).getLogicalBounds();
                }
                TextLayout textLayout = new TextLayout(new String(cArr, i, i2 - i), this, fontRenderContext);
                return new Rectangle2D.Float(0.0f, -textLayout.getAscent(), textLayout.getAdvance(), textLayout.getAscent() + textLayout.getDescent() + textLayout.getLeading());
            }
            throw new IndexOutOfBoundsException("range length: " + (i2 - i));
        }
        throw new IndexOutOfBoundsException("beginIndex: " + i);
    }

    public int canDisplayUpTo(char[] cArr, int i, int i2) {
        Font2D font2D = getFont2D();
        while (i < i2) {
            char c = cArr[i];
            if (!font2D.canDisplay(c)) {
                if (!Character.isHighSurrogate(c) || !font2D.canDisplay(Character.codePointAt(cArr, i, i2))) {
                    return i;
                }
                i++;
            }
            i++;
        }
        return -1;
    }

    public LineMetrics getLineMetrics(CharacterIterator characterIterator, int i, int i2, FontRenderContext fontRenderContext) {
        FontLineMetrics defaultLineMetrics = defaultLineMetrics(fontRenderContext);
        int i3 = i2 - i;
        if (i3 < 0) {
            i3 = 0;
        }
        defaultLineMetrics.numchars = i3;
        return defaultLineMetrics;
    }

    public Font(String str, int i, float f) {
        this.createdFont = false;
        this.fontSerializedDataVersion = 1;
        this.name = str == null ? "Default" : str;
        this.style = (i & (-4)) != 0 ? 0 : i;
        this.size = (int) (f + 0.5d);
        this.pointSize = f;
    }

    public Font deriveFont(int i, AffineTransform affineTransform) {
        AttributeValues clone = getAttributeValues().clone();
        int i2 = this.style;
        if (i2 == i) {
            i2 = -1;
        }
        applyStyle(i, clone);
        applyTransform(affineTransform, clone);
        return new Font(clone, (String) null, i2, this.createdFont, this.font2DHandle);
    }

    public static Font createFont(int i, File file) throws FontFormatException, IOException {
        File file2 = new File(file.getPath());
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("font format not recognized");
        }
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new FilePermission(file2.getPath(), "read"));
        }
        if (file2.canRead()) {
            return new Font(file2, i, false, null);
        }
        throw new IOException("Can't read " + file2);
    }

    public int canDisplayUpTo(CharacterIterator characterIterator, int i, int i2) {
        Font2D font2D = getFont2D();
        char index = characterIterator.setIndex(i);
        while (i < i2) {
            if (!font2D.canDisplay(index)) {
                if (!Character.isHighSurrogate(index)) {
                    return i;
                }
                char next = characterIterator.next();
                if (!Character.isLowSurrogate(next) || !font2D.canDisplay(Character.toCodePoint(index, next))) {
                    return i;
                }
                i++;
            }
            i++;
            index = characterIterator.next();
        }
        return -1;
    }

    public Font deriveFont(float f) {
        if (this.values == null) {
            return new Font(this.name, this.style, f, this.createdFont, this.font2DHandle);
        }
        AttributeValues clone = getAttributeValues().clone();
        clone.setSize(f);
        return new Font(clone, (String) null, -1, this.createdFont, this.font2DHandle);
    }

    private Font(String str, int i, float f, boolean z, Font2DHandle font2DHandle) {
        this(str, i, f);
        this.createdFont = z;
        if (z) {
            Font2D font2D = font2DHandle.font2D;
            if ((font2D instanceof CompositeFont) && font2D.getStyle() != i) {
                this.font2DHandle = FontManagerFactory.getInstance().getNewComposite(null, i, font2DHandle);
            } else {
                this.font2DHandle = font2DHandle;
            }
        }
    }

    public static Font getFont(String str) {
        return getFont(str, null);
    }

    public static Font getFont(String str, Font font) {
        String str2;
        try {
            str2 = System.getProperty(str);
        } catch (SecurityException unused) {
            str2 = null;
        }
        return str2 == null ? font : decode(str2);
    }

    public Font deriveFont(AffineTransform affineTransform) {
        AttributeValues clone = getAttributeValues().clone();
        applyTransform(affineTransform, clone);
        return new Font(clone, (String) null, -1, this.createdFont, this.font2DHandle);
    }

    public Rectangle2D getStringBounds(CharacterIterator characterIterator, int i, int i2, FontRenderContext fontRenderContext) {
        int beginIndex = characterIterator.getBeginIndex();
        int endIndex = characterIterator.getEndIndex();
        if (i < beginIndex) {
            throw new IndexOutOfBoundsException("beginIndex: " + i);
        }
        if (i2 > endIndex) {
            throw new IndexOutOfBoundsException("limit: " + i2);
        }
        if (i <= i2) {
            int i3 = i2 - i;
            char[] cArr = new char[i3];
            characterIterator.setIndex(i);
            for (int i4 = 0; i4 < i3; i4++) {
                cArr[i4] = characterIterator.current();
                characterIterator.next();
            }
            return getStringBounds(cArr, 0, i3, fontRenderContext);
        }
        throw new IndexOutOfBoundsException("range length: " + (i2 - i));
    }

    public Font deriveFont(int i) {
        if (this.values == null) {
            return new Font(this.name, i, this.size, this.createdFont, this.font2DHandle);
        }
        AttributeValues clone = getAttributeValues().clone();
        int i2 = this.style;
        if (i2 == i) {
            i2 = -1;
        }
        applyStyle(i, clone);
        return new Font(clone, (String) null, i2, this.createdFont, this.font2DHandle);
    }

    private Font(File file, int i, boolean z, CreatedFontTracker createdFontTracker) throws FontFormatException {
        this.fontSerializedDataVersion = 1;
        this.createdFont = true;
        Font2DHandle font2DHandle = FontManagerFactory.getInstance().createFont2D(file, i, z, createdFontTracker).handle;
        this.font2DHandle = font2DHandle;
        this.name = font2DHandle.font2D.getFontName(Locale.getDefault());
        this.style = 0;
        this.size = 1;
        this.pointSize = 1.0f;
    }

    public Font deriveFont(Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        if (map == null) {
            return this;
        }
        AttributeValues clone = getAttributeValues().clone();
        clone.merge(map, RECOGNIZED_MASK);
        return new Font(clone, this.name, this.style, this.createdFont, this.font2DHandle);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0039, code lost:
    
        if (r8 == r0) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0017, code lost:
    
        if (r7.equals(r1) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private Font(sun.font.AttributeValues r6, java.lang.String r7, int r8, boolean r9, sun.font.Font2DHandle r10) {
        /*
            r5 = this;
            r5.<init>()
            r0 = 1
            r5.fontSerializedDataVersion = r0
            r5.createdFont = r9
            if (r9 == 0) goto L57
            r5.font2DHandle = r10
            r9 = 0
            if (r7 == 0) goto L19
            java.lang.String r1 = r6.getFamily()
            boolean r7 = r7.equals(r1)
            if (r7 == 0) goto L1a
        L19:
            r1 = r9
        L1a:
            r7 = 0
            r2 = -1
            if (r8 != r2) goto L20
        L1e:
            r0 = r2
            goto L3c
        L20:
            float r3 = r6.getWeight()
            r4 = 1073741824(0x40000000, float:2.0)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 < 0) goto L2b
            goto L2c
        L2b:
            r0 = r7
        L2c:
            float r3 = r6.getPosture()
            r4 = 1045220557(0x3e4ccccd, float:0.2)
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 < 0) goto L39
            r0 = r0 | 2
        L39:
            if (r8 != r0) goto L3c
            goto L1e
        L3c:
            sun.font.Font2D r8 = r10.font2D
            boolean r8 = r8 instanceof sun.font.CompositeFont
            if (r8 == 0) goto L51
            if (r0 != r2) goto L46
            if (r1 == 0) goto L57
        L46:
            sun.font.FontManager r7 = sun.font.FontManagerFactory.getInstance()
            sun.font.Font2DHandle r7 = r7.getNewComposite(r1, r0, r10)
            r5.font2DHandle = r7
            goto L57
        L51:
            if (r1 == 0) goto L57
            r5.createdFont = r7
            r5.font2DHandle = r9
        L57:
            r5.initFromValues(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.Font.<init>(sun.font.AttributeValues, java.lang.String, int, boolean, sun.font.Font2DHandle):void");
    }

    public Font(Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        this.createdFont = false;
        this.fontSerializedDataVersion = 1;
        initFromValues(AttributeValues.fromMap(map, RECOGNIZED_MASK));
    }

    public Font(Font font) {
        this.createdFont = false;
        this.fontSerializedDataVersion = 1;
        if (font.values != null) {
            initFromValues(font.getAttributeValues().clone());
        } else {
            this.name = font.name;
            this.style = font.style;
            this.size = font.size;
            this.pointSize = font.pointSize;
        }
        this.font2DHandle = font.font2DHandle;
        this.createdFont = font.createdFont;
    }
}
