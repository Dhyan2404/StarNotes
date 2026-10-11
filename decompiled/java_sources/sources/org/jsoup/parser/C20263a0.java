package org.jsoup.parser;

import org.jsoup.parser.Token;

/* renamed from: org.jsoup.parser.a0 */
/* loaded from: classes13.dex */
public /* synthetic */ class C20263a0 {

    /* renamed from: a */
    public static final /* synthetic */ int[] f114272a;

    static {
        int[] iArr = new int[Token.TokenType.values().length];
        f114272a = iArr;
        try {
            iArr[Token.TokenType.StartTag.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f114272a[Token.TokenType.EndTag.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f114272a[Token.TokenType.Comment.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f114272a[Token.TokenType.Character.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f114272a[Token.TokenType.Doctype.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f114272a[Token.TokenType.EOF.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
