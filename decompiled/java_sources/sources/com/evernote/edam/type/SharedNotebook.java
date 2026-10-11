package com.evernote.edam.type;

import com.couchbase.lite.internal.core.C4Replicator;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class SharedNotebook implements TBase<SharedNotebook>, Serializable, Cloneable {
    private static final int __ALLOWPREVIEW_ISSET_ID = 6;
    private static final int __ID_ISSET_ID = 0;
    private static final int __NOTEBOOKMODIFIABLE_ISSET_ID = 2;
    private static final int __REQUIRELOGIN_ISSET_ID = 3;
    private static final int __SERVICECREATED_ISSET_ID = 4;
    private static final int __SERVICEUPDATED_ISSET_ID = 5;
    private static final int __USERID_ISSET_ID = 1;
    private boolean[] __isset_vector;
    private boolean allowPreview;
    private String email;

    /* renamed from: id */
    private long f21188id;
    private String notebookGuid;
    private boolean notebookModifiable;
    private SharedNotebookPrivilegeLevel privilege;
    private SharedNotebookRecipientSettings recipientSettings;
    private boolean requireLogin;
    private long serviceCreated;
    private long serviceUpdated;
    private String shareKey;
    private int userId;
    private String username;
    private static final TStruct STRUCT_DESC = new TStruct("SharedNotebook");
    private static final TField ID_FIELD_DESC = new TField("id", (byte) 10, 1);
    private static final TField USER_ID_FIELD_DESC = new TField(Constant.TAG_USER_ID, (byte) 8, 2);
    private static final TField NOTEBOOK_GUID_FIELD_DESC = new TField("notebookGuid", (byte) 11, 3);
    private static final TField EMAIL_FIELD_DESC = new TField("email", (byte) 11, 4);
    private static final TField NOTEBOOK_MODIFIABLE_FIELD_DESC = new TField("notebookModifiable", (byte) 2, 5);
    private static final TField REQUIRE_LOGIN_FIELD_DESC = new TField("requireLogin", (byte) 2, 6);
    private static final TField SERVICE_CREATED_FIELD_DESC = new TField("serviceCreated", (byte) 10, 7);
    private static final TField SERVICE_UPDATED_FIELD_DESC = new TField("serviceUpdated", (byte) 10, 10);
    private static final TField SHARE_KEY_FIELD_DESC = new TField("shareKey", (byte) 11, 8);
    private static final TField USERNAME_FIELD_DESC = new TField(C4Replicator.REPLICATOR_AUTH_USER_NAME, (byte) 11, 9);
    private static final TField PRIVILEGE_FIELD_DESC = new TField("privilege", (byte) 8, 11);
    private static final TField ALLOW_PREVIEW_FIELD_DESC = new TField("allowPreview", (byte) 2, 12);
    private static final TField RECIPIENT_SETTINGS_FIELD_DESC = new TField("recipientSettings", (byte) 12, 13);

    public SharedNotebook() {
        this.__isset_vector = new boolean[7];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setIdIsSet(false);
        this.f21188id = 0L;
        setUserIdIsSet(false);
        this.userId = 0;
        this.notebookGuid = null;
        this.email = null;
        setNotebookModifiableIsSet(false);
        this.notebookModifiable = false;
        setRequireLoginIsSet(false);
        this.requireLogin = false;
        setServiceCreatedIsSet(false);
        this.serviceCreated = 0L;
        setServiceUpdatedIsSet(false);
        this.serviceUpdated = 0L;
        this.shareKey = null;
        this.username = null;
        this.privilege = null;
        setAllowPreviewIsSet(false);
        this.allowPreview = false;
        this.recipientSettings = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof SharedNotebook)) {
            return equals((SharedNotebook) obj);
        }
        return false;
    }

    public String getEmail() {
        return this.email;
    }

    public long getId() {
        return this.f21188id;
    }

    public String getNotebookGuid() {
        return this.notebookGuid;
    }

    public SharedNotebookPrivilegeLevel getPrivilege() {
        return this.privilege;
    }

    public SharedNotebookRecipientSettings getRecipientSettings() {
        return this.recipientSettings;
    }

    public long getServiceCreated() {
        return this.serviceCreated;
    }

    public long getServiceUpdated() {
        return this.serviceUpdated;
    }

    public String getShareKey() {
        return this.shareKey;
    }

    public int getUserId() {
        return this.userId;
    }

    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isAllowPreview() {
        return this.allowPreview;
    }

    public boolean isNotebookModifiable() {
        return this.notebookModifiable;
    }

    public boolean isRequireLogin() {
        return this.requireLogin;
    }

    public boolean isSetAllowPreview() {
        return this.__isset_vector[6];
    }

    public boolean isSetEmail() {
        return this.email != null;
    }

    public boolean isSetId() {
        return this.__isset_vector[0];
    }

    public boolean isSetNotebookGuid() {
        return this.notebookGuid != null;
    }

    public boolean isSetNotebookModifiable() {
        return this.__isset_vector[2];
    }

    public boolean isSetPrivilege() {
        return this.privilege != null;
    }

    public boolean isSetRecipientSettings() {
        return this.recipientSettings != null;
    }

    public boolean isSetRequireLogin() {
        return this.__isset_vector[3];
    }

    public boolean isSetServiceCreated() {
        return this.__isset_vector[4];
    }

    public boolean isSetServiceUpdated() {
        return this.__isset_vector[5];
    }

    public boolean isSetShareKey() {
        return this.shareKey != null;
    }

    public boolean isSetUserId() {
        return this.__isset_vector[1];
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
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.f21188id = tProtocol.readI64();
                        setIdIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.userId = tProtocol.readI32();
                        setUserIdIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.notebookGuid = tProtocol.readString();
                        break;
                    }
                case 4:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.email = tProtocol.readString();
                        break;
                    }
                case 5:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.notebookModifiable = tProtocol.readBool();
                        setNotebookModifiableIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.requireLogin = tProtocol.readBool();
                        setRequireLoginIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.serviceCreated = tProtocol.readI64();
                        setServiceCreatedIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.shareKey = tProtocol.readString();
                        break;
                    }
                case 9:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.username = tProtocol.readString();
                        break;
                    }
                case 10:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.serviceUpdated = tProtocol.readI64();
                        setServiceUpdatedIsSet(true);
                        break;
                    }
                case 11:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.privilege = SharedNotebookPrivilegeLevel.findByValue(tProtocol.readI32());
                        break;
                    }
                case 12:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.allowPreview = tProtocol.readBool();
                        setAllowPreviewIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        SharedNotebookRecipientSettings sharedNotebookRecipientSettings = new SharedNotebookRecipientSettings();
                        this.recipientSettings = sharedNotebookRecipientSettings;
                        sharedNotebookRecipientSettings.read(tProtocol);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAllowPreview(boolean z) {
        this.allowPreview = z;
        setAllowPreviewIsSet(true);
    }

    public void setAllowPreviewIsSet(boolean z) {
        this.__isset_vector[6] = z;
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

    public void setId(long j) {
        this.f21188id = j;
        setIdIsSet(true);
    }

    public void setIdIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setNotebookGuid(String str) {
        this.notebookGuid = str;
    }

    public void setNotebookGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebookGuid = null;
    }

    public void setNotebookModifiable(boolean z) {
        this.notebookModifiable = z;
        setNotebookModifiableIsSet(true);
    }

    public void setNotebookModifiableIsSet(boolean z) {
        this.__isset_vector[2] = z;
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

    public void setRecipientSettings(SharedNotebookRecipientSettings sharedNotebookRecipientSettings) {
        this.recipientSettings = sharedNotebookRecipientSettings;
    }

    public void setRecipientSettingsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.recipientSettings = null;
    }

    public void setRequireLogin(boolean z) {
        this.requireLogin = z;
        setRequireLoginIsSet(true);
    }

    public void setRequireLoginIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setServiceCreated(long j) {
        this.serviceCreated = j;
        setServiceCreatedIsSet(true);
    }

    public void setServiceCreatedIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setServiceUpdated(long j) {
        this.serviceUpdated = j;
        setServiceUpdatedIsSet(true);
    }

    public void setServiceUpdatedIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setShareKey(String str) {
        this.shareKey = str;
    }

    public void setShareKeyIsSet(boolean z) {
        if (z) {
            return;
        }
        this.shareKey = null;
    }

    public void setUserId(int i) {
        this.userId = i;
        setUserIdIsSet(true);
    }

    public void setUserIdIsSet(boolean z) {
        this.__isset_vector[1] = z;
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
        StringBuilder sb = new StringBuilder("SharedNotebook(");
        boolean z2 = false;
        if (isSetId()) {
            sb.append("id:");
            sb.append(this.f21188id);
            z = false;
        } else {
            z = true;
        }
        if (isSetUserId()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("userId:");
            sb.append(this.userId);
            z = false;
        }
        if (isSetNotebookGuid()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("notebookGuid:");
            String str = this.notebookGuid;
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
        if (isSetNotebookModifiable()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("notebookModifiable:");
            sb.append(this.notebookModifiable);
            z = false;
        }
        if (isSetRequireLogin()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("requireLogin:");
            sb.append(this.requireLogin);
            z = false;
        }
        if (isSetServiceCreated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("serviceCreated:");
            sb.append(this.serviceCreated);
            z = false;
        }
        if (isSetServiceUpdated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("serviceUpdated:");
            sb.append(this.serviceUpdated);
            z = false;
        }
        if (isSetShareKey()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("shareKey:");
            String str3 = this.shareKey;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetUsername()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("username:");
            String str4 = this.username;
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
            SharedNotebookPrivilegeLevel sharedNotebookPrivilegeLevel = this.privilege;
            if (sharedNotebookPrivilegeLevel == null) {
                sb.append("null");
            } else {
                sb.append(sharedNotebookPrivilegeLevel);
            }
            z = false;
        }
        if (isSetAllowPreview()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("allowPreview:");
            sb.append(this.allowPreview);
        } else {
            z2 = z;
        }
        if (isSetRecipientSettings()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("recipientSettings:");
            SharedNotebookRecipientSettings sharedNotebookRecipientSettings = this.recipientSettings;
            if (sharedNotebookRecipientSettings == null) {
                sb.append("null");
            } else {
                sb.append(sharedNotebookRecipientSettings);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAllowPreview() {
        this.__isset_vector[6] = false;
    }

    public void unsetEmail() {
        this.email = null;
    }

    public void unsetId() {
        this.__isset_vector[0] = false;
    }

    public void unsetNotebookGuid() {
        this.notebookGuid = null;
    }

    public void unsetNotebookModifiable() {
        this.__isset_vector[2] = false;
    }

    public void unsetPrivilege() {
        this.privilege = null;
    }

    public void unsetRecipientSettings() {
        this.recipientSettings = null;
    }

    public void unsetRequireLogin() {
        this.__isset_vector[3] = false;
    }

    public void unsetServiceCreated() {
        this.__isset_vector[4] = false;
    }

    public void unsetServiceUpdated() {
        this.__isset_vector[5] = false;
    }

    public void unsetShareKey() {
        this.shareKey = null;
    }

    public void unsetUserId() {
        this.__isset_vector[1] = false;
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
            tProtocol.writeI64(this.f21188id);
            tProtocol.writeFieldEnd();
        }
        if (isSetUserId()) {
            tProtocol.writeFieldBegin(USER_ID_FIELD_DESC);
            tProtocol.writeI32(this.userId);
            tProtocol.writeFieldEnd();
        }
        if (this.notebookGuid != null && isSetNotebookGuid()) {
            tProtocol.writeFieldBegin(NOTEBOOK_GUID_FIELD_DESC);
            tProtocol.writeString(this.notebookGuid);
            tProtocol.writeFieldEnd();
        }
        if (this.email != null && isSetEmail()) {
            tProtocol.writeFieldBegin(EMAIL_FIELD_DESC);
            tProtocol.writeString(this.email);
            tProtocol.writeFieldEnd();
        }
        if (isSetNotebookModifiable()) {
            tProtocol.writeFieldBegin(NOTEBOOK_MODIFIABLE_FIELD_DESC);
            tProtocol.writeBool(this.notebookModifiable);
            tProtocol.writeFieldEnd();
        }
        if (isSetRequireLogin()) {
            tProtocol.writeFieldBegin(REQUIRE_LOGIN_FIELD_DESC);
            tProtocol.writeBool(this.requireLogin);
            tProtocol.writeFieldEnd();
        }
        if (isSetServiceCreated()) {
            tProtocol.writeFieldBegin(SERVICE_CREATED_FIELD_DESC);
            tProtocol.writeI64(this.serviceCreated);
            tProtocol.writeFieldEnd();
        }
        if (this.shareKey != null && isSetShareKey()) {
            tProtocol.writeFieldBegin(SHARE_KEY_FIELD_DESC);
            tProtocol.writeString(this.shareKey);
            tProtocol.writeFieldEnd();
        }
        if (this.username != null && isSetUsername()) {
            tProtocol.writeFieldBegin(USERNAME_FIELD_DESC);
            tProtocol.writeString(this.username);
            tProtocol.writeFieldEnd();
        }
        if (isSetServiceUpdated()) {
            tProtocol.writeFieldBegin(SERVICE_UPDATED_FIELD_DESC);
            tProtocol.writeI64(this.serviceUpdated);
            tProtocol.writeFieldEnd();
        }
        if (this.privilege != null && isSetPrivilege()) {
            tProtocol.writeFieldBegin(PRIVILEGE_FIELD_DESC);
            tProtocol.writeI32(this.privilege.getValue());
            tProtocol.writeFieldEnd();
        }
        if (isSetAllowPreview()) {
            tProtocol.writeFieldBegin(ALLOW_PREVIEW_FIELD_DESC);
            tProtocol.writeBool(this.allowPreview);
            tProtocol.writeFieldEnd();
        }
        if (this.recipientSettings != null && isSetRecipientSettings()) {
            tProtocol.writeFieldBegin(RECIPIENT_SETTINGS_FIELD_DESC);
            this.recipientSettings.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(SharedNotebook sharedNotebook) {
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
        if (!getClass().equals(sharedNotebook.getClass())) {
            return getClass().getName().compareTo(sharedNotebook.getClass().getName());
        }
        int compareTo14 = Boolean.valueOf(isSetId()).compareTo(Boolean.valueOf(sharedNotebook.isSetId()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetId() && (compareTo13 = TBaseHelper.compareTo(this.f21188id, sharedNotebook.f21188id)) != 0) {
            return compareTo13;
        }
        int compareTo15 = Boolean.valueOf(isSetUserId()).compareTo(Boolean.valueOf(sharedNotebook.isSetUserId()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetUserId() && (compareTo12 = TBaseHelper.compareTo(this.userId, sharedNotebook.userId)) != 0) {
            return compareTo12;
        }
        int compareTo16 = Boolean.valueOf(isSetNotebookGuid()).compareTo(Boolean.valueOf(sharedNotebook.isSetNotebookGuid()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetNotebookGuid() && (compareTo11 = TBaseHelper.compareTo(this.notebookGuid, sharedNotebook.notebookGuid)) != 0) {
            return compareTo11;
        }
        int compareTo17 = Boolean.valueOf(isSetEmail()).compareTo(Boolean.valueOf(sharedNotebook.isSetEmail()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetEmail() && (compareTo10 = TBaseHelper.compareTo(this.email, sharedNotebook.email)) != 0) {
            return compareTo10;
        }
        int compareTo18 = Boolean.valueOf(isSetNotebookModifiable()).compareTo(Boolean.valueOf(sharedNotebook.isSetNotebookModifiable()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetNotebookModifiable() && (compareTo9 = TBaseHelper.compareTo(this.notebookModifiable, sharedNotebook.notebookModifiable)) != 0) {
            return compareTo9;
        }
        int compareTo19 = Boolean.valueOf(isSetRequireLogin()).compareTo(Boolean.valueOf(sharedNotebook.isSetRequireLogin()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetRequireLogin() && (compareTo8 = TBaseHelper.compareTo(this.requireLogin, sharedNotebook.requireLogin)) != 0) {
            return compareTo8;
        }
        int compareTo20 = Boolean.valueOf(isSetServiceCreated()).compareTo(Boolean.valueOf(sharedNotebook.isSetServiceCreated()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetServiceCreated() && (compareTo7 = TBaseHelper.compareTo(this.serviceCreated, sharedNotebook.serviceCreated)) != 0) {
            return compareTo7;
        }
        int compareTo21 = Boolean.valueOf(isSetServiceUpdated()).compareTo(Boolean.valueOf(sharedNotebook.isSetServiceUpdated()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetServiceUpdated() && (compareTo6 = TBaseHelper.compareTo(this.serviceUpdated, sharedNotebook.serviceUpdated)) != 0) {
            return compareTo6;
        }
        int compareTo22 = Boolean.valueOf(isSetShareKey()).compareTo(Boolean.valueOf(sharedNotebook.isSetShareKey()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetShareKey() && (compareTo5 = TBaseHelper.compareTo(this.shareKey, sharedNotebook.shareKey)) != 0) {
            return compareTo5;
        }
        int compareTo23 = Boolean.valueOf(isSetUsername()).compareTo(Boolean.valueOf(sharedNotebook.isSetUsername()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetUsername() && (compareTo4 = TBaseHelper.compareTo(this.username, sharedNotebook.username)) != 0) {
            return compareTo4;
        }
        int compareTo24 = Boolean.valueOf(isSetPrivilege()).compareTo(Boolean.valueOf(sharedNotebook.isSetPrivilege()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetPrivilege() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.privilege, (Comparable) sharedNotebook.privilege)) != 0) {
            return compareTo3;
        }
        int compareTo25 = Boolean.valueOf(isSetAllowPreview()).compareTo(Boolean.valueOf(sharedNotebook.isSetAllowPreview()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetAllowPreview() && (compareTo2 = TBaseHelper.compareTo(this.allowPreview, sharedNotebook.allowPreview)) != 0) {
            return compareTo2;
        }
        int compareTo26 = Boolean.valueOf(isSetRecipientSettings()).compareTo(Boolean.valueOf(sharedNotebook.isSetRecipientSettings()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (!isSetRecipientSettings() || (compareTo = TBaseHelper.compareTo((Comparable) this.recipientSettings, (Comparable) sharedNotebook.recipientSettings)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<SharedNotebook> deepCopy2() {
        return new SharedNotebook(this);
    }

    public SharedNotebook(SharedNotebook sharedNotebook) {
        boolean[] zArr = new boolean[7];
        this.__isset_vector = zArr;
        boolean[] zArr2 = sharedNotebook.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.f21188id = sharedNotebook.f21188id;
        this.userId = sharedNotebook.userId;
        if (sharedNotebook.isSetNotebookGuid()) {
            this.notebookGuid = sharedNotebook.notebookGuid;
        }
        if (sharedNotebook.isSetEmail()) {
            this.email = sharedNotebook.email;
        }
        this.notebookModifiable = sharedNotebook.notebookModifiable;
        this.requireLogin = sharedNotebook.requireLogin;
        this.serviceCreated = sharedNotebook.serviceCreated;
        this.serviceUpdated = sharedNotebook.serviceUpdated;
        if (sharedNotebook.isSetShareKey()) {
            this.shareKey = sharedNotebook.shareKey;
        }
        if (sharedNotebook.isSetUsername()) {
            this.username = sharedNotebook.username;
        }
        if (sharedNotebook.isSetPrivilege()) {
            this.privilege = sharedNotebook.privilege;
        }
        this.allowPreview = sharedNotebook.allowPreview;
        if (sharedNotebook.isSetRecipientSettings()) {
            this.recipientSettings = new SharedNotebookRecipientSettings(sharedNotebook.recipientSettings);
        }
    }

    public boolean equals(SharedNotebook sharedNotebook) {
        if (sharedNotebook == null) {
            return false;
        }
        boolean isSetId = isSetId();
        boolean isSetId2 = sharedNotebook.isSetId();
        if ((isSetId || isSetId2) && !(isSetId && isSetId2 && this.f21188id == sharedNotebook.f21188id)) {
            return false;
        }
        boolean isSetUserId = isSetUserId();
        boolean isSetUserId2 = sharedNotebook.isSetUserId();
        if ((isSetUserId || isSetUserId2) && !(isSetUserId && isSetUserId2 && this.userId == sharedNotebook.userId)) {
            return false;
        }
        boolean isSetNotebookGuid = isSetNotebookGuid();
        boolean isSetNotebookGuid2 = sharedNotebook.isSetNotebookGuid();
        if ((isSetNotebookGuid || isSetNotebookGuid2) && !(isSetNotebookGuid && isSetNotebookGuid2 && this.notebookGuid.equals(sharedNotebook.notebookGuid))) {
            return false;
        }
        boolean isSetEmail = isSetEmail();
        boolean isSetEmail2 = sharedNotebook.isSetEmail();
        if ((isSetEmail || isSetEmail2) && !(isSetEmail && isSetEmail2 && this.email.equals(sharedNotebook.email))) {
            return false;
        }
        boolean isSetNotebookModifiable = isSetNotebookModifiable();
        boolean isSetNotebookModifiable2 = sharedNotebook.isSetNotebookModifiable();
        if ((isSetNotebookModifiable || isSetNotebookModifiable2) && !(isSetNotebookModifiable && isSetNotebookModifiable2 && this.notebookModifiable == sharedNotebook.notebookModifiable)) {
            return false;
        }
        boolean isSetRequireLogin = isSetRequireLogin();
        boolean isSetRequireLogin2 = sharedNotebook.isSetRequireLogin();
        if ((isSetRequireLogin || isSetRequireLogin2) && !(isSetRequireLogin && isSetRequireLogin2 && this.requireLogin == sharedNotebook.requireLogin)) {
            return false;
        }
        boolean isSetServiceCreated = isSetServiceCreated();
        boolean isSetServiceCreated2 = sharedNotebook.isSetServiceCreated();
        if ((isSetServiceCreated || isSetServiceCreated2) && !(isSetServiceCreated && isSetServiceCreated2 && this.serviceCreated == sharedNotebook.serviceCreated)) {
            return false;
        }
        boolean isSetServiceUpdated = isSetServiceUpdated();
        boolean isSetServiceUpdated2 = sharedNotebook.isSetServiceUpdated();
        if ((isSetServiceUpdated || isSetServiceUpdated2) && !(isSetServiceUpdated && isSetServiceUpdated2 && this.serviceUpdated == sharedNotebook.serviceUpdated)) {
            return false;
        }
        boolean isSetShareKey = isSetShareKey();
        boolean isSetShareKey2 = sharedNotebook.isSetShareKey();
        if ((isSetShareKey || isSetShareKey2) && !(isSetShareKey && isSetShareKey2 && this.shareKey.equals(sharedNotebook.shareKey))) {
            return false;
        }
        boolean isSetUsername = isSetUsername();
        boolean isSetUsername2 = sharedNotebook.isSetUsername();
        if ((isSetUsername || isSetUsername2) && !(isSetUsername && isSetUsername2 && this.username.equals(sharedNotebook.username))) {
            return false;
        }
        boolean isSetPrivilege = isSetPrivilege();
        boolean isSetPrivilege2 = sharedNotebook.isSetPrivilege();
        if ((isSetPrivilege || isSetPrivilege2) && !(isSetPrivilege && isSetPrivilege2 && this.privilege.equals(sharedNotebook.privilege))) {
            return false;
        }
        boolean isSetAllowPreview = isSetAllowPreview();
        boolean isSetAllowPreview2 = sharedNotebook.isSetAllowPreview();
        if ((isSetAllowPreview || isSetAllowPreview2) && !(isSetAllowPreview && isSetAllowPreview2 && this.allowPreview == sharedNotebook.allowPreview)) {
            return false;
        }
        boolean isSetRecipientSettings = isSetRecipientSettings();
        boolean isSetRecipientSettings2 = sharedNotebook.isSetRecipientSettings();
        if (isSetRecipientSettings || isSetRecipientSettings2) {
            return isSetRecipientSettings && isSetRecipientSettings2 && this.recipientSettings.equals(sharedNotebook.recipientSettings);
        }
        return true;
    }
}
