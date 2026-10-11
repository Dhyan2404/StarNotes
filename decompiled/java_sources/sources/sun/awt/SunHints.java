package sun.awt;

import java.awt.RenderingHints;
import java.lang.reflect.Array;

/* loaded from: classes16.dex */
public class SunHints {
    public static final int INTKEY_AATEXT_LCD_CONTRAST = 100;
    public static final int INTKEY_ALPHA_INTERPOLATION = 6;
    public static final int INTKEY_ANTIALIASING = 1;
    public static final int INTKEY_COLOR_RENDERING = 7;
    public static final int INTKEY_DITHERING = 4;
    public static final int INTKEY_FRACTIONALMETRICS = 3;
    public static final int INTKEY_INTERPOLATION = 5;
    public static final int INTKEY_RENDERING = 0;
    public static final int INTKEY_RESOLUTION_VARIANT = 9;
    public static final int INTKEY_STROKE_CONTROL = 8;
    public static final int INTKEY_TEXT_ANTIALIASING = 2;
    public static final int INTVAL_ALPHA_INTERPOLATION_DEFAULT = 0;
    public static final int INTVAL_ALPHA_INTERPOLATION_QUALITY = 2;
    public static final int INTVAL_ALPHA_INTERPOLATION_SPEED = 1;
    public static final int INTVAL_ANTIALIAS_DEFAULT = 0;
    public static final int INTVAL_ANTIALIAS_OFF = 1;
    public static final int INTVAL_ANTIALIAS_ON = 2;
    public static final int INTVAL_COLOR_RENDER_DEFAULT = 0;
    public static final int INTVAL_COLOR_RENDER_QUALITY = 2;
    public static final int INTVAL_COLOR_RENDER_SPEED = 1;
    public static final int INTVAL_DITHER_DEFAULT = 0;
    public static final int INTVAL_DITHER_DISABLE = 1;
    public static final int INTVAL_DITHER_ENABLE = 2;
    public static final int INTVAL_FRACTIONALMETRICS_DEFAULT = 0;
    public static final int INTVAL_FRACTIONALMETRICS_OFF = 1;
    public static final int INTVAL_FRACTIONALMETRICS_ON = 2;
    public static final int INTVAL_INTERPOLATION_BICUBIC = 2;
    public static final int INTVAL_INTERPOLATION_BILINEAR = 1;
    public static final int INTVAL_INTERPOLATION_NEAREST_NEIGHBOR = 0;
    public static final int INTVAL_RENDER_DEFAULT = 0;
    public static final int INTVAL_RENDER_QUALITY = 2;
    public static final int INTVAL_RENDER_SPEED = 1;
    public static final int INTVAL_RESOLUTION_VARIANT_DEFAULT = 0;
    public static final int INTVAL_RESOLUTION_VARIANT_OFF = 1;
    public static final int INTVAL_RESOLUTION_VARIANT_ON = 2;
    public static final int INTVAL_STROKE_DEFAULT = 0;
    public static final int INTVAL_STROKE_NORMALIZE = 1;
    public static final int INTVAL_STROKE_PURE = 2;
    public static final int INTVAL_TEXT_ANTIALIAS_DEFAULT = 0;
    public static final int INTVAL_TEXT_ANTIALIAS_GASP = 3;
    public static final int INTVAL_TEXT_ANTIALIAS_LCD_HBGR = 5;
    public static final int INTVAL_TEXT_ANTIALIAS_LCD_HRGB = 4;
    public static final int INTVAL_TEXT_ANTIALIAS_LCD_VBGR = 7;
    public static final int INTVAL_TEXT_ANTIALIAS_LCD_VRGB = 6;
    public static final int INTVAL_TEXT_ANTIALIAS_OFF = 1;
    public static final int INTVAL_TEXT_ANTIALIAS_ON = 2;
    public static final Key KEY_ALPHA_INTERPOLATION;
    public static final Key KEY_ANTIALIASING;
    public static final Key KEY_COLOR_RENDERING;
    public static final Key KEY_DITHERING;
    public static final Key KEY_FRACTIONALMETRICS;
    public static final Key KEY_INTERPOLATION;
    public static final Key KEY_RENDERING;
    public static final Key KEY_RESOLUTION_VARIANT;
    public static final Key KEY_STROKE_CONTROL;
    public static final Key KEY_TEXT_ANTIALIASING;
    public static final RenderingHints.Key KEY_TEXT_ANTIALIAS_LCD_CONTRAST;
    private static final int NUM_KEYS = 10;
    private static final int VALS_PER_KEY = 8;
    public static final Object VALUE_ALPHA_INTERPOLATION_DEFAULT;
    public static final Object VALUE_ALPHA_INTERPOLATION_QUALITY;
    public static final Object VALUE_ALPHA_INTERPOLATION_SPEED;
    public static final Object VALUE_ANTIALIAS_DEFAULT;
    public static final Object VALUE_ANTIALIAS_OFF;
    public static final Object VALUE_ANTIALIAS_ON;
    public static final Object VALUE_COLOR_RENDER_DEFAULT;
    public static final Object VALUE_COLOR_RENDER_QUALITY;
    public static final Object VALUE_COLOR_RENDER_SPEED;
    public static final Object VALUE_DITHER_DEFAULT;
    public static final Object VALUE_DITHER_DISABLE;
    public static final Object VALUE_DITHER_ENABLE;
    public static final Object VALUE_FRACTIONALMETRICS_DEFAULT;
    public static final Object VALUE_FRACTIONALMETRICS_OFF;
    public static final Object VALUE_FRACTIONALMETRICS_ON;
    public static final Object VALUE_INTERPOLATION_BICUBIC;
    public static final Object VALUE_INTERPOLATION_BILINEAR;
    public static final Object VALUE_INTERPOLATION_NEAREST_NEIGHBOR;
    public static final Object VALUE_RENDER_DEFAULT;
    public static final Object VALUE_RENDER_QUALITY;
    public static final Object VALUE_RENDER_SPEED;
    public static final Object VALUE_RESOLUTION_VARIANT_DEFAULT;
    public static final Object VALUE_RESOLUTION_VARIANT_OFF;
    public static final Object VALUE_RESOLUTION_VARIANT_ON;
    public static final Object VALUE_STROKE_DEFAULT;
    public static final Object VALUE_STROKE_NORMALIZE;
    public static final Object VALUE_STROKE_PURE;
    public static final Object VALUE_TEXT_ANTIALIAS_DEFAULT;
    public static final Object VALUE_TEXT_ANTIALIAS_GASP;
    public static final Object VALUE_TEXT_ANTIALIAS_LCD_HBGR;
    public static final Object VALUE_TEXT_ANTIALIAS_LCD_HRGB;
    public static final Object VALUE_TEXT_ANTIALIAS_LCD_VBGR;
    public static final Object VALUE_TEXT_ANTIALIAS_LCD_VRGB;
    public static final Object VALUE_TEXT_ANTIALIAS_OFF;
    public static final Object VALUE_TEXT_ANTIALIAS_ON;

