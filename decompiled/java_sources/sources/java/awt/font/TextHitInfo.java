package java.awt.font;

import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
public final class TextHitInfo {
    private int charIndex;
    private boolean isLeadingEdge;

    private TextHitInfo(int i, boolean z) {
        this.charIndex = i;
        this.isLeadingEdge = z;
    }

    public static TextHitInfo afterOffset(int i) {
        return new TextHitInfo(i, true);
    }

    public static TextHitInfo beforeOffset(int i) {
        return new TextHitInfo(i - 1, false);
    }

    public static TextHitInfo leading(int i) {
        return new TextHitInfo(i, true);
    }

    public static TextHitInfo trailing(int i) {
        return new TextHitInfo(i, false);
    }

    public boolean equals(Object obj) {
        return (obj instanceof TextHitInfo) && equals((TextHitInfo) obj);
    }

    public int getCharIndex() {
        return this.charIndex;
    }

    public int getInsertionIndex() {
        boolean z = this.isLeadingEdge;
        int i = this.charIndex;
        return z ? i : i + 1;
    }

    public TextHitInfo getOffsetHit(int i) {
        return new TextHitInfo(this.charIndex + i, this.isLeadingEdge);
    }

    public TextHitInfo getOtherHit() {
        return this.isLeadingEdge ? trailing(this.charIndex - 1) : leading(this.charIndex + 1);
    }

    public int hashCode() {
        return this.charIndex;
    }

    public boolean isLeadingEdge() {
        return this.isLeadingEdge;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TextHitInfo[");
        sb.append(this.charIndex);
        sb.append(this.isLeadingEdge ? "L" : "T");
        sb.append(IteratorUtils.f104924b);
        return sb.toString();
    }

    public boolean equals(TextHitInfo textHitInfo) {
        return textHitInfo != null && this.charIndex == textHitInfo.charIndex && this.isLeadingEdge == textHitInfo.isLeadingEdge;
    }
}
