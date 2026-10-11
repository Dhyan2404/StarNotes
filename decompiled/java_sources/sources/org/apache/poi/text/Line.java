package org.apache.poi.text;

import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.font.TextAttribute;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import org.apache.logging.log4j.util.Chars;
import org.apache.poi.sl.draw.DrawMathPart;
import org.apache.poi.sl.draw.DrawTextPart;
import org.apache.poi.util.StringUtils;

/* loaded from: classes13.dex */
public class Line {
    private long degree;
    private int endPos;
    private int index;
    private boolean paragraphEnd;
    private int startPos;
    private String text;
    private AffineTransform transform;
    private Rectangle2D rectangle = new Rectangle2D.Double();
    private List<OneWord> words = new ArrayList();

    public Line(AffineTransform affineTransform, long j, int i) {
        this.transform = affineTransform;
        this.degree = j;
        this.startPos = i;
    }

    private TreeMap<Integer, Integer> breakText(String str) {
        TreeMap<Integer, Integer> treeMap = new TreeMap<>();
        int length = str.length();
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        for (int i4 = 0; i4 < length; i4++) {
            int charType = getCharType(str.charAt(i4));
            if (charType > 0) {
                if (charType != i && i2 >= 0) {
                    treeMap.put(Integer.valueOf(i2), Integer.valueOf(i3));
                    i2 = -1;
                }
                if (i2 < 0) {
                    i3 = i4 + 1;
                    i2 = i4;
                } else {
                    i3++;
                }
                i = charType;
            } else {
                if (i2 >= 0) {
                    treeMap.put(Integer.valueOf(i2), Integer.valueOf(i3));
                    i2 = -1;
                }
                treeMap.put(Integer.valueOf(i4), Integer.valueOf(i4 + 1));
                i = 0;
            }
        }
        if (i2 >= 0) {
            treeMap.put(Integer.valueOf(i2), Integer.valueOf(i3));
        }
        return treeMap;
    }

    private void calculateOneWord(Graphics2D graphics2D, AffineTransform affineTransform, List<DrawTextPart> list, Highlight highlight) {
        AttributedString attributedString;
        FontRenderContext fontRenderContext = graphics2D.getFontRenderContext();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        for (DrawTextPart drawTextPart : list) {
            if (!(drawTextPart instanceof DrawMathPart) && (attributedString = drawTextPart.getAttributedString()) != null && !drawTextPart.isPlaceholderText()) {
                AttributedCharacterIterator iterator = attributedString.getIterator();
                String string = Utils.getString(iterator);
                if (!Utils.isNullOrEmpty(Utils.removeNewlineSymbol(string)) && !Utils.isTranslate(Utils.getForegroundColor(iterator))) {
                    double x = drawTextPart.getX();
                    double y = drawTextPart.getY();
                    sb.append(string);
                    Point2D.Double r13 = new Point2D.Double(x, y);
                    highlight.loadData(drawTextPart, affineTransform, fontRenderContext);
                    for (Map.Entry<Integer, Integer> entry : breakText(string).entrySet()) {
                        calculateWordWidth(arrayList, highlight, string, r13, entry.getKey().intValue(), entry.getValue().intValue());
                    }
                }
            }
        }
        arrayList.clear();
        highlight.release();
        String sb2 = sb.toString();
        this.text = sb2;
        if (StringUtils.isNullOrEmpty(sb2)) {
            this.words.clear();
        }
    }

    private void calculateWordWidth(List<Rectangle2D> list, Highlight highlight, String str, Point2D point2D, int i, int i2) {
        AttributedCharacterIterator iterator = highlight.getIterator(null, i, i2);
        if (!this.words.isEmpty() && iterator.getAttribute(TextAttribute.SUPERSCRIPT) != null) {
            OneWord oneWord = this.words.get(r0.size() - 1);
            point2D.setLocation(list.get(list.size() - 1).getX(), point2D.getY());
            int length = oneWord.getText().length();
            this.words.remove(oneWord);
            i -= length;
        }
        Rectangle2D highlight2 = highlight.getHighlight(point2D, i, i2);
        point2D.setLocation(highlight2.getMaxX(), point2D.getY());
        OneWord oneWord2 = new OneWord(str.substring(i, i2), transformRectangle(highlight2, this.transform), this.startPos + this.words.size());
        oneWord2.setIndex(this.words.size());
        this.words.add(oneWord2);
        list.add(highlight2);
    }

