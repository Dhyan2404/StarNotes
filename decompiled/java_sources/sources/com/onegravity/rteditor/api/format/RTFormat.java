package com.onegravity.rteditor.api.format;

/* loaded from: classes7.dex */
public abstract class RTFormat {
    public static final Spanned SPANNED = new Spanned();
    public static final PlainText PLAIN_TEXT = new PlainText();
    public static final Html HTML = new Html();

    /* loaded from: classes7.dex */
    public static class Html extends RTFormat {
        public boolean removeTrailingWhiteSpace = true;
    }

    /* loaded from: classes7.dex */
    public static class PlainText extends RTFormat {
    }

    /* loaded from: classes7.dex */
    public static class Spanned extends RTFormat {
    }
}
