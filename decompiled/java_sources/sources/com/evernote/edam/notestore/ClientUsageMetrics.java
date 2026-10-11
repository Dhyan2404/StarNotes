package com.evernote.edam.notestore;

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
public class ClientUsageMetrics implements TBase<ClientUsageMetrics>, Serializable, Cloneable {
    private static final int __SESSIONS_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private int sessions;
    private static final TStruct STRUCT_DESC = new TStruct("ClientUsageMetrics");
    private static final TField SESSIONS_FIELD_DESC = new TField("sessions", (byte) 8, 1);

    public ClientUsageMetrics() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setSessionsIsSet(false);
        this.sessions = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ClientUsageMetrics)) {
            return equals((ClientUsageMetrics) obj);
        }
        return false;
    }

    public int getSessions() {
        return this.sessions;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetSessions() {
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
            if (readFieldBegin.f21203id != 1) {
                TProtocolUtil.skip(tProtocol, b);
            } else if (b == 8) {
                this.sessions = tProtocol.readI32();
                setSessionsIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setSessions(int i) {
        this.sessions = i;
        setSessionsIsSet(true);
    }

    public void setSessionsIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClientUsageMetrics(");
        if (isSetSessions()) {
            sb.append("sessions:");
            sb.append(this.sessions);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetSessions() {
        this.__isset_vector[0] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetSessions()) {
            tProtocol.writeFieldBegin(SESSIONS_FIELD_DESC);
            tProtocol.writeI32(this.sessions);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(ClientUsageMetrics clientUsageMetrics) {
        int compareTo;
        if (!getClass().equals(clientUsageMetrics.getClass())) {
            return getClass().getName().compareTo(clientUsageMetrics.getClass().getName());
        }
        int compareTo2 = Boolean.valueOf(isSetSessions()).compareTo(Boolean.valueOf(clientUsageMetrics.isSetSessions()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (!isSetSessions() || (compareTo = TBaseHelper.compareTo(this.sessions, clientUsageMetrics.sessions)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<ClientUsageMetrics> deepCopy2() {
        return new ClientUsageMetrics(this);
    }

    public ClientUsageMetrics(ClientUsageMetrics clientUsageMetrics) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = clientUsageMetrics.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.sessions = clientUsageMetrics.sessions;
    }

    public boolean equals(ClientUsageMetrics clientUsageMetrics) {
        if (clientUsageMetrics == null) {
            return false;
        }
        boolean isSetSessions = isSetSessions();
        boolean isSetSessions2 = clientUsageMetrics.isSetSessions();
        if (isSetSessions || isSetSessions2) {
            return isSetSessions && isSetSessions2 && this.sessions == clientUsageMetrics.sessions;
        }
        return true;
    }
}
