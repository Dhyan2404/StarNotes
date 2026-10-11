package com.squareup.okhttp;

import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes9.dex */
public final class MediaType {

    /* renamed from: e */
    public static final String f63551e = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";

    /* renamed from: f */
    public static final String f63552f = "\"([^\"]*)\"";

    /* renamed from: g */
    public static final Pattern f63553g = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: h */
    public static final Pattern f63554h = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: a */
    public final String f63555a;

    /* renamed from: b */
    public final String f63556b;

    /* renamed from: c */
    public final String f63557c;

    /* renamed from: d */
    public final String f63558d;

    public MediaType(String str, String str2, String str3, String str4) {
        this.f63555a = str;
        this.f63556b = str2;
        this.f63557c = str3;
        this.f63558d = str4;
    }

    public static MediaType parse(String str) {
        Matcher matcher = f63553g.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String group = matcher.group(1);
        Locale locale = Locale.US;
        String lowerCase = group.toLowerCase(locale);
        String lowerCase2 = matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = f63554h.matcher(str);
        String str2 = null;
        for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group2 = matcher2.group(1);
            if (group2 != null && group2.equalsIgnoreCase("charset")) {
                String group3 = matcher2.group(2) != null ? matcher2.group(2) : matcher2.group(3);
                if (str2 != null && !group3.equalsIgnoreCase(str2)) {
                    throw new IllegalArgumentException("Multiple different charsets: " + str);
                }
                str2 = group3;
            }
        }
        return new MediaType(str, lowerCase, lowerCase2, str2);
    }

    public Charset charset() {
        String str = this.f63558d;
        if (str != null) {
            return Charset.forName(str);
        }
        return null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MediaType) && ((MediaType) obj).f63555a.equals(this.f63555a);
    }

    public int hashCode() {
        return this.f63555a.hashCode();
    }

    public String subtype() {
        return this.f63557c;
    }

    public String toString() {
        return this.f63555a;
    }

    public String type() {
        return this.f63556b;
    }

    public Charset charset(Charset charset) {
        String str = this.f63558d;
        return str != null ? Charset.forName(str) : charset;
    }
}
