package sun.font;

import java.awt.Font;
import java.awt.Paint;
import java.awt.font.GraphicAttribute;
import java.awt.font.NumericShaper;
import java.awt.font.TextAttribute;
import java.awt.font.TransformAttribute;
import java.awt.geom.AffineTransform;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;
import java.awt.im.InputMethodHighlight;
import java.io.Serializable;
import java.text.Annotation;
import java.text.AttributedCharacterIterator;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes16.dex */
public final class AttributeValues implements Cloneable {
    private static final String DEFINED_KEY = "sun.font.attributevalues.defined_key";
    private Paint background;
    private AffineTransform baselineTransform;
    private byte bidiEmbedding;
    private GraphicAttribute charReplacement;
    private AffineTransform charTransform;
    private int defined;
    private Font font;
    private Paint foreground;
    private Object imHighlight;
    private byte kerning;
    private byte ligatures;
    private int nondefault;
    private NumericShaper numericShaping;
    private float posture;
    private boolean strikethrough;
    private byte superscript;
    private boolean swapColors;
    private float tracking;
    private AffineTransform transform;
    private static final AttributeValues DEFAULT = new AttributeValues();
    public static final int MASK_ALL = getMask((EAttribute[]) EAttribute.class.getEnumConstants());
    private String family = "Default";
    private float weight = 1.0f;
    private float width = 1.0f;
    private float size = 12.0f;
    private float justification = 1.0f;
    private byte imUnderline = -1;
    private byte underline = -1;
    private byte runDirection = -2;

