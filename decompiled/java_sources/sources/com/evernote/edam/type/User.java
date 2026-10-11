package com.evernote.edam.type;

import com.couchbase.lite.internal.core.C4Replicator;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class User implements TBase<User>, Serializable, Cloneable {
    private static final int __ACTIVE_ISSET_ID = 4;
    private static final int __CREATED_ISSET_ID = 1;
    private static final int __DELETED_ISSET_ID = 3;
    private static final int __ID_ISSET_ID = 0;
    private static final int __UPDATED_ISSET_ID = 2;
    private boolean[] __isset_vector;
    private Accounting accounting;
    private boolean active;
    private UserAttributes attributes;
    private BusinessUserInfo businessUserInfo;
    private long created;
    private long deleted;
    private String email;

    /* renamed from: id */
    private int f21189id;
    private String name;
    private PremiumInfo premiumInfo;
    private PrivilegeLevel privilege;
    private String shardId;
    private String timezone;
    private long updated;
    private String username;
    private static final TStruct STRUCT_DESC = new TStruct("User");
    private static final TField ID_FIELD_DESC = new TField("id", (byte) 8, 1);
    private static final TField USERNAME_FIELD_DESC = new TField(C4Replicator.REPLICATOR_AUTH_USER_NAME, (byte) 11, 2);
    private static final TField EMAIL_FIELD_DESC = new TField("email", (byte) 11, 3);
    private static final TField NAME_FIELD_DESC = new TField("name", (byte) 11, 4);
    private static final TField TIMEZONE_FIELD_DESC = new TField("timezone", (byte) 11, 6);
    private static final TField PRIVILEGE_FIELD_DESC = new TField("privilege", (byte) 8, 7);
    private static final TField CREATED_FIELD_DESC = new TField("created", (byte) 10, 9);
    private static final TField UPDATED_FIELD_DESC = new TField("updated", (byte) 10, 10);
    private static final TField DELETED_FIELD_DESC = new TField("deleted", (byte) 10, 11);
    private static final TField ACTIVE_FIELD_DESC = new TField(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, (byte) 2, 13);
    private static final TField SHARD_ID_FIELD_DESC = new TField("shardId", (byte) 11, 14);
    private static final TField ATTRIBUTES_FIELD_DESC = new TField("attributes", (byte) 12, 15);
    private static final TField ACCOUNTING_FIELD_DESC = new TField("accounting", (byte) 12, 16);
    private static final TField PREMIUM_INFO_FIELD_DESC = new TField("premiumInfo", (byte) 12, 17);
    private static final TField BUSINESS_USER_INFO_FIELD_DESC = new TField("businessUserInfo", (byte) 12, 18);

    public User() {
        this.__isset_vector = new boolean[5];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setIdIsSet(false);
        this.f21189id = 0;
        this.username = null;
        this.email = null;
        this.name = null;
        this.timezone = null;
        this.privilege = null;
        setCreatedIsSet(false);
        this.created = 0L;
        setUpdatedIsSet(false);
        this.updated = 0L;
        setDeletedIsSet(false);
        this.deleted = 0L;
        setActiveIsSet(false);
        this.active = false;
        this.shardId = null;
        this.attributes = null;
        this.accounting = null;
        this.premiumInfo = null;
        this.businessUserInfo = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof User)) {
            return equals((User) obj);
        }
        return false;
    }

    public Accounting getAccounting() {
        return this.accounting;
    }

    public UserAttributes getAttributes() {
        return this.attributes;
    }

    public BusinessUserInfo getBusinessUserInfo() {
        return this.businessUserInfo;
    }

    public long getCreated() {
        return this.created;
    }

    public long getDeleted() {
        return this.deleted;
    }

    public String getEmail() {
        return this.email;
    }

    public int getId() {
        return this.f21189id;
    }

    public String getName() {
        return this.name;
    }

    public PremiumInfo getPremiumInfo() {
        return this.premiumInfo;
    }

    public PrivilegeLevel getPrivilege() {
        return this.privilege;
    }

    public String getShardId() {
        return this.shardId;
    }

    public String getTimezone() {
        return this.timezone;
    }

    public long getUpdated() {
        return this.updated;
    }

    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isActive() {
        return this.active;
    }

    public boolean isSetAccounting() {
        return this.accounting != null;
    }

    public boolean isSetActive() {
        return this.__isset_vector[4];
    }

    public boolean isSetAttributes() {
        return this.attributes != null;
    }

    public boolean isSetBusinessUserInfo() {
        return this.businessUserInfo != null;
    }

    public boolean isSetCreated() {
        return this.__isset_vector[1];
    }

    public boolean isSetDeleted() {
        return this.__isset_vector[3];
    }

    public boolean isSetEmail() {
        return this.email != null;
    }

    public boolean isSetId() {
        return this.__isset_vector[0];
    }

    public boolean isSetName() {
        return this.name != null;
    }

    public boolean isSetPremiumInfo() {
        return this.premiumInfo != null;
    }

    public boolean isSetPrivilege() {
        return this.privilege != null;
    }

    public boolean isSetShardId() {
        return this.shardId != null;
    }

    public boolean isSetTimezone() {
        return this.timezone != null;
    }

    public boolean isSetUpdated() {
        return this.__isset_vector[2];
    }

    public boolean isSetUsername() {
        return this.username != null;
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
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.f21189id = tProtocol.readI32();
                        setIdIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.username = tProtocol.readString();
                        break;
                    }
                case 3:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.email = tProtocol.readString();
                        break;
                    }
                case 4:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.name = tProtocol.readString();
                        break;
                    }
                case 5:
                case 8:
                case 12:
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.timezone = tProtocol.readString();
                        break;
                    }
                case 7:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.privilege = PrivilegeLevel.findByValue(tProtocol.readI32());
                        break;
                    }
                case 9:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.created = tProtocol.readI64();
                        setCreatedIsSet(true);
                        break;
                    }
                case 10:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updated = tProtocol.readI64();
                        setUpdatedIsSet(true);
                        break;
                    }
                case 11:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.deleted = tProtocol.readI64();
                        setDeletedIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.active = tProtocol.readBool();
                        setActiveIsSet(true);
                        break;
                    }
                case 14:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.shardId = tProtocol.readString();
                        break;
                    }
                case 15:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        UserAttributes userAttributes = new UserAttributes();
                        this.attributes = userAttributes;
                        userAttributes.read(tProtocol);
                        break;
                    }
                case 16:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        Accounting accounting = new Accounting();
                        this.accounting = accounting;
                        accounting.read(tProtocol);
                        break;
                    }
                case 17:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        PremiumInfo premiumInfo = new PremiumInfo();
                        this.premiumInfo = premiumInfo;
                        premiumInfo.read(tProtocol);
                        break;
                    }
                case 18:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        BusinessUserInfo businessUserInfo = new BusinessUserInfo();
                        this.businessUserInfo = businessUserInfo;
                        businessUserInfo.read(tProtocol);
                        break;
                    }
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAccounting(Accounting accounting) {
        this.accounting = accounting;
    }

    public void setAccountingIsSet(boolean z) {
        if (z) {
            return;
        }
        this.accounting = null;
    }

    public void setActive(boolean z) {
        this.active = z;
        setActiveIsSet(true);
    }

    public void setActiveIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setAttributes(UserAttributes userAttributes) {
        this.attributes = userAttributes;
    }

    public void setAttributesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.attributes = null;
    }

    public void setBusinessUserInfo(BusinessUserInfo businessUserInfo) {
        this.businessUserInfo = businessUserInfo;
    }

    public void setBusinessUserInfoIsSet(boolean z) {
        if (z) {
            return;
        }
        this.businessUserInfo = null;
    }

    public void setCreated(long j) {
        this.created = j;
        setCreatedIsSet(true);
    }

    public void setCreatedIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setDeleted(long j) {
        this.deleted = j;
        setDeletedIsSet(true);
    }

    public void setDeletedIsSet(boolean z) {
        this.__isset_vector[3] = z;
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

    public void setId(int i) {
        this.f21189id = i;
        setIdIsSet(true);
    }

    public void setIdIsSet(boolean z) {
        this.__isset_vector[0] = z;
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

    public void setPremiumInfo(PremiumInfo premiumInfo) {
        this.premiumInfo = premiumInfo;
    }

    public void setPremiumInfoIsSet(boolean z) {
        if (z) {
            return;
        }
        this.premiumInfo = null;
    }

    public void setPrivilege(PrivilegeLevel privilegeLevel) {
        this.privilege = privilegeLevel;
    }

    public void setPrivilegeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.privilege = null;
    }

    public void setShardId(String str) {
        this.shardId = str;
    }

    public void setShardIdIsSet(boolean z) {
        if (z) {
            return;
        }
        this.shardId = null;
    }

    public void setTimezone(String str) {
        this.timezone = str;
    }

    public void setTimezoneIsSet(boolean z) {
        if (z) {
            return;
        }
        this.timezone = null;
    }

    public void setUpdated(long j) {
        this.updated = j;
        setUpdatedIsSet(true);
    }

    public void setUpdatedIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public void setUsernameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.username = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("User(");
        boolean z2 = false;
        if (isSetId()) {
            sb.append("id:");
            sb.append(this.f21189id);
            z = false;
        } else {
            z = true;
        }
        if (isSetUsername()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("username:");
            String str = this.username;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        }
        if (isSetEmail()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("email:");
            String str2 = this.email;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("name:");
            String str3 = this.name;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetTimezone()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("timezone:");
            String str4 = this.timezone;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (isSetPrivilege()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("privilege:");
            PrivilegeLevel privilegeLevel = this.privilege;
            if (privilegeLevel == null) {
                sb.append("null");
            } else {
                sb.append(privilegeLevel);
            }
            z = false;
        }
        if (isSetCreated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("created:");
            sb.append(this.created);
            z = false;
        }
        if (isSetUpdated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updated:");
            sb.append(this.updated);
            z = false;
        }
        if (isSetDeleted()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("deleted:");
            sb.append(this.deleted);
            z = false;
        }
        if (isSetActive()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("active:");
            sb.append(this.active);
            z = false;
        }
        if (isSetShardId()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("shardId:");
            String str5 = this.shardId;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (isSetAttributes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("attributes:");
            UserAttributes userAttributes = this.attributes;
            if (userAttributes == null) {
                sb.append("null");
            } else {
                sb.append(userAttributes);
            }
            z = false;
        }
        if (isSetAccounting()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("accounting:");
            Accounting accounting = this.accounting;
            if (accounting == null) {
                sb.append("null");
            } else {
                sb.append(accounting);
            }
            z = false;
        }
        if (isSetPremiumInfo()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("premiumInfo:");
            PremiumInfo premiumInfo = this.premiumInfo;
            if (premiumInfo == null) {
                sb.append("null");
            } else {
                sb.append(premiumInfo);
            }
        } else {
            z2 = z;
        }
        if (isSetBusinessUserInfo()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("businessUserInfo:");
            BusinessUserInfo businessUserInfo = this.businessUserInfo;
            if (businessUserInfo == null) {
                sb.append("null");
            } else {
                sb.append(businessUserInfo);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAccounting() {
        this.accounting = null;
    }

    public void unsetActive() {
        this.__isset_vector[4] = false;
    }

    public void unsetAttributes() {
        this.attributes = null;
    }

    public void unsetBusinessUserInfo() {
        this.businessUserInfo = null;
    }

    public void unsetCreated() {
        this.__isset_vector[1] = false;
    }

    public void unsetDeleted() {
        this.__isset_vector[3] = false;
    }

    public void unsetEmail() {
        this.email = null;
    }

    public void unsetId() {
        this.__isset_vector[0] = false;
    }

    public void unsetName() {
        this.name = null;
    }

    public void unsetPremiumInfo() {
        this.premiumInfo = null;
    }

    public void unsetPrivilege() {
        this.privilege = null;
    }

    public void unsetShardId() {
        this.shardId = null;
    }

    public void unsetTimezone() {
        this.timezone = null;
    }

    public void unsetUpdated() {
        this.__isset_vector[2] = false;
    }

    public void unsetUsername() {
        this.username = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetId()) {
            tProtocol.writeFieldBegin(ID_FIELD_DESC);
            tProtocol.writeI32(this.f21189id);
            tProtocol.writeFieldEnd();
        }
        if (this.username != null && isSetUsername()) {
            tProtocol.writeFieldBegin(USERNAME_FIELD_DESC);
            tProtocol.writeString(this.username);
            tProtocol.writeFieldEnd();
        }
        if (this.email != null && isSetEmail()) {
            tProtocol.writeFieldBegin(EMAIL_FIELD_DESC);
            tProtocol.writeString(this.email);
            tProtocol.writeFieldEnd();
        }
        if (this.name != null && isSetName()) {
            tProtocol.writeFieldBegin(NAME_FIELD_DESC);
            tProtocol.writeString(this.name);
            tProtocol.writeFieldEnd();
        }
        if (this.timezone != null && isSetTimezone()) {
            tProtocol.writeFieldBegin(TIMEZONE_FIELD_DESC);
            tProtocol.writeString(this.timezone);
            tProtocol.writeFieldEnd();
        }
        if (this.privilege != null && isSetPrivilege()) {
            tProtocol.writeFieldBegin(PRIVILEGE_FIELD_DESC);
            tProtocol.writeI32(this.privilege.getValue());
            tProtocol.writeFieldEnd();
        }
        if (isSetCreated()) {
            tProtocol.writeFieldBegin(CREATED_FIELD_DESC);
            tProtocol.writeI64(this.created);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdated()) {
            tProtocol.writeFieldBegin(UPDATED_FIELD_DESC);
            tProtocol.writeI64(this.updated);
            tProtocol.writeFieldEnd();
        }
        if (isSetDeleted()) {
            tProtocol.writeFieldBegin(DELETED_FIELD_DESC);
            tProtocol.writeI64(this.deleted);
            tProtocol.writeFieldEnd();
        }
        if (isSetActive()) {
            tProtocol.writeFieldBegin(ACTIVE_FIELD_DESC);
            tProtocol.writeBool(this.active);
            tProtocol.writeFieldEnd();
        }
        if (this.shardId != null && isSetShardId()) {
            tProtocol.writeFieldBegin(SHARD_ID_FIELD_DESC);
            tProtocol.writeString(this.shardId);
            tProtocol.writeFieldEnd();
        }
        if (this.attributes != null && isSetAttributes()) {
            tProtocol.writeFieldBegin(ATTRIBUTES_FIELD_DESC);
            this.attributes.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.accounting != null && isSetAccounting()) {
            tProtocol.writeFieldBegin(ACCOUNTING_FIELD_DESC);
            this.accounting.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.premiumInfo != null && isSetPremiumInfo()) {
            tProtocol.writeFieldBegin(PREMIUM_INFO_FIELD_DESC);
            this.premiumInfo.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.businessUserInfo != null && isSetBusinessUserInfo()) {
            tProtocol.writeFieldBegin(BUSINESS_USER_INFO_FIELD_DESC);
            this.businessUserInfo.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(User user) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        int compareTo7;
        int compareTo8;
        int compareTo9;
        int compareTo10;
        int compareTo11;
        int compareTo12;
        int compareTo13;
        int compareTo14;
        int compareTo15;
        if (!getClass().equals(user.getClass())) {
            return getClass().getName().compareTo(user.getClass().getName());
        }
        int compareTo16 = Boolean.valueOf(isSetId()).compareTo(Boolean.valueOf(user.isSetId()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetId() && (compareTo15 = TBaseHelper.compareTo(this.f21189id, user.f21189id)) != 0) {
            return compareTo15;
        }
        int compareTo17 = Boolean.valueOf(isSetUsername()).compareTo(Boolean.valueOf(user.isSetUsername()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetUsername() && (compareTo14 = TBaseHelper.compareTo(this.username, user.username)) != 0) {
            return compareTo14;
        }
        int compareTo18 = Boolean.valueOf(isSetEmail()).compareTo(Boolean.valueOf(user.isSetEmail()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetEmail() && (compareTo13 = TBaseHelper.compareTo(this.email, user.email)) != 0) {
            return compareTo13;
        }
        int compareTo19 = Boolean.valueOf(isSetName()).compareTo(Boolean.valueOf(user.isSetName()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetName() && (compareTo12 = TBaseHelper.compareTo(this.name, user.name)) != 0) {
            return compareTo12;
        }
        int compareTo20 = Boolean.valueOf(isSetTimezone()).compareTo(Boolean.valueOf(user.isSetTimezone()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetTimezone() && (compareTo11 = TBaseHelper.compareTo(this.timezone, user.timezone)) != 0) {
            return compareTo11;
        }
        int compareTo21 = Boolean.valueOf(isSetPrivilege()).compareTo(Boolean.valueOf(user.isSetPrivilege()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetPrivilege() && (compareTo10 = TBaseHelper.compareTo((Comparable) this.privilege, (Comparable) user.privilege)) != 0) {
            return compareTo10;
        }
        int compareTo22 = Boolean.valueOf(isSetCreated()).compareTo(Boolean.valueOf(user.isSetCreated()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetCreated() && (compareTo9 = TBaseHelper.compareTo(this.created, user.created)) != 0) {
            return compareTo9;
        }
        int compareTo23 = Boolean.valueOf(isSetUpdated()).compareTo(Boolean.valueOf(user.isSetUpdated()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetUpdated() && (compareTo8 = TBaseHelper.compareTo(this.updated, user.updated)) != 0) {
            return compareTo8;
        }
        int compareTo24 = Boolean.valueOf(isSetDeleted()).compareTo(Boolean.valueOf(user.isSetDeleted()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetDeleted() && (compareTo7 = TBaseHelper.compareTo(this.deleted, user.deleted)) != 0) {
            return compareTo7;
        }
        int compareTo25 = Boolean.valueOf(isSetActive()).compareTo(Boolean.valueOf(user.isSetActive()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetActive() && (compareTo6 = TBaseHelper.compareTo(this.active, user.active)) != 0) {
            return compareTo6;
        }
        int compareTo26 = Boolean.valueOf(isSetShardId()).compareTo(Boolean.valueOf(user.isSetShardId()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (isSetShardId() && (compareTo5 = TBaseHelper.compareTo(this.shardId, user.shardId)) != 0) {
            return compareTo5;
        }
        int compareTo27 = Boolean.valueOf(isSetAttributes()).compareTo(Boolean.valueOf(user.isSetAttributes()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (isSetAttributes() && (compareTo4 = TBaseHelper.compareTo((Comparable) this.attributes, (Comparable) user.attributes)) != 0) {
            return compareTo4;
        }
        int compareTo28 = Boolean.valueOf(isSetAccounting()).compareTo(Boolean.valueOf(user.isSetAccounting()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (isSetAccounting() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.accounting, (Comparable) user.accounting)) != 0) {
            return compareTo3;
        }
        int compareTo29 = Boolean.valueOf(isSetPremiumInfo()).compareTo(Boolean.valueOf(user.isSetPremiumInfo()));
        if (compareTo29 != 0) {
            return compareTo29;
        }
        if (isSetPremiumInfo() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.premiumInfo, (Comparable) user.premiumInfo)) != 0) {
            return compareTo2;
        }
        int compareTo30 = Boolean.valueOf(isSetBusinessUserInfo()).compareTo(Boolean.valueOf(user.isSetBusinessUserInfo()));
        if (compareTo30 != 0) {
            return compareTo30;
        }
        if (!isSetBusinessUserInfo() || (compareTo = TBaseHelper.compareTo((Comparable) this.businessUserInfo, (Comparable) user.businessUserInfo)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<User> deepCopy2() {
        return new User(this);
    }

    public User(User user) {
        boolean[] zArr = new boolean[5];
        this.__isset_vector = zArr;
        boolean[] zArr2 = user.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.f21189id = user.f21189id;
        if (user.isSetUsername()) {
            this.username = user.username;
        }
        if (user.isSetEmail()) {
            this.email = user.email;
        }
        if (user.isSetName()) {
            this.name = user.name;
        }
        if (user.isSetTimezone()) {
            this.timezone = user.timezone;
        }
        if (user.isSetPrivilege()) {
            this.privilege = user.privilege;
        }
        this.created = user.created;
        this.updated = user.updated;
        this.deleted = user.deleted;
        this.active = user.active;
        if (user.isSetShardId()) {
            this.shardId = user.shardId;
        }
        if (user.isSetAttributes()) {
            this.attributes = new UserAttributes(user.attributes);
        }
        if (user.isSetAccounting()) {
            this.accounting = new Accounting(user.accounting);
        }
        if (user.isSetPremiumInfo()) {
            this.premiumInfo = new PremiumInfo(user.premiumInfo);
        }
        if (user.isSetBusinessUserInfo()) {
            this.businessUserInfo = new BusinessUserInfo(user.businessUserInfo);
        }
    }

    public boolean equals(User user) {
        if (user == null) {
            return false;
        }
        boolean isSetId = isSetId();
        boolean isSetId2 = user.isSetId();
        if ((isSetId || isSetId2) && !(isSetId && isSetId2 && this.f21189id == user.f21189id)) {
            return false;
        }
        boolean isSetUsername = isSetUsername();
        boolean isSetUsername2 = user.isSetUsername();
        if ((isSetUsername || isSetUsername2) && !(isSetUsername && isSetUsername2 && this.username.equals(user.username))) {
            return false;
        }
        boolean isSetEmail = isSetEmail();
        boolean isSetEmail2 = user.isSetEmail();
        if ((isSetEmail || isSetEmail2) && !(isSetEmail && isSetEmail2 && this.email.equals(user.email))) {
            return false;
        }
        boolean isSetName = isSetName();
        boolean isSetName2 = user.isSetName();
        if ((isSetName || isSetName2) && !(isSetName && isSetName2 && this.name.equals(user.name))) {
            return false;
        }
        boolean isSetTimezone = isSetTimezone();
        boolean isSetTimezone2 = user.isSetTimezone();
        if ((isSetTimezone || isSetTimezone2) && !(isSetTimezone && isSetTimezone2 && this.timezone.equals(user.timezone))) {
            return false;
        }
        boolean isSetPrivilege = isSetPrivilege();
        boolean isSetPrivilege2 = user.isSetPrivilege();
        if ((isSetPrivilege || isSetPrivilege2) && !(isSetPrivilege && isSetPrivilege2 && this.privilege.equals(user.privilege))) {
            return false;
        }
        boolean isSetCreated = isSetCreated();
        boolean isSetCreated2 = user.isSetCreated();
        if ((isSetCreated || isSetCreated2) && !(isSetCreated && isSetCreated2 && this.created == user.created)) {
            return false;
        }
        boolean isSetUpdated = isSetUpdated();
        boolean isSetUpdated2 = user.isSetUpdated();
        if ((isSetUpdated || isSetUpdated2) && !(isSetUpdated && isSetUpdated2 && this.updated == user.updated)) {
            return false;
        }
        boolean isSetDeleted = isSetDeleted();
        boolean isSetDeleted2 = user.isSetDeleted();
        if ((isSetDeleted || isSetDeleted2) && !(isSetDeleted && isSetDeleted2 && this.deleted == user.deleted)) {
            return false;
        }
        boolean isSetActive = isSetActive();
        boolean isSetActive2 = user.isSetActive();
        if ((isSetActive || isSetActive2) && !(isSetActive && isSetActive2 && this.active == user.active)) {
            return false;
        }
        boolean isSetShardId = isSetShardId();
        boolean isSetShardId2 = user.isSetShardId();
        if ((isSetShardId || isSetShardId2) && !(isSetShardId && isSetShardId2 && this.shardId.equals(user.shardId))) {
            return false;
        }
        boolean isSetAttributes = isSetAttributes();
        boolean isSetAttributes2 = user.isSetAttributes();
        if ((isSetAttributes || isSetAttributes2) && !(isSetAttributes && isSetAttributes2 && this.attributes.equals(user.attributes))) {
            return false;
        }
        boolean isSetAccounting = isSetAccounting();
        boolean isSetAccounting2 = user.isSetAccounting();
        if ((isSetAccounting || isSetAccounting2) && !(isSetAccounting && isSetAccounting2 && this.accounting.equals(user.accounting))) {
            return false;
        }
        boolean isSetPremiumInfo = isSetPremiumInfo();
        boolean isSetPremiumInfo2 = user.isSetPremiumInfo();
        if ((isSetPremiumInfo || isSetPremiumInfo2) && !(isSetPremiumInfo && isSetPremiumInfo2 && this.premiumInfo.equals(user.premiumInfo))) {
            return false;
        }
        boolean isSetBusinessUserInfo = isSetBusinessUserInfo();
        boolean isSetBusinessUserInfo2 = user.isSetBusinessUserInfo();
        if (isSetBusinessUserInfo || isSetBusinessUserInfo2) {
            return isSetBusinessUserInfo && isSetBusinessUserInfo2 && this.businessUserInfo.equals(user.businessUserInfo);
        }
        return true;
    }
}
