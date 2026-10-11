package java.awt.font;

import java.awt.Font;
import java.io.PrintStream;
import java.text.AttributedCharacterIterator;
import java.text.Bidi;
import java.text.BreakIterator;
import java.util.Hashtable;
import java.util.Map;
import sun.font.AttributeValues;
import sun.font.BidiUtils;
import sun.font.TextLabelFactory;
import sun.font.TextLineComponent;

/* loaded from: classes5.dex */
public final class TextMeasurer implements Cloneable {
    private static float EST_LINES = 2.1f;
    private static boolean wantStats;
    private byte fBaseline;
    private float[] fBaselineOffsets;
    private Bidi fBidi;
    private char[] fChars;
    private int fComponentLimit;
    private int fComponentStart;
    private TextLineComponent[] fComponents;
    private FontRenderContext fFrc;
    private boolean fIsDirectionLTR;
    private byte[] fLevels;
    private StyledParagraph fParagraph;
    private int fStart;
    private boolean haveLayoutWindow;
    private BreakIterator fLineBreak = null;
    private CharArrayIterator charIter = null;
    int layoutCount = 0;
    int layoutCharCount = 0;
    private float fJustifyRatio = 1.0f;
    private int formattedChars = 0;
    private boolean collectStats = false;

    public TextMeasurer(AttributedCharacterIterator attributedCharacterIterator, FontRenderContext fontRenderContext) {
        this.fFrc = fontRenderContext;
        initAll(attributedCharacterIterator);
    }

