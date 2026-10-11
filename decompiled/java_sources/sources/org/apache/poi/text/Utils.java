package org.apache.poi.text;

import java.awt.Color;
import java.awt.font.TextAttribute;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import java.text.CharacterIterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import org.apache.commons.math3.geometry.euclidean.threed.Rotation;

/* loaded from: classes13.dex */
public class Utils {
    public static long getDegree(AffineTransform affineTransform) {
        double[] dArr = new double[6];
        affineTransform.getMatrix(dArr);
        double d = dArr[0];
        double d2 = dArr[1];
        return Math.round((new Rotation(d, d2, d2, dArr[3], true).getAngle() * 180.0d) / 3.141592653589793d);
    }

    public static Color getForegroundColor(AttributedCharacterIterator attributedCharacterIterator) {
        Object attribute = attributedCharacterIterator.getAttribute(TextAttribute.FOREGROUND);
        if (attribute instanceof Color) {
            return (Color) attribute;
        }
        return null;
    }

    public static Highlight getHighlight() {
        Iterator it2 = ServiceLoader.load(Highlight.class, Highlight.class.getClassLoader()).iterator();
        return it2.hasNext() ? (Highlight) it2.next() : new JavaHighlight();
    }

    public static String getString(CharacterIterator characterIterator) {
        characterIterator.first();
        if (characterIterator.getEndIndex() <= characterIterator.getBeginIndex()) {
            return "";
        }
        int endIndex = characterIterator.getEndIndex() - characterIterator.getBeginIndex();
        char[] cArr = new char[endIndex];
        cArr[0] = characterIterator.current();
        for (int i = 1; i < endIndex; i++) {
            cArr[i] = characterIterator.next();
        }
        return String.valueOf(cArr);
    }

    public static boolean isHorizontal(long j) {
        return (j / 90) % 2 == 1;
    }

    public static boolean isLetter(char c) {
        return Character.isLowerCase(c) || Character.isUpperCase(c);
    }

    public static boolean isNotBlank(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || trim(str).length() <= 0;
    }

    public static boolean isRightAngle(long j) {
        return j % 90 == 0;
    }

    public static boolean isTranslate(int i) {
        return i == 0;
    }

    public static String removeNewlineSymbol(String str) {
        return isNotBlank(str) ? str.replaceAll("\r\n", "").replaceAll("\n", "").replaceAll("\r", "") : str;
    }

    public static <T> void safeAdd(Collection<T> collection, T t) {
        if (collection == null || t == null) {
            return;
        }
        collection.add(t);
    }

    public static boolean transformEquals(AffineTransform affineTransform, AffineTransform affineTransform2) {
        if (affineTransform == affineTransform2) {
            return true;
        }
        return Float.compare((float) affineTransform.getTranslateX(), (float) affineTransform2.getTranslateX()) == 0 && Float.compare((float) affineTransform.getTranslateY(), (float) affineTransform2.getTranslateY()) == 0 && Float.compare((float) affineTransform.getScaleX(), (float) affineTransform2.getScaleX()) == 0 && Float.compare((float) affineTransform.getScaleY(), (float) affineTransform2.getScaleY()) == 0 && Float.compare((float) affineTransform.getShearX(), (float) affineTransform2.getShearX()) == 0 && Float.compare((float) affineTransform.getShearY(), (float) affineTransform2.getShearY()) == 0;
    }

    public static Rectangle2D transformRectangle(AffineTransform affineTransform, Rectangle2D rectangle2D) {
        return (affineTransform == null || affineTransform.isIdentity()) ? rectangle2D : affineTransform.createTransformedShape(rectangle2D).getBounds2D();
    }

    public static String trim(String str) {
        char c;
        if (str == null) {
            return null;
        }
        int length = str.length();
        char[] charArray = str.toCharArray();
        int i = 0;
        while (i < length && ((c = charArray[i]) <= ' ' || c == 160)) {
            i++;
        }
        while (i < length && (charArray[length - 1] <= ' ' || charArray[i] == 160)) {
            length--;
        }
        return (i > 0 || length < charArray.length) ? str.substring(i, length) : str;
    }

    public static void union(Rectangle2D rectangle2D, Rectangle2D rectangle2D2) {
        if (rectangle2D2 == null) {
            return;
        }
        if (rectangle2D.isEmpty()) {
            rectangle2D.setRect(rectangle2D2);
        } else {
            Rectangle2D.union(rectangle2D2, rectangle2D, rectangle2D);
        }
    }

    public static Rectangle2D unionRectangle(List<Line> list) {
        Rectangle2D.Double r0 = new Rectangle2D.Double();
        if (list == null) {
            return r0;
        }
        Iterator<Line> it2 = list.iterator();
        while (it2.hasNext()) {
            union(r0, it2.next().getRectangle());
        }
        return r0;
    }

    public static boolean isTranslate(Color color) {
        return color != null && color.getAlpha() == 0;
    }

    public static Rectangle2D unionRectangle(Line line) {
        Rectangle2D.Double r0 = new Rectangle2D.Double();
        Iterator<OneWord> it2 = line.getWords().iterator();
        while (it2.hasNext()) {
            union(r0, it2.next().getRectangle());
        }
        return r0;
    }
}
