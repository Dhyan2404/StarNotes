package com.evernote.edam.userstore;

import com.evernote.edam.type.User;
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
public class AuthenticationResult implements TBase<AuthenticationResult>, Serializable, Cloneable {
    private static final int __CURRENTTIME_ISSET_ID = 0;
    private static final int __EXPIRATION_ISSET_ID = 1;
    private static final int __SECONDFACTORREQUIRED_ISSET_ID = 2;
    private boolean[] __isset_vector;
    private String authenticationToken;
    private long currentTime;
    private long expiration;
    private String noteStoreUrl;
    private PublicUserInfo publicUserInfo;
    private String secondFactorDeliveryHint;
    private boolean secondFactorRequired;
    private User user;
    private String webApiUrlPrefix;
    private static final TStruct STRUCT_DESC = new TStruct("AuthenticationResult");
    private static final TField CURRENT_TIME_FIELD_DESC = new TField("currentTime", (byte) 10, 1);
    private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 2);
    private static final TField EXPIRATION_FIELD_DESC = new TField("expiration", (byte) 10, 3);
    private static final TField USER_FIELD_DESC = new TField("user", (byte) 12, 4);
    private static final TField PUBLIC_USER_INFO_FIELD_DESC = new TField("publicUserInfo", (byte) 12, 5);
    private static final TField NOTE_STORE_URL_FIELD_DESC = new TField("noteStoreUrl", (byte) 11, 6);
    private static final TField WEB_API_URL_PREFIX_FIELD_DESC = new TField("webApiUrlPrefix", (byte) 11, 7);
    private static final TField SECOND_FACTOR_REQUIRED_FIELD_DESC = new TField("secondFactorRequired", (byte) 2, 8);
    private static final TField SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC = new TField("secondFactorDeliveryHint", (byte) 11, 9);

    public AuthenticationResult() {
        this.__isset_vector = new boolean[3];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setCurrentTimeIsSet(false);
        this.currentTime = 0L;
        this.authenticationToken = null;
        setExpirationIsSet(false);
        this.expiration = 0L;
        this.user = null;
        this.publicUserInfo = null;
        this.noteStoreUrl = null;
        this.webApiUrlPrefix = null;
        setSecondFactorRequiredIsSet(false);
        this.secondFactorRequired = false;
        this.secondFactorDeliveryHint = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof AuthenticationResult)) {
            return equals((AuthenticationResult) obj);
        }
        return false;
    }

    public String getAuthenticationToken() {
        return this.authenticationToken;
    }

    public long getCurrentTime() {
        return this.currentTime;
    }

    public long getExpiration() {
        return this.expiration;
    }

    public String getNoteStoreUrl() {
        return this.noteStoreUrl;
    }

    public PublicUserInfo getPublicUserInfo() {
        return this.publicUserInfo;
    }

    public String getSecondFactorDeliveryHint() {
        return this.secondFactorDeliveryHint;
    }

    public User getUser() {
        return this.user;
    }

    public String getWebApiUrlPrefix() {
        return this.webApiUrlPrefix;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSecondFactorRequired() {
        return this.secondFactorRequired;
    }

    public boolean isSetAuthenticationToken() {
        return this.authenticationToken != null;
    }

    public boolean isSetCurrentTime() {
        return this.__isset_vector[0];
    }

    public boolean isSetExpiration() {
        return this.__isset_vector[1];
    }

    public boolean isSetNoteStoreUrl() {
        return this.noteStoreUrl != null;
    }

    public boolean isSetPublicUserInfo() {
        return this.publicUserInfo != null;
    }

    public boolean isSetSecondFactorDeliveryHint() {
        return this.secondFactorDeliveryHint != null;
    }

    public boolean isSetSecondFactorRequired() {
        return this.__isset_vector[2];
    }

    public boolean isSetUser() {
        return this.user != null;
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
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.currentTime = tProtocol.readI64();
                        setCurrentTimeIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.authenticationToken = tProtocol.readString();
                        break;
                    }
                case 3:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.expiration = tProtocol.readI64();
                        setExpirationIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        User user = new User();
                        this.user = user;
                        user.read(tProtocol);
                        break;
                    }
                case 5:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        PublicUserInfo publicUserInfo = new PublicUserInfo();
                        this.publicUserInfo = publicUserInfo;
                        publicUserInfo.read(tProtocol);
                        break;
                    }
                case 6:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.noteStoreUrl = tProtocol.readString();
                        break;
                    }
                case 7:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.webApiUrlPrefix = tProtocol.readString();
                        break;
                    }
                case 8:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.secondFactorRequired = tProtocol.readBool();
                        setSecondFactorRequiredIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.secondFactorDeliveryHint = tProtocol.readString();
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAuthenticationToken(String str) {
        this.authenticationToken = str;
    }

    public void setAuthenticationTokenIsSet(boolean z) {
        if (z) {
            return;
        }
        this.authenticationToken = null;
    }

    public void setCurrentTime(long j) {
        this.currentTime = j;
        setCurrentTimeIsSet(true);
    }

    public void setCurrentTimeIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setExpiration(long j) {
        this.expiration = j;
        setExpirationIsSet(true);
    }

    public void setExpirationIsSet(boolean z) {
        this.__isset_vector[1] = z;
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

    public void setPublicUserInfo(PublicUserInfo publicUserInfo) {
        this.publicUserInfo = publicUserInfo;
    }

    public void setPublicUserInfoIsSet(boolean z) {
        if (z) {
            return;
        }
        this.publicUserInfo = null;
    }

    public void setSecondFactorDeliveryHint(String str) {
        this.secondFactorDeliveryHint = str;
    }

    public void setSecondFactorDeliveryHintIsSet(boolean z) {
        if (z) {
            return;
        }
        this.secondFactorDeliveryHint = null;
    }

    public void setSecondFactorRequired(boolean z) {
        this.secondFactorRequired = z;
        setSecondFactorRequiredIsSet(true);
    }

    public void setSecondFactorRequiredIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setUserIsSet(boolean z) {
        if (z) {
            return;
        }
        this.user = null;
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
        StringBuilder sb = new StringBuilder("AuthenticationResult(");
        sb.append("currentTime:");
        sb.append(this.currentTime);
        sb.append(", ");
        sb.append("authenticationToken:");
        String str = this.authenticationToken;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("expiration:");
        sb.append(this.expiration);
        if (isSetUser()) {
            sb.append(", ");
            sb.append("user:");
            User user = this.user;
            if (user == null) {
                sb.append("null");
            } else {
                sb.append(user);
            }
        }
        if (isSetPublicUserInfo()) {
            sb.append(", ");
            sb.append("publicUserInfo:");
            PublicUserInfo publicUserInfo = this.publicUserInfo;
            if (publicUserInfo == null) {
                sb.append("null");
            } else {
                sb.append(publicUserInfo);
            }
        }
        if (isSetNoteStoreUrl()) {
            sb.append(", ");
            sb.append("noteStoreUrl:");
            String str2 = this.noteStoreUrl;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (isSetWebApiUrlPrefix()) {
            sb.append(", ");
            sb.append("webApiUrlPrefix:");
            String str3 = this.webApiUrlPrefix;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (isSetSecondFactorRequired()) {
            sb.append(", ");
            sb.append("secondFactorRequired:");
            sb.append(this.secondFactorRequired);
        }
        if (isSetSecondFactorDeliveryHint()) {
            sb.append(", ");
            sb.append("secondFactorDeliveryHint:");
            String str4 = this.secondFactorDeliveryHint;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAuthenticationToken() {
        this.authenticationToken = null;
    }

    public void unsetCurrentTime() {
        this.__isset_vector[0] = false;
    }

    public void unsetExpiration() {
        this.__isset_vector[1] = false;
    }

    public void unsetNoteStoreUrl() {
        this.noteStoreUrl = null;
    }

    public void unsetPublicUserInfo() {
        this.publicUserInfo = null;
    }

    public void unsetSecondFactorDeliveryHint() {
        this.secondFactorDeliveryHint = null;
    }

    public void unsetSecondFactorRequired() {
        this.__isset_vector[2] = false;
    }

    public void unsetUser() {
        this.user = null;
    }

    public void unsetWebApiUrlPrefix() {
        this.webApiUrlPrefix = null;
    }

    public void validate() throws TException {
        if (!isSetCurrentTime()) {
            throw new TProtocolException("Required field 'currentTime' is unset! Struct:" + toString());
        }
        if (!isSetAuthenticationToken()) {
            throw new TProtocolException("Required field 'authenticationToken' is unset! Struct:" + toString());
        }
        if (isSetExpiration()) {
            return;
        }
        throw new TProtocolException("Required field 'expiration' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        tProtocol.writeFieldBegin(CURRENT_TIME_FIELD_DESC);
        tProtocol.writeI64(this.currentTime);
        tProtocol.writeFieldEnd();
        if (this.authenticationToken != null) {
            tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
            tProtocol.writeString(this.authenticationToken);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldBegin(EXPIRATION_FIELD_DESC);
        tProtocol.writeI64(this.expiration);
        tProtocol.writeFieldEnd();
        if (this.user != null && isSetUser()) {
            tProtocol.writeFieldBegin(USER_FIELD_DESC);
            this.user.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.publicUserInfo != null && isSetPublicUserInfo()) {
            tProtocol.writeFieldBegin(PUBLIC_USER_INFO_FIELD_DESC);
            this.publicUserInfo.write(tProtocol);
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
        if (isSetSecondFactorRequired()) {
            tProtocol.writeFieldBegin(SECOND_FACTOR_REQUIRED_FIELD_DESC);
            tProtocol.writeBool(this.secondFactorRequired);
            tProtocol.writeFieldEnd();
        }
        if (this.secondFactorDeliveryHint != null && isSetSecondFactorDeliveryHint()) {
            tProtocol.writeFieldBegin(SECOND_FACTOR_DELIVERY_HINT_FIELD_DESC);
            tProtocol.writeString(this.secondFactorDeliveryHint);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(AuthenticationResult authenticationResult) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        int compareTo7;
        int compareTo8;
        int compareTo9;
        if (!getClass().equals(authenticationResult.getClass())) {
            return getClass().getName().compareTo(authenticationResult.getClass().getName());
        }
        int compareTo10 = Boolean.valueOf(isSetCurrentTime()).compareTo(Boolean.valueOf(authenticationResult.isSetCurrentTime()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (isSetCurrentTime() && (compareTo9 = TBaseHelper.compareTo(this.currentTime, authenticationResult.currentTime)) != 0) {
            return compareTo9;
        }
        int compareTo11 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(authenticationResult.isSetAuthenticationToken()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (isSetAuthenticationToken() && (compareTo8 = TBaseHelper.compareTo(this.authenticationToken, authenticationResult.authenticationToken)) != 0) {
            return compareTo8;
        }
        int compareTo12 = Boolean.valueOf(isSetExpiration()).compareTo(Boolean.valueOf(authenticationResult.isSetExpiration()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (isSetExpiration() && (compareTo7 = TBaseHelper.compareTo(this.expiration, authenticationResult.expiration)) != 0) {
            return compareTo7;
        }
        int compareTo13 = Boolean.valueOf(isSetUser()).compareTo(Boolean.valueOf(authenticationResult.isSetUser()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetUser() && (compareTo6 = TBaseHelper.compareTo((Comparable) this.user, (Comparable) authenticationResult.user)) != 0) {
            return compareTo6;
        }
        int compareTo14 = Boolean.valueOf(isSetPublicUserInfo()).compareTo(Boolean.valueOf(authenticationResult.isSetPublicUserInfo()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetPublicUserInfo() && (compareTo5 = TBaseHelper.compareTo((Comparable) this.publicUserInfo, (Comparable) authenticationResult.publicUserInfo)) != 0) {
            return compareTo5;
        }
        int compareTo15 = Boolean.valueOf(isSetNoteStoreUrl()).compareTo(Boolean.valueOf(authenticationResult.isSetNoteStoreUrl()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetNoteStoreUrl() && (compareTo4 = TBaseHelper.compareTo(this.noteStoreUrl, authenticationResult.noteStoreUrl)) != 0) {
            return compareTo4;
        }
        int compareTo16 = Boolean.valueOf(isSetWebApiUrlPrefix()).compareTo(Boolean.valueOf(authenticationResult.isSetWebApiUrlPrefix()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetWebApiUrlPrefix() && (compareTo3 = TBaseHelper.compareTo(this.webApiUrlPrefix, authenticationResult.webApiUrlPrefix)) != 0) {
            return compareTo3;
        }
        int compareTo17 = Boolean.valueOf(isSetSecondFactorRequired()).compareTo(Boolean.valueOf(authenticationResult.isSetSecondFactorRequired()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetSecondFactorRequired() && (compareTo2 = TBaseHelper.compareTo(this.secondFactorRequired, authenticationResult.secondFactorRequired)) != 0) {
            return compareTo2;
        }
        int compareTo18 = Boolean.valueOf(isSetSecondFactorDeliveryHint()).compareTo(Boolean.valueOf(authenticationResult.isSetSecondFactorDeliveryHint()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (!isSetSecondFactorDeliveryHint() || (compareTo = TBaseHelper.compareTo(this.secondFactorDeliveryHint, authenticationResult.secondFactorDeliveryHint)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<AuthenticationResult> deepCopy2() {
        return new AuthenticationResult(this);
    }

    public AuthenticationResult(long j, String str, long j2) {
        this();
        this.currentTime = j;
        setCurrentTimeIsSet(true);
        this.authenticationToken = str;
        this.expiration = j2;
        setExpirationIsSet(true);
    }

    public boolean equals(AuthenticationResult authenticationResult) {
        if (authenticationResult == null || this.currentTime != authenticationResult.currentTime) {
            return false;
        }
        boolean isSetAuthenticationToken = isSetAuthenticationToken();
        boolean isSetAuthenticationToken2 = authenticationResult.isSetAuthenticationToken();
        if (((isSetAuthenticationToken || isSetAuthenticationToken2) && !(isSetAuthenticationToken && isSetAuthenticationToken2 && this.authenticationToken.equals(authenticationResult.authenticationToken))) || this.expiration != authenticationResult.expiration) {
            return false;
        }
        boolean isSetUser = isSetUser();
        boolean isSetUser2 = authenticationResult.isSetUser();
        if ((isSetUser || isSetUser2) && !(isSetUser && isSetUser2 && this.user.equals(authenticationResult.user))) {
            return false;
        }
        boolean isSetPublicUserInfo = isSetPublicUserInfo();
        boolean isSetPublicUserInfo2 = authenticationResult.isSetPublicUserInfo();
        if ((isSetPublicUserInfo || isSetPublicUserInfo2) && !(isSetPublicUserInfo && isSetPublicUserInfo2 && this.publicUserInfo.equals(authenticationResult.publicUserInfo))) {
            return false;
        }
        boolean isSetNoteStoreUrl = isSetNoteStoreUrl();
        boolean isSetNoteStoreUrl2 = authenticationResult.isSetNoteStoreUrl();
        if ((isSetNoteStoreUrl || isSetNoteStoreUrl2) && !(isSetNoteStoreUrl && isSetNoteStoreUrl2 && this.noteStoreUrl.equals(authenticationResult.noteStoreUrl))) {
            return false;
        }
        boolean isSetWebApiUrlPrefix = isSetWebApiUrlPrefix();
        boolean isSetWebApiUrlPrefix2 = authenticationResult.isSetWebApiUrlPrefix();
        if ((isSetWebApiUrlPrefix || isSetWebApiUrlPrefix2) && !(isSetWebApiUrlPrefix && isSetWebApiUrlPrefix2 && this.webApiUrlPrefix.equals(authenticationResult.webApiUrlPrefix))) {
            return false;
        }
        boolean isSetSecondFactorRequired = isSetSecondFactorRequired();
        boolean isSetSecondFactorRequired2 = authenticationResult.isSetSecondFactorRequired();
        if ((isSetSecondFactorRequired || isSetSecondFactorRequired2) && !(isSetSecondFactorRequired && isSetSecondFactorRequired2 && this.secondFactorRequired == authenticationResult.secondFactorRequired)) {
            return false;
        }
        boolean isSetSecondFactorDeliveryHint = isSetSecondFactorDeliveryHint();
        boolean isSetSecondFactorDeliveryHint2 = authenticationResult.isSetSecondFactorDeliveryHint();
        if (isSetSecondFactorDeliveryHint || isSetSecondFactorDeliveryHint2) {
            return isSetSecondFactorDeliveryHint && isSetSecondFactorDeliveryHint2 && this.secondFactorDeliveryHint.equals(authenticationResult.secondFactorDeliveryHint);
        }
        return true;
    }

    public AuthenticationResult(AuthenticationResult authenticationResult) {
        boolean[] zArr = new boolean[3];
        this.__isset_vector = zArr;
        boolean[] zArr2 = authenticationResult.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.currentTime = authenticationResult.currentTime;
        if (authenticationResult.isSetAuthenticationToken()) {
            this.authenticationToken = authenticationResult.authenticationToken;
        }
        this.expiration = authenticationResult.expiration;
        if (authenticationResult.isSetUser()) {
            this.user = new User(authenticationResult.user);
        }
        if (authenticationResult.isSetPublicUserInfo()) {
            this.publicUserInfo = new PublicUserInfo(authenticationResult.publicUserInfo);
        }
        if (authenticationResult.isSetNoteStoreUrl()) {
            this.noteStoreUrl = authenticationResult.noteStoreUrl;
        }
        if (authenticationResult.isSetWebApiUrlPrefix()) {
            this.webApiUrlPrefix = authenticationResult.webApiUrlPrefix;
        }
        this.secondFactorRequired = authenticationResult.secondFactorRequired;
        if (authenticationResult.isSetSecondFactorDeliveryHint()) {
            this.secondFactorDeliveryHint = authenticationResult.secondFactorDeliveryHint;
        }
    }
}
