package com.evernote.clients;

import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.PremiumInfo;
import com.evernote.edam.type.User;
import com.evernote.edam.userstore.AuthenticationResult;
import com.evernote.edam.userstore.BootstrapInfo;
import com.evernote.edam.userstore.PublicUserInfo;
import com.evernote.edam.userstore.UserStore;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TProtocol;

/* loaded from: classes4.dex */
public class UserStoreClient {

    /* renamed from: a */
    public final String f21186a;

    /* renamed from: b */
    public final UserStore.Client f21187b;

    public UserStoreClient(TProtocol tProtocol, String str) {
        if (tProtocol != null && str != null) {
            this.f21187b = new UserStore.Client(tProtocol);
            this.f21186a = str;
            return;
        }
        throw new IllegalArgumentException("TProtocol and Token must not be null.");
    }

    /* renamed from: a */
    public UserStore.Client m17117a() {
        return this.f21187b;
    }

    public AuthenticationResult authenticate(String str, String str2, String str3, String str4, boolean z) throws EDAMUserException, EDAMSystemException, TException {
        return m17117a().authenticate(str, str2, str3, str4, z);
    }

    public AuthenticationResult authenticateLongSession(String str, String str2, String str3, String str4, String str5, String str6, boolean z) throws EDAMUserException, EDAMSystemException, TException {
        return m17117a().authenticateLongSession(str, str2, str3, str4, str5, str6, z);
    }

    public AuthenticationResult authenticateToBusiness() throws EDAMUserException, EDAMSystemException, TException {
        return m17117a().authenticateToBusiness(m17118b());
    }

    /* renamed from: b */
    public String m17118b() {
        return this.f21186a;
    }

    public boolean checkVersion(String str, short s, short s2) throws TException {
        return m17117a().checkVersion(str, s, s2);
    }

    public void completeTwoFactorAuthentication(String str, String str2, String str3, String str4) throws EDAMUserException, EDAMSystemException, TException {
        m17117a().completeTwoFactorAuthentication(str, str2, str3, str4);
    }

    public BootstrapInfo getBootstrapInfo(String str) throws TException {
        return m17117a().getBootstrapInfo(str);
    }

    public String getNoteStoreUrl() throws EDAMUserException, EDAMSystemException, TException {
        return m17117a().getNoteStoreUrl(m17118b());
    }

    public PremiumInfo getPremiumInfo() throws EDAMUserException, EDAMSystemException, TException {
        return m17117a().getPremiumInfo(m17118b());
    }

    public PublicUserInfo getPublicUserInfo(String str) throws EDAMNotFoundException, EDAMSystemException, EDAMUserException, TException {
        return m17117a().getPublicUserInfo(str);
    }

    public User getUser() throws EDAMUserException, EDAMSystemException, TException {
        return m17117a().getUser(m17118b());
    }

    public boolean isBusinessUser() throws TException, EDAMUserException, EDAMSystemException {
        return m17117a().getUser(m17118b()).isSetBusinessUserInfo();
    }

    public AuthenticationResult refreshAuthentication() throws EDAMUserException, EDAMSystemException, TException {
        return m17117a().refreshAuthentication(m17118b());
    }

    public void revokeLongSession() throws EDAMUserException, EDAMSystemException, TException {
        m17117a().revokeLongSession(m17118b());
    }

    public UserStoreClient(TProtocol tProtocol, TProtocol tProtocol2, String str) {
        if (tProtocol != null && tProtocol2 != null && str != null) {
            this.f21187b = new UserStore.Client(tProtocol, tProtocol2);
            this.f21186a = str;
            return;
        }
        throw new IllegalArgumentException("TProtocol and Token must not be null.");
    }
}
