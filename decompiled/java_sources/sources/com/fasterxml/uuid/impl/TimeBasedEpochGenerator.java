package com.fasterxml.uuid.impl;

import com.fasterxml.uuid.NoArgGenerator;
import com.fasterxml.uuid.UUIDType;
import java.util.Random;
import java.util.UUID;

/* loaded from: classes4.dex */
public class TimeBasedEpochGenerator extends NoArgGenerator {
    protected final Random _random;

    public TimeBasedEpochGenerator(Random random) {
        this._random = random == null ? LazyRandom.sharedSecureRandom() : random;
    }

    public static final long _toLong(byte[] bArr, int i) {
        return (m17320a(bArr, i) << 32) + ((m17320a(bArr, i + 4) << 32) >>> 32);
    }

    /* renamed from: a */
    public static final long m17320a(byte[] bArr, int i) {
        int i2 = bArr[i] << 24;
        int i3 = i + 1;
        int i4 = i2 + ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        return i4 + ((bArr[i5] & 255) << 8) + (bArr[i5 + 1] & 255);
    }

    /* renamed from: b */
    public static final long m17321b(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
    }

    @Override // com.fasterxml.uuid.NoArgGenerator
    public UUID generate() {
        long currentTimeMillis = System.currentTimeMillis();
        byte[] bArr = new byte[10];
        this._random.nextBytes(bArr);
        return UUIDUtil.constructUUID(UUIDType.TIME_BASED_EPOCH, (currentTimeMillis << 16) | m17321b(bArr, 8), _toLong(bArr, 0));
    }

    @Override // com.fasterxml.uuid.UUIDGenerator
    public UUIDType getType() {
        return UUIDType.TIME_BASED_EPOCH;
    }
}
