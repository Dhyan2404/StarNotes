package com.fasterxml.uuid;

import com.fasterxml.uuid.impl.NameBasedGenerator;
import com.fasterxml.uuid.impl.RandomBasedGenerator;
import com.fasterxml.uuid.impl.TimeBasedEpochGenerator;
import com.fasterxml.uuid.impl.TimeBasedGenerator;
import com.fasterxml.uuid.impl.TimeBasedReorderedGenerator;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* loaded from: classes4.dex */
public class Generators {
    protected static UUIDTimer _sharedTimer;

    /* renamed from: a */
    public static synchronized UUIDTimer m17313a() {
        UUIDTimer uUIDTimer;
        synchronized (Generators.class) {
            if (_sharedTimer == null) {
                try {
                    _sharedTimer = new UUIDTimer(new Random(System.currentTimeMillis()), null);
                } catch (IOException e) {
                    throw new IllegalArgumentException("Failed to create UUIDTimer with specified synchronizer: " + e.getMessage(), e);
                }
            }
            uUIDTimer = _sharedTimer;
        }
        return uUIDTimer;
    }

    public static NameBasedGenerator nameBasedGenerator() {
        return nameBasedGenerator(null);
    }

    public static RandomBasedGenerator randomBasedGenerator() {
        return randomBasedGenerator(null);
    }

    public static TimeBasedEpochGenerator timeBasedEpochGenerator() {
        return timeBasedEpochGenerator(null);
    }

    public static TimeBasedGenerator timeBasedGenerator() {
        return timeBasedGenerator(null);
    }

    public static TimeBasedReorderedGenerator timeBasedReorderedGenerator() {
        return timeBasedReorderedGenerator(null);
    }

    public static NameBasedGenerator nameBasedGenerator(UUID uuid) {
        return nameBasedGenerator(uuid, null);
    }

    public static RandomBasedGenerator randomBasedGenerator(Random random) {
        return new RandomBasedGenerator(random);
    }

    public static TimeBasedEpochGenerator timeBasedEpochGenerator(Random random) {
        return new TimeBasedEpochGenerator(random);
    }

    public static TimeBasedGenerator timeBasedGenerator(EthernetAddress ethernetAddress) {
        return timeBasedGenerator(ethernetAddress, (UUIDTimer) null);
    }

    public static TimeBasedReorderedGenerator timeBasedReorderedGenerator(EthernetAddress ethernetAddress) {
        return timeBasedReorderedGenerator(ethernetAddress, null);
    }

    public static NameBasedGenerator nameBasedGenerator(UUID uuid, MessageDigest messageDigest) {
        UUIDType uUIDType;
        if (messageDigest == null) {
            try {
                messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_1);
                uUIDType = UUIDType.NAME_BASED_SHA1;
            } catch (NoSuchAlgorithmException e) {
                throw new IllegalArgumentException("Couldn't instantiate SHA-1 MessageDigest instance: " + e.toString());
            }
        } else {
            uUIDType = null;
        }
        return new NameBasedGenerator(uuid, messageDigest, uUIDType);
    }

    public static TimeBasedGenerator timeBasedGenerator(EthernetAddress ethernetAddress, TimestampSynchronizer timestampSynchronizer) {
        try {
            return timeBasedGenerator(ethernetAddress, new UUIDTimer(new Random(System.currentTimeMillis()), timestampSynchronizer));
        } catch (IOException e) {
            throw new IllegalArgumentException("Failed to create UUIDTimer with specified synchronizer: " + e.getMessage(), e);
        }
    }

    public static TimeBasedReorderedGenerator timeBasedReorderedGenerator(EthernetAddress ethernetAddress, UUIDTimer uUIDTimer) {
        if (uUIDTimer == null) {
            uUIDTimer = m17313a();
        }
        return new TimeBasedReorderedGenerator(ethernetAddress, uUIDTimer);
    }

    public static TimeBasedGenerator timeBasedGenerator(EthernetAddress ethernetAddress, UUIDTimer uUIDTimer) {
        if (uUIDTimer == null) {
            uUIDTimer = m17313a();
        }
        return new TimeBasedGenerator(ethernetAddress, uUIDTimer);
    }
}
