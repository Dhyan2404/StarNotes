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
public class SyncState implements TBase<SyncState>, Serializable, Cloneable {
    private static final int __CURRENTTIME_ISSET_ID = 0;
    private static final int __FULLSYNCBEFORE_ISSET_ID = 1;
    private static final int __UPDATECOUNT_ISSET_ID = 2;
    private static final int __UPLOADED_ISSET_ID = 3;
    private boolean[] __isset_vector;
    private long currentTime;
    private long fullSyncBefore;
    private int updateCount;
    private long uploaded;
    private static final TStruct STRUCT_DESC = new TStruct("SyncState");
    private static final TField CURRENT_TIME_FIELD_DESC = new TField("currentTime", (byte) 10, 1);
    private static final TField FULL_SYNC_BEFORE_FIELD_DESC = new TField("fullSyncBefore", (byte) 10, 2);
    private static final TField UPDATE_COUNT_FIELD_DESC = new TField("updateCount", (byte) 8, 3);
    private static final TField UPLOADED_FIELD_DESC = new TField("uploaded", (byte) 10, 4);

    public SyncState() {
        this.__isset_vector = new boolean[4];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setCurrentTimeIsSet(false);
        this.currentTime = 0L;
        setFullSyncBeforeIsSet(false);
        this.fullSyncBefore = 0L;
        setUpdateCountIsSet(false);
        this.updateCount = 0;
        setUploadedIsSet(false);
        this.uploaded = 0L;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof SyncState)) {
            return equals((SyncState) obj);
        }
        return false;
    }

    public long getCurrentTime() {
        return this.currentTime;
    }

    public long getFullSyncBefore() {
        return this.fullSyncBefore;
    }

    public int getUpdateCount() {
        return this.updateCount;
    }

    public long getUploaded() {
        return this.uploaded;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetCurrentTime() {
        return this.__isset_vector[0];
    }

    public boolean isSetFullSyncBefore() {
        return this.__isset_vector[1];
    }

    public boolean isSetUpdateCount() {
        return this.__isset_vector[2];
    }

    public boolean isSetUploaded() {
        return this.__isset_vector[3];
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
                        } else if (b == 10) {
                            this.uploaded = tProtocol.readI64();
                            setUploadedIsSet(true);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 8) {
                        this.updateCount = tProtocol.readI32();
                        setUpdateCountIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 10) {
                    this.fullSyncBefore = tProtocol.readI64();
                    setFullSyncBeforeIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 10) {
                this.currentTime = tProtocol.readI64();
                setCurrentTimeIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setCurrentTime(long j) {
        this.currentTime = j;
        setCurrentTimeIsSet(true);
    }

    public void setCurrentTimeIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setFullSyncBefore(long j) {
        this.fullSyncBefore = j;
        setFullSyncBeforeIsSet(true);
    }

    public void setFullSyncBeforeIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setUpdateCount(int i) {
        this.updateCount = i;
        setUpdateCountIsSet(true);
    }

    public void setUpdateCountIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setUploaded(long j) {
        this.uploaded = j;
        setUploadedIsSet(true);
    }

    public void setUploadedIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SyncState(");
        sb.append("currentTime:");
        sb.append(this.currentTime);
        sb.append(", ");
        sb.append("fullSyncBefore:");
        sb.append(this.fullSyncBefore);
        sb.append(", ");
        sb.append("updateCount:");
        sb.append(this.updateCount);
        if (isSetUploaded()) {
            sb.append(", ");
            sb.append("uploaded:");
            sb.append(this.uploaded);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetCurrentTime() {
        this.__isset_vector[0] = false;
    }

    public void unsetFullSyncBefore() {
        this.__isset_vector[1] = false;
    }

    public void unsetUpdateCount() {
        this.__isset_vector[2] = false;
    }

    public void unsetUploaded() {
        this.__isset_vector[3] = false;
    }

    public void validate() throws TException {
        if (!isSetCurrentTime()) {
            throw new TProtocolException("Required field 'currentTime' is unset! Struct:" + toString());
        }
        if (!isSetFullSyncBefore()) {
            throw new TProtocolException("Required field 'fullSyncBefore' is unset! Struct:" + toString());
        }
        if (isSetUpdateCount()) {
            return;
        }
        throw new TProtocolException("Required field 'updateCount' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        tProtocol.writeFieldBegin(CURRENT_TIME_FIELD_DESC);
        tProtocol.writeI64(this.currentTime);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(FULL_SYNC_BEFORE_FIELD_DESC);
        tProtocol.writeI64(this.fullSyncBefore);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(UPDATE_COUNT_FIELD_DESC);
        tProtocol.writeI32(this.updateCount);
        tProtocol.writeFieldEnd();
        if (isSetUploaded()) {
            tProtocol.writeFieldBegin(UPLOADED_FIELD_DESC);
            tProtocol.writeI64(this.uploaded);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(SyncState syncState) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        if (!getClass().equals(syncState.getClass())) {
            return getClass().getName().compareTo(syncState.getClass().getName());
        }
        int compareTo5 = Boolean.valueOf(isSetCurrentTime()).compareTo(Boolean.valueOf(syncState.isSetCurrentTime()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetCurrentTime() && (compareTo4 = TBaseHelper.compareTo(this.currentTime, syncState.currentTime)) != 0) {
            return compareTo4;
        }
        int compareTo6 = Boolean.valueOf(isSetFullSyncBefore()).compareTo(Boolean.valueOf(syncState.isSetFullSyncBefore()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetFullSyncBefore() && (compareTo3 = TBaseHelper.compareTo(this.fullSyncBefore, syncState.fullSyncBefore)) != 0) {
            return compareTo3;
        }
        int compareTo7 = Boolean.valueOf(isSetUpdateCount()).compareTo(Boolean.valueOf(syncState.isSetUpdateCount()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetUpdateCount() && (compareTo2 = TBaseHelper.compareTo(this.updateCount, syncState.updateCount)) != 0) {
            return compareTo2;
        }
        int compareTo8 = Boolean.valueOf(isSetUploaded()).compareTo(Boolean.valueOf(syncState.isSetUploaded()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!isSetUploaded() || (compareTo = TBaseHelper.compareTo(this.uploaded, syncState.uploaded)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<SyncState> deepCopy2() {
        return new SyncState(this);
    }

    public SyncState(long j, long j2, int i) {
        this();
        this.currentTime = j;
        setCurrentTimeIsSet(true);
        this.fullSyncBefore = j2;
        setFullSyncBeforeIsSet(true);
        this.updateCount = i;
        setUpdateCountIsSet(true);
    }

    public boolean equals(SyncState syncState) {
        if (syncState == null || this.currentTime != syncState.currentTime || this.fullSyncBefore != syncState.fullSyncBefore || this.updateCount != syncState.updateCount) {
            return false;
        }
        boolean isSetUploaded = isSetUploaded();
        boolean isSetUploaded2 = syncState.isSetUploaded();
        if (isSetUploaded || isSetUploaded2) {
            return isSetUploaded && isSetUploaded2 && this.uploaded == syncState.uploaded;
        }
        return true;
    }

    public SyncState(SyncState syncState) {
        boolean[] zArr = new boolean[4];
        this.__isset_vector = zArr;
        boolean[] zArr2 = syncState.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.currentTime = syncState.currentTime;
        this.fullSyncBefore = syncState.fullSyncBefore;
        this.updateCount = syncState.updateCount;
        this.uploaded = syncState.uploaded;
    }
}
