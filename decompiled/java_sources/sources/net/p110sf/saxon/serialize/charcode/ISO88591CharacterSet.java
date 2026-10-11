package net.p110sf.saxon.serialize.charcode;

/* loaded from: classes11.dex */
public class ISO88591CharacterSet implements CharacterSet {

    /* renamed from: a */
    public static final ISO88591CharacterSet f101646a = new ISO88591CharacterSet();

    public static ISO88591CharacterSet getInstance() {
        return f101646a;
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public String getCanonicalName() {
        return "ISO-8859-1";
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public final boolean inCharset(int i) {
        return i <= 255;
    }
}
