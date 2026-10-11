package com.google.gson;

import com.bumptech.glide.load.engine.GlideException;
import java.util.Objects;

/* loaded from: classes6.dex */
public class FormattingStyle {
    public static final FormattingStyle COMPACT = new FormattingStyle("", "", false);
    public static final FormattingStyle PRETTY = new FormattingStyle("\n", GlideException.C1935a.f14609h, true);

    /* renamed from: a */
    public final String f36044a;

    /* renamed from: b */
    public final String f36045b;

    /* renamed from: c */
    public final boolean f36046c;

    public FormattingStyle(String str, String str2, boolean z) {
        Objects.requireNonNull(str, "newline == null");
        Objects.requireNonNull(str2, "indent == null");
        if (!str.matches("[\r\n]*")) {
            throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
        }
        if (!str2.matches("[ \t]*")) {
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        this.f36044a = str;
        this.f36045b = str2;
        this.f36046c = z;
    }

    public String getIndent() {
        return this.f36045b;
    }

    public String getNewline() {
        return this.f36044a;
    }

    public boolean usesSpaceAfterSeparators() {
        return this.f36046c;
    }

    public FormattingStyle withIndent(String str) {
        return new FormattingStyle(this.f36044a, str, this.f36046c);
    }

    public FormattingStyle withNewline(String str) {
        return new FormattingStyle(str, this.f36045b, this.f36046c);
    }

    public FormattingStyle withSpaceAfterSeparators(boolean z) {
        return new FormattingStyle(this.f36044a, this.f36045b, z);
    }
}
