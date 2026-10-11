package org.apache.poi.text;

import java.awt.geom.Rectangle2D;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class TextSheet {
    public static final int TEXT_EXIST = 2;
    public static final int TEXT_INIT = 0;
    public static final int TEXT_NONE = 1;
    private Map<Rectangle2D, Piece> pieces = new LinkedHashMap();
    private AtomicBoolean completed = new AtomicBoolean();
    private int textState = 0;
    private int currentPos = 0;

    public void add(Rectangle2D rectangle2D, Piece piece) {
        piece.setIndex(this.pieces.size());
        this.pieces.put(rectangle2D, piece);
    }

    public void clear() {
        this.completed.set(false);
        this.pieces.clear();
        this.currentPos = 0;
    }

    public void combineSelection(int i, int i2, StringBuilder sb, List<Rectangle2D> list) {
        Iterator<Map.Entry<Rectangle2D, Piece>> it2 = this.pieces.entrySet().iterator();
        while (it2.hasNext()) {
            Piece value = it2.next().getValue();
            if (value.getEndPos() > i) {
                if (value.getStartPos() > i2) {
                    return;
                }
                Line line = null;
                for (Line line2 : value.getLines()) {
                    if (line2.getEndPos() > i) {
                        if (line2.getStartPos() > i2) {
                            break;
                        }
                        if (line != null && line.isParagraphEnd()) {
                            sb.append("\n");
                        }
                        for (OneWord oneWord : line2.getWords()) {
                            if (oneWord.getPos() >= i) {
                                if (oneWord.getPos() >= i2) {
                                    break;
                                }
                                sb.append(oneWord.getText());
                                Utils.safeAdd(list, oneWord.getRectangle());
                            }
                        }
                        line = line2;
                    }
                }
            }
        }
    }

    public boolean contains(Rectangle2D rectangle2D) {
        return this.pieces.containsKey(rectangle2D);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TextSheet textSheet = (TextSheet) obj;
        return this.currentPos == textSheet.currentPos && this.pieces.equals(textSheet.pieces);
    }

    public int getCurrentPos() {
        return this.currentPos;
    }

    public Piece getPiece(Rectangle2D rectangle2D) {
        return this.pieces.get(rectangle2D);
    }

    public Piece getPieceByPos(int i) {
        Iterator<Map.Entry<Rectangle2D, Piece>> it2 = this.pieces.entrySet().iterator();
        while (it2.hasNext()) {
            Piece value = it2.next().getValue();
            if (value.getStartPos() <= i && value.getEndPos() > i) {
                return value;
            }
        }
        return null;
    }

    public Map<Rectangle2D, Piece> getPieceMap() {
        return this.pieces;
    }

    public Rectangle2D getPieceRectangle(Rectangle2D rectangle2D) {
        Piece piece = getPiece(rectangle2D);
        if (piece != null) {
            return piece.getRectangle();
        }
        return new Rectangle2D.Double();
    }

    public Collection<Piece> getPieces() {
        return this.pieces.values();
    }

    public String getText() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<Rectangle2D, Piece> entry : this.pieces.entrySet()) {
            if (sb.length() > 0) {
                sb.append("\n");
            }
            sb.append(entry.getValue().getText());
        }
        return sb.toString();
    }

    public int getTextState() {
        return this.textState;
    }

    public void handleTextCompleted() {
        Iterator<Map.Entry<Rectangle2D, Piece>> it2 = this.pieces.entrySet().iterator();
        int i = 0;
        boolean z = false;
        while (it2.hasNext()) {
            if (it2.next().getValue().getRectangle().isEmpty()) {
                it2.remove();
                z = true;
            }
        }
        if (z) {
            Iterator<Map.Entry<Rectangle2D, Piece>> it3 = this.pieces.entrySet().iterator();
            while (it3.hasNext()) {
                it3.next().getValue().setIndex(i);
                i++;
            }
        }
    }

    public int hashCode() {
        return Objects.hash(this.pieces, Integer.valueOf(this.currentPos));
    }

    public boolean isCompleted() {
        return this.completed.get();
    }

    public boolean isEmpty() {
        return this.pieces.isEmpty();
    }

    public boolean search(SearchOptions searchOptions, List<Selection> list) {
        Iterator<Piece> it2 = getPieces().iterator();
        while (it2.hasNext()) {
            it2.next().search(searchOptions, list);
        }
        return !list.isEmpty();
    }

    public TextSheet setCompleted(boolean z) {
        this.completed.set(z);
        return this;
    }

    public void setCurrentPos(int i) {
        this.currentPos = i;
    }

    public void setTextState(int i) {
        this.textState = i;
    }

    public int size() {
        return this.pieces.size();
    }

    public String toString() {
        return "TextSheet{completed=" + this.completed + ", textState=" + this.textState + ", currentPos=" + this.currentPos + ", text='" + getText() + Chars.QUOTE + '}';
    }

    public TextSheet clone() {
        TextSheet textSheet = new TextSheet();
        textSheet.pieces.putAll(this.pieces);
        textSheet.completed.set(this.completed.get());
        textSheet.currentPos = this.currentPos;
        textSheet.textState = this.textState;
        return textSheet;
    }

    public Piece getPiece(int i) {
        Collection<Piece> values = this.pieces.values();
        if (i >= 0 && i < values.size()) {
            for (Piece piece : values) {
                if (piece.getIndex() == i) {
                    return piece;
                }
            }
        }
        return null;
    }

    public Rectangle2D getPieceRectangle(int i) {
        Piece piece = getPiece(i);
        if (piece != null) {
            return piece.getRectangle();
        }
        return new Rectangle2D.Double();
    }
}
