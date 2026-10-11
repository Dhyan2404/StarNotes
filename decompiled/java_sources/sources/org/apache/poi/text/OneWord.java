package org.apache.poi.text;

import java.awt.geom.Rectangle2D;
import java.util.Objects;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class OneWord {
    private int index;
    private final int pos;
    private final Rectangle2D rectangle;
    private final String text;

    public OneWord(String str, Rectangle2D rectangle2D, int i) {
        this.text = str;
        this.rectangle = rectangle2D;
        this.pos = i;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OneWord oneWord = (OneWord) obj;
        return this.pos == oneWord.pos && this.index == oneWord.index && this.rectangle.equals(oneWord.rectangle) && this.text.equals(oneWord.text);
    }

    public int getIndex() {
        return this.index;
    }

    public int getPos() {
        return this.pos;
    }

    public Rectangle2D getRectangle() {
        return this.rectangle;
    }

    public String getText() {
        return this.text;
    }

    public int hashCode() {
        return Objects.hash(this.text, this.rectangle, Integer.valueOf(this.pos), Integer.valueOf(this.index));
    }

    public int length() {
        return this.text.length();
    }

    public void setIndex(int i) {
        this.index = i;
    }

    public char[] toCharArray() {
        return this.text.toCharArray();
    }

    public String toString() {
        return "OneWord{text='" + this.text + Chars.QUOTE + ", pos=" + this.pos + ", index=" + this.index + '}';
    }
}
