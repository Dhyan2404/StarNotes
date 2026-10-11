package com.google.protobuf;

import java.util.Arrays;

/* loaded from: classes6.dex */
public final class TextFormatParseLocation {
    public static final TextFormatParseLocation EMPTY = new TextFormatParseLocation(-1, -1);

    /* renamed from: a */
    public final int f37883a;

    /* renamed from: b */
    public final int f37884b;

    public TextFormatParseLocation(int line, int column) {
        this.f37883a = line;
        this.f37884b = column;
    }

    /* renamed from: a */
    public static TextFormatParseLocation m29583a(int line, int column) {
        if (line == -1 && column == -1) {
            return EMPTY;
        }
        if (line < 0 || column < 0) {
            throw new IllegalArgumentException(String.format("line and column values must be >= 0: line %d, column: %d", Integer.valueOf(line), Integer.valueOf(column)));
        }
        return new TextFormatParseLocation(line, column);
    }

    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof TextFormatParseLocation)) {
            return false;
        }
        TextFormatParseLocation textFormatParseLocation = (TextFormatParseLocation) o;
        return this.f37883a == textFormatParseLocation.getLine() && this.f37884b == textFormatParseLocation.getColumn();
    }

    public int getColumn() {
        return this.f37884b;
    }

    public int getLine() {
        return this.f37883a;
    }

    public int hashCode() {
        return Arrays.hashCode(new int[]{this.f37883a, this.f37884b});
    }

    public String toString() {
        return String.format("ParseLocation{line=%d, column=%d}", Integer.valueOf(this.f37883a), Integer.valueOf(this.f37884b));
    }
}
