package com.twelvemonkeys.imageio.metadata.iptc;

import com.google.zxing.common.StringUtils;
import com.sunia.HTREnginev2.yfi;
import com.sunia.HTREnginev2.zfi;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.MetadataReader;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;
import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.lang.Validate;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.LinkedHashMap;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public final class IPTCReader extends MetadataReader {

    /* renamed from: b */
    public static final int f94049b = -1;

    /* renamed from: c */
    public static final int f94050c = 0;

    /* renamed from: d */
    public static final int f94051d = 1779015;

    /* renamed from: a */
    public int f94052a = 0;

    /* renamed from: a */
    public final zfi m60474a(short s, Object obj, Entry entry) {
        Object[] objArr;
        Object[] objArr2 = entry != null ? (Object[]) entry.getValue() : null;
        if (obj instanceof String) {
            if (objArr2 == null) {
                objArr = new String[]{(String) obj};
            } else {
                String[] strArr = (String[]) objArr2;
                Object[] copyOf = Arrays.copyOf(strArr, strArr.length + 1);
                copyOf[copyOf.length - 1] = obj;
                objArr = copyOf;
            }
        } else if (objArr2 == null) {
            objArr = new Object[]{obj};
        } else {
            Object[] copyOf2 = Arrays.copyOf(objArr2, objArr2.length + 1);
            copyOf2[copyOf2.length - 1] = obj;
            objArr = copyOf2;
        }
        return new zfi(s, objArr);
    }

    /* renamed from: b */
    public final int m60475b(ImageInputStream imageInputStream, int i) throws IOException {
        if (i == 3 && ((imageInputStream.readUnsignedByte() << 16) | (imageInputStream.readUnsignedByte() << 8) | imageInputStream.readUnsignedByte()) == 1779015) {
            return f94051d;
        }
        return -1;
    }

    /* renamed from: c */
    public final String m60476c(ImageInputStream imageInputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        imageInputStream.readFully(bArr);
        try {
            return Charset.forName("UTF-8").newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bArr)).toString();
        } catch (CharacterCodingException e) {
            if (this.f94052a != 1779015) {
                return StringUtil.decode(bArr, 0, i, StringUtils.f38416d);
            }
            throw new IIOException("Wrong encoding of IPTC data, explicitly set to UTF-8 in DataSet 1:90", e);
        }
    }

    /* renamed from: d */
    public final zfi m60477d(ImageInputStream imageInputStream, short s, int i, boolean z, Entry entry) throws IOException {
        Object obj = null;
        if (s == 346) {
            this.f94052a = m60475b(imageInputStream, i);
            return null;
        }
        if (s == 512) {
            obj = Integer.valueOf(imageInputStream.readUnsignedShort());
        } else if ((65280 & s) != 512) {
            byte[] bArr = new byte[i];
            imageInputStream.readFully(bArr);
            obj = bArr;
        } else if (i >= 1) {
            obj = m60476c(imageInputStream, i);
        }
        return z ? m60474a(s, obj, entry) : new zfi(s, obj);
    }

    @Override // com.twelvemonkeys.imageio.metadata.MetadataReader
    public Directory read(ImageInputStream imageInputStream) throws IOException {
        Validate.notNull(imageInputStream, "input");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (imageInputStream.read() == 28) {
            short readShort = imageInputStream.readShort();
            int readUnsignedShort = imageInputStream.readUnsignedShort();
            boolean m60473a = IPTC.Tags.m60473a(readShort);
            zfi m60477d = m60477d(imageInputStream, readShort, readUnsignedShort, m60473a, m60473a ? (Entry) linkedHashMap.get(Short.valueOf(readShort)) : null);
            if (m60477d != null) {
                linkedHashMap.put(Short.valueOf(readShort), m60477d);
            }
        }
        return new yfi(linkedHashMap.values());
    }
}