    /* renamed from: sun.font.AttributeValues$1 */
    /* loaded from: classes16.dex */
    public static /* synthetic */ class C205161 {
        static final /* synthetic */ int[] $SwitchMap$sun$font$EAttribute;

        static {
            int[] iArr = new int[EAttribute.values().length];
            $SwitchMap$sun$font$EAttribute = iArr;
            try {
                iArr[EAttribute.EFAMILY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EWEIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EWIDTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EPOSTURE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ESIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ETRANSFORM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ESUPERSCRIPT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EFONT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ECHAR_REPLACEMENT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EFOREGROUND.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EBACKGROUND.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EUNDERLINE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ESTRIKETHROUGH.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ERUN_DIRECTION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EBIDI_EMBEDDING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EJUSTIFICATION.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EINPUT_METHOD_HIGHLIGHT.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EINPUT_METHOD_UNDERLINE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ESWAP_COLORS.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ENUMERIC_SHAPING.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.EKERNING.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ELIGATURES.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$sun$font$EAttribute[EAttribute.ETRACKING.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    private static AffineTransform extractRotation(Point2D.Double r20, AffineTransform affineTransform, boolean z) {
        affineTransform.deltaTransform(r20, r20);
        AffineTransform rotateInstance = AffineTransform.getRotateInstance(r20.f97775x, r20.f97776y);
        try {
            AffineTransform createInverse = rotateInstance.createInverse();
            double translateX = affineTransform.getTranslateX();
            double translateY = affineTransform.getTranslateY();
            affineTransform.preConcatenate(createInverse);
            if (z && (translateX != 0.0d || translateY != 0.0d)) {
                affineTransform.setTransform(affineTransform.getScaleX(), affineTransform.getShearY(), affineTransform.getShearX(), affineTransform.getScaleY(), 0.0d, 0.0d);
                rotateInstance.setTransform(rotateInstance.getScaleX(), rotateInstance.getShearY(), rotateInstance.getShearX(), rotateInstance.getScaleY(), translateX, translateY);
            }
            return rotateInstance;
        } catch (NoninvertibleTransformException unused) {
            return null;
        }
    }

    public static AffineTransform extractXRotation(AffineTransform affineTransform, boolean z) {
        return extractRotation(new Point2D.Double(1.0d, 0.0d), affineTransform, z);
    }

    public static AffineTransform extractYRotation(AffineTransform affineTransform, boolean z) {
        return extractRotation(new Point2D.Double(0.0d, 1.0d), affineTransform, z);
    }

    public static AttributeValues fromMap(Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        return fromMap(map, MASK_ALL);
    }

    public static AttributeValues fromSerializableHashtable(Hashtable<Object, Object> hashtable) {
        AttributeValues attributeValues = new AttributeValues();
        if (hashtable != null && !hashtable.isEmpty()) {
            for (Map.Entry<Object, Object> entry : hashtable.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (key.equals(DEFINED_KEY)) {
                    attributeValues.defineAll(((Integer) value).intValue());
                } else {
                    try {
                        EAttribute forAttribute = EAttribute.forAttribute((AttributedCharacterIterator.Attribute) key);
                        if (forAttribute != null) {
                            attributeValues.set(forAttribute, value);
                        }
                    } catch (ClassCastException unused) {
                    }
                }
            }
        }
        return attributeValues;
    }

    public static int getMask(EAttribute eAttribute) {
        return eAttribute.mask;
    }

    private boolean i_equals(EAttribute eAttribute, AttributeValues attributeValues) {
        switch (C205161.$SwitchMap$sun$font$EAttribute[eAttribute.ordinal()]) {
            case 1:
                return equals(this.family, attributeValues.family);
            case 2:
                return this.weight == attributeValues.weight;
            case 3:
                return this.width == attributeValues.width;
            case 4:
                return this.posture == attributeValues.posture;
            case 5:
                return this.size == attributeValues.size;
            case 6:
                return equals(this.transform, attributeValues.transform);
            case 7:
                return this.superscript == attributeValues.superscript;
            case 8:
                return equals(this.font, attributeValues.font);
            case 9:
                return equals(this.charReplacement, attributeValues.charReplacement);
            case 10:
                return equals(this.foreground, attributeValues.foreground);
            case 11:
                return equals(this.background, attributeValues.background);
            case 12:
                return this.underline == attributeValues.underline;
            case 13:
                return this.strikethrough == attributeValues.strikethrough;
            case 14:
                return this.runDirection == attributeValues.runDirection;
            case 15:
                return this.bidiEmbedding == attributeValues.bidiEmbedding;
            case 16:
                return this.justification == attributeValues.justification;
            case 17:
                return equals(this.imHighlight, attributeValues.imHighlight);
            case 18:
                return this.imUnderline == attributeValues.imUnderline;
            case 19:
                return this.swapColors == attributeValues.swapColors;
            case 20:
                return equals(this.numericShaping, attributeValues.numericShaping);
            case 21:
                return this.kerning == attributeValues.kerning;
            case 22:
                return this.ligatures == attributeValues.ligatures;
            case 23:
                return this.tracking == attributeValues.tracking;
            default:
                throw new InternalError();
        }
    }

    private Object i_get(EAttribute eAttribute) {
        switch (C205161.$SwitchMap$sun$font$EAttribute[eAttribute.ordinal()]) {
            case 1:
                return this.family;
            case 2:
                return Float.valueOf(this.weight);
            case 3:
                return Float.valueOf(this.width);
            case 4:
                return Float.valueOf(this.posture);
            case 5:
                return Float.valueOf(this.size);
            case 6:
                return this.transform == null ? TransformAttribute.IDENTITY : new TransformAttribute(this.transform);
            case 7:
                return Integer.valueOf(this.superscript);
            case 8:
                return this.font;
            case 9:
                return this.charReplacement;
            case 10:
                return this.foreground;
            case 11:
                return this.background;
            case 12:
                return Integer.valueOf(this.underline);
            case 13:
                return Boolean.valueOf(this.strikethrough);
            case 14:
                byte b = this.runDirection;
                if (b == 0) {
                    return TextAttribute.RUN_DIRECTION_LTR;
                }
                if (b != 1) {
                    return null;
                }
                return TextAttribute.RUN_DIRECTION_RTL;
            case 15:
                return Integer.valueOf(this.bidiEmbedding);
            case 16:
                return Float.valueOf(this.justification);
            case 17:
                return this.imHighlight;
            case 18:
                return Integer.valueOf(this.imUnderline);
            case 19:
                return Boolean.valueOf(this.swapColors);
            case 20:
                return this.numericShaping;
            case 21:
                return Integer.valueOf(this.kerning);
            case 22:
                return Integer.valueOf(this.ligatures);
            case 23:
                return Float.valueOf(this.tracking);
            default:
                throw new InternalError();
        }
    }

    private void i_set(EAttribute eAttribute, AttributeValues attributeValues) {
        switch (C205161.$SwitchMap$sun$font$EAttribute[eAttribute.ordinal()]) {
            case 1:
                this.family = attributeValues.family;
                return;
            case 2:
                this.weight = attributeValues.weight;
                return;
            case 3:
                this.width = attributeValues.width;
                return;
            case 4:
                this.posture = attributeValues.posture;
                return;
            case 5:
                this.size = attributeValues.size;
                return;
            case 6:
                this.transform = attributeValues.transform;
                updateDerivedTransforms();
                return;
            case 7:
                this.superscript = attributeValues.superscript;
                return;
            case 8:
                this.font = attributeValues.font;
                return;
            case 9:
                this.charReplacement = attributeValues.charReplacement;
                return;
            case 10:
                this.foreground = attributeValues.foreground;
                return;
            case 11:
                this.background = attributeValues.background;
                return;
            case 12:
                this.underline = attributeValues.underline;
                return;
            case 13:
                this.strikethrough = attributeValues.strikethrough;
                return;
            case 14:
                this.runDirection = attributeValues.runDirection;
                return;
            case 15:
                this.bidiEmbedding = attributeValues.bidiEmbedding;
                return;
            case 16:
                this.justification = attributeValues.justification;
                return;
            case 17:
                this.imHighlight = attributeValues.imHighlight;
                return;
            case 18:
                this.imUnderline = attributeValues.imUnderline;
                return;
            case 19:
                this.swapColors = attributeValues.swapColors;
                return;
            case 20:
                this.numericShaping = attributeValues.numericShaping;
                return;
            case 21:
                this.kerning = attributeValues.kerning;
                return;
            case 22:
                this.ligatures = attributeValues.ligatures;
                return;
            case 23:
                this.tracking = attributeValues.tracking;
                return;
            default:
                throw new InternalError();
        }
    }

    private boolean i_validate(EAttribute eAttribute) {
        switch (C205161.$SwitchMap$sun$font$EAttribute[eAttribute.ordinal()]) {
            case 1:
                String str = this.family;
                if (str == null || str.length() == 0) {
                    this.family = DEFAULT.family;
                }
                return true;
            case 2:
                float f = this.weight;
                return f > 0.0f && f < 10.0f;
            case 3:
                float f2 = this.width;
                return f2 >= 0.5f && f2 < 10.0f;
            case 4:
                float f3 = this.posture;
                return f3 >= -1.0f && f3 <= 1.0f;
            case 5:
                return this.size >= 0.0f;
            case 6:
                AffineTransform affineTransform = this.transform;
                if (affineTransform != null && affineTransform.isIdentity()) {
                    this.transform = DEFAULT.transform;
                }
                return true;
            case 7:
                byte b = this.superscript;
                return b >= -7 && b <= 7;
            case 8:
            case 9:
            case 10:
            case 11:
                return true;
            case 12:
                byte b2 = this.underline;
                return b2 >= -1 && b2 < 6;
            case 13:
                return true;
            case 14:
                byte b3 = this.runDirection;
                return b3 >= -2 && b3 <= 1;
            case 15:
                byte b4 = this.bidiEmbedding;
                return b4 >= -61 && b4 < 62;
            case 16:
                this.justification = Math.max(0.0f, Math.min(this.justification, 1.0f));
                return true;
            case 17:
                return true;
            case 18:
                byte b5 = this.imUnderline;
                return b5 >= -1 && b5 < 6;
            case 19:
            case 20:
                return true;
            case 21:
                byte b6 = this.kerning;
                return b6 >= 0 && b6 <= 1;
            case 22:
                byte b7 = this.ligatures;
                return b7 >= 0 && b7 <= 1;
            case 23:
                float f4 = this.tracking;
                return f4 >= -1.0f && f4 <= 10.0f;
            default:
                throw new InternalError("unknown attribute: " + eAttribute);
        }
    }

    public static boolean is16Hashtable(Hashtable<Object, Object> hashtable) {
        return hashtable.containsKey(DEFINED_KEY);
    }

    private void update(EAttribute eAttribute) {
        this.defined |= eAttribute.mask;
        if (!i_validate(eAttribute)) {
            setDefault(eAttribute);
        } else if (i_equals(eAttribute, DEFAULT)) {
            this.nondefault = (~eAttribute.mask) & this.nondefault;
        } else {
            this.nondefault = eAttribute.mask | this.nondefault;
        }
    }

    public boolean allDefined(int i) {
        return (this.defined & i) == i;
    }

    public boolean anyDefined(int i) {
        return (this.defined & i) != 0;
    }

    public boolean anyNonDefault(int i) {
        return (this.nondefault & i) != 0;
    }

    public AttributeValues applyIMHighlight() {
        Object obj = this.imHighlight;
        if (obj == null) {
            return this;
        }
        Map<TextAttribute, ?> style = (obj instanceof InputMethodHighlight ? (InputMethodHighlight) obj : (InputMethodHighlight) ((Annotation) obj).getValue()).getStyle();
        return style != null ? clone().merge(style) : this;
    }

    public void defineAll(int i) {
        int i2 = i | this.defined;
        this.defined = i2;
        if ((EAttribute.EBASELINE_TRANSFORM.mask & i2) != 0) {
            throw new InternalError("can't define derived attribute");
        }
    }

    public boolean equals(Object obj) {
        try {
            return equals((AttributeValues) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public Object get(EAttribute eAttribute) {
        if (eAttribute.att != null) {
            if ((this.nondefault & eAttribute.mask) != 0) {
                return i_get(eAttribute);
            }
            return null;
        }
        throw new InternalError("can't get derived attribute: " + eAttribute);
    }

    public Paint getBackground() {
        return this.background;
    }

    public AffineTransform getBaselineTransform() {
        return this.baselineTransform;
    }

    public int getBidiEmbedding() {
        return this.bidiEmbedding;
    }

    public GraphicAttribute getCharReplacement() {
        return this.charReplacement;
    }

    public AffineTransform getCharTransform() {
        return this.charTransform;
    }

    public String getFamily() {
        return this.family;
    }

    public Font getFont() {
        return this.font;
    }

    public Paint getForeground() {
        return this.foreground;
    }

    public Object getInputMethodHighlight() {
        return this.imHighlight;
    }

    public int getInputMethodUnderline() {
        return this.imUnderline;
    }

    public float getJustification() {
        return this.justification;
    }

    public int getKerning() {
        return this.kerning;
    }

    public int getLigatures() {
        return this.ligatures;
    }

    public NumericShaper getNumericShaping() {
        return this.numericShaping;
    }

    public float getPosture() {
        return this.posture;
    }

    public int getRunDirection() {
        return this.runDirection;
    }

    public float getSize() {
        return this.size;
    }

    public boolean getStrikethrough() {
        return this.strikethrough;
    }

    public int getSuperscript() {
        return this.superscript;
    }

    public boolean getSwapColors() {
        return this.swapColors;
    }

    public float getTracking() {
        return this.tracking;
    }

    public AffineTransform getTransform() {
        return this.transform;
    }

    public int getUnderline() {
        return this.underline;
    }

    public float getWeight() {
        return this.weight;
    }

    public float getWidth() {
        return this.width;
    }

    public int hashCode() {
        return this.nondefault ^ (this.defined << 8);
    }

    public boolean isDefined(EAttribute eAttribute) {
        return (this.defined & eAttribute.mask) != 0;
    }

    public boolean isNonDefault(EAttribute eAttribute) {
        return (this.nondefault & eAttribute.mask) != 0;
    }

    public AttributeValues merge(Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        return merge(map, MASK_ALL);
    }

    public void set(EAttribute eAttribute, AttributeValues attributeValues) {
        if (eAttribute.att != null) {
            if (attributeValues != null && attributeValues != DEFAULT) {
                if ((attributeValues.defined & eAttribute.mask) != 0) {
                    i_set(eAttribute, attributeValues);
                    update(eAttribute);
                    return;
                }
                return;
            }
            setDefault(eAttribute);
            return;
        }
        throw new InternalError("can't set derived attribute: " + eAttribute);
    }

    public void setBackground(Paint paint) {
        this.background = paint;
        update(EAttribute.EBACKGROUND);
    }

    public void setBidiEmbedding(int i) {
        this.bidiEmbedding = (byte) i;
        update(EAttribute.EBIDI_EMBEDDING);
    }

    public void setCharReplacement(GraphicAttribute graphicAttribute) {
        this.charReplacement = graphicAttribute;
        update(EAttribute.ECHAR_REPLACEMENT);
    }

    public void setDefault(EAttribute eAttribute) {
        if (eAttribute.att == null) {
            throw new InternalError("can't set default derived attribute: " + eAttribute);
        }
        i_set(eAttribute, DEFAULT);
        int i = this.defined;
        int i2 = eAttribute.mask;
        this.defined = i | i2;
        this.nondefault = (~i2) & this.nondefault;
    }

    public void setFamily(String str) {
        this.family = str;
        update(EAttribute.EFAMILY);
    }

    public void setFont(Font font) {
        this.font = font;
        update(EAttribute.EFONT);
    }

    public void setForeground(Paint paint) {
        this.foreground = paint;
        update(EAttribute.EFOREGROUND);
    }

    public void setInputMethodHighlight(Annotation annotation) {
        this.imHighlight = annotation;
        update(EAttribute.EINPUT_METHOD_HIGHLIGHT);
    }

    public void setInputMethodUnderline(int i) {
        this.imUnderline = (byte) i;
        update(EAttribute.EINPUT_METHOD_UNDERLINE);
    }

    public void setJustification(float f) {
        this.justification = f;
        update(EAttribute.EJUSTIFICATION);
    }

    public void setKerning(int i) {
        this.kerning = (byte) i;
        update(EAttribute.EKERNING);
    }

    public void setLigatures(int i) {
        this.ligatures = (byte) i;
        update(EAttribute.ELIGATURES);
    }

    public void setNumericShaping(NumericShaper numericShaper) {
        this.numericShaping = numericShaper;
        update(EAttribute.ENUMERIC_SHAPING);
    }

    public void setPosture(float f) {
        this.posture = f;
        update(EAttribute.EPOSTURE);
    }

    public void setRunDirection(int i) {
        this.runDirection = (byte) i;
        update(EAttribute.ERUN_DIRECTION);
    }

    public void setSize(float f) {
        this.size = f;
        update(EAttribute.ESIZE);
    }

    public void setStrikethrough(boolean z) {
        this.strikethrough = z;
        update(EAttribute.ESTRIKETHROUGH);
    }

    public void setSuperscript(int i) {
        this.superscript = (byte) i;
        update(EAttribute.ESUPERSCRIPT);
    }

    public void setSwapColors(boolean z) {
        this.swapColors = z;
        update(EAttribute.ESWAP_COLORS);
    }

    public void setTracking(float f) {
        this.tracking = (byte) f;
        update(EAttribute.ETRACKING);
    }

    public void setTransform(AffineTransform affineTransform) {
        this.transform = (affineTransform == null || affineTransform.isIdentity()) ? DEFAULT.transform : new AffineTransform(affineTransform);
        updateDerivedTransforms();
        update(EAttribute.ETRANSFORM);
    }

    public void setUnderline(int i) {
        this.underline = (byte) i;
        update(EAttribute.EUNDERLINE);
    }

    public void setWeight(float f) {
        this.weight = f;
        update(EAttribute.EWEIGHT);
    }

    public void setWidth(float f) {
        this.width = f;
        update(EAttribute.EWIDTH);
    }

    public Map<TextAttribute, Object> toMap(Map<TextAttribute, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        int i = this.defined;
        int i2 = 0;
        while (i != 0) {
            EAttribute eAttribute = EAttribute.atts[i2];
            int i3 = eAttribute.mask;
            if ((i & i3) != 0) {
                i &= ~i3;
                map.put(eAttribute.att, get(eAttribute));
            }
            i2++;
        }
        return map;
    }

    public Hashtable<Object, Object> toSerializableHashtable() {
        Hashtable<Object, Object> hashtable = new Hashtable<>();
        int i = this.defined;
        int i2 = 0;
        int i3 = i;
        while (i != 0) {
            EAttribute eAttribute = EAttribute.atts[i2];
            int i4 = eAttribute.mask;
            if ((i & i4) != 0) {
                i &= ~i4;
                Object obj = get(eAttribute);
                if (obj != null) {
                    if (obj instanceof Serializable) {
                        hashtable.put(eAttribute.att, obj);
                    } else {
                        i3 &= ~eAttribute.mask;
                    }
                }
            }
            i2++;
        }
        hashtable.put(DEFINED_KEY, Integer.valueOf(i3));
        return hashtable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        int i = this.defined;
        int i2 = 0;
        while (i != 0) {
            EAttribute eAttribute = EAttribute.atts[i2];
            int i3 = eAttribute.mask;
            if ((i & i3) != 0) {
                i &= ~i3;
                if (sb.length() > 1) {
                    sb.append(", ");
                }
                sb.append(eAttribute);
                sb.append('=');
                switch (C205161.$SwitchMap$sun$font$EAttribute[eAttribute.ordinal()]) {
                    case 1:
                        sb.append('\"');
                        sb.append(this.family);
                        sb.append('\"');
                        break;
                    case 2:
                        sb.append(this.weight);
                        break;
                    case 3:
                        sb.append(this.width);
                        break;
                    case 4:
                        sb.append(this.posture);
                        break;
                    case 5:
                        sb.append(this.size);
                        break;
                    case 6:
                        sb.append(this.transform);
                        break;
                    case 7:
                        sb.append((int) this.superscript);
                        break;
                    case 8:
                        sb.append(this.font);
                        break;
                    case 9:
                        sb.append(this.charReplacement);
                        break;
                    case 10:
                        sb.append(this.foreground);
                        break;
                    case 11:
                        sb.append(this.background);
                        break;
                    case 12:
                        sb.append((int) this.underline);
                        break;
                    case 13:
                        sb.append(this.strikethrough);
                        break;
                    case 14:
                        sb.append((int) this.runDirection);
                        break;
                    case 15:
                        sb.append((int) this.bidiEmbedding);
                        break;
                    case 16:
                        sb.append(this.justification);
                        break;
                    case 17:
                        sb.append(this.imHighlight);
                        break;
                    case 18:
                        sb.append((int) this.imUnderline);
                        break;
                    case 19:
                        sb.append(this.swapColors);
                        break;
                    case 20:
                        sb.append(this.numericShaping);
                        break;
                    case 21:
                        sb.append((int) this.kerning);
                        break;
                    case 22:
                        sb.append((int) this.ligatures);
                        break;
                    case 23:
                        sb.append(this.tracking);
                        break;
                    default:
                        throw new InternalError();
                }
                if ((eAttribute.mask & this.nondefault) == 0) {
                    sb.append('*');
                }
            }
            i2++;
        }
        sb.append("[btx=" + this.baselineTransform + ", ctx=" + this.charTransform + IteratorUtils.f104924b);
        sb.append('}');
        return sb.toString();
    }

    public void unset(EAttribute eAttribute) {
        if (eAttribute.att == null) {
            throw new InternalError("can't unset derived attribute: " + eAttribute);
        }
        i_set(eAttribute, DEFAULT);
        int i = this.defined;
        int i2 = eAttribute.mask;
        this.defined = i & (~i2);
        this.nondefault = (~i2) & this.nondefault;
    }

    public void unsetDefault() {
        this.defined &= this.nondefault;
    }

    public void updateDerivedTransforms() {
        if (this.transform == null) {
            this.baselineTransform = null;
            this.charTransform = null;
        } else {
            AffineTransform affineTransform = new AffineTransform(this.transform);
            this.charTransform = affineTransform;
            this.baselineTransform = extractXRotation(affineTransform, true);
            if (this.charTransform.isIdentity()) {
                this.charTransform = null;
            }
            if (this.baselineTransform.isIdentity()) {
                this.baselineTransform = null;
            }
        }
        if (this.baselineTransform == null) {
            this.nondefault &= ~EAttribute.EBASELINE_TRANSFORM.mask;
        } else {
            this.nondefault |= EAttribute.EBASELINE_TRANSFORM.mask;
        }
    }

    public static AttributeValues fromMap(Map<? extends AttributedCharacterIterator.Attribute, ?> map, int i) {
        return new AttributeValues().merge(map, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.geom.AffineTransform getBaselineTransform(java.util.Map<?, ?> r3) {
        /*
            r0 = 0
            if (r3 == 0) goto L28
            boolean r1 = r3 instanceof sun.font.AttributeMap
            if (r1 == 0) goto L15
            r1 = r3
            sun.font.AttributeMap r1 = (sun.font.AttributeMap) r1
            sun.font.AttributeValues r2 = r1.getValues()
            if (r2 == 0) goto L15
            sun.font.AttributeValues r3 = r1.getValues()
            goto L23
        L15:
            java.awt.font.TextAttribute r1 = java.awt.font.TextAttribute.TRANSFORM
            java.lang.Object r1 = r3.get(r1)
            if (r1 == 0) goto L22
            sun.font.AttributeValues r3 = fromMap(r3)
            goto L23
        L22:
            r3 = r0
        L23:
            if (r3 == 0) goto L28
            java.awt.geom.AffineTransform r3 = r3.baselineTransform
            return r3
        L28:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.AttributeValues.getBaselineTransform(java.util.Map):java.awt.geom.AffineTransform");
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.awt.geom.AffineTransform getCharTransform(java.util.Map<?, ?> r3) {
        /*
            r0 = 0
            if (r3 == 0) goto L28
            boolean r1 = r3 instanceof sun.font.AttributeMap
            if (r1 == 0) goto L15
            r1 = r3
            sun.font.AttributeMap r1 = (sun.font.AttributeMap) r1
            sun.font.AttributeValues r2 = r1.getValues()
            if (r2 == 0) goto L15
            sun.font.AttributeValues r3 = r1.getValues()
            goto L23
        L15:
            java.awt.font.TextAttribute r1 = java.awt.font.TextAttribute.TRANSFORM
            java.lang.Object r1 = r3.get(r1)
            if (r1 == 0) goto L22
            sun.font.AttributeValues r3 = fromMap(r3)
            goto L23
        L22:
            r3 = r0
        L23:
            if (r3 == 0) goto L28
            java.awt.geom.AffineTransform r3 = r3.charTransform
            return r3
        L28:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.AttributeValues.getCharTransform(java.util.Map):java.awt.geom.AffineTransform");
    }

    public static float getJustification(Map<?, ?> map) {
        if (map != null) {
            if (map instanceof AttributeMap) {
                AttributeMap attributeMap = (AttributeMap) map;
                if (attributeMap.getValues() != null) {
                    return attributeMap.getValues().justification;
                }
            }
            Object obj = map.get(TextAttribute.JUSTIFICATION);
            if (obj != null && (obj instanceof Number)) {
                return Math.max(0.0f, Math.min(1.0f, ((Number) obj).floatValue()));
            }
        }
        return DEFAULT.justification;
    }

    public static int getMask(EAttribute... eAttributeArr) {
        int i = 0;
        for (EAttribute eAttribute : eAttributeArr) {
            i |= eAttribute.mask;
        }
        return i;
    }

    public static NumericShaper getNumericShaping(Map<?, ?> map) {
        if (map != null) {
            if (map instanceof AttributeMap) {
                AttributeMap attributeMap = (AttributeMap) map;
                if (attributeMap.getValues() != null) {
                    return attributeMap.getValues().numericShaping;
                }
            }
            Object obj = map.get(TextAttribute.NUMERIC_SHAPING);
            if (obj != null && (obj instanceof NumericShaper)) {
                return (NumericShaper) obj;
            }
        }
        return DEFAULT.numericShaping;
    }

    public AttributeValues clone() {
        try {
            AttributeValues attributeValues = (AttributeValues) super.clone();
            if (this.transform != null) {
                attributeValues.transform = new AffineTransform(this.transform);
                attributeValues.updateDerivedTransforms();
            }
            return attributeValues;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public boolean equals(AttributeValues attributeValues) {
        if (attributeValues == null) {
            return false;
        }
        if (attributeValues == this) {
            return true;
        }
        return this.defined == attributeValues.defined && this.nondefault == attributeValues.nondefault && this.underline == attributeValues.underline && this.strikethrough == attributeValues.strikethrough && this.superscript == attributeValues.superscript && this.width == attributeValues.width && this.kerning == attributeValues.kerning && this.tracking == attributeValues.tracking && this.ligatures == attributeValues.ligatures && this.runDirection == attributeValues.runDirection && this.bidiEmbedding == attributeValues.bidiEmbedding && this.swapColors == attributeValues.swapColors && equals(this.transform, attributeValues.transform) && equals(this.foreground, attributeValues.foreground) && equals(this.background, attributeValues.background) && equals(this.numericShaping, attributeValues.numericShaping) && equals(Float.valueOf(this.justification), Float.valueOf(attributeValues.justification)) && equals(this.charReplacement, attributeValues.charReplacement) && this.size == attributeValues.size && this.weight == attributeValues.weight && this.posture == attributeValues.posture && equals(this.family, attributeValues.family) && equals(this.font, attributeValues.font) && this.imUnderline == attributeValues.imUnderline && equals(this.imHighlight, attributeValues.imHighlight);
    }

    public AttributeValues merge(Map<? extends AttributedCharacterIterator.Attribute, ?> map, int i) {
        if (map instanceof AttributeMap) {
            AttributeMap attributeMap = (AttributeMap) map;
            if (attributeMap.getValues() != null) {
                merge(attributeMap.getValues(), i);
                return this;
            }
        }
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<? extends AttributedCharacterIterator.Attribute, ?> entry : map.entrySet()) {
                try {
                    EAttribute forAttribute = EAttribute.forAttribute(entry.getKey());
                    if (forAttribute != null && (forAttribute.mask & i) != 0) {
                        set(forAttribute, entry.getValue());
                    }
                } catch (ClassCastException unused) {
                }
            }
        }
        return this;
    }

    public void setInputMethodHighlight(InputMethodHighlight inputMethodHighlight) {
        this.imHighlight = inputMethodHighlight;
        update(EAttribute.EINPUT_METHOD_HIGHLIGHT);
    }

    public void setTransform(TransformAttribute transformAttribute) {
        AffineTransform affineTransform;
        if (transformAttribute != null && !transformAttribute.isIdentity()) {
            affineTransform = transformAttribute.getTransform();
        } else {
            affineTransform = DEFAULT.transform;
        }
        this.transform = affineTransform;
        updateDerivedTransforms();
        update(EAttribute.ETRANSFORM);
    }

    public void set(EAttribute eAttribute, Object obj) {
        if (eAttribute.att != null) {
            if (obj != null) {
                try {
                    i_set(eAttribute, obj);
                    update(eAttribute);
                    return;
                } catch (Exception unused) {
                }
            }
            setDefault(eAttribute);
            return;
        }
        throw new InternalError("can't set derived attribute: " + eAttribute);
    }

    public AttributeValues merge(AttributeValues attributeValues) {
        return merge(attributeValues, MASK_ALL);
    }

    public AttributeValues merge(AttributeValues attributeValues, int i) {
        int i2 = i & attributeValues.defined;
        for (EAttribute eAttribute : EAttribute.atts) {
            if (i2 == 0) {
                break;
            }
            int i3 = eAttribute.mask;
            if ((i2 & i3) != 0) {
                i2 &= ~i3;
                i_set(eAttribute, attributeValues);
                update(eAttribute);
            }
        }
        return this;
    }

    private static boolean equals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    private void i_set(EAttribute eAttribute, Object obj) {
        switch (C205161.$SwitchMap$sun$font$EAttribute[eAttribute.ordinal()]) {
            case 1:
                this.family = ((String) obj).trim();
                return;
            case 2:
                this.weight = ((Number) obj).floatValue();
                return;
            case 3:
                this.width = ((Number) obj).floatValue();
                return;
            case 4:
                this.posture = ((Number) obj).floatValue();
                return;
            case 5:
                this.size = ((Number) obj).floatValue();
                return;
            case 6:
                if (obj instanceof TransformAttribute) {
                    TransformAttribute transformAttribute = (TransformAttribute) obj;
                    if (transformAttribute.isIdentity()) {
                        this.transform = null;
                    } else {
                        this.transform = transformAttribute.getTransform();
                    }
                } else {
                    this.transform = new AffineTransform((AffineTransform) obj);
                }
                updateDerivedTransforms();
                return;
            case 7:
                this.superscript = (byte) ((Integer) obj).intValue();
                return;
            case 8:
                this.font = (Font) obj;
                return;
            case 9:
                this.charReplacement = (GraphicAttribute) obj;
                return;
            case 10:
                this.foreground = (Paint) obj;
                return;
            case 11:
                this.background = (Paint) obj;
                return;
            case 12:
                this.underline = (byte) ((Integer) obj).intValue();
                return;
            case 13:
                this.strikethrough = ((Boolean) obj).booleanValue();
                return;
            case 14:
                if (obj instanceof Boolean) {
                    this.runDirection = (byte) (!TextAttribute.RUN_DIRECTION_LTR.equals(obj) ? 1 : 0);
                    return;
                } else {
                    this.runDirection = (byte) ((Integer) obj).intValue();
                    return;
                }
            case 15:
                this.bidiEmbedding = (byte) ((Integer) obj).intValue();
                return;
            case 16:
                this.justification = ((Number) obj).floatValue();
                return;
            case 17:
                if (obj instanceof Annotation) {
                    this.imHighlight = (InputMethodHighlight) ((Annotation) obj).getValue();
                    return;
                } else {
                    this.imHighlight = (InputMethodHighlight) obj;
                    return;
                }
            case 18:
                this.imUnderline = (byte) ((Integer) obj).intValue();
                return;
            case 19:
                this.swapColors = ((Boolean) obj).booleanValue();
                return;
            case 20:
                this.numericShaping = (NumericShaper) obj;
                return;
            case 21:
                this.kerning = (byte) ((Integer) obj).intValue();
                return;
            case 22:
                this.ligatures = (byte) ((Integer) obj).intValue();
                return;
            case 23:
                this.tracking = ((Number) obj).floatValue();
                return;
            default:
                throw new InternalError();
        }
    }
}
