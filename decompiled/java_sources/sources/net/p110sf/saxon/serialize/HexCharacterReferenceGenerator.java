package net.p110sf.saxon.serialize;

import java.io.IOException;
import net.p110sf.saxon.str.UnicodeWriter;

/* loaded from: classes11.dex */
public class HexCharacterReferenceGenerator implements CharacterReferenceGenerator {
    public static final HexCharacterReferenceGenerator THE_INSTANCE = new HexCharacterReferenceGenerator();

    @Override // net.p110sf.saxon.serialize.CharacterReferenceGenerator
    public void outputCharacterReference(int i, UnicodeWriter unicodeWriter) throws IOException {
        unicodeWriter.writeCodePoint(38);
        unicodeWriter.writeCodePoint(35);
        unicodeWriter.writeCodePoint(120);
        unicodeWriter.write(Integer.toHexString(i));
        unicodeWriter.writeCodePoint(59);
    }
}
