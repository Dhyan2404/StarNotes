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
public class NotebookDescriptor implements TBase<NotebookDescriptor>, Serializable, Cloneable {
    private static final int __HASSHAREDNOTEBOOK_ISSET_ID = 0;
    private static final int __JOINEDUSERCOUNT_ISSET_ID = 1;
    private boolean[] __isset_vector;
    private String contactName;
    private String guid;
    private boolean hasSharedNotebook;
    private int joinedUserCount;
    private String notebookDisplayName;
    private static final TStruct STRUCT_DESC = new TStruct("NotebookDescriptor");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField NOTEBOOK_DISPLAY_NAME_FIELD_DESC = new TField("notebookDisplayName", (byte) 11, 2);
    private static final TField CONTACT_NAME_FIELD_DESC = new TField("contactName", (byte) 11, 3);
    private static final TField HAS_SHARED_NOTEBOOK_FIELD_DESC = new TField("hasSharedNotebook", (byte) 2, 4);
    private static final TField JOINED_USER_COUNT_FIELD_DESC = new TField("joinedUserCount", (byte) 8, 5);

    public NotebookDescriptor() {
        this.__isset_vector = new boolean[2];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.notebookDisplayName = null;
        this.contactName = null;
        setHasSharedNotebookIsSet(false);
        this.hasSharedNotebook = false;
        setJoinedUserCountIsSet(false);
        this.joinedUserCount = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NotebookDescriptor)) {
            return equals((NotebookDescriptor) obj);
        }
        return false;
    }

    public String getContactName() {
        return this.contactName;
    }

    public String getGuid() {
        return this.guid;
    }

    public int getJoinedUserCount() {
        return this.joinedUserCount;
    }

    public String getNotebookDisplayName() {
        return this.notebookDisplayName;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isHasSharedNotebook() {
        return this.hasSharedNotebook;
    }

    public boolean isSetContactName() {
        return this.contactName != null;
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetHasSharedNotebook() {
        return this.__isset_vector[0];
    }

    public boolean isSetJoinedUserCount() {
        return this.__isset_vector[1];
    }

    public boolean isSetNotebookDisplayName() {
        return this.notebookDisplayName != null;
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
                            if (s != 5) {
                                TProtocolUtil.skip(tProtocol, b);
                            } else if (b == 8) {
                                this.joinedUserCount = tProtocol.readI32();
                                setJoinedUserCountIsSet(true);
                            } else {
                                TProtocolUtil.skip(tProtocol, b);
                            }
                        } else if (b == 2) {
                            this.hasSharedNotebook = tProtocol.readBool();
                            setHasSharedNotebookIsSet(true);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 11) {
                        this.contactName = tProtocol.readString();
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.notebookDisplayName = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.guid = tProtocol.readString();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setContactName(String str) {
        this.contactName = str;
    }

    public void setContactNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.contactName = null;
    }

    public void setGuid(String str) {
        this.guid = str;
    }

    public void setGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.guid = null;
    }

    public void setHasSharedNotebook(boolean z) {
        this.hasSharedNotebook = z;
        setHasSharedNotebookIsSet(true);
    }

    public void setHasSharedNotebookIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setJoinedUserCount(int i) {
        this.joinedUserCount = i;
        setJoinedUserCountIsSet(true);
    }

    public void setJoinedUserCountIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setNotebookDisplayName(String str) {
        this.notebookDisplayName = str;
    }

    public void setNotebookDisplayNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebookDisplayName = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("NotebookDescriptor(");
        boolean z2 = false;
        if (isSetGuid()) {
            sb.append("guid:");
            String str = this.guid;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetNotebookDisplayName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("notebookDisplayName:");
            String str2 = this.notebookDisplayName;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetContactName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("contactName:");
            String str3 = this.contactName;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetHasSharedNotebook()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("hasSharedNotebook:");
            sb.append(this.hasSharedNotebook);
        } else {
            z2 = z;
        }
        if (isSetJoinedUserCount()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("joinedUserCount:");
            sb.append(this.joinedUserCount);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetContactName() {
        this.contactName = null;
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetHasSharedNotebook() {
        this.__isset_vector[0] = false;
    }

    public void unsetJoinedUserCount() {
        this.__isset_vector[1] = false;
    }

    public void unsetNotebookDisplayName() {
        this.notebookDisplayName = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.guid != null && isSetGuid()) {
            tProtocol.writeFieldBegin(GUID_FIELD_DESC);
            tProtocol.writeString(this.guid);
            tProtocol.writeFieldEnd();
        }
        if (this.notebookDisplayName != null && isSetNotebookDisplayName()) {
            tProtocol.writeFieldBegin(NOTEBOOK_DISPLAY_NAME_FIELD_DESC);
            tProtocol.writeString(this.notebookDisplayName);
            tProtocol.writeFieldEnd();
        }
        if (this.contactName != null && isSetContactName()) {
            tProtocol.writeFieldBegin(CONTACT_NAME_FIELD_DESC);
            tProtocol.writeString(this.contactName);
            tProtocol.writeFieldEnd();
        }
        if (isSetHasSharedNotebook()) {
            tProtocol.writeFieldBegin(HAS_SHARED_NOTEBOOK_FIELD_DESC);
            tProtocol.writeBool(this.hasSharedNotebook);
            tProtocol.writeFieldEnd();
        }
        if (isSetJoinedUserCount()) {
            tProtocol.writeFieldBegin(JOINED_USER_COUNT_FIELD_DESC);
            tProtocol.writeI32(this.joinedUserCount);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NotebookDescriptor notebookDescriptor) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        if (!getClass().equals(notebookDescriptor.getClass())) {
            return getClass().getName().compareTo(notebookDescriptor.getClass().getName());
        }
        int compareTo6 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(notebookDescriptor.isSetGuid()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetGuid() && (compareTo5 = TBaseHelper.compareTo(this.guid, notebookDescriptor.guid)) != 0) {
            return compareTo5;
        }
        int compareTo7 = Boolean.valueOf(isSetNotebookDisplayName()).compareTo(Boolean.valueOf(notebookDescriptor.isSetNotebookDisplayName()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetNotebookDisplayName() && (compareTo4 = TBaseHelper.compareTo(this.notebookDisplayName, notebookDescriptor.notebookDisplayName)) != 0) {
            return compareTo4;
        }
        int compareTo8 = Boolean.valueOf(isSetContactName()).compareTo(Boolean.valueOf(notebookDescriptor.isSetContactName()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (isSetContactName() && (compareTo3 = TBaseHelper.compareTo(this.contactName, notebookDescriptor.contactName)) != 0) {
            return compareTo3;
        }
        int compareTo9 = Boolean.valueOf(isSetHasSharedNotebook()).compareTo(Boolean.valueOf(notebookDescriptor.isSetHasSharedNotebook()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (isSetHasSharedNotebook() && (compareTo2 = TBaseHelper.compareTo(this.hasSharedNotebook, notebookDescriptor.hasSharedNotebook)) != 0) {
            return compareTo2;
        }
        int compareTo10 = Boolean.valueOf(isSetJoinedUserCount()).compareTo(Boolean.valueOf(notebookDescriptor.isSetJoinedUserCount()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (!isSetJoinedUserCount() || (compareTo = TBaseHelper.compareTo(this.joinedUserCount, notebookDescriptor.joinedUserCount)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NotebookDescriptor> deepCopy2() {
        return new NotebookDescriptor(this);
    }

    public NotebookDescriptor(NotebookDescriptor notebookDescriptor) {
        boolean[] zArr = new boolean[2];
        this.__isset_vector = zArr;
        boolean[] zArr2 = notebookDescriptor.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (notebookDescriptor.isSetGuid()) {
            this.guid = notebookDescriptor.guid;
        }
        if (notebookDescriptor.isSetNotebookDisplayName()) {
            this.notebookDisplayName = notebookDescriptor.notebookDisplayName;
        }
        if (notebookDescriptor.isSetContactName()) {
            this.contactName = notebookDescriptor.contactName;
        }
        this.hasSharedNotebook = notebookDescriptor.hasSharedNotebook;
        this.joinedUserCount = notebookDescriptor.joinedUserCount;
    }

    public boolean equals(NotebookDescriptor notebookDescriptor) {
        if (notebookDescriptor == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = notebookDescriptor.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(notebookDescriptor.guid))) {
            return false;
        }
        boolean isSetNotebookDisplayName = isSetNotebookDisplayName();
        boolean isSetNotebookDisplayName2 = notebookDescriptor.isSetNotebookDisplayName();
        if ((isSetNotebookDisplayName || isSetNotebookDisplayName2) && !(isSetNotebookDisplayName && isSetNotebookDisplayName2 && this.notebookDisplayName.equals(notebookDescriptor.notebookDisplayName))) {
            return false;
        }
        boolean isSetContactName = isSetContactName();
        boolean isSetContactName2 = notebookDescriptor.isSetContactName();
        if ((isSetContactName || isSetContactName2) && !(isSetContactName && isSetContactName2 && this.contactName.equals(notebookDescriptor.contactName))) {
            return false;
        }
        boolean isSetHasSharedNotebook = isSetHasSharedNotebook();
        boolean isSetHasSharedNotebook2 = notebookDescriptor.isSetHasSharedNotebook();
        if ((isSetHasSharedNotebook || isSetHasSharedNotebook2) && !(isSetHasSharedNotebook && isSetHasSharedNotebook2 && this.hasSharedNotebook == notebookDescriptor.hasSharedNotebook)) {
            return false;
        }
        boolean isSetJoinedUserCount = isSetJoinedUserCount();
        boolean isSetJoinedUserCount2 = notebookDescriptor.isSetJoinedUserCount();
        if (isSetJoinedUserCount || isSetJoinedUserCount2) {
            return isSetJoinedUserCount && isSetJoinedUserCount2 && this.joinedUserCount == notebookDescriptor.joinedUserCount;
        }
        return true;
    }
}
