package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.ParsableByteArray;

/* loaded from: classes5.dex */
public final class CeaUtil {
    public static final int USER_DATA_IDENTIFIER_GA94 = 1195456820;
    public static final int USER_DATA_TYPE_CODE_MPEG_CC = 3;

    /* renamed from: a */
    public static final String f23486a = "CeaUtil";

    /* renamed from: b */
    public static final int f23487b = 4;

    /* renamed from: c */
    public static final int f23488c = 181;

    /* renamed from: d */
    public static final int f23489d = 49;

    /* renamed from: e */
    public static final int f23490e = 47;

    /* renamed from: a */
    public static int m18780a(ParsableByteArray parsableByteArray) {
        int i = 0;
        while (parsableByteArray.bytesLeft() != 0) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            i += readUnsignedByte;
            if (readUnsignedByte != 255) {
                return i;
            }
        }
        return -1;
    }

    public static void consume(long j, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        while (true) {
            if (parsableByteArray.bytesLeft() <= 1) {
                return;
            }
            int m18780a = m18780a(parsableByteArray);
            int m18780a2 = m18780a(parsableByteArray);
            int position = parsableByteArray.getPosition() + m18780a2;
            if (m18780a2 == -1 || m18780a2 > parsableByteArray.bytesLeft()) {
                Log.m21493w(f23486a, "Skipping remainder of malformed SEI NAL unit.");
                position = parsableByteArray.limit();
            } else if (m18780a == 4 && m18780a2 >= 8) {
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                int readInt = readUnsignedShort == 49 ? parsableByteArray.readInt() : 0;
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                if (readUnsignedShort == 47) {
                    parsableByteArray.skipBytes(1);
                }
                boolean z = readUnsignedByte == 181 && (readUnsignedShort == 49 || readUnsignedShort == 47) && readUnsignedByte2 == 3;
                if (readUnsignedShort == 49) {
                    z &= readInt == 1195456820;
                }
                if (z) {
                    consumeCcData(j, parsableByteArray, trackOutputArr);
                }
            }
            parsableByteArray.setPosition(position);
        }
    }

    public static void consumeCcData(long j, ParsableByteArray parsableByteArray, TrackOutput[] trackOutputArr) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(1);
            int i = (readUnsignedByte & 31) * 3;
            int position = parsableByteArray.getPosition();
            for (TrackOutput trackOutput : trackOutputArr) {
                parsableByteArray.setPosition(position);
                trackOutput.sampleData(parsableByteArray, i);
                if (j != C4649C.TIME_UNSET) {
                    trackOutput.sampleMetadata(j, 1, i, 0, null);
                }
            }
        }
    }
}