    /* loaded from: classes16.dex */
    public static class Key extends RenderingHints.Key {
        String description;

        public Key(int i, String str) {
            super(i);
            this.description = str;
        }

        public final int getIndex() {
            return intKey();
        }

        @Override // java.awt.RenderingHints.Key
        public boolean isCompatibleValue(Object obj) {
            if (obj instanceof Value) {
                return ((Value) obj).isCompatibleKey(this);
            }
            return false;
        }

        public final String toString() {
            return this.description;
        }
    }

    /* loaded from: classes16.dex */
    public static class LCDContrastKey extends Key {
        public LCDContrastKey(int i, String str) {
            super(i, str);
        }

        @Override // sun.awt.SunHints.Key, java.awt.RenderingHints.Key
        public final boolean isCompatibleValue(Object obj) {
            int intValue;
            return (obj instanceof Integer) && (intValue = ((Integer) obj).intValue()) >= 100 && intValue <= 250;
        }
    }

    /* loaded from: classes16.dex */
    public static class Value {
        private static Value[][] ValueObjects = (Value[][]) Array.newInstance((Class<?>) Value.class, 10, 8);
        private String description;
        private int index;
        private Key myKey;

        public Value(Key key, int i, String str) {
            this.myKey = key;
            this.index = i;
            this.description = str;
            register(key, this);
        }

        public static Value get(int i, int i2) {
            return ValueObjects[i][i2];
        }

        private static synchronized void register(Key key, Value value) {
            synchronized (Value.class) {
                int index = key.getIndex();
                int index2 = value.getIndex();
                Value[] valueArr = ValueObjects[index];
                if (valueArr[index2] != null) {
                    throw new InternalError("duplicate index: " + index2);
                }
                valueArr[index2] = value;
            }
        }

        public final boolean equals(Object obj) {
            return this == obj;
        }

        public final int getIndex() {
            return this.index;
        }

        public final int hashCode() {
            return System.identityHashCode(this);
        }

        public final boolean isCompatibleKey(Key key) {
            return this.myKey == key;
        }

        public final String toString() {
            return this.description;
        }
    }

