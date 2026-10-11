package com.twelvemonkeys.imageio.metadata.psd;

import com.sunia.HTREnginev2.hlk;
import com.sunia.HTREnginev2.ilk;
import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.MetadataReader;
import com.twelvemonkeys.imageio.stream.SubImageInputStream;
import com.twelvemonkeys.lang.StringUtil;
import com.twelvemonkeys.lang.Validate;
import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import javax.imageio.IIOException;
import javax.imageio.stream.ImageInputStream;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class PSDReader extends MetadataReader {

    /* loaded from: classes10.dex */
    public static class PSDResource {

        /* renamed from: a */
        public final short f94056a;

        /* renamed from: b */
        public final String f94057b;

        /* renamed from: c */
        public final long f94058c;

        /* renamed from: d */
        public byte[] f94059d;

        public PSDResource(short s, ImageInputStream imageInputStream) throws IOException {
            this.f94056a = s;
            String m60488a = m60488a(imageInputStream);
            this.f94057b = m60488a;
            if ((m60488a.length() + 1) % 2 != 0) {
                imageInputStream.readByte();
            }
            long readUnsignedInt = imageInputStream.readUnsignedInt();
            this.f94058c = readUnsignedInt;
            long streamPosition = imageInputStream.getStreamPosition();
            readData(new SubImageInputStream(imageInputStream, readUnsignedInt));
            if (imageInputStream.getStreamPosition() != streamPosition + readUnsignedInt) {
                imageInputStream.seek(streamPosition + readUnsignedInt);
            }
            if (readUnsignedInt % 2 != 0) {
                imageInputStream.read();
            }
        }

        /* renamed from: a */
        public static String m60488a(DataInput dataInput) throws IOException {
            int readUnsignedByte = dataInput.readUnsignedByte();
            if (readUnsignedByte == 0) {
                return "";
            }
            byte[] bArr = new byte[readUnsignedByte];
            dataInput.readFully(bArr);
            return StringUtil.decode(bArr, 0, readUnsignedByte, "ASCII");
        }

        public final byte[] data() {
            return this.f94059d;
        }

        /* renamed from: id */
        public final int m60489id() {
            return this.f94056a;
        }

        public String name() {
            return this.f94057b;
        }

        public void readData(ImageInputStream imageInputStream) throws IOException {
            byte[] bArr = new byte[(int) this.f94058c];
            this.f94059d = bArr;
            imageInputStream.readFully(bArr);
        }

        public String toString() {
            StringBuilder stringBuilder = toStringBuilder();
            stringBuilder.append(", data length: ");
            stringBuilder.append(this.f94058c);
            stringBuilder.append(IteratorUtils.f104924b);
            return stringBuilder.toString();
        }

        public StringBuilder toStringBuilder() {
            StringBuilder sb = new StringBuilder(getClass().getSimpleName());
            sb.append("[ID: 0x");
            sb.append(Integer.toHexString(this.f94056a));
            String str = this.f94057b;
            if (str != null && str.trim().length() != 0) {
                sb.append(", name: \"");
                sb.append(this.f94057b);
                sb.append("\"");
            }
            return sb;
        }
    }

    @Override // com.twelvemonkeys.imageio.metadata.MetadataReader
    public Directory read(ImageInputStream imageInputStream) throws IOException {
        int readInt;
        Validate.notNull(imageInputStream, "input");
        ArrayList arrayList = new ArrayList();
        while (true) {
            try {
                readInt = imageInputStream.readInt();
                if (readInt != 943868237) {
                    break;
                }
                short readShort = imageInputStream.readShort();
                PSDResource pSDResource = new PSDResource(readShort, imageInputStream);
                arrayList.add(new ilk(readShort, pSDResource.name(), pSDResource.data()));
            } catch (EOFException unused) {
                return new hlk(arrayList);
            }
        }
        throw new IIOException(String.format("Wrong image resource type, expected '8BIM': '%08x'", Integer.valueOf(readInt)));
    }
}
