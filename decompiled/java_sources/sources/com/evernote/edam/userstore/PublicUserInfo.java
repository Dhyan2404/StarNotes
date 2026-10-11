package com.evernote.edam.userstore;

import com.couchbase.lite.internal.core.C4Replicator;
import com.evernote.edam.type.PrivilegeLevel;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolException;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class PublicUserInfo implements TBase<PublicUserInfo>, Serializable, Cloneable {
    private static final int __USERID_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private String noteStoreUrl;
    private PrivilegeLevel privilege;
    private String shardId;
    private int userId;
    private String username;
    private String webApiUrlPrefix;
    private static final TStruct STRUCT_DESC = new TStruct("PublicUserInfo");
    private static final TField USER_ID_FIELD_DESC = new TField(Constant.TAG_USER_ID, (byte) 8, 1);
    private static final TField SHARD_ID_FIELD_DESC = new TField("shardId", (byte) 11, 2);
    private static final TField PRIVILEGE_FIELD_DESC = new TField("privilege", (byte) 8, 3);
    private static final TField USERNAME_FIELD_DESC = new TField(C4Replicator.REPLICATOR_AUTH_USER_NAME, (byte) 11, 4);
    private static final TField NOTE_STORE_URL_FIELD_DESC = new TField("noteStoreUrl", (byte) 11, 5);
    private static final TField WEB_API_URL_PREFIX_FIELD_DESC = new TField("webApiUrlPrefix", (byte) 11, 6);

    public PublicUserInfo() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setUserIdIsSet(false);
        this.userId = 0;
        this.shardId = null;
        this.privilege = null;
        this.username = null;
        this.noteStoreUrl = null;
        this.webApiUrlPrefix = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof PublicUserInfo)) {
            return equals((PublicUserInfo) obj);
        }
        return false;
    }

    public String getNoteStoreUrl() {
        return this.noteStoreUrl;
    }

    public PrivilegeLevel getPrivilege() {
        return this.privilege;
    }

    public String getShardId() {
        return this.shardId;
    }

    public int getUserId() {
        return this.userId;
    }

    public String getUsername() {
        return this.username;
    }

    public String getWebApiUrlPrefix() {
        return this.webApiUrlPrefix;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetNoteStoreUrl() {
        return this.noteStoreUrl != null;
    }

    public boolean isSetPrivilege() {
        return this.privilege != null;
    }

    public boolean isSetShardId() {
        return this.shardId != null;
    }

    public boolean isSetUserId() {
        return this.__isset_vector[0];
    }

    public boolean isSetUsername() {
        return this.username != null;
    }

    public boolean isSetWebApiUrlPrefix() {
        return this.webApiUrlPrefix != null;
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
                        this.userId = tProtocol.readI32();
                        setUserIdIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.shardId = tProtocol.readString();
                        break;
                    }
                case 3:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.privilege = PrivilegeLevel.findByValue(tProtocol.readI32());
                        break;
                    }
                case 4:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.username = tProtocol.readString();
                        break;
                    }
                case 5:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noteStoreUrl = tProtocol.readString();
                        break;
                    }
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.webApiUrlPrefix = tProtocol.readString();
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setNoteStoreUrl(String str) {
        this.noteStoreUrl = str;
    }

    public void setNoteStoreUrlIsSet(boolean z) {
        if (z) {
            return;
        }
        this.noteStoreUrl = null;
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

    public void setUserId(int i) {
        this.userId = i;
        setUserIdIsSet(true);
    }

    public void setUserIdIsSet(boolean z) {
        this.__isset_vector[0] = z;
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

    public void setWebApiUrlPrefix(String str) {
        this.webApiUrlPrefix = str;
    }

    public void setWebApiUrlPrefixIsSet(boolean z) {
        if (z) {
            return;
        }
        this.webApiUrlPrefix = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PublicUserInfo(");
        sb.append("userId:");
        sb.append(this.userId);
        sb.append(", ");
        sb.append("shardId:");
        String str = this.shardId;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (isSetPrivilege()) {
            sb.append(", ");
            sb.append("privilege:");
            PrivilegeLevel privilegeLevel = this.privilege;
            if (privilegeLevel == null) {
                sb.append("null");
            } else {
                sb.append(privilegeLevel);
            }
        }
        if (isSetUsername()) {
            sb.append(", ");
            sb.append("username:");
            String str2 = this.username;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (isSetNoteStoreUrl()) {
            sb.append(", ");
            sb.append("noteStoreUrl:");
            String str3 = this.noteStoreUrl;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (isSetWebApiUrlPrefix()) {
            sb.append(", ");
            sb.append("webApiUrlPrefix:");
            String str4 = this.webApiUrlPrefix;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetNoteStoreUrl() {
        this.noteStoreUrl = null;
    }

    public void unsetPrivilege() {
        this.privilege = null;
    }

    public void unsetShardId() {
        this.shardId = null;
    }

    public void unsetUserId() {
        this.__isset_vector[0] = false;
    }

    public void unsetUsername() {
        this.username = null;
    }

    public void unsetWebApiUrlPrefix() {
        this.webApiUrlPrefix = null;
    }

    public void validate() throws TException {
        if (!isSetUserId()) {
            throw new TProtocolException("Required field 'userId' is unset! Struct:" + toString());
        }
        if (isSetShardId()) {
            return;
        }
        throw new TProtocolException("Required field 'shardId' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        tProtocol.writeFieldBegin(USER_ID_FIELD_DESC);
        tProtocol.writeI32(this.userId);
        tProtocol.writeFieldEnd();
        if (this.shardId != null) {
            tProtocol.writeFieldBegin(SHARD_ID_FIELD_DESC);
            tProtocol.writeString(this.shardId);
            tProtocol.writeFieldEnd();
        }
        if (this.privilege != null && isSetPrivilege()) {
            tProtocol.writeFieldBegin(PRIVILEGE_FIELD_DESC);
            tProtocol.writeI32(this.privilege.getValue());
            tProtocol.writeFieldEnd();
        }
        if (this.username != null && isSetUsername()) {
            tProtocol.writeFieldBegin(USERNAME_FIELD_DESC);
            tProtocol.writeString(this.username);
            tProtocol.writeFieldEnd();
        }
        if (this.noteStoreUrl != null && isSetNoteStoreUrl()) {
            tProtocol.writeFieldBegin(NOTE_STORE_URL_FIELD_DESC);
            tProtocol.writeString(this.noteStoreUrl);
            tProtocol.writeFieldEnd();
        }
        if (this.webApiUrlPrefix != null && isSetWebApiUrlPrefix()) {
            tProtocol.writeFieldBegin(WEB_API_URL_PREFIX_FIELD_DESC);
            tProtocol.writeString(this.webApiUrlPrefix);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(PublicUserInfo publicUserInfo) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        if (!getClass().equals(publicUserInfo.getClass())) {
            return getClass().getName().compareTo(publicUserInfo.getClass().getName());
        }
        int compareTo7 = Boolean.valueOf(isSetUserId()).compareTo(Boolean.valueOf(publicUserInfo.isSetUserId()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetUserId() && (compareTo6 = TBaseHelper.compareTo(this.userId, publicUserInfo.userId)) != 0) {
            return compareTo6;
        }
        int compareTo8 = Boolean.valueOf(isSetShardId()).compareTo(Boolean.valueOf(publicUserInfo.isSetShardId()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (isSetShardId() && (compareTo5 = TBaseHelper.compareTo(this.shardId, publicUserInfo.shardId)) != 0) {
            return compareTo5;
        }
        int compareTo9 = Boolean.valueOf(isSetPrivilege()).compareTo(Boolean.valueOf(publicUserInfo.isSetPrivilege()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (isSetPrivilege() && (compareTo4 = TBaseHelper.compareTo((Comparable) this.privilege, (Comparable) publicUserInfo.privilege)) != 0) {
            return compareTo4;
        }
        int compareTo10 = Boolean.valueOf(isSetUsername()).compareTo(Boolean.valueOf(publicUserInfo.isSetUsername()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (isSetUsername() && (compareTo3 = TBaseHelper.compareTo(this.username, publicUserInfo.username)) != 0) {
            return compareTo3;
        }
        int compareTo11 = Boolean.valueOf(isSetNoteStoreUrl()).compareTo(Boolean.valueOf(publicUserInfo.isSetNoteStoreUrl()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (isSetNoteStoreUrl() && (compareTo2 = TBaseHelper.compareTo(this.noteStoreUrl, publicUserInfo.noteStoreUrl)) != 0) {
            return compareTo2;
        }
        int compareTo12 = Boolean.valueOf(isSetWebApiUrlPrefix()).compareTo(Boolean.valueOf(publicUserInfo.isSetWebApiUrlPrefix()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (!isSetWebApiUrlPrefix() || (compareTo = TBaseHelper.compareTo(this.webApiUrlPrefix, publicUserInfo.webApiUrlPrefix)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<PublicUserInfo> deepCopy2() {
        return new PublicUserInfo(this);
    }

    public PublicUserInfo(int i, String str) {
        this();
        this.userId = i;
        setUserIdIsSet(true);
        this.shardId = str;
    }

    public boolean equals(PublicUserInfo publicUserInfo) {
        if (publicUserInfo == null || this.userId != publicUserInfo.userId) {
            return false;
        }
        boolean isSetShardId = isSetShardId();
        boolean isSetShardId2 = publicUserInfo.isSetShardId();
        if ((isSetShardId || isSetShardId2) && !(isSetShardId && isSetShardId2 && this.shardId.equals(publicUserInfo.shardId))) {
            return false;
        }
        boolean isSetPrivilege = isSetPrivilege();
        boolean isSetPrivilege2 = publicUserInfo.isSetPrivilege();
        if ((isSetPrivilege || isSetPrivilege2) && !(isSetPrivilege && isSetPrivilege2 && this.privilege.equals(publicUserInfo.privilege))) {
            return false;
        }
        boolean isSetUsername = isSetUsername();
        boolean isSetUsername2 = publicUserInfo.isSetUsername();
        if ((isSetUsername || isSetUsername2) && !(isSetUsername && isSetUsername2 && this.username.equals(publicUserInfo.username))) {
            return false;
        }
        boolean isSetNoteStoreUrl = isSetNoteStoreUrl();
        boolean isSetNoteStoreUrl2 = publicUserInfo.isSetNoteStoreUrl();
        if ((isSetNoteStoreUrl || isSetNoteStoreUrl2) && !(isSetNoteStoreUrl && isSetNoteStoreUrl2 && this.noteStoreUrl.equals(publicUserInfo.noteStoreUrl))) {
            return false;
        }
        boolean isSetWebApiUrlPrefix = isSetWebApiUrlPrefix();
        boolean isSetWebApiUrlPrefix2 = publicUserInfo.isSetWebApiUrlPrefix();
        if (isSetWebApiUrlPrefix || isSetWebApiUrlPrefix2) {
            return isSetWebApiUrlPrefix && isSetWebApiUrlPrefix2 && this.webApiUrlPrefix.equals(publicUserInfo.webApiUrlPrefix);
        }
        return true;
    }

    public PublicUserInfo(PublicUserInfo publicUserInfo) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = publicUserInfo.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.userId = publicUserInfo.userId;
        if (publicUserInfo.isSetShardId()) {
            this.shardId = publicUserInfo.shardId;
        }
        if (publicUserInfo.isSetPrivilege()) {
            this.privilege = publicUserInfo.privilege;
        }
        if (publicUserInfo.isSetUsername()) {
            this.username = publicUserInfo.username;
        }
        if (publicUserInfo.isSetNoteStoreUrl()) {
            this.noteStoreUrl = publicUserInfo.noteStoreUrl;
        }
        if (publicUserInfo.isSetWebApiUrlPrefix()) {
            this.webApiUrlPrefix = publicUserInfo.webApiUrlPrefix;
        }
    }
}
