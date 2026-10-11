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
public class BusinessNotebook implements TBase<BusinessNotebook>, Serializable, Cloneable {
    private static final int __RECOMMENDED_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private String notebookDescription;
    private SharedNotebookPrivilegeLevel privilege;
    private boolean recommended;
    private static final TStruct STRUCT_DESC = new TStruct("BusinessNotebook");
    private static final TField NOTEBOOK_DESCRIPTION_FIELD_DESC = new TField("notebookDescription", (byte) 11, 1);
    private static final TField PRIVILEGE_FIELD_DESC = new TField("privilege", (byte) 8, 2);
    private static final TField RECOMMENDED_FIELD_DESC = new TField("recommended", (byte) 2, 3);

    public BusinessNotebook() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.notebookDescription = null;
        this.privilege = null;
        setRecommendedIsSet(false);
        this.recommended = false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof BusinessNotebook)) {
            return equals((BusinessNotebook) obj);
        }
        return false;
    }

    public String getNotebookDescription() {
        return this.notebookDescription;
    }

    public SharedNotebookPrivilegeLevel getPrivilege() {
        return this.privilege;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isRecommended() {
        return this.recommended;
    }

    public boolean isSetNotebookDescription() {
        return this.notebookDescription != null;
    }

    public boolean isSetPrivilege() {
        return this.privilege != null;
    }

    public boolean isSetRecommended() {
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
                    } else if (b == 2) {
                        this.recommended = tProtocol.readBool();
                        setRecommendedIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 8) {
                    this.privilege = SharedNotebookPrivilegeLevel.findByValue(tProtocol.readI32());
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.notebookDescription = tProtocol.readString();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setNotebookDescription(String str) {
        this.notebookDescription = str;
    }

    public void setNotebookDescriptionIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebookDescription = null;
    }

    public void setPrivilege(SharedNotebookPrivilegeLevel sharedNotebookPrivilegeLevel) {
        this.privilege = sharedNotebookPrivilegeLevel;
    }

    public void setPrivilegeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.privilege = null;
    }

    public void setRecommended(boolean z) {
        this.recommended = z;
        setRecommendedIsSet(true);
    }

    public void setRecommendedIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("BusinessNotebook(");
        boolean z2 = false;
        if (isSetNotebookDescription()) {
            sb.append("notebookDescription:");
            String str = this.notebookDescription;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetPrivilege()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("privilege:");
            SharedNotebookPrivilegeLevel sharedNotebookPrivilegeLevel = this.privilege;
            if (sharedNotebookPrivilegeLevel == null) {
                sb.append("null");
            } else {
                sb.append(sharedNotebookPrivilegeLevel);
            }
        } else {
            z2 = z;
        }
        if (isSetRecommended()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("recommended:");
            sb.append(this.recommended);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetNotebookDescription() {
        this.notebookDescription = null;
    }

    public void unsetPrivilege() {
        this.privilege = null;
    }

    public void unsetRecommended() {
        this.__isset_vector[0] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.notebookDescription != null && isSetNotebookDescription()) {
            tProtocol.writeFieldBegin(NOTEBOOK_DESCRIPTION_FIELD_DESC);
            tProtocol.writeString(this.notebookDescription);
            tProtocol.writeFieldEnd();
        }
        if (this.privilege != null && isSetPrivilege()) {
            tProtocol.writeFieldBegin(PRIVILEGE_FIELD_DESC);
            tProtocol.writeI32(this.privilege.getValue());
            tProtocol.writeFieldEnd();
        }
        if (isSetRecommended()) {
            tProtocol.writeFieldBegin(RECOMMENDED_FIELD_DESC);
            tProtocol.writeBool(this.recommended);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(BusinessNotebook businessNotebook) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        if (!getClass().equals(businessNotebook.getClass())) {
            return getClass().getName().compareTo(businessNotebook.getClass().getName());
        }
        int compareTo4 = Boolean.valueOf(isSetNotebookDescription()).compareTo(Boolean.valueOf(businessNotebook.isSetNotebookDescription()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (isSetNotebookDescription() && (compareTo3 = TBaseHelper.compareTo(this.notebookDescription, businessNotebook.notebookDescription)) != 0) {
            return compareTo3;
        }
        int compareTo5 = Boolean.valueOf(isSetPrivilege()).compareTo(Boolean.valueOf(businessNotebook.isSetPrivilege()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetPrivilege() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.privilege, (Comparable) businessNotebook.privilege)) != 0) {
            return compareTo2;
        }
        int compareTo6 = Boolean.valueOf(isSetRecommended()).compareTo(Boolean.valueOf(businessNotebook.isSetRecommended()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (!isSetRecommended() || (compareTo = TBaseHelper.compareTo(this.recommended, businessNotebook.recommended)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<BusinessNotebook> deepCopy2() {
        return new BusinessNotebook(this);
    }

    public BusinessNotebook(BusinessNotebook businessNotebook) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = businessNotebook.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (businessNotebook.isSetNotebookDescription()) {
            this.notebookDescription = businessNotebook.notebookDescription;
        }
        if (businessNotebook.isSetPrivilege()) {
            this.privilege = businessNotebook.privilege;
        }
        this.recommended = businessNotebook.recommended;
    }

    public boolean equals(BusinessNotebook businessNotebook) {
        if (businessNotebook == null) {
            return false;
        }
        boolean isSetNotebookDescription = isSetNotebookDescription();
        boolean isSetNotebookDescription2 = businessNotebook.isSetNotebookDescription();
        if ((isSetNotebookDescription || isSetNotebookDescription2) && !(isSetNotebookDescription && isSetNotebookDescription2 && this.notebookDescription.equals(businessNotebook.notebookDescription))) {
            return false;
        }
        boolean isSetPrivilege = isSetPrivilege();
        boolean isSetPrivilege2 = businessNotebook.isSetPrivilege();
        if ((isSetPrivilege || isSetPrivilege2) && !(isSetPrivilege && isSetPrivilege2 && this.privilege.equals(businessNotebook.privilege))) {
            return false;
        }
        boolean isSetRecommended = isSetRecommended();
        boolean isSetRecommended2 = businessNotebook.isSetRecommended();
        if (isSetRecommended || isSetRecommended2) {
            return isSetRecommended && isSetRecommended2 && this.recommended == businessNotebook.recommended;
        }
        return true;
    }
}