    private int getCharType(char c) {
        if (Character.isSpaceChar(c)) {
            return 1;
        }
        return Utils.isLetter(c) ? 2 : 0;
    }

    private Rectangle2D transformRectangle(Rectangle2D rectangle2D, AffineTransform affineTransform) {
        return Utils.transformRectangle(affineTransform, rectangle2D);
    }

    public void calculateWordBounds(Graphics2D graphics2D, AffineTransform affineTransform, List<DrawTextPart> list, Highlight highlight) {
        calculateOneWord(graphics2D, affineTransform, list, highlight);
        Utils.union(this.rectangle, Utils.unionRectangle(this));
        this.endPos = this.startPos + this.words.size();
    }

    public int combineLeftText(StringBuilder sb, List<Rectangle2D> list, int i, int i2, boolean z) {
        if (i2 <= 0) {
            return 0;
        }
        if (!z) {
            i = this.words.size();
        }
        for (int i3 = i - 1; i3 >= 0; i3--) {
            OneWord oneWord = this.words.get(i3);
            sb.insert(0, oneWord.getText());
            Utils.safeAdd(list, oneWord.getRectangle());
            i2 -= oneWord.length();
            if (i2 <= 0) {
                break;
            }
        }
        return i2;
    }

    public int combineRightText(StringBuilder sb, List<Rectangle2D> list, int i, int i2, boolean z) {
        if (i2 <= 0) {
            return 0;
        }
        if (!z) {
            i = 0;
        }
        while (i < this.words.size()) {
            OneWord oneWord = this.words.get(i);
            sb.append(oneWord.getText());
            Utils.safeAdd(list, oneWord.getRectangle());
            i2 -= oneWord.length();
            if (i2 <= 0) {
                break;
            }
            i++;
        }
        return i2;
    }

    public void combineSelectText(StringBuilder sb, List<Rectangle2D> list, int i, int i2) {
        while (i < i2) {
            OneWord oneWord = this.words.get(i);
            sb.append(oneWord.getText());
            Utils.safeAdd(list, oneWord.getRectangle());
            i++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Line line = (Line) obj;
        return this.paragraphEnd == line.paragraphEnd && this.degree == line.degree && this.index == line.index && this.startPos == line.startPos && this.endPos == line.endPos && this.rectangle.equals(line.rectangle) && Utils.transformEquals(this.transform, line.transform) && this.text.equals(line.text) && this.words.equals(line.words);
    }

    public int getEndPos() {
        return this.endPos;
    }

    public int getIndex() {
        return this.index;
    }

    public int getPostion(int i) {
        return this.startPos + i;
    }

    public Rectangle2D getRectangle() {
        return this.rectangle;
    }

    public int getStartPos() {
        return this.startPos;
    }

    public String getText() {
        return this.text;
    }

    public OneWord getWord(int i) {
        return this.words.get(i);
    }

    public OneWord getWordByPos(int i) {
        for (OneWord oneWord : this.words) {
            if (oneWord.getPos() == i) {
                return oneWord;
            }
        }
        return null;
    }

    public int getWordIndex(Point2D point2D) {
        if (this.words.isEmpty()) {
            return -1;
        }
        boolean isHorizontal = isHorizontal();
        int size = this.words.size();
        if (isReverse()) {
            for (int i = size - 2; i >= 0; i--) {
                Rectangle2D rectangle = this.words.get(i).getRectangle();
                if (isHorizontal) {
                    if (rectangle.getX() > point2D.getX()) {
                        return i + 1;
                    }
                    if (point2D.getX() > rectangle.getX() && point2D.getX() <= rectangle.getMaxX()) {
                        return i;
                    }
                } else {
                    if (rectangle.getY() > point2D.getY()) {
                        return i + 1;
                    }
                    if (point2D.getY() > rectangle.getY() && point2D.getY() <= rectangle.getMaxY()) {
                        return i;
                    }
                }
            }
            return 0;
        }
        for (int i2 = 1; i2 < size; i2++) {
            Rectangle2D rectangle2 = this.words.get(i2).getRectangle();
            if (isHorizontal) {
                if (rectangle2.getX() > point2D.getX()) {
                    return i2 - 1;
                }
                if (point2D.getX() > rectangle2.getX() && point2D.getX() <= rectangle2.getMaxX()) {
                    return i2;
                }
            } else {
                if (rectangle2.getX() > point2D.getY()) {
                    return i2 - 1;
                }
                if (point2D.getY() > rectangle2.getY() && point2D.getY() <= rectangle2.getMaxY()) {
                    return i2;
                }
            }
        }
        return size - 1;
    }

    public int getWordIndexExact(Point2D point2D) {
        if (this.words.isEmpty()) {
            return -1;
        }
        boolean isHorizontal = isHorizontal();
        int size = this.words.size();
        if (isReverse()) {
            for (int i = size - 1; i >= 0; i--) {
                Rectangle2D rectangle = this.words.get(i).getRectangle();
                if (isHorizontal) {
                    if (point2D.getX() > rectangle.getX() && point2D.getX() <= rectangle.getMaxX()) {
                        return i;
                    }
                } else if (point2D.getY() > rectangle.getY() && point2D.getY() <= rectangle.getMaxY()) {
                    return i;
                }
            }
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                Rectangle2D rectangle2 = this.words.get(i2).getRectangle();
                if (isHorizontal) {
                    if (point2D.getX() > rectangle2.getX() && point2D.getX() <= rectangle2.getMaxX()) {
                        return i2;
                    }
                } else if (point2D.getY() > rectangle2.getY() && point2D.getY() <= rectangle2.getMaxY()) {
                    return i2;
                }
            }
        }
        return -1;
    }

