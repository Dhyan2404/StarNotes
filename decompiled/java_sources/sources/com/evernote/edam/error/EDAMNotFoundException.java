package com.evernote.edam.error;

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
public class EDAMNotFoundException extends Exception implements TBase<EDAMNotFoundException>, Serializable, Cloneable {
    private String identifier;
    private String key;
    private static final TStruct STRUCT_DESC = new TStruct("EDAMNotFoundException");
    private static final TField IDENTIFIER_FIELD_DESC = new TField("identifier", (byte) 11, 1);
    private static final TField KEY_FIELD_DESC = new TField("key", (byte) 11, 2);

    public EDAMNotFoundException() {
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.identifier = null;
        this.key = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof EDAMNotFoundException)) {
            return equals((EDAMNotFoundException) obj);
        }
        return false;
    }

    public String getIdentifier() {
        return this.identifier;
    }

    public String getKey() {
        return this.key;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetIdentifier() {
        return this.identifier != null;
    }

    public boolean isSetKey() {
        return this.key != null;
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
                    TProtocolUtil.skip(tProtocol, b);
                } else if (b == 11) {
                    this.key = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.identifier = tProtocol.readString();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setIdentifier(String str) {
        this.identifier = str;
    }

    public void setIdentifierIsSet(boolean z) {
        if (z) {
            return;
        }
        this.identifier = null;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setKeyIsSet(boolean z) {
        if (z) {
            return;
        }
        this.key = null;
    }

    @Override // java.lang.Throwable
    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("EDAMNotFoundException(");
        if (isSetIdentifier()) {
            sb.append("identifier:");
            String str = this.identifier;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetKey()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("key:");
            String str2 = this.key;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetIdentifier() {
        this.identifier = null;
    }

    public void unsetKey() {
        this.key = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.identifier != null && isSetIdentifier()) {
            tProtocol.writeFieldBegin(IDENTIFIER_FIELD_DESC);
            tProtocol.writeString(this.identifier);
            tProtocol.writeFieldEnd();
        }
        if (this.key != null && isSetKey()) {
            tProtocol.writeFieldBegin(KEY_FIELD_DESC);
            tProtocol.writeString(this.key);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public EDAMNotFoundException(EDAMNotFoundException eDAMNotFoundException) {
        if (eDAMNotFoundException.isSetIdentifier()) {
            this.identifier = eDAMNotFoundException.identifier;
        }
        if (eDAMNotFoundException.isSetKey()) {
            this.key = eDAMNotFoundException.key;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(EDAMNotFoundException eDAMNotFoundException) {
        int compareTo;
        int compareTo2;
        if (!getClass().equals(eDAMNotFoundException.getClass())) {
            return getClass().getName().compareTo(eDAMNotFoundException.getClass().getName());
        }
        int compareTo3 = Boolean.valueOf(isSetIdentifier()).compareTo(Boolean.valueOf(eDAMNotFoundException.isSetIdentifier()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (isSetIdentifier() && (compareTo2 = TBaseHelper.compareTo(this.identifier, eDAMNotFoundException.identifier)) != 0) {
            return compareTo2;
        }
        int compareTo4 = Boolean.valueOf(isSetKey()).compareTo(Boolean.valueOf(eDAMNotFoundException.isSetKey()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (!isSetKey() || (compareTo = TBaseHelper.compareTo(this.key, eDAMNotFoundException.key)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<EDAMNotFoundException> deepCopy2() {
        return new EDAMNotFoundException(this);
    }

    public boolean equals(EDAMNotFoundException eDAMNotFoundException) {
        if (eDAMNotFoundException == null) {
            return false;
        }
        boolean isSetIdentifier = isSetIdentifier();
        boolean isSetIdentifier2 = eDAMNotFoundException.isSetIdentifier();
        if ((isSetIdentifier || isSetIdentifier2) && !(isSetIdentifier && isSetIdentifier2 && this.identifier.equals(eDAMNotFoundException.identifier))) {
            return false;
        }
        boolean isSetKey = isSetKey();
        boolean isSetKey2 = eDAMNotFoundException.isSetKey();
        if (isSetKey || isSetKey2) {
            return isSetKey && isSetKey2 && this.key.equals(eDAMNotFoundException.key);
        }
        return true;
    }
}
