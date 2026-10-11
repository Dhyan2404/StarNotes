package com.evernote.edam.error;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolException;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class EDAMSystemException extends Exception implements TBase<EDAMSystemException>, Serializable, Cloneable {
    private static final int __RATELIMITDURATION_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private EDAMErrorCode errorCode;
    private String message;
    private int rateLimitDuration;
    private static final TStruct STRUCT_DESC = new TStruct("EDAMSystemException");
    private static final TField ERROR_CODE_FIELD_DESC = new TField("errorCode", (byte) 8, 1);
    private static final TField MESSAGE_FIELD_DESC = new TField("message", (byte) 11, 2);
    private static final TField RATE_LIMIT_DURATION_FIELD_DESC = new TField("rateLimitDuration", (byte) 8, 3);

    public EDAMSystemException() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.errorCode = null;
        this.message = null;
        setRateLimitDurationIsSet(false);
        this.rateLimitDuration = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof EDAMSystemException)) {
            return equals((EDAMSystemException) obj);
        }
        return false;
    }

    public EDAMErrorCode getErrorCode() {
        return this.errorCode;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public int getRateLimitDuration() {
        return this.rateLimitDuration;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetErrorCode() {
        return this.errorCode != null;
    }

    public boolean isSetMessage() {
        return this.message != null;
    }

    public boolean isSetRateLimitDuration() {
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
                    } else if (b == 8) {
                        this.rateLimitDuration = tProtocol.readI32();
                        setRateLimitDurationIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.message = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 8) {
                this.errorCode = EDAMErrorCode.findByValue(tProtocol.readI32());
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setErrorCode(EDAMErrorCode eDAMErrorCode) {
        this.errorCode = eDAMErrorCode;
    }

    public void setErrorCodeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.errorCode = null;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setMessageIsSet(boolean z) {
        if (z) {
            return;
        }
        this.message = null;
    }

    public void setRateLimitDuration(int i) {
        this.rateLimitDuration = i;
        setRateLimitDurationIsSet(true);
    }

    public void setRateLimitDurationIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder("EDAMSystemException(");
        sb.append("errorCode:");
        EDAMErrorCode eDAMErrorCode = this.errorCode;
        if (eDAMErrorCode == null) {
            sb.append("null");
        } else {
            sb.append(eDAMErrorCode);
        }
        if (isSetMessage()) {
            sb.append(", ");
            sb.append("message:");
            String str = this.message;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        if (isSetRateLimitDuration()) {
            sb.append(", ");
            sb.append("rateLimitDuration:");
            sb.append(this.rateLimitDuration);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetErrorCode() {
        this.errorCode = null;
    }

    public void unsetMessage() {
        this.message = null;
    }

    public void unsetRateLimitDuration() {
        this.__isset_vector[0] = false;
    }

    public void validate() throws TException {
        if (isSetErrorCode()) {
            return;
        }
        throw new TProtocolException("Required field 'errorCode' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.errorCode != null) {
            tProtocol.writeFieldBegin(ERROR_CODE_FIELD_DESC);
            tProtocol.writeI32(this.errorCode.getValue());
            tProtocol.writeFieldEnd();
        }
        if (this.message != null && isSetMessage()) {
            tProtocol.writeFieldBegin(MESSAGE_FIELD_DESC);
            tProtocol.writeString(this.message);
            tProtocol.writeFieldEnd();
        }
        if (isSetRateLimitDuration()) {
            tProtocol.writeFieldBegin(RATE_LIMIT_DURATION_FIELD_DESC);
            tProtocol.writeI32(this.rateLimitDuration);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(EDAMSystemException eDAMSystemException) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        if (!getClass().equals(eDAMSystemException.getClass())) {
            return getClass().getName().compareTo(eDAMSystemException.getClass().getName());
        }
        int compareTo4 = Boolean.valueOf(isSetErrorCode()).compareTo(Boolean.valueOf(eDAMSystemException.isSetErrorCode()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (isSetErrorCode() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.errorCode, (Comparable) eDAMSystemException.errorCode)) != 0) {
            return compareTo3;
        }
        int compareTo5 = Boolean.valueOf(isSetMessage()).compareTo(Boolean.valueOf(eDAMSystemException.isSetMessage()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetMessage() && (compareTo2 = TBaseHelper.compareTo(this.message, eDAMSystemException.message)) != 0) {
            return compareTo2;
        }
        int compareTo6 = Boolean.valueOf(isSetRateLimitDuration()).compareTo(Boolean.valueOf(eDAMSystemException.isSetRateLimitDuration()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (!isSetRateLimitDuration() || (compareTo = TBaseHelper.compareTo(this.rateLimitDuration, eDAMSystemException.rateLimitDuration)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<EDAMSystemException> deepCopy2() {
        return new EDAMSystemException(this);
    }

    public EDAMSystemException(EDAMErrorCode eDAMErrorCode) {
        this();
        this.errorCode = eDAMErrorCode;
    }

    public boolean equals(EDAMSystemException eDAMSystemException) {
        if (eDAMSystemException == null) {
            return false;
        }
        boolean isSetErrorCode = isSetErrorCode();
        boolean isSetErrorCode2 = eDAMSystemException.isSetErrorCode();
        if ((isSetErrorCode || isSetErrorCode2) && !(isSetErrorCode && isSetErrorCode2 && this.errorCode.equals(eDAMSystemException.errorCode))) {
            return false;
        }
        boolean isSetMessage = isSetMessage();
        boolean isSetMessage2 = eDAMSystemException.isSetMessage();
        if ((isSetMessage || isSetMessage2) && !(isSetMessage && isSetMessage2 && this.message.equals(eDAMSystemException.message))) {
            return false;
        }
        boolean isSetRateLimitDuration = isSetRateLimitDuration();
        boolean isSetRateLimitDuration2 = eDAMSystemException.isSetRateLimitDuration();
        if (isSetRateLimitDuration || isSetRateLimitDuration2) {
            return isSetRateLimitDuration && isSetRateLimitDuration2 && this.rateLimitDuration == eDAMSystemException.rateLimitDuration;
        }
        return true;
    }

    public EDAMSystemException(EDAMSystemException eDAMSystemException) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = eDAMSystemException.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (eDAMSystemException.isSetErrorCode()) {
            this.errorCode = eDAMSystemException.errorCode;
        }
        if (eDAMSystemException.isSetMessage()) {
            this.message = eDAMSystemException.message;
        }
        this.rateLimitDuration = eDAMSystemException.rateLimitDuration;
    }
}
