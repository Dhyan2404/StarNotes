package com.fasterxml.uuid;

import java.io.Serializable;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Random;

/* loaded from: classes4.dex */
public class EthernetAddress implements Serializable, Cloneable, Comparable<EthernetAddress> {
    private static final char[] HEX_CHARS = "0123456789abcdefABCDEF".toCharArray();
    protected static Random _rnd = null;
    private static final long serialVersionUID = 1;
    protected final long _address;
    private volatile String _asString;

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00f2, code lost:
    
        throw new java.lang.NumberFormatException("Non-hex character '" + r10 + com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants.SINGLE_QUOTES);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f3, code lost:
    
        r17._address = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00f7, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EthernetAddress(java.lang.String r18) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.uuid.EthernetAddress.<init>(java.lang.String):void");
    }

    private final void _appendHex(StringBuilder sb, int i) {
        char[] cArr = HEX_CHARS;
        sb.append(cArr[(i >> 4) & 15]);
        sb.append(cArr[i & 15]);
    }

    public static synchronized Random _randomNumberGenerator() {
        Random random;
        synchronized (EthernetAddress.class) {
            if (_rnd == null) {
                _rnd = new SecureRandom();
            }
            random = _rnd;
        }
        return random;
    }

    public static EthernetAddress constructMulticastAddress() {
        return constructMulticastAddress(_randomNumberGenerator());
    }

    public static EthernetAddress fromInterface() {
        byte[] hardwareAddress;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (!nextElement.isLoopback() && (hardwareAddress = nextElement.getHardwareAddress()) != null && hardwareAddress.length == 6) {
                    return new EthernetAddress(hardwareAddress);
                }
            }
            return null;
        } catch (SocketException unused) {
            return null;
        }
    }

    public static EthernetAddress valueOf(byte[] bArr) throws NumberFormatException {
        return new EthernetAddress(bArr);
    }

    public byte[] asByteArray() {
        byte[] bArr = new byte[6];
        toByteArray(bArr);
        return bArr;
    }

    public Object clone() {
        return new EthernetAddress(this._address);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj != null && obj.getClass() == getClass() && ((EthernetAddress) obj)._address == this._address;
    }

    public int hashCode() {
        long j = this._address;
        return ((int) j) ^ ((int) (j >>> 32));
    }

    public boolean isLocallyAdministeredAddress() {
        return (((int) (this._address >> 40)) & 2) != 0;
    }

    public boolean isMulticastAddress() {
        return (((int) (this._address >> 40)) & 1) != 0;
    }

    public byte[] toByteArray() {
        return asByteArray();
    }

    public long toLong() {
        return this._address;
    }

    public String toString() {
        String str = this._asString;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(17);
        long j = this._address;
        int i = (int) (j >> 32);
        int i2 = (int) j;
        _appendHex(sb, i >> 8);
        sb.append(':');
        _appendHex(sb, i);
        sb.append(':');
        _appendHex(sb, i2 >> 24);
        sb.append(':');
        _appendHex(sb, i2 >> 16);
        sb.append(':');
        _appendHex(sb, i2 >> 8);
        sb.append(':');
        _appendHex(sb, i2);
        String sb2 = sb.toString();
        this._asString = sb2;
        return sb2;
    }

    public static EthernetAddress constructMulticastAddress(Random random) {
        byte[] bArr = new byte[6];
        synchronized (random) {
            random.nextBytes(bArr);
        }
        bArr[0] = (byte) (bArr[0] | 1);
        return new EthernetAddress(bArr);
    }

    public static EthernetAddress valueOf(int[] iArr) throws NumberFormatException {
        byte[] bArr = new byte[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            bArr[i] = (byte) iArr[i];
        }
        return new EthernetAddress(bArr);
    }

    @Override // java.lang.Comparable
    public int compareTo(EthernetAddress ethernetAddress) {
        long j = this._address - ethernetAddress._address;
        if (j < 0) {
            return -1;
        }
        return j == 0 ? 0 : 1;
    }

    public void toByteArray(byte[] bArr) {
        if (bArr.length >= 6) {
            toByteArray(bArr, 0);
            return;
        }
        throw new IllegalArgumentException("Too small array, need to have space for 6 bytes");
    }

    public void toByteArray(byte[] bArr, int i) {
        if (i >= 0 && i + 6 <= bArr.length) {
            long j = this._address;
            int i2 = (int) (j >> 32);
            int i3 = i + 1;
            bArr[i] = (byte) (i2 >> 8);
            int i4 = i3 + 1;
            bArr[i3] = (byte) i2;
            int i5 = (int) j;
            int i6 = i4 + 1;
            bArr[i4] = (byte) (i5 >> 24);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (i5 >> 16);
            bArr[i7] = (byte) (i5 >> 8);
            bArr[i7 + 1] = (byte) i5;
            return;
        }
        throw new IllegalArgumentException("Illegal offset (" + i + "), need room for 6 bytes");
    }

    public static EthernetAddress valueOf(String str) throws NumberFormatException {
        return new EthernetAddress(str);
    }

    public static EthernetAddress valueOf(long j) {
        return new EthernetAddress(j);
    }

    public EthernetAddress(byte[] bArr) throws NumberFormatException {
        if (bArr.length == 6) {
            long j = bArr[0] & 255;
            for (int i = 1; i < 6; i++) {
                j = (j << 8) | (bArr[i] & 255);
            }
            this._address = j;
            return;
        }
        throw new NumberFormatException("Ethernet address has to consist of 6 bytes");
    }

    public EthernetAddress(long j) {
        this._address = j;
    }
}
