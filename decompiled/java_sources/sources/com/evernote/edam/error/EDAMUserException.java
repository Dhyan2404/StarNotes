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
public class EDAMUserException extends Exception implements TBase<EDAMUserException>, Serializable, Cloneable {
    private EDAMErrorCode errorCode;
    private String parameter;
    private static final TStruct STRUCT_DESC = new TStruct("EDAMUserException");
    private static final TField ERROR_CODE_FIELD_DESC = new TField("errorCode", (byte) 8, 1);
    private static final TField PARAMETER_FIELD_DESC = new TField("parameter", (byte) 11, 2);

    public EDAMUserException() {
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.errorCode = null;
        this.parameter = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof EDAMUserException)) {
            return equals((EDAMUserException) obj);
        }
        return false;
    }

    public EDAMErrorCode getErrorCode() {
        return this.errorCode;
    }

    public String getParameter() {
        return this.parameter;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetErrorCode() {
        return this.errorCode != null;
    }

    public boolean isSetParameter() {
        return this.parameter != null;
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
                    this.parameter = tProtocol.readString();
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

    public void setParameter(String str) {
        this.parameter = str;
    }

    public void setParameterIsSet(boolean z) {
        if (z) {
            return;
        }
        this.parameter = null;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder("EDAMUserException(");
        sb.append("errorCode:");
        EDAMErrorCode eDAMErrorCode = this.errorCode;
        if (eDAMErrorCode == null) {
            sb.append("null");
        } else {
            sb.append(eDAMErrorCode);
        }
        if (isSetParameter()) {
            sb.append(", ");
            sb.append("parameter:");
            String str = this.parameter;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetErrorCode() {
        this.errorCode = null;
    }

    public void unsetParameter() {
        this.parameter = null;
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
        if (this.parameter != null && isSetParameter()) {
            tProtocol.writeFieldBegin(PARAMETER_FIELD_DESC);
            tProtocol.writeString(this.parameter);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public EDAMUserException(EDAMErrorCode eDAMErrorCode) {
        this();
        this.errorCode = eDAMErrorCode;
    }

    @Override // java.lang.Comparable
    public int compareTo(EDAMUserException eDAMUserException) {
        int compareTo;
        int compareTo2;
        if (!getClass().equals(eDAMUserException.getClass())) {
            return getClass().getName().compareTo(eDAMUserException.getClass().getName());
        }
        int compareTo3 = Boolean.valueOf(isSetErrorCode()).compareTo(Boolean.valueOf(eDAMUserException.isSetErrorCode()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (isSetErrorCode() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.errorCode, (Comparable) eDAMUserException.errorCode)) != 0) {
            return compareTo2;
        }
        int compareTo4 = Boolean.valueOf(isSetParameter()).compareTo(Boolean.valueOf(eDAMUserException.isSetParameter()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (!isSetParameter() || (compareTo = TBaseHelper.compareTo(this.parameter, eDAMUserException.parameter)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<EDAMUserException> deepCopy2() {
        return new EDAMUserException(this);
    }

    public boolean equals(EDAMUserException eDAMUserException) {
        if (eDAMUserException == null) {
            return false;
        }
        boolean isSetErrorCode = isSetErrorCode();
        boolean isSetErrorCode2 = eDAMUserException.isSetErrorCode();
        if ((isSetErrorCode || isSetErrorCode2) && !(isSetErrorCode && isSetErrorCode2 && this.errorCode.equals(eDAMUserException.errorCode))) {
            return false;
        }
        boolean isSetParameter = isSetParameter();
        boolean isSetParameter2 = eDAMUserException.isSetParameter();
        if (isSetParameter || isSetParameter2) {
            return isSetParameter && isSetParameter2 && this.parameter.equals(eDAMUserException.parameter);
        }
        return true;
    }

    public EDAMUserException(EDAMUserException eDAMUserException) {
        if (eDAMUserException.isSetErrorCode()) {
            this.errorCode = eDAMUserException.errorCode;
        }
        if (eDAMUserException.isSetParameter()) {
            this.parameter = eDAMUserException.parameter;
        }
    }
}
