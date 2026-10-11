package com.google.android.exoplayer2.metadata.icy;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataInputBuffer;
import com.google.android.exoplayer2.metadata.SimpleMetadataDecoder;
import com.google.common.base.Ascii;
import com.google.common.base.Charsets;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes5.dex */
public final class IcyDecoder extends SimpleMetadataDecoder {

    /* renamed from: c */
    public static final Pattern f24875c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: d */
    public static final String f24876d = "streamtitle";

    /* renamed from: e */
    public static final String f24877e = "streamurl";

    /* renamed from: a */
    public final CharsetDecoder f24878a = Charsets.UTF_8.newDecoder();

    /* renamed from: b */
    public final CharsetDecoder f24879b = Charsets.ISO_8859_1.newDecoder();

    @Nullable
    /* renamed from: a */
    public final String m19348a(ByteBuffer byteBuffer) {
        try {
            return this.f24878a.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                String charBuffer = this.f24879b.decode(byteBuffer).toString();
                this.f24879b.reset();
                byteBuffer.rewind();
                return charBuffer;
            } catch (CharacterCodingException unused2) {
                this.f24879b.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th) {
                this.f24879b.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            this.f24878a.reset();
            byteBuffer.rewind();
        }
    }

    @Override // com.google.android.exoplayer2.metadata.SimpleMetadataDecoder
    public Metadata decode(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        String m19348a = m19348a(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (m19348a == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f24875c.matcher(m19348a);
        String str2 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String lowerCase = Ascii.toLowerCase(group);
                lowerCase.hashCode();
                if (lowerCase.equals(f24877e)) {
                    str2 = group2;
                } else if (lowerCase.equals(f24876d)) {
                    str = group2;
                }
            }
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}
