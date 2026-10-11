package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.util.Log;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.CRC32;

/* loaded from: classes5.dex */
public final class zzwb {
    @Nullable
    public static ByteBuffer zza(Iterable iterable, boolean z) {
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (iterable.iterator().hasNext()) {
            j += ((zzbvu) r0.next()).zzM() + 12;
            i2++;
        }
        if (i2 == 0) {
            return ByteBuffer.allocate(0);
        }
        try {
            ByteBuffer allocate = ByteBuffer.allocate((int) j);
            byte[] array = allocate.array();
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                zzbvu zzbvuVar = (zzbvu) it2.next();
                int zzM = zzbvuVar.zzM();
                try {
                    allocate.putInt(zzM);
                    int i3 = i + 4;
                    try {
                        zzbvuVar.zzaj(zzbtm.zzQ(array, i3, zzM));
                    } catch (IOException e) {
                        Log.e("ProtoLiteUtil", "Exception while writing to buffer.", e);
                    }
                    try {
                        allocate.put(array, i3, zzM);
                        int i4 = i3 + zzM;
                        CRC32 crc32 = new CRC32();
                        crc32.update(array, i4 - zzM, zzM);
                        allocate.putLong(crc32.getValue());
                        i = i4 + 8;
                    } catch (BufferOverflowException e2) {
                        zzc(e2);
                        return null;
                    }
                } catch (BufferOverflowException e3) {
                    zzc(e3);
                    return null;
                }
            }
            allocate.rewind();
            return allocate;
        } catch (IllegalArgumentException e4) {
            Object[] objArr = new Object[1];
            objArr[0] = j > 1073741824 ? String.format(Locale.US, "%.2fGB", Double.valueOf(j / 1.073741824E9d)) : j > 1048576 ? String.format(Locale.US, "%.2fMB", Double.valueOf(j / 1048576.0d)) : j > 1024 ? String.format(Locale.US, "%.2fKB", Double.valueOf(j / 1024.0d)) : String.format(Locale.US, "%d Bytes", Long.valueOf(j));
            Log.e("ProtoLiteUtil", String.format("Too big to serialize, %s", objArr), e4);
            return null;
        }
    }

    @Nullable
    public static List zzb(ByteBuffer byteBuffer, Class cls, zzbwc zzbwcVar, boolean z) {
        Object obj;
        String cls2 = cls.toString();
        int limit = byteBuffer.limit();
        ArrayList arrayList = new ArrayList((byteBuffer.limit() / 1000) + 1);
        while (byteBuffer.position() < limit) {
            try {
                int i = byteBuffer.getInt();
                if (i < 0) {
                    Log.e("ProtoLiteUtil", String.format("Invalid message size: %d. May have given the wrong message type: %s", Integer.valueOf(i), cls2));
                    return null;
                }
                if (limit < byteBuffer.position() + i + 8) {
                    Log.e("ProtoLiteUtil", String.format("Invalid message size: %d (buffer end is %d)", Integer.valueOf(i), Integer.valueOf(limit)));
                    return arrayList;
                }
                long j = byteBuffer.getLong(byteBuffer.position() + i);
                byte[] array = byteBuffer.array();
                int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                CRC32 crc32 = new CRC32();
                crc32.update(array, arrayOffset, i);
                long value = crc32.getValue();
                if (value != j) {
                    Log.e("ProtoLiteUtil", String.format("Corrupt protobuf data, expected CRC: %d computed CRC: %d", Long.valueOf(j), Long.valueOf(value)));
                    return arrayList;
                }
                try {
                    obj = zzbwcVar.zzf(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), i, zzbtr.zza());
                } catch (zzbut e) {
                    Log.e("ProtoLiteUtil", "Cannot deserialize message of type ".concat(cls.toString()), e);
                    obj = null;
                }
                if (obj == null) {
                    return null;
                }
                arrayList.add(obj);
                byteBuffer.position(byteBuffer.position() + i + 8);
            } catch (BufferUnderflowException e2) {
                Log.e("ProtoLiteUtil", String.format("Buffer underflow. May have given the wrong message type: %s", cls2), e2);
                return null;
            }
        }
        return arrayList;
    }

    private static void zzc(BufferOverflowException bufferOverflowException) {
        Log.e("ProtoLiteUtil", "Buffer underflow. A message may have an invalid serialized form or has been concurrently modified.", bufferOverflowException);
    }
}
