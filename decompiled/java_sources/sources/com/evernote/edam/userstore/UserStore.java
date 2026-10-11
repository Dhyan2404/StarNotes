package com.evernote.edam.userstore;

import com.couchbase.lite.internal.core.C4Replicator;
import com.evernote.client.android.login.EvernoteLoginFragment;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.PremiumInfo;
import com.evernote.edam.type.User;
import com.evernote.thrift.TApplicationException;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.TServiceClient;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TMessage;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class UserStore {

    /* loaded from: classes4.dex */
    public static class Client implements TServiceClient, Iface {
        protected TProtocol iprot_;
        protected TProtocol oprot_;
        protected int seqid_;

        public Client(TProtocol tProtocol) {
            this(tProtocol, tProtocol);
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public AuthenticationResult authenticate(String str, String str2, String str3, String str4, boolean z) throws EDAMUserException, EDAMSystemException, TException {
            send_authenticate(str, str2, str3, str4, z);
            return recv_authenticate();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public AuthenticationResult authenticateLongSession(String str, String str2, String str3, String str4, String str5, String str6, boolean z) throws EDAMUserException, EDAMSystemException, TException {
            send_authenticateLongSession(str, str2, str3, str4, str5, str6, z);
            return recv_authenticateLongSession();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public AuthenticationResult authenticateToBusiness(String str) throws EDAMUserException, EDAMSystemException, TException {
            send_authenticateToBusiness(str);
            return recv_authenticateToBusiness();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public boolean checkVersion(String str, short s, short s2) throws TException {
            send_checkVersion(str, s, s2);
            return recv_checkVersion();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public AuthenticationResult completeTwoFactorAuthentication(String str, String str2, String str3, String str4) throws EDAMUserException, EDAMSystemException, TException {
            send_completeTwoFactorAuthentication(str, str2, str3, str4);
            return recv_completeTwoFactorAuthentication();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public BootstrapInfo getBootstrapInfo(String str) throws TException {
            send_getBootstrapInfo(str);
            return recv_getBootstrapInfo();
        }

        @Override // com.evernote.thrift.TServiceClient
        public TProtocol getInputProtocol() {
            return this.iprot_;
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public String getNoteStoreUrl(String str) throws EDAMUserException, EDAMSystemException, TException {
            send_getNoteStoreUrl(str);
            return recv_getNoteStoreUrl();
        }

        @Override // com.evernote.thrift.TServiceClient
        public TProtocol getOutputProtocol() {
            return this.oprot_;
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public PremiumInfo getPremiumInfo(String str) throws EDAMUserException, EDAMSystemException, TException {
            send_getPremiumInfo(str);
            return recv_getPremiumInfo();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public PublicUserInfo getPublicUserInfo(String str) throws EDAMNotFoundException, EDAMSystemException, EDAMUserException, TException {
            send_getPublicUserInfo(str);
            return recv_getPublicUserInfo();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public User getUser(String str) throws EDAMUserException, EDAMSystemException, TException {
            send_getUser(str);
            return recv_getUser();
        }

        public AuthenticationResult recv_authenticate() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "authenticate failed: out of sequence response");
            }
            authenticate_result authenticate_resultVar = new authenticate_result();
            authenticate_resultVar.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (authenticate_resultVar.isSetSuccess()) {
                return authenticate_resultVar.success;
            }
            if (authenticate_resultVar.userException != null) {
                throw authenticate_resultVar.userException;
            }
            if (authenticate_resultVar.systemException != null) {
                throw authenticate_resultVar.systemException;
            }
            throw new TApplicationException(5, "authenticate failed: unknown result");
        }

        public AuthenticationResult recv_authenticateLongSession() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "authenticateLongSession failed: out of sequence response");
            }
            authenticateLongSession_result authenticatelongsession_result = new authenticateLongSession_result();
            authenticatelongsession_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (authenticatelongsession_result.isSetSuccess()) {
                return authenticatelongsession_result.success;
            }
            if (authenticatelongsession_result.userException != null) {
                throw authenticatelongsession_result.userException;
            }
            if (authenticatelongsession_result.systemException != null) {
                throw authenticatelongsession_result.systemException;
            }
            throw new TApplicationException(5, "authenticateLongSession failed: unknown result");
        }

        public AuthenticationResult recv_authenticateToBusiness() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "authenticateToBusiness failed: out of sequence response");
            }
            authenticateToBusiness_result authenticatetobusiness_result = new authenticateToBusiness_result();
            authenticatetobusiness_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (authenticatetobusiness_result.isSetSuccess()) {
                return authenticatetobusiness_result.success;
            }
            if (authenticatetobusiness_result.userException != null) {
                throw authenticatetobusiness_result.userException;
            }
            if (authenticatetobusiness_result.systemException != null) {
                throw authenticatetobusiness_result.systemException;
            }
            throw new TApplicationException(5, "authenticateToBusiness failed: unknown result");
        }

        public boolean recv_checkVersion() throws TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "checkVersion failed: out of sequence response");
            }
            checkVersion_result checkversion_result = new checkVersion_result();
            checkversion_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (checkversion_result.isSetSuccess()) {
                return checkversion_result.success;
            }
            throw new TApplicationException(5, "checkVersion failed: unknown result");
        }

        public AuthenticationResult recv_completeTwoFactorAuthentication() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "completeTwoFactorAuthentication failed: out of sequence response");
            }
            completeTwoFactorAuthentication_result completetwofactorauthentication_result = new completeTwoFactorAuthentication_result();
            completetwofactorauthentication_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (completetwofactorauthentication_result.isSetSuccess()) {
                return completetwofactorauthentication_result.success;
            }
            if (completetwofactorauthentication_result.userException != null) {
                throw completetwofactorauthentication_result.userException;
            }
            if (completetwofactorauthentication_result.systemException != null) {
                throw completetwofactorauthentication_result.systemException;
            }
            throw new TApplicationException(5, "completeTwoFactorAuthentication failed: unknown result");
        }

        public BootstrapInfo recv_getBootstrapInfo() throws TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "getBootstrapInfo failed: out of sequence response");
            }
            getBootstrapInfo_result getbootstrapinfo_result = new getBootstrapInfo_result();
            getbootstrapinfo_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (getbootstrapinfo_result.isSetSuccess()) {
                return getbootstrapinfo_result.success;
            }
            throw new TApplicationException(5, "getBootstrapInfo failed: unknown result");
        }

        public String recv_getNoteStoreUrl() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "getNoteStoreUrl failed: out of sequence response");
            }
            getNoteStoreUrl_result getnotestoreurl_result = new getNoteStoreUrl_result();
            getnotestoreurl_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (getnotestoreurl_result.isSetSuccess()) {
                return getnotestoreurl_result.success;
            }
            if (getnotestoreurl_result.userException != null) {
                throw getnotestoreurl_result.userException;
            }
            if (getnotestoreurl_result.systemException != null) {
                throw getnotestoreurl_result.systemException;
            }
            throw new TApplicationException(5, "getNoteStoreUrl failed: unknown result");
        }

        public PremiumInfo recv_getPremiumInfo() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "getPremiumInfo failed: out of sequence response");
            }
            getPremiumInfo_result getpremiuminfo_result = new getPremiumInfo_result();
            getpremiuminfo_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (getpremiuminfo_result.isSetSuccess()) {
                return getpremiuminfo_result.success;
            }
            if (getpremiuminfo_result.userException != null) {
                throw getpremiuminfo_result.userException;
            }
            if (getpremiuminfo_result.systemException != null) {
                throw getpremiuminfo_result.systemException;
            }
            throw new TApplicationException(5, "getPremiumInfo failed: unknown result");
        }

        public PublicUserInfo recv_getPublicUserInfo() throws EDAMNotFoundException, EDAMSystemException, EDAMUserException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "getPublicUserInfo failed: out of sequence response");
            }
            getPublicUserInfo_result getpublicuserinfo_result = new getPublicUserInfo_result();
            getpublicuserinfo_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (getpublicuserinfo_result.isSetSuccess()) {
                return getpublicuserinfo_result.success;
            }
            if (getpublicuserinfo_result.notFoundException != null) {
                throw getpublicuserinfo_result.notFoundException;
            }
            if (getpublicuserinfo_result.systemException != null) {
                throw getpublicuserinfo_result.systemException;
            }
            if (getpublicuserinfo_result.userException != null) {
                throw getpublicuserinfo_result.userException;
            }
            throw new TApplicationException(5, "getPublicUserInfo failed: unknown result");
        }

        public User recv_getUser() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "getUser failed: out of sequence response");
            }
            getUser_result getuser_result = new getUser_result();
            getuser_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (getuser_result.isSetSuccess()) {
                return getuser_result.success;
            }
            if (getuser_result.userException != null) {
                throw getuser_result.userException;
            }
            if (getuser_result.systemException != null) {
                throw getuser_result.systemException;
            }
            throw new TApplicationException(5, "getUser failed: unknown result");
        }

        public AuthenticationResult recv_refreshAuthentication() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "refreshAuthentication failed: out of sequence response");
            }
            refreshAuthentication_result refreshauthentication_result = new refreshAuthentication_result();
            refreshauthentication_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (refreshauthentication_result.isSetSuccess()) {
                return refreshauthentication_result.success;
            }
            if (refreshauthentication_result.userException != null) {
                throw refreshauthentication_result.userException;
            }
            if (refreshauthentication_result.systemException != null) {
                throw refreshauthentication_result.systemException;
            }
            throw new TApplicationException(5, "refreshAuthentication failed: unknown result");
        }

        public void recv_revokeLongSession() throws EDAMUserException, EDAMSystemException, TException {
            TMessage readMessageBegin = this.iprot_.readMessageBegin();
            if (readMessageBegin.type == 3) {
                TApplicationException read = TApplicationException.read(this.iprot_);
                this.iprot_.readMessageEnd();
                throw read;
            }
            if (readMessageBegin.seqid != this.seqid_) {
                throw new TApplicationException(4, "revokeLongSession failed: out of sequence response");
            }
            revokeLongSession_result revokelongsession_result = new revokeLongSession_result();
            revokelongsession_result.read(this.iprot_);
            this.iprot_.readMessageEnd();
            if (revokelongsession_result.userException != null) {
                throw revokelongsession_result.userException;
            }
            if (revokelongsession_result.systemException != null) {
                throw revokelongsession_result.systemException;
            }
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public AuthenticationResult refreshAuthentication(String str) throws EDAMUserException, EDAMSystemException, TException {
            send_refreshAuthentication(str);
            return recv_refreshAuthentication();
        }

        @Override // com.evernote.edam.userstore.UserStoreIface
        public void revokeLongSession(String str) throws EDAMUserException, EDAMSystemException, TException {
            send_revokeLongSession(str);
            recv_revokeLongSession();
        }

        public void send_authenticate(String str, String str2, String str3, String str4, boolean z) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("authenticate", (byte) 1, i));
            authenticate_args authenticate_argsVar = new authenticate_args();
            authenticate_argsVar.setUsername(str);
            authenticate_argsVar.setPassword(str2);
            authenticate_argsVar.setConsumerKey(str3);
            authenticate_argsVar.setConsumerSecret(str4);
            authenticate_argsVar.setSupportsTwoFactor(z);
            authenticate_argsVar.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_authenticateLongSession(String str, String str2, String str3, String str4, String str5, String str6, boolean z) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("authenticateLongSession", (byte) 1, i));
            authenticateLongSession_args authenticatelongsession_args = new authenticateLongSession_args();
            authenticatelongsession_args.setUsername(str);
            authenticatelongsession_args.setPassword(str2);
            authenticatelongsession_args.setConsumerKey(str3);
            authenticatelongsession_args.setConsumerSecret(str4);
            authenticatelongsession_args.setDeviceIdentifier(str5);
            authenticatelongsession_args.setDeviceDescription(str6);
            authenticatelongsession_args.setSupportsTwoFactor(z);
            authenticatelongsession_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_authenticateToBusiness(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("authenticateToBusiness", (byte) 1, i));
            authenticateToBusiness_args authenticatetobusiness_args = new authenticateToBusiness_args();
            authenticatetobusiness_args.setAuthenticationToken(str);
            authenticatetobusiness_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_checkVersion(String str, short s, short s2) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("checkVersion", (byte) 1, i));
            checkVersion_args checkversion_args = new checkVersion_args();
            checkversion_args.setClientName(str);
            checkversion_args.setEdamVersionMajor(s);
            checkversion_args.setEdamVersionMinor(s2);
            checkversion_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_completeTwoFactorAuthentication(String str, String str2, String str3, String str4) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("completeTwoFactorAuthentication", (byte) 1, i));
            completeTwoFactorAuthentication_args completetwofactorauthentication_args = new completeTwoFactorAuthentication_args();
            completetwofactorauthentication_args.setAuthenticationToken(str);
            completetwofactorauthentication_args.setOneTimeCode(str2);
            completetwofactorauthentication_args.setDeviceIdentifier(str3);
            completetwofactorauthentication_args.setDeviceDescription(str4);
            completetwofactorauthentication_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_getBootstrapInfo(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("getBootstrapInfo", (byte) 1, i));
            getBootstrapInfo_args getbootstrapinfo_args = new getBootstrapInfo_args();
            getbootstrapinfo_args.setLocale(str);
            getbootstrapinfo_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_getNoteStoreUrl(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("getNoteStoreUrl", (byte) 1, i));
            getNoteStoreUrl_args getnotestoreurl_args = new getNoteStoreUrl_args();
            getnotestoreurl_args.setAuthenticationToken(str);
            getnotestoreurl_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_getPremiumInfo(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("getPremiumInfo", (byte) 1, i));
            getPremiumInfo_args getpremiuminfo_args = new getPremiumInfo_args();
            getpremiuminfo_args.setAuthenticationToken(str);
            getpremiuminfo_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_getPublicUserInfo(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("getPublicUserInfo", (byte) 1, i));
            getPublicUserInfo_args getpublicuserinfo_args = new getPublicUserInfo_args();
            getpublicuserinfo_args.setUsername(str);
            getpublicuserinfo_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_getUser(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("getUser", (byte) 1, i));
            getUser_args getuser_args = new getUser_args();
            getuser_args.setAuthenticationToken(str);
            getuser_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_refreshAuthentication(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("refreshAuthentication", (byte) 1, i));
            refreshAuthentication_args refreshauthentication_args = new refreshAuthentication_args();
            refreshauthentication_args.setAuthenticationToken(str);
            refreshauthentication_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public void send_revokeLongSession(String str) throws TException {
            TProtocol tProtocol = this.oprot_;
            int i = this.seqid_ + 1;
            this.seqid_ = i;
            tProtocol.writeMessageBegin(new TMessage("revokeLongSession", (byte) 1, i));
            revokeLongSession_args revokelongsession_args = new revokeLongSession_args();
            revokelongsession_args.setAuthenticationToken(str);
            revokelongsession_args.write(this.oprot_);
            this.oprot_.writeMessageEnd();
            this.oprot_.getTransport().flush();
        }

        public Client(TProtocol tProtocol, TProtocol tProtocol2) {
            this.iprot_ = tProtocol;
            this.oprot_ = tProtocol2;
        }
    }

    /* loaded from: classes4.dex */
    public interface Iface extends UserStoreIface {
    }

    /* loaded from: classes4.dex */
    public static class authenticateLongSession_args implements TBase<authenticateLongSession_args>, Serializable, Cloneable {
        private static final int __SUPPORTSTWOFACTOR_ISSET_ID = 0;
        private boolean[] __isset_vector;
        private String consumerKey;
        private String consumerSecret;
        private String deviceDescription;
        private String deviceIdentifier;
        private String password;
        private boolean supportsTwoFactor;
        private String username;
        private static final TStruct STRUCT_DESC = new TStruct("authenticateLongSession_args");
        private static final TField USERNAME_FIELD_DESC = new TField(C4Replicator.REPLICATOR_AUTH_USER_NAME, (byte) 11, 1);
        private static final TField PASSWORD_FIELD_DESC = new TField("password", (byte) 11, 2);
        private static final TField CONSUMER_KEY_FIELD_DESC = new TField(EvernoteLoginFragment.f21144B1, (byte) 11, 3);
        private static final TField CONSUMER_SECRET_FIELD_DESC = new TField(EvernoteLoginFragment.f21145C1, (byte) 11, 4);
        private static final TField DEVICE_IDENTIFIER_FIELD_DESC = new TField("deviceIdentifier", (byte) 11, 5);
        private static final TField DEVICE_DESCRIPTION_FIELD_DESC = new TField("deviceDescription", (byte) 11, 6);
        private static final TField SUPPORTS_TWO_FACTOR_FIELD_DESC = new TField("supportsTwoFactor", (byte) 2, 7);

        public authenticateLongSession_args() {
            this.__isset_vector = new boolean[1];
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.username = null;
            this.password = null;
            this.consumerKey = null;
            this.consumerSecret = null;
            this.deviceIdentifier = null;
            this.deviceDescription = null;
            setSupportsTwoFactorIsSet(false);
            this.supportsTwoFactor = false;
        }

        public boolean isSetConsumerKey() {
            return this.consumerKey != null;
        }

        public boolean isSetConsumerSecret() {
            return this.consumerSecret != null;
        }

        public boolean isSetDeviceDescription() {
            return this.deviceDescription != null;
        }

        public boolean isSetDeviceIdentifier() {
            return this.deviceIdentifier != null;
        }

        public boolean isSetPassword() {
            return this.password != null;
        }

        public boolean isSetSupportsTwoFactor() {
            return this.__isset_vector[0];
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
                        if (b != 11) {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        } else {
                            this.username = tProtocol.readString();
                            break;
                        }
                    case 2:
                        if (b != 11) {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        } else {
                            this.password = tProtocol.readString();
                            break;
                        }
                    case 3:
                        if (b != 11) {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        } else {
                            this.consumerKey = tProtocol.readString();
                            break;
                        }
                    case 4:
                        if (b != 11) {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        } else {
                            this.consumerSecret = tProtocol.readString();
                            break;
                        }
                    case 5:
                        if (b != 11) {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        } else {
                            this.deviceIdentifier = tProtocol.readString();
                            break;
                        }
                    case 6:
                        if (b != 11) {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        } else {
                            this.deviceDescription = tProtocol.readString();
                            break;
                        }
                    case 7:
                        if (b != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                            break;
                        } else {
                            this.supportsTwoFactor = tProtocol.readBool();
                            setSupportsTwoFactorIsSet(true);
                            break;
                        }
                    default:
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setConsumerKey(String str) {
            this.consumerKey = str;
        }

        public void setConsumerSecret(String str) {
            this.consumerSecret = str;
        }

        public void setDeviceDescription(String str) {
            this.deviceDescription = str;
        }

        public void setDeviceIdentifier(String str) {
            this.deviceIdentifier = str;
        }

        public void setPassword(String str) {
            this.password = str;
        }

        public void setSupportsTwoFactor(boolean z) {
            this.supportsTwoFactor = z;
            setSupportsTwoFactorIsSet(true);
        }

        public void setSupportsTwoFactorIsSet(boolean z) {
            this.__isset_vector[0] = z;
        }

        public void setUsername(String str) {
            this.username = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.username != null) {
                tProtocol.writeFieldBegin(USERNAME_FIELD_DESC);
                tProtocol.writeString(this.username);
                tProtocol.writeFieldEnd();
            }
            if (this.password != null) {
                tProtocol.writeFieldBegin(PASSWORD_FIELD_DESC);
                tProtocol.writeString(this.password);
                tProtocol.writeFieldEnd();
            }
            if (this.consumerKey != null) {
                tProtocol.writeFieldBegin(CONSUMER_KEY_FIELD_DESC);
                tProtocol.writeString(this.consumerKey);
                tProtocol.writeFieldEnd();
            }
            if (this.consumerSecret != null) {
                tProtocol.writeFieldBegin(CONSUMER_SECRET_FIELD_DESC);
                tProtocol.writeString(this.consumerSecret);
                tProtocol.writeFieldEnd();
            }
            if (this.deviceIdentifier != null) {
                tProtocol.writeFieldBegin(DEVICE_IDENTIFIER_FIELD_DESC);
                tProtocol.writeString(this.deviceIdentifier);
                tProtocol.writeFieldEnd();
            }
            if (this.deviceDescription != null) {
                tProtocol.writeFieldBegin(DEVICE_DESCRIPTION_FIELD_DESC);
                tProtocol.writeString(this.deviceDescription);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldBegin(SUPPORTS_TWO_FACTOR_FIELD_DESC);
            tProtocol.writeBool(this.supportsTwoFactor);
            tProtocol.writeFieldEnd();
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        @Override // java.lang.Comparable
        public int compareTo(authenticateLongSession_args authenticatelongsession_args) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            int compareTo4;
            int compareTo5;
            int compareTo6;
            int compareTo7;
            if (!getClass().equals(authenticatelongsession_args.getClass())) {
                return getClass().getName().compareTo(authenticatelongsession_args.getClass().getName());
            }
            int compareTo8 = Boolean.valueOf(isSetUsername()).compareTo(Boolean.valueOf(authenticatelongsession_args.isSetUsername()));
            if (compareTo8 != 0) {
                return compareTo8;
            }
            if (isSetUsername() && (compareTo7 = TBaseHelper.compareTo(this.username, authenticatelongsession_args.username)) != 0) {
                return compareTo7;
            }
            int compareTo9 = Boolean.valueOf(isSetPassword()).compareTo(Boolean.valueOf(authenticatelongsession_args.isSetPassword()));
            if (compareTo9 != 0) {
                return compareTo9;
            }
            if (isSetPassword() && (compareTo6 = TBaseHelper.compareTo(this.password, authenticatelongsession_args.password)) != 0) {
                return compareTo6;
            }
            int compareTo10 = Boolean.valueOf(isSetConsumerKey()).compareTo(Boolean.valueOf(authenticatelongsession_args.isSetConsumerKey()));
            if (compareTo10 != 0) {
                return compareTo10;
            }
            if (isSetConsumerKey() && (compareTo5 = TBaseHelper.compareTo(this.consumerKey, authenticatelongsession_args.consumerKey)) != 0) {
                return compareTo5;
            }
            int compareTo11 = Boolean.valueOf(isSetConsumerSecret()).compareTo(Boolean.valueOf(authenticatelongsession_args.isSetConsumerSecret()));
            if (compareTo11 != 0) {
                return compareTo11;
            }
            if (isSetConsumerSecret() && (compareTo4 = TBaseHelper.compareTo(this.consumerSecret, authenticatelongsession_args.consumerSecret)) != 0) {
                return compareTo4;
            }
            int compareTo12 = Boolean.valueOf(isSetDeviceIdentifier()).compareTo(Boolean.valueOf(authenticatelongsession_args.isSetDeviceIdentifier()));
            if (compareTo12 != 0) {
                return compareTo12;
            }
            if (isSetDeviceIdentifier() && (compareTo3 = TBaseHelper.compareTo(this.deviceIdentifier, authenticatelongsession_args.deviceIdentifier)) != 0) {
                return compareTo3;
            }
            int compareTo13 = Boolean.valueOf(isSetDeviceDescription()).compareTo(Boolean.valueOf(authenticatelongsession_args.isSetDeviceDescription()));
            if (compareTo13 != 0) {
                return compareTo13;
            }
            if (isSetDeviceDescription() && (compareTo2 = TBaseHelper.compareTo(this.deviceDescription, authenticatelongsession_args.deviceDescription)) != 0) {
                return compareTo2;
            }
            int compareTo14 = Boolean.valueOf(isSetSupportsTwoFactor()).compareTo(Boolean.valueOf(authenticatelongsession_args.isSetSupportsTwoFactor()));
            if (compareTo14 != 0) {
                return compareTo14;
            }
            if (!isSetSupportsTwoFactor() || (compareTo = TBaseHelper.compareTo(this.supportsTwoFactor, authenticatelongsession_args.supportsTwoFactor)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<authenticateLongSession_args> deepCopy2() {
            return new authenticateLongSession_args(this);
        }

        public authenticateLongSession_args(authenticateLongSession_args authenticatelongsession_args) {
            boolean[] zArr = new boolean[1];
            this.__isset_vector = zArr;
            boolean[] zArr2 = authenticatelongsession_args.__isset_vector;
            System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
            if (authenticatelongsession_args.isSetUsername()) {
                this.username = authenticatelongsession_args.username;
            }
            if (authenticatelongsession_args.isSetPassword()) {
                this.password = authenticatelongsession_args.password;
            }
            if (authenticatelongsession_args.isSetConsumerKey()) {
                this.consumerKey = authenticatelongsession_args.consumerKey;
            }
            if (authenticatelongsession_args.isSetConsumerSecret()) {
                this.consumerSecret = authenticatelongsession_args.consumerSecret;
            }
            if (authenticatelongsession_args.isSetDeviceIdentifier()) {
                this.deviceIdentifier = authenticatelongsession_args.deviceIdentifier;
            }
            if (authenticatelongsession_args.isSetDeviceDescription()) {
                this.deviceDescription = authenticatelongsession_args.deviceDescription;
            }
            this.supportsTwoFactor = authenticatelongsession_args.supportsTwoFactor;
        }
    }

    /* loaded from: classes4.dex */
    public static class authenticateLongSession_result implements TBase<authenticateLongSession_result>, Serializable, Cloneable {
        private AuthenticationResult success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("authenticateLongSession_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public authenticateLongSession_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    AuthenticationResult authenticationResult = new AuthenticationResult();
                    this.success = authenticationResult;
                    authenticationResult.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public authenticateLongSession_result(authenticateLongSession_result authenticatelongsession_result) {
            if (authenticatelongsession_result.isSetSuccess()) {
                this.success = new AuthenticationResult(authenticatelongsession_result.success);
            }
            if (authenticatelongsession_result.isSetUserException()) {
                this.userException = new EDAMUserException(authenticatelongsession_result.userException);
            }
            if (authenticatelongsession_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(authenticatelongsession_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(authenticateLongSession_result authenticatelongsession_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(authenticatelongsession_result.getClass())) {
                return getClass().getName().compareTo(authenticatelongsession_result.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(authenticatelongsession_result.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) authenticatelongsession_result.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(authenticatelongsession_result.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) authenticatelongsession_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(authenticatelongsession_result.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) authenticatelongsession_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<authenticateLongSession_result> deepCopy2() {
            return new authenticateLongSession_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class authenticateToBusiness_args implements TBase<authenticateToBusiness_args>, Serializable, Cloneable {
        private String authenticationToken;
        private static final TStruct STRUCT_DESC = new TStruct("authenticateToBusiness_args");
        private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 1);

        public authenticateToBusiness_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.authenticationToken = null;
        }

        public boolean isSetAuthenticationToken() {
            return this.authenticationToken != null;
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
                } else if (b == 11) {
                    this.authenticationToken = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setAuthenticationToken(String str) {
            this.authenticationToken = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.authenticationToken != null) {
                tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
                tProtocol.writeString(this.authenticationToken);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public authenticateToBusiness_args(authenticateToBusiness_args authenticatetobusiness_args) {
            if (authenticatetobusiness_args.isSetAuthenticationToken()) {
                this.authenticationToken = authenticatetobusiness_args.authenticationToken;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(authenticateToBusiness_args authenticatetobusiness_args) {
            int compareTo;
            if (!getClass().equals(authenticatetobusiness_args.getClass())) {
                return getClass().getName().compareTo(authenticatetobusiness_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(authenticatetobusiness_args.isSetAuthenticationToken()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetAuthenticationToken() || (compareTo = TBaseHelper.compareTo(this.authenticationToken, authenticatetobusiness_args.authenticationToken)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<authenticateToBusiness_args> deepCopy2() {
            return new authenticateToBusiness_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class authenticateToBusiness_result implements TBase<authenticateToBusiness_result>, Serializable, Cloneable {
        private AuthenticationResult success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("authenticateToBusiness_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public authenticateToBusiness_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    AuthenticationResult authenticationResult = new AuthenticationResult();
                    this.success = authenticationResult;
                    authenticationResult.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public authenticateToBusiness_result(authenticateToBusiness_result authenticatetobusiness_result) {
            if (authenticatetobusiness_result.isSetSuccess()) {
                this.success = new AuthenticationResult(authenticatetobusiness_result.success);
            }
            if (authenticatetobusiness_result.isSetUserException()) {
                this.userException = new EDAMUserException(authenticatetobusiness_result.userException);
            }
            if (authenticatetobusiness_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(authenticatetobusiness_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(authenticateToBusiness_result authenticatetobusiness_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(authenticatetobusiness_result.getClass())) {
                return getClass().getName().compareTo(authenticatetobusiness_result.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(authenticatetobusiness_result.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) authenticatetobusiness_result.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(authenticatetobusiness_result.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) authenticatetobusiness_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(authenticatetobusiness_result.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) authenticatetobusiness_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<authenticateToBusiness_result> deepCopy2() {
            return new authenticateToBusiness_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class authenticate_args implements TBase<authenticate_args>, Serializable, Cloneable {
        private static final int __SUPPORTSTWOFACTOR_ISSET_ID = 0;
        private boolean[] __isset_vector;
        private String consumerKey;
        private String consumerSecret;
        private String password;
        private boolean supportsTwoFactor;
        private String username;
        private static final TStruct STRUCT_DESC = new TStruct("authenticate_args");
        private static final TField USERNAME_FIELD_DESC = new TField(C4Replicator.REPLICATOR_AUTH_USER_NAME, (byte) 11, 1);
        private static final TField PASSWORD_FIELD_DESC = new TField("password", (byte) 11, 2);
        private static final TField CONSUMER_KEY_FIELD_DESC = new TField(EvernoteLoginFragment.f21144B1, (byte) 11, 3);
        private static final TField CONSUMER_SECRET_FIELD_DESC = new TField(EvernoteLoginFragment.f21145C1, (byte) 11, 4);
        private static final TField SUPPORTS_TWO_FACTOR_FIELD_DESC = new TField("supportsTwoFactor", (byte) 2, 5);

        public authenticate_args() {
            this.__isset_vector = new boolean[1];
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.username = null;
            this.password = null;
            this.consumerKey = null;
            this.consumerSecret = null;
            setSupportsTwoFactorIsSet(false);
            this.supportsTwoFactor = false;
        }

        public boolean isSetConsumerKey() {
            return this.consumerKey != null;
        }

        public boolean isSetConsumerSecret() {
            return this.consumerSecret != null;
        }

        public boolean isSetPassword() {
            return this.password != null;
        }

        public boolean isSetSupportsTwoFactor() {
            return this.__isset_vector[0];
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
                short s = readFieldBegin.f21203id;
                if (s != 1) {
                    if (s != 2) {
                        if (s != 3) {
                            if (s != 4) {
                                if (s != 5) {
                                    TProtocolUtil.skip(tProtocol, b);
                                } else if (b == 2) {
                                    this.supportsTwoFactor = tProtocol.readBool();
                                    setSupportsTwoFactorIsSet(true);
                                } else {
                                    TProtocolUtil.skip(tProtocol, b);
                                }
                            } else if (b == 11) {
                                this.consumerSecret = tProtocol.readString();
                            } else {
                                TProtocolUtil.skip(tProtocol, b);
                            }
                        } else if (b == 11) {
                            this.consumerKey = tProtocol.readString();
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 11) {
                        this.password = tProtocol.readString();
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.username = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setConsumerKey(String str) {
            this.consumerKey = str;
        }

        public void setConsumerSecret(String str) {
            this.consumerSecret = str;
        }

        public void setPassword(String str) {
            this.password = str;
        }

        public void setSupportsTwoFactor(boolean z) {
            this.supportsTwoFactor = z;
            setSupportsTwoFactorIsSet(true);
        }

        public void setSupportsTwoFactorIsSet(boolean z) {
            this.__isset_vector[0] = z;
        }

        public void setUsername(String str) {
            this.username = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.username != null) {
                tProtocol.writeFieldBegin(USERNAME_FIELD_DESC);
                tProtocol.writeString(this.username);
                tProtocol.writeFieldEnd();
            }
            if (this.password != null) {
                tProtocol.writeFieldBegin(PASSWORD_FIELD_DESC);
                tProtocol.writeString(this.password);
                tProtocol.writeFieldEnd();
            }
            if (this.consumerKey != null) {
                tProtocol.writeFieldBegin(CONSUMER_KEY_FIELD_DESC);
                tProtocol.writeString(this.consumerKey);
                tProtocol.writeFieldEnd();
            }
            if (this.consumerSecret != null) {
                tProtocol.writeFieldBegin(CONSUMER_SECRET_FIELD_DESC);
                tProtocol.writeString(this.consumerSecret);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldBegin(SUPPORTS_TWO_FACTOR_FIELD_DESC);
            tProtocol.writeBool(this.supportsTwoFactor);
            tProtocol.writeFieldEnd();
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        @Override // java.lang.Comparable
        public int compareTo(authenticate_args authenticate_argsVar) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            int compareTo4;
            int compareTo5;
            if (!getClass().equals(authenticate_argsVar.getClass())) {
                return getClass().getName().compareTo(authenticate_argsVar.getClass().getName());
            }
            int compareTo6 = Boolean.valueOf(isSetUsername()).compareTo(Boolean.valueOf(authenticate_argsVar.isSetUsername()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (isSetUsername() && (compareTo5 = TBaseHelper.compareTo(this.username, authenticate_argsVar.username)) != 0) {
                return compareTo5;
            }
            int compareTo7 = Boolean.valueOf(isSetPassword()).compareTo(Boolean.valueOf(authenticate_argsVar.isSetPassword()));
            if (compareTo7 != 0) {
                return compareTo7;
            }
            if (isSetPassword() && (compareTo4 = TBaseHelper.compareTo(this.password, authenticate_argsVar.password)) != 0) {
                return compareTo4;
            }
            int compareTo8 = Boolean.valueOf(isSetConsumerKey()).compareTo(Boolean.valueOf(authenticate_argsVar.isSetConsumerKey()));
            if (compareTo8 != 0) {
                return compareTo8;
            }
            if (isSetConsumerKey() && (compareTo3 = TBaseHelper.compareTo(this.consumerKey, authenticate_argsVar.consumerKey)) != 0) {
                return compareTo3;
            }
            int compareTo9 = Boolean.valueOf(isSetConsumerSecret()).compareTo(Boolean.valueOf(authenticate_argsVar.isSetConsumerSecret()));
            if (compareTo9 != 0) {
                return compareTo9;
            }
            if (isSetConsumerSecret() && (compareTo2 = TBaseHelper.compareTo(this.consumerSecret, authenticate_argsVar.consumerSecret)) != 0) {
                return compareTo2;
            }
            int compareTo10 = Boolean.valueOf(isSetSupportsTwoFactor()).compareTo(Boolean.valueOf(authenticate_argsVar.isSetSupportsTwoFactor()));
            if (compareTo10 != 0) {
                return compareTo10;
            }
            if (!isSetSupportsTwoFactor() || (compareTo = TBaseHelper.compareTo(this.supportsTwoFactor, authenticate_argsVar.supportsTwoFactor)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<authenticate_args> deepCopy2() {
            return new authenticate_args(this);
        }

        public authenticate_args(authenticate_args authenticate_argsVar) {
            boolean[] zArr = new boolean[1];
            this.__isset_vector = zArr;
            boolean[] zArr2 = authenticate_argsVar.__isset_vector;
            System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
            if (authenticate_argsVar.isSetUsername()) {
                this.username = authenticate_argsVar.username;
            }
            if (authenticate_argsVar.isSetPassword()) {
                this.password = authenticate_argsVar.password;
            }
            if (authenticate_argsVar.isSetConsumerKey()) {
                this.consumerKey = authenticate_argsVar.consumerKey;
            }
            if (authenticate_argsVar.isSetConsumerSecret()) {
                this.consumerSecret = authenticate_argsVar.consumerSecret;
            }
            this.supportsTwoFactor = authenticate_argsVar.supportsTwoFactor;
        }
    }

    /* loaded from: classes4.dex */
    public static class authenticate_result implements TBase<authenticate_result>, Serializable, Cloneable {
        private AuthenticationResult success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("authenticate_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public authenticate_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    AuthenticationResult authenticationResult = new AuthenticationResult();
                    this.success = authenticationResult;
                    authenticationResult.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public authenticate_result(authenticate_result authenticate_resultVar) {
            if (authenticate_resultVar.isSetSuccess()) {
                this.success = new AuthenticationResult(authenticate_resultVar.success);
            }
            if (authenticate_resultVar.isSetUserException()) {
                this.userException = new EDAMUserException(authenticate_resultVar.userException);
            }
            if (authenticate_resultVar.isSetSystemException()) {
                this.systemException = new EDAMSystemException(authenticate_resultVar.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(authenticate_result authenticate_resultVar) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(authenticate_resultVar.getClass())) {
                return getClass().getName().compareTo(authenticate_resultVar.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(authenticate_resultVar.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) authenticate_resultVar.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(authenticate_resultVar.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) authenticate_resultVar.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(authenticate_resultVar.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) authenticate_resultVar.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<authenticate_result> deepCopy2() {
            return new authenticate_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class checkVersion_args implements TBase<checkVersion_args>, Serializable, Cloneable {
        private static final int __EDAMVERSIONMAJOR_ISSET_ID = 0;
        private static final int __EDAMVERSIONMINOR_ISSET_ID = 1;
        private boolean[] __isset_vector;
        private String clientName;
        private short edamVersionMajor;
        private short edamVersionMinor;
        private static final TStruct STRUCT_DESC = new TStruct("checkVersion_args");
        private static final TField CLIENT_NAME_FIELD_DESC = new TField("clientName", (byte) 11, 1);
        private static final TField EDAM_VERSION_MAJOR_FIELD_DESC = new TField("edamVersionMajor", (byte) 6, 2);
        private static final TField EDAM_VERSION_MINOR_FIELD_DESC = new TField("edamVersionMinor", (byte) 6, 3);

        public checkVersion_args() {
            this.__isset_vector = new boolean[2];
            this.edamVersionMajor = (short) 1;
            this.edamVersionMinor = (short) 25;
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.clientName = null;
            this.edamVersionMajor = (short) 1;
            this.edamVersionMinor = (short) 25;
        }

        public boolean isSetClientName() {
            return this.clientName != null;
        }

        public boolean isSetEdamVersionMajor() {
            return this.__isset_vector[0];
        }

        public boolean isSetEdamVersionMinor() {
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
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 6) {
                            this.edamVersionMinor = tProtocol.readI16();
                            setEdamVersionMinorIsSet(true);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 6) {
                        this.edamVersionMajor = tProtocol.readI16();
                        setEdamVersionMajorIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.clientName = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setClientName(String str) {
            this.clientName = str;
        }

        public void setEdamVersionMajor(short s) {
            this.edamVersionMajor = s;
            setEdamVersionMajorIsSet(true);
        }

        public void setEdamVersionMajorIsSet(boolean z) {
            this.__isset_vector[0] = z;
        }

        public void setEdamVersionMinor(short s) {
            this.edamVersionMinor = s;
            setEdamVersionMinorIsSet(true);
        }

        public void setEdamVersionMinorIsSet(boolean z) {
            this.__isset_vector[1] = z;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.clientName != null) {
                tProtocol.writeFieldBegin(CLIENT_NAME_FIELD_DESC);
                tProtocol.writeString(this.clientName);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldBegin(EDAM_VERSION_MAJOR_FIELD_DESC);
            tProtocol.writeI16(this.edamVersionMajor);
            tProtocol.writeFieldEnd();
            tProtocol.writeFieldBegin(EDAM_VERSION_MINOR_FIELD_DESC);
            tProtocol.writeI16(this.edamVersionMinor);
            tProtocol.writeFieldEnd();
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        @Override // java.lang.Comparable
        public int compareTo(checkVersion_args checkversion_args) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(checkversion_args.getClass())) {
                return getClass().getName().compareTo(checkversion_args.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetClientName()).compareTo(Boolean.valueOf(checkversion_args.isSetClientName()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetClientName() && (compareTo3 = TBaseHelper.compareTo(this.clientName, checkversion_args.clientName)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetEdamVersionMajor()).compareTo(Boolean.valueOf(checkversion_args.isSetEdamVersionMajor()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetEdamVersionMajor() && (compareTo2 = TBaseHelper.compareTo(this.edamVersionMajor, checkversion_args.edamVersionMajor)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetEdamVersionMinor()).compareTo(Boolean.valueOf(checkversion_args.isSetEdamVersionMinor()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetEdamVersionMinor() || (compareTo = TBaseHelper.compareTo(this.edamVersionMinor, checkversion_args.edamVersionMinor)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<checkVersion_args> deepCopy2() {
            return new checkVersion_args(this);
        }

        public checkVersion_args(checkVersion_args checkversion_args) {
            boolean[] zArr = new boolean[2];
            this.__isset_vector = zArr;
            boolean[] zArr2 = checkversion_args.__isset_vector;
            System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
            if (checkversion_args.isSetClientName()) {
                this.clientName = checkversion_args.clientName;
            }
            this.edamVersionMajor = checkversion_args.edamVersionMajor;
            this.edamVersionMinor = checkversion_args.edamVersionMinor;
        }
    }

    /* loaded from: classes4.dex */
    public static class checkVersion_result implements TBase<checkVersion_result>, Serializable, Cloneable {
        private static final TStruct STRUCT_DESC = new TStruct("checkVersion_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 2, 0);
        private static final int __SUCCESS_ISSET_ID = 0;
        private boolean[] __isset_vector;
        private boolean success;

        public checkVersion_result() {
            this.__isset_vector = new boolean[1];
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            setSuccessIsSet(false);
            this.success = false;
        }

        public boolean isSetSuccess() {
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
                if (readFieldBegin.f21203id != 0) {
                    TProtocolUtil.skip(tProtocol, b);
                } else if (b == 2) {
                    this.success = tProtocol.readBool();
                    setSuccessIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setSuccessIsSet(boolean z) {
            this.__isset_vector[0] = z;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                tProtocol.writeBool(this.success);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        @Override // java.lang.Comparable
        public int compareTo(checkVersion_result checkversion_result) {
            int compareTo;
            if (!getClass().equals(checkversion_result.getClass())) {
                return getClass().getName().compareTo(checkversion_result.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(checkversion_result.isSetSuccess()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetSuccess() || (compareTo = TBaseHelper.compareTo(this.success, checkversion_result.success)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<checkVersion_result> deepCopy2() {
            return new checkVersion_result(this);
        }

        public checkVersion_result(checkVersion_result checkversion_result) {
            boolean[] zArr = new boolean[1];
            this.__isset_vector = zArr;
            boolean[] zArr2 = checkversion_result.__isset_vector;
            System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
            this.success = checkversion_result.success;
        }
    }

    /* loaded from: classes4.dex */
    public static class completeTwoFactorAuthentication_args implements TBase<completeTwoFactorAuthentication_args>, Serializable, Cloneable {
        private String authenticationToken;
        private String deviceDescription;
        private String deviceIdentifier;
        private String oneTimeCode;
        private static final TStruct STRUCT_DESC = new TStruct("completeTwoFactorAuthentication_args");
        private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 1);
        private static final TField ONE_TIME_CODE_FIELD_DESC = new TField("oneTimeCode", (byte) 11, 2);
        private static final TField DEVICE_IDENTIFIER_FIELD_DESC = new TField("deviceIdentifier", (byte) 11, 3);
        private static final TField DEVICE_DESCRIPTION_FIELD_DESC = new TField("deviceDescription", (byte) 11, 4);

        public completeTwoFactorAuthentication_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.authenticationToken = null;
            this.oneTimeCode = null;
            this.deviceIdentifier = null;
            this.deviceDescription = null;
        }

        public boolean isSetAuthenticationToken() {
            return this.authenticationToken != null;
        }

        public boolean isSetDeviceDescription() {
            return this.deviceDescription != null;
        }

        public boolean isSetDeviceIdentifier() {
            return this.deviceIdentifier != null;
        }

        public boolean isSetOneTimeCode() {
            return this.oneTimeCode != null;
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
                                this.deviceDescription = tProtocol.readString();
                            } else {
                                TProtocolUtil.skip(tProtocol, b);
                            }
                        } else if (b == 11) {
                            this.deviceIdentifier = tProtocol.readString();
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 11) {
                        this.oneTimeCode = tProtocol.readString();
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.authenticationToken = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setAuthenticationToken(String str) {
            this.authenticationToken = str;
        }

        public void setDeviceDescription(String str) {
            this.deviceDescription = str;
        }

        public void setDeviceIdentifier(String str) {
            this.deviceIdentifier = str;
        }

        public void setOneTimeCode(String str) {
            this.oneTimeCode = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.authenticationToken != null) {
                tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
                tProtocol.writeString(this.authenticationToken);
                tProtocol.writeFieldEnd();
            }
            if (this.oneTimeCode != null) {
                tProtocol.writeFieldBegin(ONE_TIME_CODE_FIELD_DESC);
                tProtocol.writeString(this.oneTimeCode);
                tProtocol.writeFieldEnd();
            }
            if (this.deviceIdentifier != null) {
                tProtocol.writeFieldBegin(DEVICE_IDENTIFIER_FIELD_DESC);
                tProtocol.writeString(this.deviceIdentifier);
                tProtocol.writeFieldEnd();
            }
            if (this.deviceDescription != null) {
                tProtocol.writeFieldBegin(DEVICE_DESCRIPTION_FIELD_DESC);
                tProtocol.writeString(this.deviceDescription);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public completeTwoFactorAuthentication_args(completeTwoFactorAuthentication_args completetwofactorauthentication_args) {
            if (completetwofactorauthentication_args.isSetAuthenticationToken()) {
                this.authenticationToken = completetwofactorauthentication_args.authenticationToken;
            }
            if (completetwofactorauthentication_args.isSetOneTimeCode()) {
                this.oneTimeCode = completetwofactorauthentication_args.oneTimeCode;
            }
            if (completetwofactorauthentication_args.isSetDeviceIdentifier()) {
                this.deviceIdentifier = completetwofactorauthentication_args.deviceIdentifier;
            }
            if (completetwofactorauthentication_args.isSetDeviceDescription()) {
                this.deviceDescription = completetwofactorauthentication_args.deviceDescription;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(completeTwoFactorAuthentication_args completetwofactorauthentication_args) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            int compareTo4;
            if (!getClass().equals(completetwofactorauthentication_args.getClass())) {
                return getClass().getName().compareTo(completetwofactorauthentication_args.getClass().getName());
            }
            int compareTo5 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(completetwofactorauthentication_args.isSetAuthenticationToken()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetAuthenticationToken() && (compareTo4 = TBaseHelper.compareTo(this.authenticationToken, completetwofactorauthentication_args.authenticationToken)) != 0) {
                return compareTo4;
            }
            int compareTo6 = Boolean.valueOf(isSetOneTimeCode()).compareTo(Boolean.valueOf(completetwofactorauthentication_args.isSetOneTimeCode()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (isSetOneTimeCode() && (compareTo3 = TBaseHelper.compareTo(this.oneTimeCode, completetwofactorauthentication_args.oneTimeCode)) != 0) {
                return compareTo3;
            }
            int compareTo7 = Boolean.valueOf(isSetDeviceIdentifier()).compareTo(Boolean.valueOf(completetwofactorauthentication_args.isSetDeviceIdentifier()));
            if (compareTo7 != 0) {
                return compareTo7;
            }
            if (isSetDeviceIdentifier() && (compareTo2 = TBaseHelper.compareTo(this.deviceIdentifier, completetwofactorauthentication_args.deviceIdentifier)) != 0) {
                return compareTo2;
            }
            int compareTo8 = Boolean.valueOf(isSetDeviceDescription()).compareTo(Boolean.valueOf(completetwofactorauthentication_args.isSetDeviceDescription()));
            if (compareTo8 != 0) {
                return compareTo8;
            }
            if (!isSetDeviceDescription() || (compareTo = TBaseHelper.compareTo(this.deviceDescription, completetwofactorauthentication_args.deviceDescription)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<completeTwoFactorAuthentication_args> deepCopy2() {
            return new completeTwoFactorAuthentication_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class completeTwoFactorAuthentication_result implements TBase<completeTwoFactorAuthentication_result>, Serializable, Cloneable {
        private AuthenticationResult success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("completeTwoFactorAuthentication_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public completeTwoFactorAuthentication_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    AuthenticationResult authenticationResult = new AuthenticationResult();
                    this.success = authenticationResult;
                    authenticationResult.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public completeTwoFactorAuthentication_result(completeTwoFactorAuthentication_result completetwofactorauthentication_result) {
            if (completetwofactorauthentication_result.isSetSuccess()) {
                this.success = new AuthenticationResult(completetwofactorauthentication_result.success);
            }
            if (completetwofactorauthentication_result.isSetUserException()) {
                this.userException = new EDAMUserException(completetwofactorauthentication_result.userException);
            }
            if (completetwofactorauthentication_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(completetwofactorauthentication_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(completeTwoFactorAuthentication_result completetwofactorauthentication_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(completetwofactorauthentication_result.getClass())) {
                return getClass().getName().compareTo(completetwofactorauthentication_result.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(completetwofactorauthentication_result.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) completetwofactorauthentication_result.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(completetwofactorauthentication_result.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) completetwofactorauthentication_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(completetwofactorauthentication_result.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) completetwofactorauthentication_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<completeTwoFactorAuthentication_result> deepCopy2() {
            return new completeTwoFactorAuthentication_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getBootstrapInfo_args implements TBase<getBootstrapInfo_args>, Serializable, Cloneable {
        private String locale;
        private static final TStruct STRUCT_DESC = new TStruct("getBootstrapInfo_args");
        private static final TField LOCALE_FIELD_DESC = new TField("locale", (byte) 11, 1);

        public getBootstrapInfo_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.locale = null;
        }

        public boolean isSetLocale() {
            return this.locale != null;
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
                } else if (b == 11) {
                    this.locale = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setLocale(String str) {
            this.locale = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.locale != null) {
                tProtocol.writeFieldBegin(LOCALE_FIELD_DESC);
                tProtocol.writeString(this.locale);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getBootstrapInfo_args(getBootstrapInfo_args getbootstrapinfo_args) {
            if (getbootstrapinfo_args.isSetLocale()) {
                this.locale = getbootstrapinfo_args.locale;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getBootstrapInfo_args getbootstrapinfo_args) {
            int compareTo;
            if (!getClass().equals(getbootstrapinfo_args.getClass())) {
                return getClass().getName().compareTo(getbootstrapinfo_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetLocale()).compareTo(Boolean.valueOf(getbootstrapinfo_args.isSetLocale()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetLocale() || (compareTo = TBaseHelper.compareTo(this.locale, getbootstrapinfo_args.locale)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getBootstrapInfo_args> deepCopy2() {
            return new getBootstrapInfo_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getBootstrapInfo_result implements TBase<getBootstrapInfo_result>, Serializable, Cloneable {
        private static final TStruct STRUCT_DESC = new TStruct("getBootstrapInfo_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private BootstrapInfo success;

        public getBootstrapInfo_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
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
                if (readFieldBegin.f21203id != 0) {
                    TProtocolUtil.skip(tProtocol, b);
                } else if (b == 12) {
                    BootstrapInfo bootstrapInfo = new BootstrapInfo();
                    this.success = bootstrapInfo;
                    bootstrapInfo.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getBootstrapInfo_result(getBootstrapInfo_result getbootstrapinfo_result) {
            if (getbootstrapinfo_result.isSetSuccess()) {
                this.success = new BootstrapInfo(getbootstrapinfo_result.success);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getBootstrapInfo_result getbootstrapinfo_result) {
            int compareTo;
            if (!getClass().equals(getbootstrapinfo_result.getClass())) {
                return getClass().getName().compareTo(getbootstrapinfo_result.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(getbootstrapinfo_result.isSetSuccess()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetSuccess() || (compareTo = TBaseHelper.compareTo((Comparable) this.success, (Comparable) getbootstrapinfo_result.success)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getBootstrapInfo_result> deepCopy2() {
            return new getBootstrapInfo_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getNoteStoreUrl_args implements TBase<getNoteStoreUrl_args>, Serializable, Cloneable {
        private String authenticationToken;
        private static final TStruct STRUCT_DESC = new TStruct("getNoteStoreUrl_args");
        private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 1);

        public getNoteStoreUrl_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.authenticationToken = null;
        }

        public boolean isSetAuthenticationToken() {
            return this.authenticationToken != null;
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
                } else if (b == 11) {
                    this.authenticationToken = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setAuthenticationToken(String str) {
            this.authenticationToken = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.authenticationToken != null) {
                tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
                tProtocol.writeString(this.authenticationToken);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getNoteStoreUrl_args(getNoteStoreUrl_args getnotestoreurl_args) {
            if (getnotestoreurl_args.isSetAuthenticationToken()) {
                this.authenticationToken = getnotestoreurl_args.authenticationToken;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getNoteStoreUrl_args getnotestoreurl_args) {
            int compareTo;
            if (!getClass().equals(getnotestoreurl_args.getClass())) {
                return getClass().getName().compareTo(getnotestoreurl_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(getnotestoreurl_args.isSetAuthenticationToken()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetAuthenticationToken() || (compareTo = TBaseHelper.compareTo(this.authenticationToken, getnotestoreurl_args.authenticationToken)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getNoteStoreUrl_args> deepCopy2() {
            return new getNoteStoreUrl_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getNoteStoreUrl_result implements TBase<getNoteStoreUrl_result>, Serializable, Cloneable {
        private String success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("getNoteStoreUrl_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 11, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public getNoteStoreUrl_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.success = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                tProtocol.writeString(this.success);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getNoteStoreUrl_result(getNoteStoreUrl_result getnotestoreurl_result) {
            if (getnotestoreurl_result.isSetSuccess()) {
                this.success = getnotestoreurl_result.success;
            }
            if (getnotestoreurl_result.isSetUserException()) {
                this.userException = new EDAMUserException(getnotestoreurl_result.userException);
            }
            if (getnotestoreurl_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(getnotestoreurl_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getNoteStoreUrl_result getnotestoreurl_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(getnotestoreurl_result.getClass())) {
                return getClass().getName().compareTo(getnotestoreurl_result.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(getnotestoreurl_result.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo(this.success, getnotestoreurl_result.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(getnotestoreurl_result.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) getnotestoreurl_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(getnotestoreurl_result.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) getnotestoreurl_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getNoteStoreUrl_result> deepCopy2() {
            return new getNoteStoreUrl_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getPremiumInfo_args implements TBase<getPremiumInfo_args>, Serializable, Cloneable {
        private String authenticationToken;
        private static final TStruct STRUCT_DESC = new TStruct("getPremiumInfo_args");
        private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 1);

        public getPremiumInfo_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.authenticationToken = null;
        }

        public boolean isSetAuthenticationToken() {
            return this.authenticationToken != null;
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
                } else if (b == 11) {
                    this.authenticationToken = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setAuthenticationToken(String str) {
            this.authenticationToken = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.authenticationToken != null) {
                tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
                tProtocol.writeString(this.authenticationToken);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getPremiumInfo_args(getPremiumInfo_args getpremiuminfo_args) {
            if (getpremiuminfo_args.isSetAuthenticationToken()) {
                this.authenticationToken = getpremiuminfo_args.authenticationToken;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getPremiumInfo_args getpremiuminfo_args) {
            int compareTo;
            if (!getClass().equals(getpremiuminfo_args.getClass())) {
                return getClass().getName().compareTo(getpremiuminfo_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(getpremiuminfo_args.isSetAuthenticationToken()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetAuthenticationToken() || (compareTo = TBaseHelper.compareTo(this.authenticationToken, getpremiuminfo_args.authenticationToken)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getPremiumInfo_args> deepCopy2() {
            return new getPremiumInfo_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getPremiumInfo_result implements TBase<getPremiumInfo_result>, Serializable, Cloneable {
        private PremiumInfo success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("getPremiumInfo_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public getPremiumInfo_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    PremiumInfo premiumInfo = new PremiumInfo();
                    this.success = premiumInfo;
                    premiumInfo.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getPremiumInfo_result(getPremiumInfo_result getpremiuminfo_result) {
            if (getpremiuminfo_result.isSetSuccess()) {
                this.success = new PremiumInfo(getpremiuminfo_result.success);
            }
            if (getpremiuminfo_result.isSetUserException()) {
                this.userException = new EDAMUserException(getpremiuminfo_result.userException);
            }
            if (getpremiuminfo_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(getpremiuminfo_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getPremiumInfo_result getpremiuminfo_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(getpremiuminfo_result.getClass())) {
                return getClass().getName().compareTo(getpremiuminfo_result.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(getpremiuminfo_result.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) getpremiuminfo_result.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(getpremiuminfo_result.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) getpremiuminfo_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(getpremiuminfo_result.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) getpremiuminfo_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getPremiumInfo_result> deepCopy2() {
            return new getPremiumInfo_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getPublicUserInfo_args implements TBase<getPublicUserInfo_args>, Serializable, Cloneable {
        private static final TStruct STRUCT_DESC = new TStruct("getPublicUserInfo_args");
        private static final TField USERNAME_FIELD_DESC = new TField(C4Replicator.REPLICATOR_AUTH_USER_NAME, (byte) 11, 1);
        private String username;

        public getPublicUserInfo_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.username = null;
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
                if (readFieldBegin.f21203id != 1) {
                    TProtocolUtil.skip(tProtocol, b);
                } else if (b == 11) {
                    this.username = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setUsername(String str) {
            this.username = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.username != null) {
                tProtocol.writeFieldBegin(USERNAME_FIELD_DESC);
                tProtocol.writeString(this.username);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getPublicUserInfo_args(getPublicUserInfo_args getpublicuserinfo_args) {
            if (getpublicuserinfo_args.isSetUsername()) {
                this.username = getpublicuserinfo_args.username;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getPublicUserInfo_args getpublicuserinfo_args) {
            int compareTo;
            if (!getClass().equals(getpublicuserinfo_args.getClass())) {
                return getClass().getName().compareTo(getpublicuserinfo_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetUsername()).compareTo(Boolean.valueOf(getpublicuserinfo_args.isSetUsername()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetUsername() || (compareTo = TBaseHelper.compareTo(this.username, getpublicuserinfo_args.username)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getPublicUserInfo_args> deepCopy2() {
            return new getPublicUserInfo_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getPublicUserInfo_result implements TBase<getPublicUserInfo_result>, Serializable, Cloneable {
        private EDAMNotFoundException notFoundException;
        private PublicUserInfo success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("getPublicUserInfo_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField NOT_FOUND_EXCEPTION_FIELD_DESC = new TField("notFoundException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 3);

        public getPublicUserInfo_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.notFoundException = null;
            this.systemException = null;
            this.userException = null;
        }

        public boolean isSetNotFoundException() {
            return this.notFoundException != null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            if (s != 3) {
                                TProtocolUtil.skip(tProtocol, b);
                            } else if (b == 12) {
                                EDAMUserException eDAMUserException = new EDAMUserException();
                                this.userException = eDAMUserException;
                                eDAMUserException.read(tProtocol);
                            } else {
                                TProtocolUtil.skip(tProtocol, b);
                            }
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMNotFoundException eDAMNotFoundException = new EDAMNotFoundException();
                        this.notFoundException = eDAMNotFoundException;
                        eDAMNotFoundException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    PublicUserInfo publicUserInfo = new PublicUserInfo();
                    this.success = publicUserInfo;
                    publicUserInfo.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetNotFoundException()) {
                tProtocol.writeFieldBegin(NOT_FOUND_EXCEPTION_FIELD_DESC);
                this.notFoundException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getPublicUserInfo_result(getPublicUserInfo_result getpublicuserinfo_result) {
            if (getpublicuserinfo_result.isSetSuccess()) {
                this.success = new PublicUserInfo(getpublicuserinfo_result.success);
            }
            if (getpublicuserinfo_result.isSetNotFoundException()) {
                this.notFoundException = new EDAMNotFoundException(getpublicuserinfo_result.notFoundException);
            }
            if (getpublicuserinfo_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(getpublicuserinfo_result.systemException);
            }
            if (getpublicuserinfo_result.isSetUserException()) {
                this.userException = new EDAMUserException(getpublicuserinfo_result.userException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getPublicUserInfo_result getpublicuserinfo_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            int compareTo4;
            if (!getClass().equals(getpublicuserinfo_result.getClass())) {
                return getClass().getName().compareTo(getpublicuserinfo_result.getClass().getName());
            }
            int compareTo5 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(getpublicuserinfo_result.isSetSuccess()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetSuccess() && (compareTo4 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) getpublicuserinfo_result.success)) != 0) {
                return compareTo4;
            }
            int compareTo6 = Boolean.valueOf(isSetNotFoundException()).compareTo(Boolean.valueOf(getpublicuserinfo_result.isSetNotFoundException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (isSetNotFoundException() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.notFoundException, (Comparable) getpublicuserinfo_result.notFoundException)) != 0) {
                return compareTo3;
            }
            int compareTo7 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(getpublicuserinfo_result.isSetSystemException()));
            if (compareTo7 != 0) {
                return compareTo7;
            }
            if (isSetSystemException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) getpublicuserinfo_result.systemException)) != 0) {
                return compareTo2;
            }
            int compareTo8 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(getpublicuserinfo_result.isSetUserException()));
            if (compareTo8 != 0) {
                return compareTo8;
            }
            if (!isSetUserException() || (compareTo = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) getpublicuserinfo_result.userException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getPublicUserInfo_result> deepCopy2() {
            return new getPublicUserInfo_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getUser_args implements TBase<getUser_args>, Serializable, Cloneable {
        private String authenticationToken;
        private static final TStruct STRUCT_DESC = new TStruct("getUser_args");
        private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 1);

        public getUser_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.authenticationToken = null;
        }

        public boolean isSetAuthenticationToken() {
            return this.authenticationToken != null;
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
                } else if (b == 11) {
                    this.authenticationToken = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setAuthenticationToken(String str) {
            this.authenticationToken = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.authenticationToken != null) {
                tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
                tProtocol.writeString(this.authenticationToken);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getUser_args(getUser_args getuser_args) {
            if (getuser_args.isSetAuthenticationToken()) {
                this.authenticationToken = getuser_args.authenticationToken;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getUser_args getuser_args) {
            int compareTo;
            if (!getClass().equals(getuser_args.getClass())) {
                return getClass().getName().compareTo(getuser_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(getuser_args.isSetAuthenticationToken()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetAuthenticationToken() || (compareTo = TBaseHelper.compareTo(this.authenticationToken, getuser_args.authenticationToken)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getUser_args> deepCopy2() {
            return new getUser_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class getUser_result implements TBase<getUser_result>, Serializable, Cloneable {
        private User success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("getUser_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public getUser_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    User user = new User();
                    this.success = user;
                    user.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public getUser_result(getUser_result getuser_result) {
            if (getuser_result.isSetSuccess()) {
                this.success = new User(getuser_result.success);
            }
            if (getuser_result.isSetUserException()) {
                this.userException = new EDAMUserException(getuser_result.userException);
            }
            if (getuser_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(getuser_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(getUser_result getuser_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(getuser_result.getClass())) {
                return getClass().getName().compareTo(getuser_result.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(getuser_result.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) getuser_result.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(getuser_result.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) getuser_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(getuser_result.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) getuser_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<getUser_result> deepCopy2() {
            return new getUser_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class refreshAuthentication_args implements TBase<refreshAuthentication_args>, Serializable, Cloneable {
        private String authenticationToken;
        private static final TStruct STRUCT_DESC = new TStruct("refreshAuthentication_args");
        private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 1);

        public refreshAuthentication_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.authenticationToken = null;
        }

        public boolean isSetAuthenticationToken() {
            return this.authenticationToken != null;
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
                } else if (b == 11) {
                    this.authenticationToken = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setAuthenticationToken(String str) {
            this.authenticationToken = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.authenticationToken != null) {
                tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
                tProtocol.writeString(this.authenticationToken);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public refreshAuthentication_args(refreshAuthentication_args refreshauthentication_args) {
            if (refreshauthentication_args.isSetAuthenticationToken()) {
                this.authenticationToken = refreshauthentication_args.authenticationToken;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(refreshAuthentication_args refreshauthentication_args) {
            int compareTo;
            if (!getClass().equals(refreshauthentication_args.getClass())) {
                return getClass().getName().compareTo(refreshauthentication_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(refreshauthentication_args.isSetAuthenticationToken()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetAuthenticationToken() || (compareTo = TBaseHelper.compareTo(this.authenticationToken, refreshauthentication_args.authenticationToken)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<refreshAuthentication_args> deepCopy2() {
            return new refreshAuthentication_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class refreshAuthentication_result implements TBase<refreshAuthentication_result>, Serializable, Cloneable {
        private AuthenticationResult success;
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("refreshAuthentication_result");
        private static final TField SUCCESS_FIELD_DESC = new TField(FirebaseAnalytics.Param.SUCCESS, (byte) 12, 0);
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public refreshAuthentication_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.success = null;
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSuccess() {
            return this.success != null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                if (s != 0) {
                    if (s != 1) {
                        if (s != 2) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 12) {
                            EDAMSystemException eDAMSystemException = new EDAMSystemException();
                            this.systemException = eDAMSystemException;
                            eDAMSystemException.read(tProtocol);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 12) {
                        EDAMUserException eDAMUserException = new EDAMUserException();
                        this.userException = eDAMUserException;
                        eDAMUserException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    AuthenticationResult authenticationResult = new AuthenticationResult();
                    this.success = authenticationResult;
                    authenticationResult.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetSuccess()) {
                tProtocol.writeFieldBegin(SUCCESS_FIELD_DESC);
                this.success.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public refreshAuthentication_result(refreshAuthentication_result refreshauthentication_result) {
            if (refreshauthentication_result.isSetSuccess()) {
                this.success = new AuthenticationResult(refreshauthentication_result.success);
            }
            if (refreshauthentication_result.isSetUserException()) {
                this.userException = new EDAMUserException(refreshauthentication_result.userException);
            }
            if (refreshauthentication_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(refreshauthentication_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(refreshAuthentication_result refreshauthentication_result) {
            int compareTo;
            int compareTo2;
            int compareTo3;
            if (!getClass().equals(refreshauthentication_result.getClass())) {
                return getClass().getName().compareTo(refreshauthentication_result.getClass().getName());
            }
            int compareTo4 = Boolean.valueOf(isSetSuccess()).compareTo(Boolean.valueOf(refreshauthentication_result.isSetSuccess()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (isSetSuccess() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.success, (Comparable) refreshauthentication_result.success)) != 0) {
                return compareTo3;
            }
            int compareTo5 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(refreshauthentication_result.isSetUserException()));
            if (compareTo5 != 0) {
                return compareTo5;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) refreshauthentication_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo6 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(refreshauthentication_result.isSetSystemException()));
            if (compareTo6 != 0) {
                return compareTo6;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) refreshauthentication_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<refreshAuthentication_result> deepCopy2() {
            return new refreshAuthentication_result(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class revokeLongSession_args implements TBase<revokeLongSession_args>, Serializable, Cloneable {
        private String authenticationToken;
        private static final TStruct STRUCT_DESC = new TStruct("revokeLongSession_args");
        private static final TField AUTHENTICATION_TOKEN_FIELD_DESC = new TField("authenticationToken", (byte) 11, 1);

        public revokeLongSession_args() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.authenticationToken = null;
        }

        public boolean isSetAuthenticationToken() {
            return this.authenticationToken != null;
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
                } else if (b == 11) {
                    this.authenticationToken = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void setAuthenticationToken(String str) {
            this.authenticationToken = str;
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            validate();
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (this.authenticationToken != null) {
                tProtocol.writeFieldBegin(AUTHENTICATION_TOKEN_FIELD_DESC);
                tProtocol.writeString(this.authenticationToken);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public revokeLongSession_args(revokeLongSession_args revokelongsession_args) {
            if (revokelongsession_args.isSetAuthenticationToken()) {
                this.authenticationToken = revokelongsession_args.authenticationToken;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(revokeLongSession_args revokelongsession_args) {
            int compareTo;
            if (!getClass().equals(revokelongsession_args.getClass())) {
                return getClass().getName().compareTo(revokelongsession_args.getClass().getName());
            }
            int compareTo2 = Boolean.valueOf(isSetAuthenticationToken()).compareTo(Boolean.valueOf(revokelongsession_args.isSetAuthenticationToken()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            if (!isSetAuthenticationToken() || (compareTo = TBaseHelper.compareTo(this.authenticationToken, revokelongsession_args.authenticationToken)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<revokeLongSession_args> deepCopy2() {
            return new revokeLongSession_args(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class revokeLongSession_result implements TBase<revokeLongSession_result>, Serializable, Cloneable {
        private EDAMSystemException systemException;
        private EDAMUserException userException;
        private static final TStruct STRUCT_DESC = new TStruct("revokeLongSession_result");
        private static final TField USER_EXCEPTION_FIELD_DESC = new TField("userException", (byte) 12, 1);
        private static final TField SYSTEM_EXCEPTION_FIELD_DESC = new TField("systemException", (byte) 12, 2);

        public revokeLongSession_result() {
        }

        @Override // com.evernote.thrift.TBase
        public void clear() {
            this.userException = null;
            this.systemException = null;
        }

        public boolean isSetSystemException() {
            return this.systemException != null;
        }

        public boolean isSetUserException() {
            return this.userException != null;
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
                        EDAMSystemException eDAMSystemException = new EDAMSystemException();
                        this.systemException = eDAMSystemException;
                        eDAMSystemException.read(tProtocol);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 12) {
                    EDAMUserException eDAMUserException = new EDAMUserException();
                    this.userException = eDAMUserException;
                    eDAMUserException.read(tProtocol);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
                tProtocol.readFieldEnd();
            }
        }

        public void validate() throws TException {
        }

        @Override // com.evernote.thrift.TBase
        public void write(TProtocol tProtocol) throws TException {
            tProtocol.writeStructBegin(STRUCT_DESC);
            if (isSetUserException()) {
                tProtocol.writeFieldBegin(USER_EXCEPTION_FIELD_DESC);
                this.userException.write(tProtocol);
                tProtocol.writeFieldEnd();
            } else if (isSetSystemException()) {
                tProtocol.writeFieldBegin(SYSTEM_EXCEPTION_FIELD_DESC);
                this.systemException.write(tProtocol);
                tProtocol.writeFieldEnd();
            }
            tProtocol.writeFieldStop();
            tProtocol.writeStructEnd();
        }

        public revokeLongSession_result(revokeLongSession_result revokelongsession_result) {
            if (revokelongsession_result.isSetUserException()) {
                this.userException = new EDAMUserException(revokelongsession_result.userException);
            }
            if (revokelongsession_result.isSetSystemException()) {
                this.systemException = new EDAMSystemException(revokelongsession_result.systemException);
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(revokeLongSession_result revokelongsession_result) {
            int compareTo;
            int compareTo2;
            if (!getClass().equals(revokelongsession_result.getClass())) {
                return getClass().getName().compareTo(revokelongsession_result.getClass().getName());
            }
            int compareTo3 = Boolean.valueOf(isSetUserException()).compareTo(Boolean.valueOf(revokelongsession_result.isSetUserException()));
            if (compareTo3 != 0) {
                return compareTo3;
            }
            if (isSetUserException() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.userException, (Comparable) revokelongsession_result.userException)) != 0) {
                return compareTo2;
            }
            int compareTo4 = Boolean.valueOf(isSetSystemException()).compareTo(Boolean.valueOf(revokelongsession_result.isSetSystemException()));
            if (compareTo4 != 0) {
                return compareTo4;
            }
            if (!isSetSystemException() || (compareTo = TBaseHelper.compareTo((Comparable) this.systemException, (Comparable) revokelongsession_result.systemException)) == 0) {
                return 0;
            }
            return compareTo;
        }

        @Override // com.evernote.thrift.TBase
        /* renamed from: deepCopy */
        public TBase<revokeLongSession_result> deepCopy2() {
            return new revokeLongSession_result(this);
        }
    }
}
