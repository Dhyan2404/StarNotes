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
public class Tag implements TBase<Tag>, Serializable, Cloneable {
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private String guid;
    private String name;
    private String parentGuid;
    private int updateSequenceNum;
    private static final TStruct STRUCT_DESC = new TStruct("Tag");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField NAME_FIELD_DESC = new TField("name", (byte) 11, 2);
    private static final TField PARENT_GUID_FIELD_DESC = new TField("parentGuid", (byte) 11, 3);
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 4);

    public Tag() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.name = null;
        this.parentGuid = null;
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Tag)) {
            return equals((Tag) obj);
        }
        return false;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getName() {
        return this.name;
    }

    public String getParentGuid() {
        return this.parentGuid;
    }

    public int getUpdateSequenceNum() {
        return this.updateSequenceNum;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetName() {
        return this.name != null;
    }

    public boolean isSetParentGuid() {
        return this.parentGuid != null;
    }

    public boolean isSetUpdateSequenceNum() {
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
                        if (s != 4) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 8) {
                            this.updateSequenceNum = tProtocol.readI32();
                            setUpdateSequenceNumIsSet(true);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 11) {
                        this.parentGuid = tProtocol.readString();
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.name = tProtocol.readString();
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

    public void setGuid(String str) {
        this.guid = str;
    }

    public void setGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.guid = null;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.name = null;
    }

    public void setParentGuid(String str) {
        this.parentGuid = str;
    }

    public void setParentGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.parentGuid = null;
    }

    public void setUpdateSequenceNum(int i) {
        this.updateSequenceNum = i;
        setUpdateSequenceNumIsSet(true);
    }

    public void setUpdateSequenceNumIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("Tag(");
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
        if (isSetName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("name:");
            String str2 = this.name;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetParentGuid()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("parentGuid:");
            String str3 = this.parentGuid;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        } else {
            z2 = z;
        }
        if (isSetUpdateSequenceNum()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("updateSequenceNum:");
            sb.append(this.updateSequenceNum);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetName() {
        this.name = null;
    }

    public void unsetParentGuid() {
        this.parentGuid = null;
    }

    public void unsetUpdateSequenceNum() {
        this.__isset_vector[0] = false;
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
        if (this.name != null && isSetName()) {
            tProtocol.writeFieldBegin(NAME_FIELD_DESC);
            tProtocol.writeString(this.name);
            tProtocol.writeFieldEnd();
        }
        if (this.parentGuid != null && isSetParentGuid()) {
            tProtocol.writeFieldBegin(PARENT_GUID_FIELD_DESC);
            tProtocol.writeString(this.parentGuid);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdateSequenceNum()) {
            tProtocol.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
            tProtocol.writeI32(this.updateSequenceNum);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(Tag tag) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        if (!getClass().equals(tag.getClass())) {
            return getClass().getName().compareTo(tag.getClass().getName());
        }
        int compareTo5 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(tag.isSetGuid()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetGuid() && (compareTo4 = TBaseHelper.compareTo(this.guid, tag.guid)) != 0) {
            return compareTo4;
        }
        int compareTo6 = Boolean.valueOf(isSetName()).compareTo(Boolean.valueOf(tag.isSetName()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetName() && (compareTo3 = TBaseHelper.compareTo(this.name, tag.name)) != 0) {
            return compareTo3;
        }
        int compareTo7 = Boolean.valueOf(isSetParentGuid()).compareTo(Boolean.valueOf(tag.isSetParentGuid()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetParentGuid() && (compareTo2 = TBaseHelper.compareTo(this.parentGuid, tag.parentGuid)) != 0) {
            return compareTo2;
        }
        int compareTo8 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(tag.isSetUpdateSequenceNum()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!isSetUpdateSequenceNum() || (compareTo = TBaseHelper.compareTo(this.updateSequenceNum, tag.updateSequenceNum)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<Tag> deepCopy2() {
        return new Tag(this);
    }

    public Tag(Tag tag) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = tag.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (tag.isSetGuid()) {
            this.guid = tag.guid;
        }
        if (tag.isSetName()) {
            this.name = tag.name;
        }
        if (tag.isSetParentGuid()) {
            this.parentGuid = tag.parentGuid;
        }
        this.updateSequenceNum = tag.updateSequenceNum;
    }

    public boolean equals(Tag tag) {
        if (tag == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = tag.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(tag.guid))) {
            return false;
        }
        boolean isSetName = isSetName();
        boolean isSetName2 = tag.isSetName();
        if ((isSetName || isSetName2) && !(isSetName && isSetName2 && this.name.equals(tag.name))) {
            return false;
        }
        boolean isSetParentGuid = isSetParentGuid();
        boolean isSetParentGuid2 = tag.isSetParentGuid();
        if ((isSetParentGuid || isSetParentGuid2) && !(isSetParentGuid && isSetParentGuid2 && this.parentGuid.equals(tag.parentGuid))) {
            return false;
        }
        boolean isSetUpdateSequenceNum = isSetUpdateSequenceNum();
        boolean isSetUpdateSequenceNum2 = tag.isSetUpdateSequenceNum();
        if (isSetUpdateSequenceNum || isSetUpdateSequenceNum2) {
            return isSetUpdateSequenceNum && isSetUpdateSequenceNum2 && this.updateSequenceNum == tag.updateSequenceNum;
        }
        return true;
    }
}
