package org.apache.commons.text.matcher;

import org.apache.commons.text.matcher.AbstractC19330a;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes12.dex */
public final class StringMatcherFactory {
    public static final StringMatcherFactory INSTANCE = new StringMatcherFactory();

    /* renamed from: a */
    public static final AbstractC19330a.b f110037a = new AbstractC19330a.b(" \t\n\r\f".toCharArray());

    /* renamed from: b */
    public static final AbstractC19330a.a f110038b = new AbstractC19330a.a(',');

    /* renamed from: c */
    public static final AbstractC19330a.a f110039c = new AbstractC19330a.a('\t');

    /* renamed from: d */
    public static final AbstractC19330a.a f110040d = new AbstractC19330a.a(' ');

    /* renamed from: e */
    public static final AbstractC19330a.e f110041e = new AbstractC19330a.e();

    /* renamed from: f */
    public static final AbstractC19330a.a f110042f = new AbstractC19330a.a(Chars.QUOTE);

    /* renamed from: g */
    public static final AbstractC19330a.a f110043g = new AbstractC19330a.a('\"');

    /* renamed from: h */
    public static final AbstractC19330a.b f110044h = new AbstractC19330a.b("'\"".toCharArray());

    /* renamed from: i */
    public static final AbstractC19330a.c f110045i = new AbstractC19330a.c();

    public StringMatcher charMatcher(char c) {
        return new AbstractC19330a.a(c);
    }

    public StringMatcher charSetMatcher(char... cArr) {
        if (cArr != null && cArr.length != 0) {
            if (cArr.length == 1) {
                return new AbstractC19330a.a(cArr[0]);
            }
            return new AbstractC19330a.b(cArr);
        }
        return f110045i;
    }

    public StringMatcher commaMatcher() {
        return f110038b;
    }

    public StringMatcher doubleQuoteMatcher() {
        return f110043g;
    }

    public StringMatcher noneMatcher() {
        return f110045i;
    }

    public StringMatcher quoteMatcher() {
        return f110044h;
    }

    public StringMatcher singleQuoteMatcher() {
        return f110042f;
    }

    public StringMatcher spaceMatcher() {
        return f110040d;
    }

    public StringMatcher splitMatcher() {
        return f110037a;
    }

    public StringMatcher stringMatcher(String str) {
        return (str == null || str.length() == 0) ? f110045i : new AbstractC19330a.d(str);
    }

    public StringMatcher tabMatcher() {
        return f110039c;
    }

    public StringMatcher trimMatcher() {
        return f110041e;
    }

    public StringMatcher charSetMatcher(String str) {
        if (str != null && str.length() != 0) {
            if (str.length() == 1) {
                return new AbstractC19330a.a(str.charAt(0));
            }
            return new AbstractC19330a.b(str.toCharArray());
        }
        return f110045i;
    }
}
