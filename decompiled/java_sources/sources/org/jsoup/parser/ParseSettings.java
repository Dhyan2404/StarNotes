package org.jsoup.parser;

import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Attributes;

/* loaded from: classes13.dex */
public class ParseSettings {
    public static final ParseSettings htmlDefault = new ParseSettings(false, false);
    public static final ParseSettings preserveCase = new ParseSettings(true, true);

    /* renamed from: a */
    public final boolean f114160a;

    /* renamed from: b */
    public final boolean f114161b;

    /* renamed from: c */
    public boolean f114162c = true;

    public ParseSettings(boolean z, boolean z2) {
        this.f114160a = z;
        this.f114161b = z2;
    }

    /* renamed from: a */
    public Attributes m71277a(Attributes attributes) {
        if (attributes != null && !this.f114161b) {
            attributes.normalize();
        }
        return attributes;
    }

    public boolean formatElement() {
        return this.f114162c;
    }

    public String normalizeAttribute(String str) {
        String trim = str.trim();
        return !this.f114161b ? Normalizer.lowerCase(trim) : trim;
    }

    public String normalizeTag(String str) {
        String trim = str.trim();
        return !this.f114160a ? Normalizer.lowerCase(trim) : trim;
    }

    public boolean preserveAttributeCase() {
        return this.f114161b;
    }

    public boolean preserveTagCase() {
        return this.f114160a;
    }

    public void setFormatElement(boolean z) {
        this.f114162c = z;
    }
}
