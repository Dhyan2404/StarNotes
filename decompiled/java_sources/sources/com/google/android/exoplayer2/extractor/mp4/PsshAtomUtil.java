package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.nio.ByteBuffer;
import java.util.UUID;

/* loaded from: classes5.dex */
public final class PsshAtomUtil {

    /* renamed from: a */
    public static final String f24041a = "PsshAtomUtil";

    /* renamed from: com.google.android.exoplayer2.extractor.mp4.PsshAtomUtil$a */
    /* loaded from: classes5.dex */
    public static class C4744a {

        /* renamed from: a */
        public final UUID f24042a;

        /* renamed from: b */
        public final int f24043b;

        /* renamed from: c */
        public final byte[] f24044c;

        public C4744a(UUID uuid, int i, byte[] bArr) {
            this.f24042a = uuid;
            this.f24043b = i;
            this.f24044c = bArr;
        }
    }

    @Nullable
    /* renamed from: a */
    public static C4744a m19000a(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        if (parsableByteArray.limit() < 32) {
            return null;
        }
        parsableByteArray.setPosition(0);
        if (parsableByteArray.readInt() != parsableByteArray.bytesLeft() + 4 || parsableByteArray.readInt() != 1886614376) {
            return null;
        }
        int m19007c = AbstractC4745a.m19007c(parsableByteArray.readInt());
        if (m19007c > 1) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Unsupported pssh version: ");
            sb.append(m19007c);
            Log.m21493w(f24041a, sb.toString());
            return null;
        }
        UUID uuid = new UUID(parsableByteArray.readLong(), parsableByteArray.readLong());
        if (m19007c == 1) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedIntToInt() * 16);
        }
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        if (readUnsignedIntToInt != parsableByteArray.bytesLeft()) {
            return null;
        }
        byte[] bArr2 = new byte[readUnsignedIntToInt];
        parsableByteArray.readBytes(bArr2, 0, readUnsignedIntToInt);
        return new C4744a(uuid, m19007c, bArr2);
    }

    public static byte[] buildPsshAtom(UUID uuid, @Nullable byte[] bArr) {
        return buildPsshAtom(uuid, null, bArr);
    }

    public static boolean isPsshAtom(byte[] bArr) {
        return m19000a(bArr) != null;
    }

    @Nullable
    public static byte[] parseSchemeSpecificData(byte[] bArr, UUID uuid) {
        C4744a m19000a = m19000a(bArr);
        if (m19000a == null) {
            return null;
        }
        if (uuid.equals(m19000a.f24042a)) {
            return m19000a.f24044c;
        }
        String valueOf = String.valueOf(uuid);
        String valueOf2 = String.valueOf(m19000a.f24042a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 33 + valueOf2.length());
        sb.append("UUID mismatch. Expected: ");
        sb.append(valueOf);
        sb.append(", got: ");
        sb.append(valueOf2);
        sb.append(".");
        Log.m21493w(f24041a, sb.toString());
        return null;
    }

    @Nullable
    public static UUID parseUuid(byte[] bArr) {
        C4744a m19000a = m19000a(bArr);
        if (m19000a == null) {
            return null;
        }
        return m19000a.f24042a;
    }

    public static int parseVersion(byte[] bArr) {
        C4744a m19000a = m19000a(bArr);
        if (m19000a == null) {
            return -1;
        }
        return m19000a.f24043b;
    }

    public static byte[] buildPsshAtom(UUID uuid, @Nullable UUID[] uuidArr, @Nullable byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(AbstractC4745a.f24171x0);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }
}
