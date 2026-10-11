package com.fasterxml.uuid.impl;

import com.fasterxml.uuid.EthernetAddress;
import com.fasterxml.uuid.NoArgGenerator;
import com.fasterxml.uuid.UUIDTimer;
import com.fasterxml.uuid.UUIDType;
import java.util.UUID;

/* loaded from: classes4.dex */
public class TimeBasedGenerator extends NoArgGenerator {
    protected final EthernetAddress _ethernetAddress;
    protected final UUIDTimer _timer;
    protected final long _uuidL2;

    public TimeBasedGenerator(EthernetAddress ethernetAddress, UUIDTimer uUIDTimer) {
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
        int timestamp = (int) (this._timer.getTimestamp() >>> 32);
        return new UUID((((int) r0) << 32) | ((((((timestamp << 16) | (timestamp >>> 16)) & (-61441)) | 4096) << 32) >>> 32), this._uuidL2);
    }

    public EthernetAddress getEthernetAddress() {
        return this._ethernetAddress;
    }

    @Override // com.fasterxml.uuid.UUIDGenerator
    public UUIDType getType() {
        return UUIDType.TIME_BASED;
    }
}
