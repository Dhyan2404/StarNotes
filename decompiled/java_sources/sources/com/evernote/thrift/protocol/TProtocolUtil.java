package com.evernote.thrift.protocol;

import com.evernote.thrift.TException;

/* loaded from: classes4.dex */
public class TProtocolUtil {

    /* renamed from: a */
    public static int f21204a = Integer.MAX_VALUE;

    public static void setMaxSkipDepth(int i) {
        f21204a = i;
    }

    public static void skip(TProtocol tProtocol, byte b) throws TException {
        skip(tProtocol, b, f21204a);
    }

    public static void skip(TProtocol tProtocol, byte b, int i) throws TException {
        if (i > 0) {
            int i2 = 0;
            switch (b) {
                case 2:
                    tProtocol.readBool();
                    return;
                case 3:
                    tProtocol.readByte();
                    return;
                case 4:
                    tProtocol.readDouble();
                    return;
                case 5:
                case 7:
                case 9:
                default:
                    return;
                case 6:
                    tProtocol.readI16();
                    return;
                case 8:
                    tProtocol.readI32();
                    return;
                case 10:
                    tProtocol.readI64();
                    return;
                case 11:
                    tProtocol.readBinary();
                    return;
                case 12:
                    tProtocol.readStructBegin();
                    while (true) {
                        byte b2 = tProtocol.readFieldBegin().type;
                        if (b2 == 0) {
                            tProtocol.readStructEnd();
                            return;
                        } else {
                            skip(tProtocol, b2, i - 1);
                            tProtocol.readFieldEnd();
                        }
                    }
                case 13:
                    TMap readMapBegin = tProtocol.readMapBegin();
                    while (i2 < readMapBegin.size) {
                        int i3 = i - 1;
                        skip(tProtocol, readMapBegin.keyType, i3);
                        skip(tProtocol, readMapBegin.valueType, i3);
                        i2++;
                    }
                    tProtocol.readMapEnd();
                    return;
                case 14:
                    TSet readSetBegin = tProtocol.readSetBegin();
                    while (i2 < readSetBegin.size) {
                        skip(tProtocol, readSetBegin.elemType, i - 1);
                        i2++;
                    }
                    tProtocol.readSetEnd();
                    return;
                case 15:
                    TList readListBegin = tProtocol.readListBegin();
                    while (i2 < readListBegin.size) {
                        skip(tProtocol, readListBegin.elemType, i - 1);
                        i2++;
                    }
                    tProtocol.readListEnd();
                    return;
            }
        } else {
            throw new TException("Maximum skip depth exceeded");
        }
    }
}
