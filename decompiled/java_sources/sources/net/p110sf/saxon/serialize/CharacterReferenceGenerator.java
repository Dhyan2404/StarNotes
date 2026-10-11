package net.p110sf.saxon.serialize;

import java.io.IOException;
import net.p110sf.saxon.str.UnicodeWriter;

/* loaded from: classes11.dex */
public interface CharacterReferenceGenerator {
    void outputCharacterReference(int i, UnicodeWriter unicodeWriter) throws IOException;
}
