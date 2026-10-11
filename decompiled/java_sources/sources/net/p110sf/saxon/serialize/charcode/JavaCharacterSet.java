package net.p110sf.saxon.serialize.charcode;

import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.HashMap;

/* loaded from: classes11.dex */
public class JavaCharacterSet implements CharacterSet {

    /* renamed from: c */
    public static final byte f101647c = 1;

    /* renamed from: d */
    public static final byte f101648d = 2;
    public static HashMap<Charset, JavaCharacterSet> map;

    /* renamed from: a */
    public final CharsetEncoder f101649a;

    /* renamed from: b */
    public final byte[] f101650b = new byte[65536];

    public JavaCharacterSet(Charset charset) {
        this.f101649a = charset.newEncoder();
    }

    public static synchronized JavaCharacterSet makeCharSet(Charset charset) {
        JavaCharacterSet javaCharacterSet;
        synchronized (JavaCharacterSet.class) {
            if (map == null) {
                map = new HashMap<>(10);
            }
            javaCharacterSet = map.get(charset);
            if (javaCharacterSet == null) {
                javaCharacterSet = new JavaCharacterSet(charset);
                map.put(charset, javaCharacterSet);
            }
        }
        return javaCharacterSet;
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public String getCanonicalName() {
        return this.f101649a.charset().name();
    }

    @Override // net.p110sf.saxon.serialize.charcode.CharacterSet
    public final boolean inCharset(int i) {
        if (i <= 127) {
            return true;
        }
        if (i > 65535) {
            return this.f101649a.canEncode(CharBuffer.wrap(new char[]{UTF16CharacterSet.highSurrogate(i), UTF16CharacterSet.lowSurrogate(i)}));
        }
        byte b = this.f101650b[i];
        if (b == 1) {
            return true;
        }
        if (b == 2) {
            return false;
        }
        if (this.f101649a.canEncode((char) i)) {
            this.f101650b[i] = 1;
            return true;
        }
        this.f101650b[i] = 2;
        return false;
    }
}
