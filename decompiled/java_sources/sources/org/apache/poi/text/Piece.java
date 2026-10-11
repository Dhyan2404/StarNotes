package org.apache.poi.text;

import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class Piece {
    private long degree;
    private int endPos;
    private int index;
    private List<Line> lines = new ArrayList();
    private Rectangle2D rectangle = new Rectangle2D.Double();
    private int startPos;
    private AffineTransform transform;

    public Piece(AffineTransform affineTransform, long j, int i) {
        this.transform = affineTransform;
        this.degree = j;
        this.startPos = i;
        this.endPos = i;
    }

    private void combineSearch(SearchOptions searchOptions, Selection selection) {
        selection.getDisplayRectangle().addAll(searchOptions.getRectangleList());
        StringBuilder sb = new StringBuilder();
        int contentLength = (searchOptions.getContentLength() - searchOptions.getSearchText().length()) / 2;
        if (contentLength > 0) {
            combineLeftText(sb, null, searchOptions.getStartLineIndex(), searchOptions.getStartWordIndex(), contentLength);
            String sb2 = sb.toString();
            sb.setLength(0);
            combineSelectText(sb, null, searchOptions.getStartLineIndex(), searchOptions.getEndLineIndex(), searchOptions.getStartWordIndex(), searchOptions.getEndWordIndex());
            String sb3 = sb.toString();
            sb.setLength(0);
            combineRightText(sb, null, searchOptions.getEndLineIndex(), searchOptions.getEndWordIndex() + 1, contentLength);
            String sb4 = sb.toString();
            int indexOf = sb3.indexOf(searchOptions.getSearchText());
            String str = sb2 + sb3.substring(0, indexOf);
            String str2 = sb3.substring(indexOf + searchOptions.getSearchText().length()) + sb4;
            selection.setLeftText(str);
            selection.setRightText(str2);
            selection.setStartPosition(getPosition(searchOptions.getStartLineIndex(), searchOptions.getStartWordIndex()));
            selection.setEndPosition(getPosition(searchOptions.getEndLineIndex(), searchOptions.getEndWordIndex()));
        }
    }

    private void combineSelectTextImpl(StringBuilder sb, List<Rectangle2D> list, int i, int i2, int i3, int i4) {
        for (int i5 = i; i5 <= i2; i5++) {
            Line line = this.lines.get(i5);
            if (i5 == i && i5 == i2) {
                line.combineSelectText(sb, list, i3, i4 + 1);
            } else if (i5 == i) {
                line.combineSelectText(sb, list, i3, line.size());
            } else if (i5 == i2) {
                line.combineSelectText(sb, list, 0, i4 + 1);
            } else {
                line.combineSelectText(sb, list, 0, line.size());
            }
            if (line.isParagraphEnd() && i5 != i2) {
                sb.append("\n");
            }
        }
    }

    public void addLine(Line line) {
        line.setIndex(this.lines.size());
        this.lines.add(line);
        Utils.union(this.rectangle, line.getRectangle());
        this.endPos += line.size();
    }

    public void combineLeftText(StringBuilder sb, List<Rectangle2D> list, int i, int i2, int i3) {
        if (i3 <= 0) {
            return;
        }
        int i4 = i3;
        int i5 = i;
        while (i5 >= 0) {
            Line line = this.lines.get(i5);
            if (i5 != i && line.isParagraphEnd()) {
                return;
            }
            i4 = line.combineLeftText(sb, list, i2, i4, i5 == i);
            if (i4 <= 0) {
                return;
            } else {
                i5--;
            }
        }
    }

    public void combineRightText(StringBuilder sb, List<Rectangle2D> list, int i, int i2, int i3) {
        if (i3 <= 0) {
            return;
        }
        int i4 = i3;
        int i5 = i;
        while (i5 < this.lines.size()) {
            Line line = this.lines.get(i5);
            i4 = line.combineRightText(sb, list, i2, i4, i5 == i);
            if (i4 <= 0 || line.isParagraphEnd()) {
                return;
            } else {
                i5++;
            }
        }
    }

    public void combineSelectText(StringBuilder sb, List<Rectangle2D> list, int i, int i2, int i3, int i4) {
        if (i > i2) {
            combineSelectTextImpl(sb, list, i2, i, i4, i3);
        } else if (i != i2 || i3 <= i4) {
            combineSelectTextImpl(sb, list, i, i2, i3, i4);
        } else {
            this.lines.get(i).combineSelectText(sb, list, i4, i3 + 1);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Piece piece = (Piece) obj;
        if (this.degree == piece.degree && this.index == piece.index && this.startPos == piece.startPos && this.endPos == piece.endPos) {
            Rectangle2D rectangle2D = this.rectangle;
            if (rectangle2D.equals(rectangle2D) && Utils.transformEquals(this.transform, piece.transform) && this.lines.equals(piece.lines)) {
                return true;
            }
        }
        return false;
    }

    public long getDegree() {
        return this.degree;
    }

    public int getEndPos() {
        return this.endPos;
    }

    public int getIndex() {
        return this.index;
    }

    public Line getLine(int i) {
        return this.lines.get(i);
    }

    public Line getLineByPos(int i) {
        for (Line line : this.lines) {
            if (line.getStartPos() <= i && line.getEndPos() > i) {
                return line;
            }
        }
        return null;
    }

    public int getLineIndex(Point2D point2D) {
        if (this.lines.isEmpty()) {
            return -1;
        }
        boolean isHorizontal = isHorizontal();
        int size = this.lines.size();
        if (isReverse()) {
            for (int i = size - 2; i >= 0; i--) {
                Rectangle2D rectangle = this.lines.get(i).getRectangle();
                if (rectangle.contains(point2D.getX(), point2D.getY())) {
                    return i;
                }
                if ((isHorizontal && rectangle.getX() > point2D.getY()) || (!isHorizontal && rectangle.getX() > point2D.getX())) {
                    return i + 1;
                }
            }
            return 0;
        }
        for (int i2 = 1; i2 < size; i2++) {
            Rectangle2D rectangle2 = this.lines.get(i2).getRectangle();
            if (rectangle2.contains(point2D.getX(), point2D.getY())) {
                return i2;
            }
            if ((isHorizontal && rectangle2.getY() > point2D.getY()) || (!isHorizontal && rectangle2.getX() > point2D.getX())) {
                return i2 - 1;
            }
        }
        return size - 1;
    }

    public int getLineIndexExact(Point2D point2D, int i) {
        if (this.lines.isEmpty()) {
            return -1;
        }
        boolean isHorizontal = isHorizontal();
        int size = this.lines.size();
        if (!isReverse()) {
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    break;
                }
                Rectangle2D rectangle = this.lines.get(i2).getRectangle();
                if (rectangle.contains(point2D.getX(), point2D.getY())) {
                    return i2;
                }
                if ((!isHorizontal || (rectangle.getX() <= point2D.getX() && rectangle.getMaxX() >= point2D.getX())) && (isHorizontal || (rectangle.getY() <= point2D.getY() && rectangle.getMaxY() >= point2D.getY()))) {
                    if (i2 >= size - 1) {
                        if ((!isHorizontal || point2D.getY() - rectangle.getMaxY() > i) && (isHorizontal || point2D.getX() - rectangle.getMaxX() > i)) {
                            break;
                        }
                        return i2;
                    }
                    Rectangle2D rectangle2 = this.lines.get(i2 + 1).getRectangle();
                    if (isHorizontal) {
                        if (rectangle2.getY() > point2D.getY()) {
                            if (point2D.getY() - rectangle.getMaxY() > i) {
                                return -1;
                            }
                            return i2;
                        }
                    } else if (rectangle2.getX() > point2D.getX()) {
                        if (point2D.getX() - rectangle.getMaxX() > i) {
                            return -1;
                        }
                        return i2;
                    }
                }
                i2++;
            }
        } else {
            for (int i3 = size - 1; i3 >= 0; i3--) {
                Rectangle2D rectangle3 = this.lines.get(i3).getRectangle();
                if (rectangle3.contains(point2D.getX(), point2D.getY())) {
                    return i3;
                }
                if ((!isHorizontal || (rectangle3.getX() <= point2D.getX() && rectangle3.getMaxX() >= point2D.getX())) && (isHorizontal || (rectangle3.getY() <= point2D.getY() && rectangle3.getMaxY() >= point2D.getY()))) {
                    if (i3 <= 0) {
                        if ((!isHorizontal || point2D.getY() - rectangle3.getMaxY() > i) && (isHorizontal || point2D.getX() - rectangle3.getMaxX() > i)) {
                            return -1;
                        }
                        return i3;
                    }
                    Rectangle2D rectangle4 = this.lines.get(i3 - 1).getRectangle();
                    if (isHorizontal) {
                        if (rectangle4.getY() > point2D.getY()) {
                            if (point2D.getY() - rectangle3.getMaxY() > i) {
                                return -1;
                            }
                            return i3;
                        }
                    } else if (rectangle4.getX() > point2D.getX()) {
                        if (point2D.getX() - rectangle3.getMaxX() > i) {
                            return -1;
                        }
                        return i3;
                    }
                }
            }
        }
        return -1;
    }

    public List<Line> getLines() {
        return this.lines;
    }

    public int getPosition(int i, int i2) {
        return this.lines.get(i).getPostion(i2);
    }

    public Rectangle2D getRectangle() {
        return this.rectangle;
    }

    public int getStartPos() {
        return this.startPos;
    }

    public String getText() {
        StringBuilder sb = new StringBuilder();
        for (Line line : this.lines) {
            sb.append(line.getText());
            if (line.isParagraphEnd() && line.getIndex() != this.lines.size() - 1) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    public AffineTransform getTransform() {
        return this.transform;
    }

    public int getWordLength() {
        Iterator<Line> it2 = this.lines.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().size();
        }
        return i;
    }

    public int hashCode() {
        return Objects.hash(this.lines, this.rectangle, this.transform, Long.valueOf(this.degree), Integer.valueOf(this.index), Integer.valueOf(this.startPos), Integer.valueOf(this.endPos));
    }

    public boolean isEmpty() {
        return this.lines.isEmpty();
    }

    public boolean isHorizontal() {
        return Utils.isHorizontal(this.degree);
    }

    public boolean isReverse() {
        List<Line> list = this.lines;
        if (list == null || list.size() < 2) {
            return false;
        }
        Line line = this.lines.get(0);
        boolean isHorizontal = isHorizontal();
        Rectangle2D rectangle = line.getRectangle();
        List<Line> list2 = this.lines;
        Rectangle2D rectangle2 = list2.get(list2.size() - 1).getRectangle();
        return isHorizontal ? rectangle.getY() > rectangle2.getY() : rectangle.getX() > rectangle2.getX();
    }

    public void search(SearchOptions searchOptions, List<Selection> list) {
        if (searchOptions.getSearchText() == null) {
            return;
        }
        Selection selection = new Selection(searchOptions.getSearchText());
        int i = 0;
        while (i < this.lines.size()) {
            this.lines.get(i).search(searchOptions, i);
            if (searchOptions.searchSucess()) {
                combineSearch(searchOptions, selection);
                list.add(selection);
                selection = new Selection(searchOptions.getSearchText());
                searchOptions.searchNext();
                i--;
            }
            i++;
        }
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public int size() {
        return this.lines.size();
    }

    public String toString() {
        return "Piece{degree=" + this.degree + ", index=" + this.index + ", startPos=" + this.startPos + ", endPos=" + this.endPos + ", text='" + getText() + Chars.QUOTE + '}';
    }
}
