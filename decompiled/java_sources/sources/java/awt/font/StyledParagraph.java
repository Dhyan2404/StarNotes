package java.awt.font;

import java.awt.Font;
import java.awt.im.InputMethodHighlight;
import java.text.Annotation;
import java.text.AttributedCharacterIterator;
import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
import sun.font.Decoration;
import sun.font.FontResolver;
import sun.text.CodePointIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class StyledParagraph {
    private static int INITIAL_SIZE = 8;
    private Decoration decoration;
    int[] decorationStarts;
    private Vector<Decoration> decorations;
    private Object font;
    int[] fontStarts;
    private Vector<Object> fonts;
    private int length;

    public StyledParagraph(AttributedCharacterIterator attributedCharacterIterator, char[] cArr) {
        int beginIndex = attributedCharacterIterator.getBeginIndex();
        int endIndex = attributedCharacterIterator.getEndIndex();
        this.length = endIndex - beginIndex;
        attributedCharacterIterator.first();
        int i = beginIndex;
        while (true) {
            int runLimit = attributedCharacterIterator.getRunLimit();
            int i2 = i - beginIndex;
            Map<? extends AttributedCharacterIterator.Attribute, ?> addInputMethodAttrs = addInputMethodAttrs(attributedCharacterIterator.getAttributes());
            addDecoration(Decoration.getDecoration(addInputMethodAttrs), i2);
            Object graphicOrFont = getGraphicOrFont(addInputMethodAttrs);
            if (graphicOrFont == null) {
                addFonts(cArr, addInputMethodAttrs, i2, runLimit - beginIndex);
            } else {
                addFont(graphicOrFont, i2);
            }
            attributedCharacterIterator.setIndex(runLimit);
            if (runLimit >= endIndex) {
                break;
            } else {
                i = runLimit;
            }
        }
        Vector<Decoration> vector = this.decorations;
        if (vector != null) {
            this.decorationStarts = addToVector(this, this.length, vector, this.decorationStarts);
        }
        Vector<Object> vector2 = this.fonts;
        if (vector2 != null) {
            this.fontStarts = addToVector(this, this.length, vector2, this.fontStarts);
        }
    }

    private void addDecoration(Decoration decoration, int i) {
        Vector<Decoration> vector = this.decorations;
        if (vector != null) {
            this.decorationStarts = addToVector(decoration, i, vector, this.decorationStarts);
            return;
        }
        Decoration decoration2 = this.decoration;
        if (decoration2 == null) {
            this.decoration = decoration;
            return;
        }
        if (decoration2.equals(decoration)) {
            return;
        }
        Vector<Decoration> vector2 = new Vector<>(INITIAL_SIZE);
        this.decorations = vector2;
        vector2.addElement(this.decoration);
        this.decorations.addElement(decoration);
        int[] iArr = new int[INITIAL_SIZE];
        this.decorationStarts = iArr;
        iArr[0] = 0;
        iArr[1] = i;
    }

    private void addFont(Object obj, int i) {
        Vector<Object> vector = this.fonts;
        if (vector != null) {
            this.fontStarts = addToVector(obj, i, vector, this.fontStarts);
            return;
        }
        Object obj2 = this.font;
        if (obj2 == null) {
            this.font = obj;
            return;
        }
        if (obj2.equals(obj)) {
            return;
        }
        Vector<Object> vector2 = new Vector<>(INITIAL_SIZE);
        this.fonts = vector2;
        vector2.addElement(this.font);
        this.fonts.addElement(obj);
        int[] iArr = new int[INITIAL_SIZE];
        this.fontStarts = iArr;
        iArr[0] = 0;
        iArr[1] = i;
    }

    private void addFonts(char[] cArr, Map<? extends AttributedCharacterIterator.Attribute, ?> map, int i, int i2) {
        FontResolver fontResolver = FontResolver.getInstance();
        CodePointIterator create = CodePointIterator.create(cArr, i, i2);
        while (true) {
            int charIndex = create.charIndex();
            if (charIndex >= i2) {
                return;
            } else {
                addFont(fontResolver.getFont(fontResolver.nextFontRunIndex(create), map), charIndex);
            }
        }
    }

    public static Map<? extends AttributedCharacterIterator.Attribute, ?> addInputMethodAttrs(Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        Map<TextAttribute, ?> map2;
        Object obj = map.get(TextAttribute.INPUT_METHOD_HIGHLIGHT);
        if (obj != null) {
            try {
                if (obj instanceof Annotation) {
                    obj = ((Annotation) obj).getValue();
                }
                try {
                    map2 = ((InputMethodHighlight) obj).getStyle();
                } catch (NoSuchMethodError unused) {
                    map2 = null;
                }
                if (map2 != null) {
                    HashMap hashMap = new HashMap(5, 0.9f);
                    hashMap.putAll(map);
                    hashMap.putAll(map2);
                    return hashMap;
                }
            } catch (ClassCastException unused2) {
            }
        }
        return map;
    }

    private static int[] addToVector(Object obj, int i, Vector vector, int[] iArr) {
        if (!vector.lastElement().equals(obj)) {
            vector.addElement(obj);
            int size = vector.size();
            if (iArr.length == size) {
                int[] iArr2 = new int[iArr.length * 2];
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                iArr = iArr2;
            }
            iArr[size - 1] = i;
        }
        return iArr;
    }

    public static StyledParagraph deleteChar(AttributedCharacterIterator attributedCharacterIterator, char[] cArr, int i, StyledParagraph styledParagraph) {
        int beginIndex = i - attributedCharacterIterator.getBeginIndex();
        if (styledParagraph.decorations == null && styledParagraph.fonts == null) {
            styledParagraph.length--;
            return styledParagraph;
        }
        if (styledParagraph.getRunLimit(beginIndex) == beginIndex + 1 && (beginIndex == 0 || styledParagraph.getRunLimit(beginIndex - 1) == beginIndex)) {
            return new StyledParagraph(attributedCharacterIterator, cArr);
        }
        styledParagraph.length--;
        Vector<Decoration> vector = styledParagraph.decorations;
        if (vector != null) {
            deleteFrom(beginIndex, styledParagraph.decorationStarts, vector.size());
        }
        Vector<Object> vector2 = styledParagraph.fonts;
        if (vector2 != null) {
            deleteFrom(beginIndex, styledParagraph.fontStarts, vector2.size());
        }
        return styledParagraph;
    }

    private static void deleteFrom(int i, int[] iArr, int i2) {
        while (true) {
            i2--;
            int i3 = iArr[i2];
            if (i3 <= i) {
                return;
            } else {
                iArr[i2] = i3 - 1;
            }
        }
    }

    private static int findRunContaining(int i, int[] iArr) {
        int i2 = 1;
        while (iArr[i2] <= i) {
            i2++;
        }
        return i2 - 1;
    }

    private static Object getGraphicOrFont(Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        Object obj = map.get(TextAttribute.CHAR_REPLACEMENT);
        if (obj != null) {
            return obj;
        }
        Object obj2 = map.get(TextAttribute.FONT);
        if (obj2 != null) {
            return obj2;
        }
        if (map.get(TextAttribute.FAMILY) != null) {
            return Font.getFont(map);
        }
        return null;
    }

    public static StyledParagraph insertChar(AttributedCharacterIterator attributedCharacterIterator, char[] cArr, int i, StyledParagraph styledParagraph) {
        char index = attributedCharacterIterator.setIndex(i);
        int max = Math.max((i - attributedCharacterIterator.getBeginIndex()) - 1, 0);
        Map<? extends AttributedCharacterIterator.Attribute, ?> addInputMethodAttrs = addInputMethodAttrs(attributedCharacterIterator.getAttributes());
        if (!styledParagraph.getDecorationAt(max).equals(Decoration.getDecoration(addInputMethodAttrs))) {
            return new StyledParagraph(attributedCharacterIterator, cArr);
        }
        Object graphicOrFont = getGraphicOrFont(addInputMethodAttrs);
        if (graphicOrFont == null) {
            FontResolver fontResolver = FontResolver.getInstance();
            graphicOrFont = fontResolver.getFont(fontResolver.getFontIndex(index), addInputMethodAttrs);
        }
        if (!styledParagraph.getFontOrGraphicAt(max).equals(graphicOrFont)) {
            return new StyledParagraph(attributedCharacterIterator, cArr);
        }
        styledParagraph.length++;
        Vector<Decoration> vector = styledParagraph.decorations;
        if (vector != null) {
            insertInto(max, styledParagraph.decorationStarts, vector.size());
        }
        Vector<Object> vector2 = styledParagraph.fonts;
        if (vector2 != null) {
            insertInto(max, styledParagraph.fontStarts, vector2.size());
        }
        return styledParagraph;
    }

    private static void insertInto(int i, int[] iArr, int i2) {
        while (true) {
            i2--;
            int i3 = iArr[i2];
            if (i3 <= i) {
                return;
            } else {
                iArr[i2] = i3 + 1;
            }
        }
    }

    public Decoration getDecorationAt(int i) {
        if (i < 0 || i >= this.length) {
            throw new IllegalArgumentException("index out of range");
        }
        if (this.decorations == null) {
            return this.decoration;
        }
        return this.decorations.elementAt(findRunContaining(i, this.decorationStarts));
    }

    public Object getFontOrGraphicAt(int i) {
        if (i < 0 || i >= this.length) {
            throw new IllegalArgumentException("index out of range");
        }
        if (this.fonts == null) {
            return this.font;
        }
        return this.fonts.elementAt(findRunContaining(i, this.fontStarts));
    }

    public int getRunLimit(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.length)) {
            throw new IllegalArgumentException("index out of range");
        }
        if (this.decorations != null) {
            i2 = this.decorationStarts[findRunContaining(i, this.decorationStarts) + 1];
        }
        int i3 = this.length;
        if (this.fonts != null) {
            i3 = this.fontStarts[findRunContaining(i, this.fontStarts) + 1];
        }
        return Math.min(i2, i3);
    }
}
