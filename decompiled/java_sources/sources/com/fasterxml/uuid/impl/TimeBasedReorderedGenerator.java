package com.fasterxml.uuid.impl;

import com.fasterxml.uuid.EthernetAddress;
import com.fasterxml.uuid.NoArgGenerator;
import com.fasterxml.uuid.UUIDTimer;
import com.fasterxml.uuid.UUIDType;
import java.util.UUID;

/* loaded from: classes4.dex */
public class TimeBasedReorderedGenerator extends NoArgGenerator {
    public static int BYTE_OFFSET_TIME_HIGH = 0;
    public static int BYTE_OFFSET_TIME_LOW = 7;
    public static int BYTE_OFFSET_TIME_MID = 4;
    protected final EthernetAddress _ethernetAddress;
    protected final UUIDTimer _timer;
    protected final long _uuidL2;

    public TimeBasedReorderedGenerator(EthernetAddress ethernetAddress, UUIDTimer uUIDTimer) {
        byte[] bArr = new byte[16];
        ethernetAddress = ethernetAddress == null ? EthernetAddress.constructMulticastAddress() : ethernetAddress;
        this._ethernetAddress = ethernetAddress;
        ethernetAddress.toByteArray(bArr, 10);
        int clockSequence = uUIDTimer.getClockSequence();
        bArr[8] = (byte) (clockSequence >> 8);
        bArr[9] = (byte) clockSequence;
        this._uuidL2 = UUIDUtil.initUUIDSecondLong(UUIDUtil.gatherLong(bArr, 8));
        this._timer = uUIDTimer;
    }

    @Override // com.fasterxml.uuid.NoArgGenerator
    public UUID generate() {
        long timestamp = this._timer.getTimestamp();
        long j = (timestamp >>> 28) << 32;
        int i = (int) timestamp;
        return new UUID(((((i & 4095) | ((((i >> 12) & 65535) << 16) | 24576)) << 32) >>> 32) | j, this._uuidL2);
    }

    public EthernetAddress getEthernetAddress() {
        return this._ethernetAddress;
    }

    @Override // com.fasterxml.uuid.UUIDGenerator
    public UUIDType getType() {
        return UUIDType.TIME_BASED_REORDERED;
    }
}
