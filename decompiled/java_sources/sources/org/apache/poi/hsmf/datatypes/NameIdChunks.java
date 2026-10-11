package org.apache.poi.hsmf.datatypes;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.function.Consumer;
import org.apache.commons.codec.digest.PureJavaCrc32;
import org.apache.poi.hpsf.ClassID;
import org.apache.poi.hsmf.datatypes.NameIdChunks;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianByteArrayInputStream;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public final class NameIdChunks implements ChunkGroup {
    public static final String NAME = "__nameid_version1.0";
    private List<Chunk> allChunks = new ArrayList();
    private ByteChunk entryStream;
    private ByteChunk guidStream;
    private ByteChunk stringStream;

    /* loaded from: classes12.dex */
    public enum PredefinedPropertySet {
        PSETID_COMMON("00062008-0000-0000-C000-000000000046"),
        PSETID_ADDRESS("00062004-0000-0000-C000-000000000046"),
        PSETID_APPOINTMENT("00062002-0000-0000-C000-000000000046"),
        PSETID_MEETING("6ED8DA90-450B-101B-98DA-00AA003F1305"),
        PSETID_LOG("0006200A-0000-0000-C000-000000000046"),
        PSETID_MESSAGING("41F28F13-83F4-4114-A584-EEDB5A6B0BFF"),
        PSETID_NOTE("0006200E-0000-0000-C000-000000000046"),
        PSETID_POST_RSS("00062041-0000-0000-C000-000000000046"),
        PSETID_TASK("00062003-0000-0000-C000-000000000046"),
        PSETID_UNIFIED_MESSAGING("4442858E-A9E3-4E80-B900-317A210CC15B"),
        PSETID_AIR_SYNC("71035549-0739-4DCB-9163-00F0580DBBDF"),
        PSETID_SHARING("00062040-0000-0000-C000-000000000046"),
        PSETID_XML_EXTRACTED_ENTITIES("23239608-685D-4732-9C55-4C95CB4E8E33"),
        PSETID_ATTACHMENT("96357F7F-59E1-47D0-99A7-46515C183B54");

        private final ClassID classID;

        PredefinedPropertySet(String str) {
            this.classID = new ClassID(str);
        }

        public ClassID getClassID() {
            return this.classID;
        }
    }

    /* loaded from: classes12.dex */
    public enum PropertySetType {
        PS_MAPI("00020328-0000-0000-C000-000000000046"),
        PS_PUBLIC_STRINGS("00020329-0000-0000-C000-000000000046"),
        PS_INTERNET_HEADERS("00020386-0000-0000-C000-000000000046");

        private final ClassID classID;

        PropertySetType(String str) {
            this.classID = new ClassID(str);
        }

        public ClassID getClassID() {
            return this.classID;
        }
    }

    private static long calculateCRC32(byte[] bArr, int i, int i2) {
        PureJavaCrc32 pureJavaCrc32 = new PureJavaCrc32();
        pureJavaCrc32.update(new byte[]{-1, -1, -1, -1}, 0, 4);
        pureJavaCrc32.update(bArr, i, i2);
        return (~pureJavaCrc32.getValue()) & 4294967295L;
    }

    private ClassID getPropertyGUID(int i) {
        if (i == 1) {
            return PropertySetType.PS_MAPI.classID;
        }
        if (i == 2) {
            return PropertySetType.PS_PUBLIC_STRINGS.classID;
        }
        if (i < 3) {
            return null;
        }
        byte[] value = this.guidStream.getValue();
        int i2 = (i - 3) * 16;
        if (value.length >= i2 + 16) {
            return new ClassID(value, i2);
        }
        return null;
    }

    private long getStreamID(int i, int i2, ClassID classID, int i3, Consumer<String> consumer, Consumer<Long> consumer2) {
        long j;
        long j2;
        if (i == 0) {
            j2 = ((i3 << 1) ^ i2) % 31;
        } else {
            byte[] value = this.stringStream.getValue();
            if (value.length > i2) {
                long uInt = LittleEndian.getUInt(value, i2);
                int i4 = i2 + 4;
                if (value.length >= i4 + uInt) {
                    int i5 = (int) uInt;
                    Charset charset = StringUtil.UTF16LE;
                    String str = new String(value, i4, i5, charset);
                    if (PropertySetType.PS_INTERNET_HEADERS.classID.equals(classID)) {
                        byte[] bytes = str.toLowerCase(Locale.ROOT).getBytes(charset);
                        j = calculateCRC32(bytes, 0, bytes.length);
                    } else {
                        j = calculateCRC32(value, i4, i5);
                    }
                    consumer.accept(str);
                    consumer2.accept(Long.valueOf(j));
                    j2 = (((i3 << 1) | 1) ^ j) % 31;
                }
            }
            j = -1;
            j2 = (((i3 << 1) | 1) ^ j) % 31;
        }
        return j2 + 4096;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getPropertyTag$0(String[] strArr, String str) {
        strArr[0] = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getPropertyTag$1(long[] jArr, Long l) {
        jArr[0] = l.longValue();
    }

    private static boolean matchesProperty(int i, long j, String str, String str2, long j2) {
        if (i == 0 && j2 >= 0 && j2 == j) {
            return true;
        }
        return i == 1 && str != null && str.equals(str2);
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void chunksComplete() {
    }

    public Chunk[] getAll() {
        return (Chunk[]) this.allChunks.toArray(new Chunk[0]);
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public Chunk[] getChunks() {
        return getAll();
    }

    public long getPropertyTag(ClassID classID, String str, long j) {
        ByteChunk byteChunk = this.entryStream;
        String str2 = null;
        byte[] value = byteChunk == null ? null : byteChunk.getValue();
        if (this.guidStream == null || this.entryStream == null || this.stringStream == null || classID == null || value == null) {
            return 0L;
        }
        LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(value);
        int i = 0;
        while (i < value.length / 8) {
            long readUInt = littleEndianByteArrayInputStream.readUInt();
            int readUShort = littleEndianByteArrayInputStream.readUShort();
            int i2 = readUShort & 1;
            int i3 = readUShort >>> 1;
            int readUShort2 = littleEndianByteArrayInputStream.readUShort();
            if (classID.equals(getPropertyGUID(i3))) {
                final String[] strArr = {str2};
                final long[] jArr = {-1};
                long streamID = getStreamID(i2, (int) readUInt, classID, i3, new Consumer() { // from class: com.sunia.HTREnginev2.orj
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        NameIdChunks.lambda$getPropertyTag$0(strArr, (String) obj);
                    }
                }, new Consumer() { // from class: com.sunia.HTREnginev2.prj
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        NameIdChunks.lambda$getPropertyTag$1(jArr, (Long) obj);
                    }
                });
                if (matchesProperty(i2, readUInt, str, strArr[0], j)) {
                    return (i2 != 1 || jArr[0] >= 0) ? getPropertyTag(streamID, readUInt, jArr[0]) : readUShort2 + 32768;
                }
            }
            i++;
            str2 = null;
        }
        return 0L;
    }

    @Override // org.apache.poi.hsmf.datatypes.ChunkGroup
    public void record(Chunk chunk) {
        if (chunk.getType() == Types.BINARY) {
            int chunkId = chunk.getChunkId();
            if (chunkId == 2) {
                this.guidStream = (ByteChunk) chunk;
            } else if (chunkId == 3) {
                this.entryStream = (ByteChunk) chunk;
            } else if (chunkId == 4) {
                this.stringStream = (ByteChunk) chunk;
            }
        }
        this.allChunks.add(chunk);
    }

    private long getPropertyTag(long j, long j2, long j3) {
        byte[] value;
        for (Chunk chunk : this.allChunks) {
            if (chunk.getType() == Types.BINARY && chunk.getChunkId() == j && (value = ((ByteChunk) chunk).getValue()) != null) {
                LittleEndianByteArrayInputStream littleEndianByteArrayInputStream = new LittleEndianByteArrayInputStream(value);
                for (int i = 0; i < value.length / 8; i++) {
                    long readUInt = littleEndianByteArrayInputStream.readUInt();
                    int readUShort = littleEndianByteArrayInputStream.readUShort();
                    int readUShort2 = littleEndianByteArrayInputStream.readUShort();
                    if (readUInt == ((readUShort & 1) == 0 ? j2 : j3)) {
                        return readUShort2 + 32768;
                    }
                }
            }
        }
        return 0L;
    }
}
