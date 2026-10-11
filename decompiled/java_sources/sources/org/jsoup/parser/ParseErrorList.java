package org.jsoup.parser;

import java.util.ArrayList;

/* loaded from: classes13.dex */
public class ParseErrorList extends ArrayList<ParseError> {

    /* renamed from: a */
    private static final int f114158a = 16;

    /* renamed from: b */
    private final int f114159b;

    public ParseErrorList(int i, int i2) {
        super(i);
        this.f114159b = i2;
    }

    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }

    public static ParseErrorList tracking(int i) {
        return new ParseErrorList(16, i);
    }

    public boolean canAddError() {
        return size() < this.f114159b;
    }

    public int getMaxSize() {
        return this.f114159b;
    }
}
