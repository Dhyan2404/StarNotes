package com.onegravity.rteditor.utils;

import android.text.Spanned;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes7.dex */
public class RTLayout implements Serializable {
    private static final Pattern LINEBREAK_PATTERN = Pattern.compile("\\r\\n|\\n");
    private static final long serialVersionUID = 2210969820444215580L;
    private int mNrOfLines;
    private final ArrayList<Paragraph> mParagraphs = new ArrayList<>();

    public RTLayout(Spanned spanned) {
        this.mNrOfLines = 0;
        if (spanned != null) {
            String obj = spanned.toString();
            this.mNrOfLines = 1;
            Matcher matcher = LINEBREAK_PATTERN.matcher(obj);
            int i = 0;
            while (matcher.find()) {
                this.mParagraphs.add(new Paragraph(i, matcher.end(), this.mNrOfLines == 1, false));
                i = matcher.end();
                this.mNrOfLines++;
            }
            if (this.mParagraphs.size() < this.mNrOfLines) {
                this.mParagraphs.add(new Paragraph(i, obj.length(), this.mNrOfLines == 1, true));
            }
        }
    }

    public int getLineEnd(int i) {
        int i2 = this.mNrOfLines;
        if (i2 == 0 || i < 0) {
            return 0;
        }
        return i < i2 ? this.mParagraphs.get(i).end() : this.mParagraphs.get(i2 - 1).end() - 1;
    }

    public int getLineForOffset(int i) {
        int i2 = 0;
        while (i2 < this.mNrOfLines && i >= this.mParagraphs.get(i2).end()) {
            i2++;
        }
        return Math.min(Math.max(0, i2), this.mParagraphs.size() - 1);
    }

    public int getLineStart(int i) {
        int i2 = this.mNrOfLines;
        if (i2 == 0 || i < 0) {
            return 0;
        }
        return i < i2 ? this.mParagraphs.get(i).start() : this.mParagraphs.get(i2 - 1).end() - 1;
    }

    public ArrayList<Paragraph> getParagraphs() {
        return this.mParagraphs;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<Paragraph> it2 = this.mParagraphs.iterator();
        int i = 1;
        while (it2.hasNext()) {
            Paragraph next = it2.next();
            int i2 = i + 1;
            sb.append(i);
            sb.append(": ");
            sb.append(next.start());
            sb.append("-");
            sb.append(next.end());
            sb.append(next.isLast() ? "" : ", ");
            i = i2;
        }
        return sb.toString();
    }
}
