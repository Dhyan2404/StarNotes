package sun.font;

import com.google.common.base.Ascii;
import java.awt.Font;
import java.awt.GraphicsEnvironment;
import java.text.AttributedCharacterIterator;
import java.util.ArrayList;
import java.util.Map;
import sun.text.CodePointIterator;

/* loaded from: classes16.dex */
public final class FontResolver {
    private static final int BLOCKSIZE = 128;
    private static final int DEFAULT_SIZE = 12;
    private static FontResolver INSTANCE = null;
    private static final int MASK = 127;
    private static final int SHIFT = 9;
    private Font[] allFonts;
    private Font[] supplementaryFonts;
    private int[] supplementaryIndices;
    private Font defaultFont = new Font(Font.DIALOG, 0, 12);
    private int[][] blocks = new int[512];

    private FontResolver() {
    }

    private Font[] getAllFonts() {
        if (this.allFonts == null) {
            this.allFonts = GraphicsEnvironment.getLocalGraphicsEnvironment().getAllFonts();
        }
        return this.allFonts;
    }

    private Font[] getAllSCFonts() {
        if (this.supplementaryFonts == null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < getAllFonts().length; i++) {
                Font font = this.allFonts[i];
                if (FontUtilities.getFont2D(font).hasSupplementaryChars()) {
                    arrayList.add(font);
                    arrayList2.add(Integer.valueOf(i));
                }
            }
            int size = arrayList.size();
            this.supplementaryIndices = new int[size];
            for (int i2 = 0; i2 < size; i2++) {
                this.supplementaryIndices[i2] = ((Integer) arrayList2.get(i2)).intValue();
            }
            this.supplementaryFonts = (Font[]) arrayList.toArray(new Font[size]);
        }
        return this.supplementaryFonts;
    }

    private int getIndexFor(char c) {
        if (this.defaultFont.canDisplay(c)) {
            return 1;
        }
        for (int i = 0; i < getAllFonts().length; i++) {
            if (this.allFonts[i].canDisplay(c)) {
                return i + 2;
            }
        }
        return 1;
    }

    public static FontResolver getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new FontResolver();
        }
        return INSTANCE;
    }

    public Font getFont(int i, Map map) {
        Font font = this.defaultFont;
        if (i >= 2) {
            font = this.allFonts[i - 2];
        }
        return font.deriveFont((Map<? extends AttributedCharacterIterator.Attribute, ?>) map);
    }

    public int getFontIndex(char c) {
        int i = c >> '\t';
        int[][] iArr = this.blocks;
        int[] iArr2 = iArr[i];
        if (iArr2 == null) {
            iArr2 = new int[128];
            iArr[i] = iArr2;
        }
        int i2 = c & Ascii.MAX;
        if (iArr2[i2] == 0) {
            iArr2[i2] = getIndexFor(c);
        }
        return iArr2[i2];
    }

    public int nextFontRunIndex(CodePointIterator codePointIterator) {
        int next;
        int next2 = codePointIterator.next();
        if (next2 == -1) {
            return 1;
        }
        int fontIndex = getFontIndex(next2);
        do {
            next = codePointIterator.next();
            if (next == -1) {
                return fontIndex;
            }
        } while (getFontIndex(next) == fontIndex);
        codePointIterator.prev();
        return fontIndex;
    }

    private int getIndexFor(int i) {
        if (this.defaultFont.canDisplay(i)) {
            return 1;
        }
        for (int i2 = 0; i2 < getAllSCFonts().length; i2++) {
            if (this.supplementaryFonts[i2].canDisplay(i)) {
                return this.supplementaryIndices[i2] + 2;
            }
        }
        return 1;
    }

    public int getFontIndex(int i) {
        if (i < 65536) {
            return getFontIndex((char) i);
        }
        return getIndexFor(i);
    }
}
