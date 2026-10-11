package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8Old;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.StandardCharsets;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class Utf8Old extends Utf8 {

    /* renamed from: b */
    public static final ThreadLocal<C1052a> f7120b = ThreadLocal.withInitial(new Supplier() { // from class: com.sunia.HTREnginev2.zyn
        @Override // java.util.function.Supplier
        public final Object get() {
            Utf8Old.C1052a m4377b;
            m4377b = Utf8Old.m4377b();
            return m4377b;
        }
    });

    /* renamed from: androidx.emoji2.text.flatbuffer.Utf8Old$a */
    /* loaded from: classes3.dex */
    public static class C1052a {

        /* renamed from: c */
        public CharSequence f7123c = null;

        /* renamed from: d */
        public ByteBuffer f7124d = null;

        /* renamed from: a */
        public final CharsetEncoder f7121a = StandardCharsets.UTF_8.newEncoder();

        /* renamed from: b */
        public final CharsetDecoder f7122b = StandardCharsets.UTF_8.newDecoder();
    }

    /* renamed from: b */
    public static /* synthetic */ C1052a m4377b() {
        return new C1052a();
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) {
        CharsetDecoder charsetDecoder = f7120b.get().f7122b;
        charsetDecoder.reset();
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(i);
        duplicate.limit(i + i2);
        try {
            return charsetDecoder.decode(duplicate).toString();
        } catch (CharacterCodingException e) {
            throw new IllegalArgumentException("Bad encoding", e);
        }
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        C1052a c1052a = f7120b.get();
        if (c1052a.f7123c != charSequence) {
            encodedLength(charSequence);
        }
        byteBuffer.put(c1052a.f7124d);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        C1052a c1052a = f7120b.get();
        int length = (int) (charSequence.length() * c1052a.f7121a.maxBytesPerChar());
        ByteBuffer byteBuffer = c1052a.f7124d;
        if (byteBuffer == null || byteBuffer.capacity() < length) {
            c1052a.f7124d = ByteBuffer.allocate(Math.max(128, length));
        }
        c1052a.f7124d.clear();
        c1052a.f7123c = charSequence;
        CoderResult encode = c1052a.f7121a.encode(charSequence instanceof CharBuffer ? (CharBuffer) charSequence : CharBuffer.wrap(charSequence), c1052a.f7124d, true);
        if (encode.isError()) {
            try {
                encode.throwException();
            } catch (CharacterCodingException e) {
                throw new IllegalArgumentException("bad character encoding", e);
            }
        }
        c1052a.f7124d.flip();
        return c1052a.f7124d.remaining();
    }
}
