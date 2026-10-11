package net.p110sf.saxon.serialize.charcode;

/* loaded from: classes11.dex */
public class ASCIICharacterSet implements CharacterSet {
    public static final ASCIICharacterSet theInstance = new ASCIICharacterSet();

    public static ASCIICharacterSet getInstance() {
        return theInstance;
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public String getCanonicalName() {
        return "US-ASCII";
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public final boolean inCharset(int i) {
        return i <= 127;
    }
}
