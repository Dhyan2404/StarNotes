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
import java.io.Serializable;
import xcrash.TombstoneParser;

/* loaded from: classes4.dex */
public class LinkedNotebook implements TBase<LinkedNotebook>, Serializable, Cloneable {
    private static final int __BUSINESSID_ISSET_ID = 1;
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private int businessId;
    private String guid;
    private String noteStoreUrl;
    private String shardId;
    private String shareKey;
    private String shareName;
    private String stack;
    private int updateSequenceNum;
    private String uri;
    private String username;
    private String webApiUrlPrefix;
    private static final TStruct STRUCT_DESC = new TStruct("LinkedNotebook");
    private static final TField SHARE_NAME_FIELD_DESC = new TField("shareName", (byte) 11, 2);
    private static final TField USERNAME_FIELD_DESC = new TField(C4Replicator.REPLICATOR_AUTH_USER_NAME, (byte) 11, 3);
    private static final TField SHARD_ID_FIELD_DESC = new TField("shardId", (byte) 11, 4);
    private static final TField SHARE_KEY_FIELD_DESC = new TField("shareKey", (byte) 11, 5);
    private static final TField URI_FIELD_DESC = new TField("uri", (byte) 11, 6);
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 7);
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 8);
    private static final TField NOTE_STORE_URL_FIELD_DESC = new TField("noteStoreUrl", (byte) 11, 9);
    private static final TField WEB_API_URL_PREFIX_FIELD_DESC = new TField("webApiUrlPrefix", (byte) 11, 10);
    private static final TField STACK_FIELD_DESC = new TField(TombstoneParser.keyStack, (byte) 11, 11);
    private static final TField BUSINESS_ID_FIELD_DESC = new TField("businessId", (byte) 8, 12);

    public LinkedNotebook() {
        this.__isset_vector = new boolean[2];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.shareName = null;
        this.username = null;
        this.shardId = null;
        this.shareKey = null;
        this.uri = null;
        this.guid = null;
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
        this.noteStoreUrl = null;
        this.webApiUrlPrefix = null;
        this.stack = null;
        setBusinessIdIsSet(false);
        this.businessId = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof LinkedNotebook)) {
            return equals((LinkedNotebook) obj);
        }
        return false;
    }

    public int getBusinessId() {
        return this.businessId;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getNoteStoreUrl() {
        return this.noteStoreUrl;
    }

    public String getShardId() {
        return this.shardId;
    }

    public String getShareKey() {
        return this.shareKey;
    }

    public String getShareName() {
        return this.shareName;
    }

    public String getStack() {
        return this.stack;
    }

    public int getUpdateSequenceNum() {
        return this.updateSequenceNum;
    }

    public String getUri() {
        return this.uri;
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

    public boolean isSetBusinessId() {
        return this.__isset_vector[1];
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetNoteStoreUrl() {
        return this.noteStoreUrl != null;
    }

    public boolean isSetShardId() {
        return this.shardId != null;
    }

    public boolean isSetShareKey() {
        return this.shareKey != null;
    }

    public boolean isSetShareName() {
        return this.shareName != null;
    }

    public boolean isSetStack() {
        return this.stack != null;
    }

    public boolean isSetUpdateSequenceNum() {
        return this.__isset_vector[0];
    }

    public boolean isSetUri() {
        return this.uri != null;
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
                case 2:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.shareName = tProtocol.readString();
                        break;
                    }
                case 3:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.username = tProtocol.readString();
                        break;
                    }
                case 4:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.shardId = tProtocol.readString();
                        break;
                    }
                case 5:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.shareKey = tProtocol.readString();
                        break;
                    }
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.uri = tProtocol.readString();
                        break;
                    }
                case 7:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.guid = tProtocol.readString();
                        break;
                    }
                case 8:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updateSequenceNum = tProtocol.readI32();
                        setUpdateSequenceNumIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noteStoreUrl = tProtocol.readString();
                        break;
                    }
                case 10:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.webApiUrlPrefix = tProtocol.readString();
                        break;
                    }
                case 11:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.stack = tProtocol.readString();
                        break;
                    }
                case 12:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.businessId = tProtocol.readI32();
                        setBusinessIdIsSet(true);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setBusinessId(int i) {
        this.businessId = i;
        setBusinessIdIsSet(true);
    }

    public void setBusinessIdIsSet(boolean z) {
        this.__isset_vector[1] = z;
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

    public void setNoteStoreUrl(String str) {
        this.noteStoreUrl = str;
    }

    public void setNoteStoreUrlIsSet(boolean z) {
        if (z) {
            return;
        }
        this.noteStoreUrl = null;
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

    public void setShareKey(String str) {
        this.shareKey = str;
    }

    public void setShareKeyIsSet(boolean z) {
        if (z) {
            return;
        }
        this.shareKey = null;
    }

    public void setShareName(String str) {
        this.shareName = str;
    }

    public void setShareNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.shareName = null;
    }

    public void setStack(String str) {
        this.stack = str;
    }

    public void setStackIsSet(boolean z) {
        if (z) {
            return;
        }
        this.stack = null;
    }

    public void setUpdateSequenceNum(int i) {
        this.updateSequenceNum = i;
        setUpdateSequenceNumIsSet(true);
    }

    public void setUpdateSequenceNumIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public void setUriIsSet(boolean z) {
        if (z) {
            return;
        }
        this.uri = null;
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
        boolean z;
        StringBuilder sb = new StringBuilder("LinkedNotebook(");
        boolean z2 = false;
        if (isSetShareName()) {
            sb.append("shareName:");
            String str = this.shareName;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetUsername()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("username:");
            String str2 = this.username;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetShardId()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("shardId:");
            String str3 = this.shardId;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetShareKey()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("shareKey:");
            String str4 = this.shareKey;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (isSetUri()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("uri:");
            String str5 = this.uri;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (isSetGuid()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("guid:");
            String str6 = this.guid;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
            z = false;
        }
        if (isSetUpdateSequenceNum()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updateSequenceNum:");
            sb.append(this.updateSequenceNum);
            z = false;
        }
        if (isSetNoteStoreUrl()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("noteStoreUrl:");
            String str7 = this.noteStoreUrl;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
            z = false;
        }
        if (isSetWebApiUrlPrefix()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("webApiUrlPrefix:");
            String str8 = this.webApiUrlPrefix;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
            z = false;
        }
        if (isSetStack()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("stack:");
            String str9 = this.stack;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        } else {
            z2 = z;
        }
        if (isSetBusinessId()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("businessId:");
            sb.append(this.businessId);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetBusinessId() {
        this.__isset_vector[1] = false;
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetNoteStoreUrl() {
        this.noteStoreUrl = null;
    }

    public void unsetShardId() {
        this.shardId = null;
    }

    public void unsetShareKey() {
        this.shareKey = null;
    }

    public void unsetShareName() {
        this.shareName = null;
    }

    public void unsetStack() {
        this.stack = null;
    }

    public void unsetUpdateSequenceNum() {
        this.__isset_vector[0] = false;
    }

    public void unsetUri() {
        this.uri = null;
    }

    public void unsetUsername() {
        this.username = null;
    }

    public void unsetWebApiUrlPrefix() {
        this.webApiUrlPrefix = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.shareName != null && isSetShareName()) {
            tProtocol.writeFieldBegin(SHARE_NAME_FIELD_DESC);
            tProtocol.writeString(this.shareName);
            tProtocol.writeFieldEnd();
        }
        if (this.username != null && isSetUsername()) {
            tProtocol.writeFieldBegin(USERNAME_FIELD_DESC);
            tProtocol.writeString(this.username);
            tProtocol.writeFieldEnd();
        }
        if (this.shardId != null && isSetShardId()) {
            tProtocol.writeFieldBegin(SHARD_ID_FIELD_DESC);
            tProtocol.writeString(this.shardId);
            tProtocol.writeFieldEnd();
        }
        if (this.shareKey != null && isSetShareKey()) {
            tProtocol.writeFieldBegin(SHARE_KEY_FIELD_DESC);
            tProtocol.writeString(this.shareKey);
            tProtocol.writeFieldEnd();
        }
        if (this.uri != null && isSetUri()) {
            tProtocol.writeFieldBegin(URI_FIELD_DESC);
            tProtocol.writeString(this.uri);
            tProtocol.writeFieldEnd();
        }
        if (this.guid != null && isSetGuid()) {
            tProtocol.writeFieldBegin(GUID_FIELD_DESC);
            tProtocol.writeString(this.guid);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdateSequenceNum()) {
            tProtocol.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
            tProtocol.writeI32(this.updateSequenceNum);
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
        if (this.stack != null && isSetStack()) {
            tProtocol.writeFieldBegin(STACK_FIELD_DESC);
            tProtocol.writeString(this.stack);
            tProtocol.writeFieldEnd();
        }
        if (isSetBusinessId()) {
            tProtocol.writeFieldBegin(BUSINESS_ID_FIELD_DESC);
            tProtocol.writeI32(this.businessId);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(LinkedNotebook linkedNotebook) {
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
        if (!getClass().equals(linkedNotebook.getClass())) {
            return getClass().getName().compareTo(linkedNotebook.getClass().getName());
        }
        int compareTo12 = Boolean.valueOf(isSetShareName()).compareTo(Boolean.valueOf(linkedNotebook.isSetShareName()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (isSetShareName() && (compareTo11 = TBaseHelper.compareTo(this.shareName, linkedNotebook.shareName)) != 0) {
            return compareTo11;
        }
        int compareTo13 = Boolean.valueOf(isSetUsername()).compareTo(Boolean.valueOf(linkedNotebook.isSetUsername()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetUsername() && (compareTo10 = TBaseHelper.compareTo(this.username, linkedNotebook.username)) != 0) {
            return compareTo10;
        }
        int compareTo14 = Boolean.valueOf(isSetShardId()).compareTo(Boolean.valueOf(linkedNotebook.isSetShardId()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetShardId() && (compareTo9 = TBaseHelper.compareTo(this.shardId, linkedNotebook.shardId)) != 0) {
            return compareTo9;
        }
        int compareTo15 = Boolean.valueOf(isSetShareKey()).compareTo(Boolean.valueOf(linkedNotebook.isSetShareKey()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetShareKey() && (compareTo8 = TBaseHelper.compareTo(this.shareKey, linkedNotebook.shareKey)) != 0) {
            return compareTo8;
        }
        int compareTo16 = Boolean.valueOf(isSetUri()).compareTo(Boolean.valueOf(linkedNotebook.isSetUri()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetUri() && (compareTo7 = TBaseHelper.compareTo(this.uri, linkedNotebook.uri)) != 0) {
            return compareTo7;
        }
        int compareTo17 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(linkedNotebook.isSetGuid()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetGuid() && (compareTo6 = TBaseHelper.compareTo(this.guid, linkedNotebook.guid)) != 0) {
            return compareTo6;
        }
        int compareTo18 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(linkedNotebook.isSetUpdateSequenceNum()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetUpdateSequenceNum() && (compareTo5 = TBaseHelper.compareTo(this.updateSequenceNum, linkedNotebook.updateSequenceNum)) != 0) {
            return compareTo5;
        }
        int compareTo19 = Boolean.valueOf(isSetNoteStoreUrl()).compareTo(Boolean.valueOf(linkedNotebook.isSetNoteStoreUrl()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetNoteStoreUrl() && (compareTo4 = TBaseHelper.compareTo(this.noteStoreUrl, linkedNotebook.noteStoreUrl)) != 0) {
            return compareTo4;
        }
        int compareTo20 = Boolean.valueOf(isSetWebApiUrlPrefix()).compareTo(Boolean.valueOf(linkedNotebook.isSetWebApiUrlPrefix()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetWebApiUrlPrefix() && (compareTo3 = TBaseHelper.compareTo(this.webApiUrlPrefix, linkedNotebook.webApiUrlPrefix)) != 0) {
            return compareTo3;
        }
        int compareTo21 = Boolean.valueOf(isSetStack()).compareTo(Boolean.valueOf(linkedNotebook.isSetStack()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetStack() && (compareTo2 = TBaseHelper.compareTo(this.stack, linkedNotebook.stack)) != 0) {
            return compareTo2;
        }
        int compareTo22 = Boolean.valueOf(isSetBusinessId()).compareTo(Boolean.valueOf(linkedNotebook.isSetBusinessId()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (!isSetBusinessId() || (compareTo = TBaseHelper.compareTo(this.businessId, linkedNotebook.businessId)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<LinkedNotebook> deepCopy2() {
        return new LinkedNotebook(this);
    }

    public LinkedNotebook(LinkedNotebook linkedNotebook) {
        boolean[] zArr = new boolean[2];
        this.__isset_vector = zArr;
        boolean[] zArr2 = linkedNotebook.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (linkedNotebook.isSetShareName()) {
            this.shareName = linkedNotebook.shareName;
        }
        if (linkedNotebook.isSetUsername()) {
            this.username = linkedNotebook.username;
        }
        if (linkedNotebook.isSetShardId()) {
            this.shardId = linkedNotebook.shardId;
        }
        if (linkedNotebook.isSetShareKey()) {
            this.shareKey = linkedNotebook.shareKey;
        }
        if (linkedNotebook.isSetUri()) {
            this.uri = linkedNotebook.uri;
        }
        if (linkedNotebook.isSetGuid()) {
            this.guid = linkedNotebook.guid;
        }
        this.updateSequenceNum = linkedNotebook.updateSequenceNum;
        if (linkedNotebook.isSetNoteStoreUrl()) {
            this.noteStoreUrl = linkedNotebook.noteStoreUrl;
        }
        if (linkedNotebook.isSetWebApiUrlPrefix()) {
            this.webApiUrlPrefix = linkedNotebook.webApiUrlPrefix;
        }
        if (linkedNotebook.isSetStack()) {
            this.stack = linkedNotebook.stack;
        }
        this.businessId = linkedNotebook.businessId;
    }

    public boolean equals(LinkedNotebook linkedNotebook) {
        if (linkedNotebook == null) {
            return false;
        }
        boolean isSetShareName = isSetShareName();
        boolean isSetShareName2 = linkedNotebook.isSetShareName();
        if ((isSetShareName || isSetShareName2) && !(isSetShareName && isSetShareName2 && this.shareName.equals(linkedNotebook.shareName))) {
            return false;
        }
        boolean isSetUsername = isSetUsername();
        boolean isSetUsername2 = linkedNotebook.isSetUsername();
        if ((isSetUsername || isSetUsername2) && !(isSetUsername && isSetUsername2 && this.username.equals(linkedNotebook.username))) {
            return false;
        }
        boolean isSetShardId = isSetShardId();
        boolean isSetShardId2 = linkedNotebook.isSetShardId();
        if ((isSetShardId || isSetShardId2) && !(isSetShardId && isSetShardId2 && this.shardId.equals(linkedNotebook.shardId))) {
            return false;
        }
        boolean isSetShareKey = isSetShareKey();
        boolean isSetShareKey2 = linkedNotebook.isSetShareKey();
        if ((isSetShareKey || isSetShareKey2) && !(isSetShareKey && isSetShareKey2 && this.shareKey.equals(linkedNotebook.shareKey))) {
            return false;
        }
        boolean isSetUri = isSetUri();
        boolean isSetUri2 = linkedNotebook.isSetUri();
        if ((isSetUri || isSetUri2) && !(isSetUri && isSetUri2 && this.uri.equals(linkedNotebook.uri))) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = linkedNotebook.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(linkedNotebook.guid))) {
            return false;
        }
        boolean isSetUpdateSequenceNum = isSetUpdateSequenceNum();
        boolean isSetUpdateSequenceNum2 = linkedNotebook.isSetUpdateSequenceNum();
        if ((isSetUpdateSequenceNum || isSetUpdateSequenceNum2) && !(isSetUpdateSequenceNum && isSetUpdateSequenceNum2 && this.updateSequenceNum == linkedNotebook.updateSequenceNum)) {
            return false;
        }
        boolean isSetNoteStoreUrl = isSetNoteStoreUrl();
        boolean isSetNoteStoreUrl2 = linkedNotebook.isSetNoteStoreUrl();
        if ((isSetNoteStoreUrl || isSetNoteStoreUrl2) && !(isSetNoteStoreUrl && isSetNoteStoreUrl2 && this.noteStoreUrl.equals(linkedNotebook.noteStoreUrl))) {
            return false;
        }
        boolean isSetWebApiUrlPrefix = isSetWebApiUrlPrefix();
        boolean isSetWebApiUrlPrefix2 = linkedNotebook.isSetWebApiUrlPrefix();
        if ((isSetWebApiUrlPrefix || isSetWebApiUrlPrefix2) && !(isSetWebApiUrlPrefix && isSetWebApiUrlPrefix2 && this.webApiUrlPrefix.equals(linkedNotebook.webApiUrlPrefix))) {
            return false;
        }
        boolean isSetStack = isSetStack();
        boolean isSetStack2 = linkedNotebook.isSetStack();
        if ((isSetStack || isSetStack2) && !(isSetStack && isSetStack2 && this.stack.equals(linkedNotebook.stack))) {
            return false;
        }
        boolean isSetBusinessId = isSetBusinessId();
        boolean isSetBusinessId2 = linkedNotebook.isSetBusinessId();
        if (isSetBusinessId || isSetBusinessId2) {
            return isSetBusinessId && isSetBusinessId2 && this.businessId == linkedNotebook.businessId;
        }
        return true;
    }
}
