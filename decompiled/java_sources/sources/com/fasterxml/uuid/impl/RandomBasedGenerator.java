package com.fasterxml.uuid.impl;

import com.fasterxml.uuid.NoArgGenerator;
import com.fasterxml.uuid.UUIDType;
import java.security.SecureRandom;
import java.util.Random;
import java.util.UUID;

/* loaded from: classes4.dex */
public class RandomBasedGenerator extends NoArgGenerator {
    protected static Random _sharedRandom;
    protected final Random _random;
    protected final boolean _secureRandom;

    public RandomBasedGenerator(Random random) {
        if (random == null) {
            random = LazyRandom.sharedSecureRandom();
            this._secureRandom = true;
        } else {
            this._secureRandom = random instanceof SecureRandom;
        }
        this._random = random;
    }

    public static final long _toLong(byte[] bArr, int i) {
        return (m17319a(bArr, i) << 32) + ((m17319a(bArr, i + 4) << 32) >>> 32);
    }

    /* renamed from: a */
    public static final long m17319a(byte[] bArr, int i) {
        int i2 = bArr[i] << 24;
        int i3 = i + 1;
        int i4 = i2 + ((bArr[i3] & 255) << 16);
        int i5 = i3 + 1;
        return i4 + ((bArr[i5] & 255) << 8) + (bArr[i5 + 1] & 255);
    }

    @Override // com.fasterxml.uuid.NoArgGenerator
    public UUID generate() {
        long nextLong;
        long nextLong2;
        if (this._secureRandom) {
            byte[] bArr = new byte[16];
            this._random.nextBytes(bArr);
            nextLong = _toLong(bArr, 0);
            nextLong2 = _toLong(bArr, 1);
        } else {
            nextLong = this._random.nextLong();
            nextLong2 = this._random.nextLong();
        }
        return UUIDUtil.constructUUID(UUIDType.RANDOM_BASED, nextLong, nextLong2);
    }

    @Override // com.fasterxml.uuid.UUIDGenerator
    public UUIDType getType() {
        return UUIDType.RANDOM_BASED;
    }
}
