package com.evernote.edam.userstore;

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
public class BootstrapProfile implements TBase<BootstrapProfile>, Serializable, Cloneable {
    private String name;
    private BootstrapSettings settings;
    private static final TStruct STRUCT_DESC = new TStruct("BootstrapProfile");
    private static final TField NAME_FIELD_DESC = new TField("name", (byte) 11, 1);
    private static final TField SETTINGS_FIELD_DESC = new TField("settings", (byte) 12, 2);

    public BootstrapProfile() {
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.name = null;
        this.settings = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof BootstrapProfile)) {
            return equals((BootstrapProfile) obj);
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public BootstrapSettings getSettings() {
        return this.settings;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetName() {
        return this.name != null;
    }

    public boolean isSetSettings() {
        return this.settings != null;
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
                } else if (b == 12) {
                    BootstrapSettings bootstrapSettings = new BootstrapSettings();
                    this.settings = bootstrapSettings;
                    bootstrapSettings.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.name = tProtocol.readString();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
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

    public void setSettings(BootstrapSettings bootstrapSettings) {
        this.settings = bootstrapSettings;
    }

    public void setSettingsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.settings = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BootstrapProfile(");
        sb.append("name:");
        String str = this.name;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("settings:");
        BootstrapSettings bootstrapSettings = this.settings;
        if (bootstrapSettings == null) {
            sb.append("null");
        } else {
            sb.append(bootstrapSettings);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetName() {
        this.name = null;
    }

    public void unsetSettings() {
        this.settings = null;
    }

    public void validate() throws TException {
        if (!isSetName()) {
            throw new TProtocolException("Required field 'name' is unset! Struct:" + toString());
        }
        if (isSetSettings()) {
            return;
        }
        throw new TProtocolException("Required field 'settings' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.name != null) {
            tProtocol.writeFieldBegin(NAME_FIELD_DESC);
            tProtocol.writeString(this.name);
            tProtocol.writeFieldEnd();
        }
        if (this.settings != null) {
            tProtocol.writeFieldBegin(SETTINGS_FIELD_DESC);
            this.settings.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public BootstrapProfile(String str, BootstrapSettings bootstrapSettings) {
        this();
        this.name = str;
        this.settings = bootstrapSettings;
    }

    @Override // java.lang.Comparable
    public int compareTo(BootstrapProfile bootstrapProfile) {
        int compareTo;
        int compareTo2;
        if (!getClass().equals(bootstrapProfile.getClass())) {
            return getClass().getName().compareTo(bootstrapProfile.getClass().getName());
        }
        int compareTo3 = Boolean.valueOf(isSetName()).compareTo(Boolean.valueOf(bootstrapProfile.isSetName()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (isSetName() && (compareTo2 = TBaseHelper.compareTo(this.name, bootstrapProfile.name)) != 0) {
            return compareTo2;
        }
        int compareTo4 = Boolean.valueOf(isSetSettings()).compareTo(Boolean.valueOf(bootstrapProfile.isSetSettings()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (!isSetSettings() || (compareTo = TBaseHelper.compareTo((Comparable) this.settings, (Comparable) bootstrapProfile.settings)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<BootstrapProfile> deepCopy2() {
        return new BootstrapProfile(this);
    }

    public boolean equals(BootstrapProfile bootstrapProfile) {
        if (bootstrapProfile == null) {
            return false;
        }
        boolean isSetName = isSetName();
        boolean isSetName2 = bootstrapProfile.isSetName();
        if ((isSetName || isSetName2) && !(isSetName && isSetName2 && this.name.equals(bootstrapProfile.name))) {
            return false;
        }
        boolean isSetSettings = isSetSettings();
        boolean isSetSettings2 = bootstrapProfile.isSetSettings();
        if (isSetSettings || isSetSettings2) {
            return isSetSettings && isSetSettings2 && this.settings.equals(bootstrapProfile.settings);
        }
        return true;
    }

    public BootstrapProfile(BootstrapProfile bootstrapProfile) {
        if (bootstrapProfile.isSetName()) {
            this.name = bootstrapProfile.name;
        }
        if (bootstrapProfile.isSetSettings()) {
            this.settings = new BootstrapSettings(bootstrapProfile.settings);
        }
    }
}
