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
public class BusinessUserInfo implements TBase<BusinessUserInfo>, Serializable, Cloneable {
    private static final int __BUSINESSID_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private int businessId;
    private String businessName;
    private String email;
    private BusinessUserRole role;
    private static final TStruct STRUCT_DESC = new TStruct("BusinessUserInfo");
    private static final TField BUSINESS_ID_FIELD_DESC = new TField("businessId", (byte) 8, 1);
    private static final TField BUSINESS_NAME_FIELD_DESC = new TField("businessName", (byte) 11, 2);
    private static final TField ROLE_FIELD_DESC = new TField("role", (byte) 8, 3);
    private static final TField EMAIL_FIELD_DESC = new TField("email", (byte) 11, 4);

    public BusinessUserInfo() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setBusinessIdIsSet(false);
        this.businessId = 0;
        this.businessName = null;
        this.role = null;
        this.email = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof BusinessUserInfo)) {
            return equals((BusinessUserInfo) obj);
        }
        return false;
    }

    public int getBusinessId() {
        return this.businessId;
    }

    public String getBusinessName() {
        return this.businessName;
    }

    public String getEmail() {
        return this.email;
    }

    public BusinessUserRole getRole() {
        return this.role;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetBusinessId() {
        return this.__isset_vector[0];
    }

    public boolean isSetBusinessName() {
        return this.businessName != null;
    }

    public boolean isSetEmail() {
        return this.email != null;
    }

    public boolean isSetRole() {
        return this.role != null;
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
                        if (s != 4) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 11) {
                            this.email = tProtocol.readString();
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 8) {
                        this.role = BusinessUserRole.findByValue(tProtocol.readI32());
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.businessName = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 8) {
                this.businessId = tProtocol.readI32();
                setBusinessIdIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setBusinessId(int i) {
        this.businessId = i;
        setBusinessIdIsSet(true);
    }

    public void setBusinessIdIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setBusinessName(String str) {
        this.businessName = str;
    }

    public void setBusinessNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.businessName = null;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setEmailIsSet(boolean z) {
        if (z) {
            return;
        }
        this.email = null;
    }

    public void setRole(BusinessUserRole businessUserRole) {
        this.role = businessUserRole;
    }

    public void setRoleIsSet(boolean z) {
        if (z) {
            return;
        }
        this.role = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("BusinessUserInfo(");
        boolean z2 = false;
        if (isSetBusinessId()) {
            sb.append("businessId:");
            sb.append(this.businessId);
            z = false;
        } else {
            z = true;
        }
        if (isSetBusinessName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("businessName:");
            String str = this.businessName;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        }
        if (isSetRole()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("role:");
            BusinessUserRole businessUserRole = this.role;
            if (businessUserRole == null) {
                sb.append("null");
            } else {
                sb.append(businessUserRole);
            }
        } else {
            z2 = z;
        }
        if (isSetEmail()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("email:");
            String str2 = this.email;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetBusinessId() {
        this.__isset_vector[0] = false;
    }

    public void unsetBusinessName() {
        this.businessName = null;
    }

    public void unsetEmail() {
        this.email = null;
    }

    public void unsetRole() {
        this.role = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetBusinessId()) {
            tProtocol.writeFieldBegin(BUSINESS_ID_FIELD_DESC);
            tProtocol.writeI32(this.businessId);
            tProtocol.writeFieldEnd();
        }
        if (this.businessName != null && isSetBusinessName()) {
            tProtocol.writeFieldBegin(BUSINESS_NAME_FIELD_DESC);
            tProtocol.writeString(this.businessName);
            tProtocol.writeFieldEnd();
        }
        if (this.role != null && isSetRole()) {
            tProtocol.writeFieldBegin(ROLE_FIELD_DESC);
            tProtocol.writeI32(this.role.getValue());
            tProtocol.writeFieldEnd();
        }
        if (this.email != null && isSetEmail()) {
            tProtocol.writeFieldBegin(EMAIL_FIELD_DESC);
            tProtocol.writeString(this.email);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(BusinessUserInfo businessUserInfo) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        if (!getClass().equals(businessUserInfo.getClass())) {
            return getClass().getName().compareTo(businessUserInfo.getClass().getName());
        }
        int compareTo5 = Boolean.valueOf(isSetBusinessId()).compareTo(Boolean.valueOf(businessUserInfo.isSetBusinessId()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetBusinessId() && (compareTo4 = TBaseHelper.compareTo(this.businessId, businessUserInfo.businessId)) != 0) {
            return compareTo4;
        }
        int compareTo6 = Boolean.valueOf(isSetBusinessName()).compareTo(Boolean.valueOf(businessUserInfo.isSetBusinessName()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetBusinessName() && (compareTo3 = TBaseHelper.compareTo(this.businessName, businessUserInfo.businessName)) != 0) {
            return compareTo3;
        }
        int compareTo7 = Boolean.valueOf(isSetRole()).compareTo(Boolean.valueOf(businessUserInfo.isSetRole()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetRole() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.role, (Comparable) businessUserInfo.role)) != 0) {
            return compareTo2;
        }
        int compareTo8 = Boolean.valueOf(isSetEmail()).compareTo(Boolean.valueOf(businessUserInfo.isSetEmail()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!isSetEmail() || (compareTo = TBaseHelper.compareTo(this.email, businessUserInfo.email)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<BusinessUserInfo> deepCopy2() {
        return new BusinessUserInfo(this);
    }

    public BusinessUserInfo(BusinessUserInfo businessUserInfo) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = businessUserInfo.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.businessId = businessUserInfo.businessId;
        if (businessUserInfo.isSetBusinessName()) {
            this.businessName = businessUserInfo.businessName;
        }
        if (businessUserInfo.isSetRole()) {
            this.role = businessUserInfo.role;
        }
        if (businessUserInfo.isSetEmail()) {
            this.email = businessUserInfo.email;
        }
    }

    public boolean equals(BusinessUserInfo businessUserInfo) {
        if (businessUserInfo == null) {
            return false;
        }
        boolean isSetBusinessId = isSetBusinessId();
        boolean isSetBusinessId2 = businessUserInfo.isSetBusinessId();
        if ((isSetBusinessId || isSetBusinessId2) && !(isSetBusinessId && isSetBusinessId2 && this.businessId == businessUserInfo.businessId)) {
            return false;
        }
        boolean isSetBusinessName = isSetBusinessName();
        boolean isSetBusinessName2 = businessUserInfo.isSetBusinessName();
        if ((isSetBusinessName || isSetBusinessName2) && !(isSetBusinessName && isSetBusinessName2 && this.businessName.equals(businessUserInfo.businessName))) {
            return false;
        }
        boolean isSetRole = isSetRole();
        boolean isSetRole2 = businessUserInfo.isSetRole();
        if ((isSetRole || isSetRole2) && !(isSetRole && isSetRole2 && this.role.equals(businessUserInfo.role))) {
            return false;
        }
        boolean isSetEmail = isSetEmail();
        boolean isSetEmail2 = businessUserInfo.isSetEmail();
        if (isSetEmail || isSetEmail2) {
            return isSetEmail && isSetEmail2 && this.email.equals(businessUserInfo.email);
        }
        return true;
    }
}