    static {
        Key key = new Key(0, "Global rendering quality key");
        KEY_RENDERING = key;
        VALUE_RENDER_SPEED = new Value(key, 1, "Fastest rendering methods");
        VALUE_RENDER_QUALITY = new Value(key, 2, "Highest quality rendering methods");
        VALUE_RENDER_DEFAULT = new Value(key, 0, "Default rendering methods");
        Key key2 = new Key(1, "Global antialiasing enable key");
        KEY_ANTIALIASING = key2;
        VALUE_ANTIALIAS_ON = new Value(key2, 2, "Antialiased rendering mode");
        VALUE_ANTIALIAS_OFF = new Value(key2, 1, "Nonantialiased rendering mode");
        VALUE_ANTIALIAS_DEFAULT = new Value(key2, 0, "Default antialiasing rendering mode");
        Key key3 = new Key(2, "Text-specific antialiasing enable key");
        KEY_TEXT_ANTIALIASING = key3;
        VALUE_TEXT_ANTIALIAS_ON = new Value(key3, 2, "Antialiased text mode");
        VALUE_TEXT_ANTIALIAS_OFF = new Value(key3, 1, "Nonantialiased text mode");
        VALUE_TEXT_ANTIALIAS_DEFAULT = new Value(key3, 0, "Default antialiasing text mode");
        VALUE_TEXT_ANTIALIAS_GASP = new Value(key3, 3, "gasp antialiasing text mode");
        VALUE_TEXT_ANTIALIAS_LCD_HRGB = new Value(key3, 4, "LCD HRGB antialiasing text mode");
        VALUE_TEXT_ANTIALIAS_LCD_HBGR = new Value(key3, 5, "LCD HBGR antialiasing text mode");
        VALUE_TEXT_ANTIALIAS_LCD_VRGB = new Value(key3, 6, "LCD VRGB antialiasing text mode");
        VALUE_TEXT_ANTIALIAS_LCD_VBGR = new Value(key3, 7, "LCD VBGR antialiasing text mode");
        Key key4 = new Key(3, "Fractional metrics enable key");
        KEY_FRACTIONALMETRICS = key4;
        VALUE_FRACTIONALMETRICS_ON = new Value(key4, 2, "Fractional text metrics mode");
        VALUE_FRACTIONALMETRICS_OFF = new Value(key4, 1, "Integer text metrics mode");
        VALUE_FRACTIONALMETRICS_DEFAULT = new Value(key4, 0, "Default fractional text metrics mode");
        Key key5 = new Key(4, "Dithering quality key");
        KEY_DITHERING = key5;
        VALUE_DITHER_ENABLE = new Value(key5, 2, "Dithered rendering mode");
        VALUE_DITHER_DISABLE = new Value(key5, 1, "Nondithered rendering mode");
        VALUE_DITHER_DEFAULT = new Value(key5, 0, "Default dithering mode");
        Key key6 = new Key(5, "Image interpolation method key");
        KEY_INTERPOLATION = key6;
        VALUE_INTERPOLATION_NEAREST_NEIGHBOR = new Value(key6, 0, "Nearest Neighbor image interpolation mode");
        VALUE_INTERPOLATION_BILINEAR = new Value(key6, 1, "Bilinear image interpolation mode");
        VALUE_INTERPOLATION_BICUBIC = new Value(key6, 2, "Bicubic image interpolation mode");
        Key key7 = new Key(6, "Alpha blending interpolation method key");
        KEY_ALPHA_INTERPOLATION = key7;
        VALUE_ALPHA_INTERPOLATION_SPEED = new Value(key7, 1, "Fastest alpha blending methods");
        VALUE_ALPHA_INTERPOLATION_QUALITY = new Value(key7, 2, "Highest quality alpha blending methods");
        VALUE_ALPHA_INTERPOLATION_DEFAULT = new Value(key7, 0, "Default alpha blending methods");
        Key key8 = new Key(7, "Color rendering quality key");
        KEY_COLOR_RENDERING = key8;
        VALUE_COLOR_RENDER_SPEED = new Value(key8, 1, "Fastest color rendering mode");
        VALUE_COLOR_RENDER_QUALITY = new Value(key8, 2, "Highest quality color rendering mode");
        VALUE_COLOR_RENDER_DEFAULT = new Value(key8, 0, "Default color rendering mode");
        Key key9 = new Key(8, "Stroke normalization control key");
        KEY_STROKE_CONTROL = key9;
        VALUE_STROKE_DEFAULT = new Value(key9, 0, "Default stroke normalization");
        VALUE_STROKE_NORMALIZE = new Value(key9, 1, "Normalize strokes for consistent rendering");
        VALUE_STROKE_PURE = new Value(key9, 2, "Pure stroke conversion for accurate paths");
        Key key10 = new Key(9, "Global image resolution variant key");
        KEY_RESOLUTION_VARIANT = key10;
        VALUE_RESOLUTION_VARIANT_DEFAULT = new Value(key10, 0, "Choose image resolutions based on a default heuristic");
        VALUE_RESOLUTION_VARIANT_OFF = new Value(key10, 1, "Use only the standard resolution of an image");
        VALUE_RESOLUTION_VARIANT_ON = new Value(key10, 2, "Always use resolution-specific variants of images");
        KEY_TEXT_ANTIALIAS_LCD_CONTRAST = new LCDContrastKey(100, "Text-specific LCD contrast key");
    }
}
