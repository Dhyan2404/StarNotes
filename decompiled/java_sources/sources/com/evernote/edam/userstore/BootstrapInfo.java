package com.evernote.edam.userstore;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TList;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolException;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class BootstrapInfo implements TBase<BootstrapInfo>, Serializable, Cloneable {
    private List<BootstrapProfile> profiles;
    private static final TStruct STRUCT_DESC = new TStruct("BootstrapInfo");
    private static final TField PROFILES_FIELD_DESC = new TField("profiles", (byte) 15, 1);

    public BootstrapInfo() {
    }

    public void addToProfiles(BootstrapProfile bootstrapProfile) {
        if (this.profiles == null) {
            this.profiles = new ArrayList();
        }
        this.profiles.add(bootstrapProfile);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.profiles = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof BootstrapInfo)) {
            return equals((BootstrapInfo) obj);
        }
        return false;
    }

    public List<BootstrapProfile> getProfiles() {
        return this.profiles;
    }

    public Iterator<BootstrapProfile> getProfilesIterator() {
        List<BootstrapProfile> list = this.profiles;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getProfilesSize() {
        List<BootstrapProfile> list = this.profiles;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetProfiles() {
        return this.profiles != null;
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
            } else if (b == 15) {
                TList readListBegin = tProtocol.readListBegin();
                this.profiles = new ArrayList(readListBegin.size);
                for (int i = 0; i < readListBegin.size; i++) {
                    BootstrapProfile bootstrapProfile = new BootstrapProfile();
                    bootstrapProfile.read(tProtocol);
                    this.profiles.add(bootstrapProfile);
                }
                tProtocol.readListEnd();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setProfiles(List<BootstrapProfile> list) {
        this.profiles = list;
    }

    public void setProfilesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.profiles = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BootstrapInfo(");
        sb.append("profiles:");
        List<BootstrapProfile> list = this.profiles;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetProfiles() {
        this.profiles = null;
    }

    public void validate() throws TException {
        if (isSetProfiles()) {
            return;
        }
        throw new TProtocolException("Required field 'profiles' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.profiles != null) {
            tProtocol.writeFieldBegin(PROFILES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.profiles.size()));
            Iterator<BootstrapProfile> it2 = this.profiles.iterator();
            while (it2.hasNext()) {
                it2.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public BootstrapInfo(List<BootstrapProfile> list) {
        this();
        this.profiles = list;
    }

    @Override // java.lang.Comparable
    public int compareTo(BootstrapInfo bootstrapInfo) {
        int compareTo;
        if (!getClass().equals(bootstrapInfo.getClass())) {
            return getClass().getName().compareTo(bootstrapInfo.getClass().getName());
        }
        int compareTo2 = Boolean.valueOf(isSetProfiles()).compareTo(Boolean.valueOf(bootstrapInfo.isSetProfiles()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (!isSetProfiles() || (compareTo = TBaseHelper.compareTo((List) this.profiles, (List) bootstrapInfo.profiles)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<BootstrapInfo> deepCopy2() {
        return new BootstrapInfo(this);
    }

    public boolean equals(BootstrapInfo bootstrapInfo) {
        if (bootstrapInfo == null) {
            return false;
        }
        boolean isSetProfiles = isSetProfiles();
        boolean isSetProfiles2 = bootstrapInfo.isSetProfiles();
        if (isSetProfiles || isSetProfiles2) {
            return isSetProfiles && isSetProfiles2 && this.profiles.equals(bootstrapInfo.profiles);
        }
        return true;
    }

    public BootstrapInfo(BootstrapInfo bootstrapInfo) {
        if (bootstrapInfo.isSetProfiles()) {
            ArrayList arrayList = new ArrayList();
            Iterator<BootstrapProfile> it2 = bootstrapInfo.profiles.iterator();
            while (it2.hasNext()) {
                arrayList.add(new BootstrapProfile(it2.next()));
            }
            this.profiles = arrayList;
        }
    }
}
