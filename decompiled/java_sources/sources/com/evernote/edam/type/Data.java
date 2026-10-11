package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class Data implements TBase<Data>, Serializable, Cloneable {
    private static final int __SIZE_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private byte[] body;
    private byte[] bodyHash;
    private int size;
    private static final TStruct STRUCT_DESC = new TStruct("Data");
    private static final TField BODY_HASH_FIELD_DESC = new TField("bodyHash", (byte) 11, 1);
    private static final TField SIZE_FIELD_DESC = new TField("size", (byte) 8, 2);
    private static final TField BODY_FIELD_DESC = new TField("body", (byte) 11, 3);

    public Data() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.bodyHash = null;
        setSizeIsSet(false);
        this.size = 0;
        this.body = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Data)) {
            return equals((Data) obj);
        }
        return false;
    }

    public byte[] getBody() {
        return this.body;
    }

    public byte[] getBodyHash() {
        return this.bodyHash;
    }

    public int getSize() {
        return this.size;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetBody() {
        return this.body != null;
    }

    public boolean isSetBodyHash() {
        return this.bodyHash != null;
    }

    public boolean isSetSize() {
        return this.__isset_vector[0];
    }

    @Override // com.evernote.thrift.TBase
    public void read(TProtocol tProtocol) throws TException {
        tProtocol.readStructBegin();
        while (true) {
            TField readFieldBegin = tProtocol.readFieldBegin();
            byte b = readFieldBegin.type;
            if (b == 0) {
                tProtocol.readStructEnd();
                validate();
                return;
            }
            short s = readFieldBegin.f21203id;
            if (s != 1) {
                if (s != 2) {
                    if (s != 3) {
                        TProtocolUtil.skip(tProtocol, b);
                    } else if (b == 11) {
                        this.body = tProtocol.readBytes();
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 8) {
                    this.size = tProtocol.readI32();
                    setSizeIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.bodyHash = tProtocol.readBytes();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setBody(byte[] bArr) {
        this.body = bArr;
    }

    public void setBodyHash(byte[] bArr) {
        this.bodyHash = bArr;
    }

    public void setBodyHashIsSet(boolean z) {
        if (z) {
            return;
        }
        this.bodyHash = null;
    }

    public void setBodyIsSet(boolean z) {
        if (z) {
            return;
        }
        this.body = null;
    }

    public void setSize(int i) {
        this.size = i;
        setSizeIsSet(true);
    }

    public void setSizeIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("Data(");
        boolean z2 = false;
        if (isSetBodyHash()) {
            sb.append("bodyHash:");
            byte[] bArr = this.bodyHash;
            if (bArr == null) {
                sb.append("null");
            } else {
                TBaseHelper.toString(bArr, sb);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetSize()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("size:");
            sb.append(this.size);
        } else {
            z2 = z;
        }
        if (isSetBody()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("body:");
            byte[] bArr2 = this.body;
            if (bArr2 == null) {
                sb.append("null");
            } else {
                TBaseHelper.toString(bArr2, sb);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetBody() {
        this.body = null;
    }

    public void unsetBodyHash() {
        this.bodyHash = null;
    }

    public void unsetSize() {
        this.__isset_vector[0] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.bodyHash != null && isSetBodyHash()) {
            tProtocol.writeFieldBegin(BODY_HASH_FIELD_DESC);
            tProtocol.writeBinary(this.bodyHash);
            tProtocol.writeFieldEnd();
        }
        if (isSetSize()) {
            tProtocol.writeFieldBegin(SIZE_FIELD_DESC);
            tProtocol.writeI32(this.size);
            tProtocol.writeFieldEnd();
        }
        if (this.body != null && isSetBody()) {
            tProtocol.writeFieldBegin(BODY_FIELD_DESC);
            tProtocol.writeBinary(this.body);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(Data data) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        if (!getClass().equals(data.getClass())) {
            return getClass().getName().compareTo(data.getClass().getName());
        }
        int compareTo4 = Boolean.valueOf(isSetBodyHash()).compareTo(Boolean.valueOf(data.isSetBodyHash()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (isSetBodyHash() && (compareTo3 = TBaseHelper.compareTo(this.bodyHash, data.bodyHash)) != 0) {
            return compareTo3;
        }
        int compareTo5 = Boolean.valueOf(isSetSize()).compareTo(Boolean.valueOf(data.isSetSize()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetSize() && (compareTo2 = TBaseHelper.compareTo(this.size, data.size)) != 0) {
            return compareTo2;
        }
        int compareTo6 = Boolean.valueOf(isSetBody()).compareTo(Boolean.valueOf(data.isSetBody()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (!isSetBody() || (compareTo = TBaseHelper.compareTo(this.body, data.body)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy, reason: merged with bridge method [inline-methods] */
    public TBase<Data> deepCopy2() {
        return new Data(this);
    }

    public Data(Data data) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = data.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (data.isSetBodyHash()) {
            byte[] bArr = new byte[data.bodyHash.length];
            this.bodyHash = bArr;
            byte[] bArr2 = data.bodyHash;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        }
        this.size = data.size;
        if (data.isSetBody()) {
            byte[] bArr3 = new byte[data.body.length];
            this.body = bArr3;
            byte[] bArr4 = data.body;
            System.arraycopy(bArr4, 0, bArr3, 0, bArr4.length);
        }
    }

    public boolean equals(Data data) {
        if (data == null) {
            return false;
        }
        boolean isSetBodyHash = isSetBodyHash();
        boolean isSetBodyHash2 = data.isSetBodyHash();
        if ((isSetBodyHash || isSetBodyHash2) && !(isSetBodyHash && isSetBodyHash2 && TBaseHelper.compareTo(this.bodyHash, data.bodyHash) == 0)) {
            return false;
        }
        boolean isSetSize = isSetSize();
        boolean isSetSize2 = data.isSetSize();
        if ((isSetSize || isSetSize2) && !(isSetSize && isSetSize2 && this.size == data.size)) {
            return false;
        }
        boolean isSetBody = isSetBody();
        boolean isSetBody2 = data.isSetBody();
        if (isSetBody || isSetBody2) {
            return isSetBody && isSetBody2 && TBaseHelper.compareTo(this.body, data.body) == 0;
        }
        return true;
    }
}
