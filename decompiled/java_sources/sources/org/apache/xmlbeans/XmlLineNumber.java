package org.apache.xmlbeans;

import org.apache.xmlbeans.XmlCursor;

/* loaded from: classes13.dex */
public class XmlLineNumber extends XmlCursor.XmlBookmark {
    private int _column;
    private int _line;
    private int _offset;

    public XmlLineNumber(int i) {
        this(i, -1, -1);
    }

    public int getColumn() {
        return this._column;
    }

    public int getLine() {
        return this._line;
    }

    public int getOffset() {
        return this._offset;
    }

    public XmlLineNumber(int i, int i2) {
        this(i, i2, -1);
    }

    public XmlLineNumber(int i, int i2, int i3) {
        super(false);
        this._line = i;
        this._column = i2;
        this._offset = i3;
    }
}
