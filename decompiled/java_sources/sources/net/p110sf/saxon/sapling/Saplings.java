package net.p110sf.saxon.sapling;

import net.p110sf.saxon.s9api.QName;

/* loaded from: classes11.dex */
public class Saplings {
    public static SaplingComment comment(String str) {
        return new SaplingComment(str);
    }

    public static SaplingDocument doc() {
        return new SaplingDocument();
    }

    public static SaplingElement elem(String str) {
        return new SaplingElement(str);
    }

    /* renamed from: pi */
    public static SaplingProcessingInstruction m63804pi(String str, String str2) {
        return new SaplingProcessingInstruction(str, str2);
    }

    public static SaplingText text(String str) {
        return new SaplingText(str);
    }

    public static SaplingDocument doc(String str) {
        return new SaplingDocument(str);
    }

    public static SaplingElement elem(QName qName) {
        return new SaplingElement(qName);
    }
}
