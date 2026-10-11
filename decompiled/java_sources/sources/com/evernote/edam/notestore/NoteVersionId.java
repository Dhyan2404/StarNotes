package com.evernote.edam.notestore;

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
public class NoteVersionId implements TBase<NoteVersionId>, Serializable, Cloneable {
    private static final int __SAVED_ISSET_ID = 2;
    private static final int __UPDATED_ISSET_ID = 1;
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private long saved;
    private String title;
    private int updateSequenceNum;
    private long updated;
    private static final TStruct STRUCT_DESC = new TStruct("NoteVersionId");
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 1);
    private static final TField UPDATED_FIELD_DESC = new TField("updated", (byte) 10, 2);
    private static final TField SAVED_FIELD_DESC = new TField("saved", (byte) 10, 3);
    private static final TField TITLE_FIELD_DESC = new TField("title", (byte) 11, 4);

    public NoteVersionId() {
        this.__isset_vector = new boolean[3];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
        setUpdatedIsSet(false);
        this.updated = 0L;
        setSavedIsSet(false);
        this.saved = 0L;
        this.title = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NoteVersionId)) {
            return equals((NoteVersionId) obj);
        }
        return false;
    }

    public long getSaved() {
        return this.saved;
    }

    public String getTitle() {
        return this.title;
    }

    public int getUpdateSequenceNum() {
        return this.updateSequenceNum;
    }

    public long getUpdated() {
        return this.updated;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetSaved() {
        return this.__isset_vector[2];
    }

    public boolean isSetTitle() {
        return this.title != null;
    }

    public boolean isSetUpdateSequenceNum() {
        return this.__isset_vector[0];
    }

    public boolean isSetUpdated() {
        return this.__isset_vector[1];
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
                            this.title = tProtocol.readString();
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 10) {
                        this.saved = tProtocol.readI64();
                        setSavedIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 10) {
                    this.updated = tProtocol.readI64();
                    setUpdatedIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 8) {
                this.updateSequenceNum = tProtocol.readI32();
                setUpdateSequenceNumIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setSaved(long j) {
        this.saved = j;
        setSavedIsSet(true);
    }

    public void setSavedIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTitleIsSet(boolean z) {
        if (z) {
            return;
        }
        this.title = null;
    }

    public void setUpdateSequenceNum(int i) {
        this.updateSequenceNum = i;
        setUpdateSequenceNumIsSet(true);
    }

    public void setUpdateSequenceNumIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setUpdated(long j) {
        this.updated = j;
        setUpdatedIsSet(true);
    }

    public void setUpdatedIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NoteVersionId(");
        sb.append("updateSequenceNum:");
        sb.append(this.updateSequenceNum);
        sb.append(", ");
        sb.append("updated:");
        sb.append(this.updated);
        sb.append(", ");
        sb.append("saved:");
        sb.append(this.saved);
        sb.append(", ");
        sb.append("title:");
        String str = this.title;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetSaved() {
        this.__isset_vector[2] = false;
    }

    public void unsetTitle() {
        this.title = null;
    }

    public void unsetUpdateSequenceNum() {
        this.__isset_vector[0] = false;
    }

    public void unsetUpdated() {
        this.__isset_vector[1] = false;
    }

    public void validate() throws TException {
        if (!isSetUpdateSequenceNum()) {
            throw new TProtocolException("Required field 'updateSequenceNum' is unset! Struct:" + toString());
        }
        if (!isSetUpdated()) {
            throw new TProtocolException("Required field 'updated' is unset! Struct:" + toString());
        }
        if (!isSetSaved()) {
            throw new TProtocolException("Required field 'saved' is unset! Struct:" + toString());
        }
        if (isSetTitle()) {
            return;
        }
        throw new TProtocolException("Required field 'title' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        tProtocol.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
        tProtocol.writeI32(this.updateSequenceNum);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(UPDATED_FIELD_DESC);
        tProtocol.writeI64(this.updated);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(SAVED_FIELD_DESC);
        tProtocol.writeI64(this.saved);
        tProtocol.writeFieldEnd();
        if (this.title != null) {
            tProtocol.writeFieldBegin(TITLE_FIELD_DESC);
            tProtocol.writeString(this.title);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NoteVersionId noteVersionId) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        if (!getClass().equals(noteVersionId.getClass())) {
            return getClass().getName().compareTo(noteVersionId.getClass().getName());
        }
        int compareTo5 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(noteVersionId.isSetUpdateSequenceNum()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetUpdateSequenceNum() && (compareTo4 = TBaseHelper.compareTo(this.updateSequenceNum, noteVersionId.updateSequenceNum)) != 0) {
            return compareTo4;
        }
        int compareTo6 = Boolean.valueOf(isSetUpdated()).compareTo(Boolean.valueOf(noteVersionId.isSetUpdated()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetUpdated() && (compareTo3 = TBaseHelper.compareTo(this.updated, noteVersionId.updated)) != 0) {
            return compareTo3;
        }
        int compareTo7 = Boolean.valueOf(isSetSaved()).compareTo(Boolean.valueOf(noteVersionId.isSetSaved()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetSaved() && (compareTo2 = TBaseHelper.compareTo(this.saved, noteVersionId.saved)) != 0) {
            return compareTo2;
        }
        int compareTo8 = Boolean.valueOf(isSetTitle()).compareTo(Boolean.valueOf(noteVersionId.isSetTitle()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!isSetTitle() || (compareTo = TBaseHelper.compareTo(this.title, noteVersionId.title)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NoteVersionId> deepCopy2() {
        return new NoteVersionId(this);
    }

    public NoteVersionId(int i, long j, long j2, String str) {
        this();
        this.updateSequenceNum = i;
        setUpdateSequenceNumIsSet(true);
        this.updated = j;
        setUpdatedIsSet(true);
        this.saved = j2;
        setSavedIsSet(true);
        this.title = str;
    }

    public boolean equals(NoteVersionId noteVersionId) {
        if (noteVersionId == null || this.updateSequenceNum != noteVersionId.updateSequenceNum || this.updated != noteVersionId.updated || this.saved != noteVersionId.saved) {
            return false;
        }
        boolean isSetTitle = isSetTitle();
        boolean isSetTitle2 = noteVersionId.isSetTitle();
        if (isSetTitle || isSetTitle2) {
            return isSetTitle && isSetTitle2 && this.title.equals(noteVersionId.title);
        }
        return true;
    }

    public NoteVersionId(NoteVersionId noteVersionId) {
        boolean[] zArr = new boolean[3];
        this.__isset_vector = zArr;
        boolean[] zArr2 = noteVersionId.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.updateSequenceNum = noteVersionId.updateSequenceNum;
        this.updated = noteVersionId.updated;
        this.saved = noteVersionId.saved;
        if (noteVersionId.isSetTitle()) {
            this.title = noteVersionId.title;
        }
    }
}