    public List<OneWord> getWords() {
        return this.words;
    }

    public int hashCode() {
        return Objects.hash(this.words, this.text, this.rectangle, this.transform, Boolean.valueOf(this.paragraphEnd), Long.valueOf(this.degree), Integer.valueOf(this.index), Integer.valueOf(this.startPos), Integer.valueOf(this.endPos));
    }

    public boolean isEmpty() {
        return this.words.isEmpty();
    }

    public boolean isHorizontal() {
        return Utils.isHorizontal(this.degree);
    }

    public boolean isParagraphEnd() {
        return this.paragraphEnd;
    }

    public boolean isReverse() {
        if (this.words.size() < 2) {
            return false;
        }
        Rectangle2D rectangle = this.words.get(0).getRectangle();
        List<OneWord> list = this.words;
        Rectangle2D rectangle2 = list.get(list.size() - 1).getRectangle();
        return isHorizontal() ? rectangle.getX() > rectangle2.getX() : rectangle.getY() > rectangle2.getY();
    }

    public void search(SearchOptions searchOptions, int i) {
        int i2;
        int i3;
        int searchWordIndex = searchOptions.getSearchWordIndex();
        if (searchWordIndex >= size()) {
            searchOptions.reset();
            return;
        }
        searchOptions.setSearchWordIndex(0);
        Rectangle2D.Double r13 = new Rectangle2D.Double();
        while (searchWordIndex < this.words.size()) {
            OneWord oneWord = this.words.get(searchWordIndex);
            char[] charArray = oneWord.toCharArray();
            int length = charArray.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                }
                if (charArray[i4] == searchOptions.getSearchChar()) {
                    if (!searchOptions.isFound()) {
                        searchOptions.setStartLineIndex(i);
                        searchOptions.setStartWordIndex(searchWordIndex);
                    }
                    searchOptions.setFound(true);
                    searchOptions.increaseSearchIndex();
                    if (searchOptions.isFinish()) {
                        searchOptions.setEndLineIndex(i);
                        searchOptions.setEndWordIndex(searchWordIndex);
                        break;
                    } else {
                        i2 = length;
                        i3 = i4;
                    }
                } else {
                    searchOptions.reset();
                    i2 = length;
                    i3 = i4;
                    r13.setFrame(0.0d, 0.0d, 0.0d, 0.0d);
                }
                i4 = i3 + 1;
                length = i2;
            }
            if (searchOptions.isFound()) {
                Utils.union(r13, oneWord.getRectangle());
            }
            if (searchOptions.isFinish()) {
                break;
            } else {
                searchWordIndex++;
            }
        }
        if (searchOptions.isFound()) {
            searchOptions.getRectangleList().add(r13);
        }
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public void setParagraphEnd(boolean z) {
        this.paragraphEnd = z;
    }

    public int size() {
        return this.words.size();
    }

    public String toString() {
        return "Line{degree=" + this.degree + ", index=" + this.index + ", startPos=" + this.startPos + ", endPos=" + this.endPos + ", paragraphEnd=" + this.paragraphEnd + ", text='" + this.text + Chars.QUOTE + '}';
    }
}