    private int calcLineBreak(int i, float f) {
        int lineBreakIndex;
        int numCharacters;
        int i2 = this.fComponentStart;
        int i3 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i3 >= textLineComponentArr.length || (numCharacters = textLineComponentArr[i3].getNumCharacters() + i2) > i) {
                break;
            }
            i3++;
            i2 = numCharacters;
        }
        int i4 = i;
        float f2 = f;
        while (true) {
            TextLineComponent[] textLineComponentArr2 = this.fComponents;
            if (i3 >= textLineComponentArr2.length) {
                int i5 = this.fComponentLimit;
                char[] cArr = this.fChars;
                if (i5 >= cArr.length) {
                    return cArr.length;
                }
                generateComponents(i, cArr.length);
                return calcLineBreak(i, f);
            }
            TextLineComponent textLineComponent = textLineComponentArr2[i3];
            int numCharacters2 = textLineComponent.getNumCharacters();
            int i6 = i4 - i2;
            lineBreakIndex = textLineComponent.getLineBreakIndex(i6, f2);
            if (lineBreakIndex != numCharacters2 || i3 >= this.fComponents.length) {
                break;
            }
            f2 -= textLineComponent.getAdvanceBetween(i6, lineBreakIndex);
            i4 = i2 + numCharacters2;
            i3++;
            i2 = i4;
        }
        return i2 + lineBreakIndex;
    }

    private void ensureComponents(int i, int i2) {
        if (i < this.fComponentStart || i2 > this.fComponentLimit) {
            generateComponents(i, i2);
        }
    }

    private void generateComponents(int i, int i2) {
        int[] iArr;
        if (this.collectStats) {
            this.formattedChars += i2 - i;
        }
        TextLabelFactory textLabelFactory = new TextLabelFactory(this.fFrc, this.fChars, this.fBidi, 0);
        Bidi bidi = this.fBidi;
        if (bidi != null) {
            byte[] levels = BidiUtils.getLevels(bidi);
            this.fLevels = levels;
            iArr = BidiUtils.createInverseMap(BidiUtils.createVisualToLogicalMap(levels));
            this.fIsDirectionLTR = this.fBidi.baseIsLeftToRight();
        } else {
            iArr = null;
            this.fLevels = null;
            this.fIsDirectionLTR = true;
        }
        try {
            this.fComponents = TextLine.getComponents(this.fParagraph, this.fChars, i, i2, iArr, this.fLevels, textLabelFactory);
            this.fComponentStart = i;
            this.fComponentLimit = i2;
        } catch (IllegalArgumentException e) {
            System.out.println("startingAt=" + i + "; endingAt=" + i2);
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append("fComponentLimit=");
            sb.append(this.fComponentLimit);
            printStream.println(sb.toString());
            throw e;
        }
    }

    private void initAll(AttributedCharacterIterator attributedCharacterIterator) {
        this.fStart = attributedCharacterIterator.getBeginIndex();
        this.fChars = new char[attributedCharacterIterator.getEndIndex() - this.fStart];
        char first = attributedCharacterIterator.first();
        int i = 0;
        while (first != 65535) {
            this.fChars[i] = first;
            first = attributedCharacterIterator.next();
            i++;
        }
        attributedCharacterIterator.first();
        Bidi bidi = new Bidi(attributedCharacterIterator);
        this.fBidi = bidi;
        if (bidi.isLeftToRight()) {
            this.fBidi = null;
        }
        attributedCharacterIterator.first();
        Map<AttributedCharacterIterator.Attribute, Object> attributes = attributedCharacterIterator.getAttributes();
        NumericShaper numericShaping = AttributeValues.getNumericShaping(attributes);
        if (numericShaping != null) {
            char[] cArr = this.fChars;
            numericShaping.shape(cArr, 0, cArr.length);
        }
        this.fParagraph = new StyledParagraph(attributedCharacterIterator, this.fChars);
        this.fJustifyRatio = AttributeValues.getJustification(attributes);
        if (TextLine.advanceToFirstFont(attributedCharacterIterator)) {
            Font fontAtCurrentPos = TextLine.getFontAtCurrentPos(attributedCharacterIterator);
            int index = attributedCharacterIterator.getIndex() - attributedCharacterIterator.getBeginIndex();
            LineMetrics lineMetrics = fontAtCurrentPos.getLineMetrics(this.fChars, index, index + 1, this.fFrc);
            this.fBaseline = (byte) lineMetrics.getBaselineIndex();
            this.fBaselineOffsets = lineMetrics.getBaselineOffsets();
        } else {
            this.fBaseline = TextLayout.getBaselineFromGraphic((GraphicAttribute) attributes.get(TextAttribute.CHAR_REPLACEMENT));
            this.fBaselineOffsets = new Font(new Hashtable(5, 0.9f)).getLineMetrics(" ", 0, 1, this.fFrc).getBaselineOffsets();
        }
        this.fBaselineOffsets = TextLine.getNormalizedOffsets(this.fBaselineOffsets, this.fBaseline);
        invalidateComponents();
    }

    private void invalidateComponents() {
        int length = this.fChars.length;
        this.fComponentLimit = length;
        this.fComponentStart = length;
        this.fComponents = null;
        this.haveLayoutWindow = false;
    }

    private TextLineComponent[] makeComponentsOnRange(int i, int i2) {
        int i3;
        boolean z;
        int numCharacters;
        int i4 = i;
        int trailingCdWhitespaceStart = trailingCdWhitespaceStart(i, i2);
        int i5 = this.fComponentStart;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i7 >= textLineComponentArr.length || (numCharacters = textLineComponentArr[i7].getNumCharacters() + i5) > i4) {
                break;
            }
            i7++;
            i5 = numCharacters;
        }
        int i8 = i5;
        boolean z2 = false;
        int i9 = i7;
        boolean z3 = true;
        while (z3) {
            int numCharacters2 = this.fComponents[i9].getNumCharacters() + i8;
            boolean z4 = z2;
            if (trailingCdWhitespaceStart > Math.max(i8, i4)) {
                z4 = z2;
                if (trailingCdWhitespaceStart < Math.min(numCharacters2, i2)) {
                    z4 = true;
                }
            }
            if (numCharacters2 >= i2) {
                z3 = false;
            } else {
                i8 = numCharacters2;
            }
            i9++;
            z3 = z3;
            z2 = z4;
        }
        int i10 = i9 - i7;
        if (z2) {
            i10++;
        }
        TextLineComponent[] textLineComponentArr2 = new TextLineComponent[i10];
        if (trailingCdWhitespaceStart == i4) {
            i3 = !this.fIsDirectionLTR ? 1 : 0;
            trailingCdWhitespaceStart = i2;
        } else {
            i3 = 2;
        }
        while (i4 < i2) {
            int numCharacters3 = this.fComponents[i7].getNumCharacters() + i5;
            int max = Math.max(i4, i5);
            int min = Math.min(trailingCdWhitespaceStart, numCharacters3);
            int i11 = i6 + 1;
            textLineComponentArr2[i6] = this.fComponents[i7].getSubset(max - i5, min - i5, i3);
            i4 += min - max;
            if (i4 == trailingCdWhitespaceStart) {
                z = true;
                i3 = !this.fIsDirectionLTR ? 1 : 0;
                trailingCdWhitespaceStart = i2;
            } else {
                z = true;
            }
            if (i4 == numCharacters3) {
                i7++;
                i5 = numCharacters3;
            }
            i6 = i11;
        }
        return textLineComponentArr2;
    }

    private void makeLayoutWindow(int i) {
        int length = this.fChars.length;
        if (this.layoutCount > 0 && !this.haveLayoutWindow) {
            length = Math.min(((int) (Math.max(this.layoutCharCount / r1, 1) * EST_LINES)) + i, this.fChars.length);
        }
        if (i > 0 || length < this.fChars.length) {
            CharArrayIterator charArrayIterator = this.charIter;
            if (charArrayIterator == null) {
                this.charIter = new CharArrayIterator(this.fChars);
            } else {
                charArrayIterator.reset(this.fChars);
            }
            if (this.fLineBreak == null) {
                this.fLineBreak = BreakIterator.getLineInstance();
            }
            this.fLineBreak.setText(this.charIter);
            if (i > 0 && !this.fLineBreak.isBoundary(i)) {
                i = this.fLineBreak.preceding(i);
            }
            if (length < this.fChars.length && !this.fLineBreak.isBoundary(length)) {
                length = this.fLineBreak.following(length);
            }
        }
        ensureComponents(i, length);
        this.haveLayoutWindow = true;
    }

    private TextLine makeTextLineOnRange(int i, int i2) {
        int[] iArr;
        byte[] bArr;
        Bidi bidi = this.fBidi;
        if (bidi != null) {
            byte[] levels = BidiUtils.getLevels(bidi.createLineBidi(i, i2));
            bArr = levels;
            iArr = BidiUtils.createInverseMap(BidiUtils.createVisualToLogicalMap(levels));
        } else {
            iArr = null;
            bArr = null;
        }
        return new TextLine(this.fFrc, makeComponentsOnRange(i, i2), this.fBaselineOffsets, this.fChars, i, i2, iArr, bArr, this.fIsDirectionLTR);
    }

    private void printStats() {
        System.out.println("formattedChars: " + this.formattedChars);
        this.collectStats = false;
    }

    private int trailingCdWhitespaceStart(int i, int i2) {
        if (this.fLevels != null) {
            byte b = (byte) (!this.fIsDirectionLTR ? 1 : 0);
            do {
                i2--;
                if (i2 >= i) {
                    if (this.fLevels[i2] % 2 == b) {
                        break;
                    }
                }
            } while (Character.getDirectionality(this.fChars[i2]) == 12);
            return i2 + 1;
        }
        return i;
    }

    public Object clone() {
        try {
            TextMeasurer textMeasurer = (TextMeasurer) super.clone();
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (textLineComponentArr != null) {
                textMeasurer.fComponents = (TextLineComponent[]) textLineComponentArr.clone();
            }
            return textMeasurer;
        } catch (CloneNotSupportedException unused) {
            throw new Error();
        }
    }

    public void deleteChar(AttributedCharacterIterator attributedCharacterIterator, int i) {
        this.fStart = attributedCharacterIterator.getBeginIndex();
        int endIndex = attributedCharacterIterator.getEndIndex();
        if (endIndex - this.fStart != this.fChars.length - 1) {
            initAll(attributedCharacterIterator);
        }
        int i2 = this.fStart;
        char[] cArr = new char[endIndex - i2];
        int i3 = i - i2;
        System.arraycopy(this.fChars, 0, cArr, 0, i - i2);
        System.arraycopy(this.fChars, i3 + 1, cArr, i3, endIndex - i);
        this.fChars = cArr;
        if (this.fBidi != null) {
            Bidi bidi = new Bidi(attributedCharacterIterator);
            this.fBidi = bidi;
            if (bidi.isLeftToRight()) {
                this.fBidi = null;
            }
        }
        this.fParagraph = StyledParagraph.deleteChar(attributedCharacterIterator, this.fChars, i, this.fParagraph);
        invalidateComponents();
    }

    public float getAdvanceBetween(int i, int i2) {
        int i3 = this.fStart;
        int i4 = i - i3;
        int i5 = i2 - i3;
        ensureComponents(i4, i5);
        return makeTextLineOnRange(i4, i5).getMetrics().advance;
    }

    public char[] getChars() {
        return this.fChars;
    }

    public TextLayout getLayout(int i, int i2) {
        int i3 = this.fStart;
        int i4 = i - i3;
        int i5 = i2 - i3;
        ensureComponents(i4, i5);
        TextLine makeTextLineOnRange = makeTextLineOnRange(i4, i5);
        if (i5 < this.fChars.length) {
            this.layoutCharCount += i2 - i;
            this.layoutCount++;
        }
        return new TextLayout(makeTextLineOnRange, this.fBaseline, this.fBaselineOffsets, this.fJustifyRatio);
    }

    public int getLineBreakIndex(int i, float f) {
        int i2 = i - this.fStart;
        if (!this.haveLayoutWindow || i2 < this.fComponentStart || i2 >= this.fComponentLimit) {
            makeLayoutWindow(i2);
        }
        return calcLineBreak(i2, f) + this.fStart;
    }

    public void insertChar(AttributedCharacterIterator attributedCharacterIterator, int i) {
        if (this.collectStats) {
            printStats();
        }
        if (wantStats) {
            this.collectStats = true;
        }
        this.fStart = attributedCharacterIterator.getBeginIndex();
        int endIndex = attributedCharacterIterator.getEndIndex();
        if (endIndex - this.fStart != this.fChars.length + 1) {
            initAll(attributedCharacterIterator);
        }
        int i2 = this.fStart;
        char[] cArr = new char[endIndex - i2];
        int i3 = i - i2;
        System.arraycopy(this.fChars, 0, cArr, 0, i3);
        cArr[i3] = attributedCharacterIterator.setIndex(i);
        int i4 = i3 + 1;
        System.arraycopy(this.fChars, i3, cArr, i4, (endIndex - i) - 1);
        this.fChars = cArr;
        if (this.fBidi != null || Bidi.requiresBidi(cArr, i3, i4) || attributedCharacterIterator.getAttribute(TextAttribute.BIDI_EMBEDDING) != null) {
            Bidi bidi = new Bidi(attributedCharacterIterator);
            this.fBidi = bidi;
            if (bidi.isLeftToRight()) {
                this.fBidi = null;
            }
        }
        this.fParagraph = StyledParagraph.insertChar(attributedCharacterIterator, this.fChars, i, this.fParagraph);
        invalidateComponents();
    }
}
