package org.jsoup.parser;

import org.jsoup.parser.Token;

/* renamed from: org.jsoup.parser.b0 */
/* loaded from: classes13.dex */
public /* synthetic */ class C20290b0 {

    /* renamed from: a */
    public static final /* synthetic */ int[] f114349a;

    static {
        int[] iArr = new int[Token.TokenType.values().length];
        f114349a = iArr;
        try {
            iArr[Token.TokenType.Comment.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f114349a[Token.TokenType.Doctype.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f114349a[Token.TokenType.StartTag.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f114349a[Token.TokenType.EndTag.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f114349a[Token.TokenType.Character.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f114349a[Token.TokenType.EOF.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
