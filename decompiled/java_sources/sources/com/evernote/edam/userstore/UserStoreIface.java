package com.evernote.edam.userstore;

import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.PremiumInfo;
import com.evernote.edam.type.User;
import com.evernote.thrift.TException;

/* loaded from: classes4.dex */
public interface UserStoreIface {
    AuthenticationResult authenticate(String str, String str2, String str3, String str4, boolean z) throws EDAMUserException, EDAMSystemException, TException;

    AuthenticationResult authenticateLongSession(String str, String str2, String str3, String str4, String str5, String str6, boolean z) throws EDAMUserException, EDAMSystemException, TException;

    AuthenticationResult authenticateToBusiness(String str) throws EDAMUserException, EDAMSystemException, TException;

    boolean checkVersion(String str, short s, short s2) throws TException;

    AuthenticationResult completeTwoFactorAuthentication(String str, String str2, String str3, String str4) throws EDAMUserException, EDAMSystemException, TException;

    BootstrapInfo getBootstrapInfo(String str) throws TException;

    String getNoteStoreUrl(String str) throws EDAMUserException, EDAMSystemException, TException;

    PremiumInfo getPremiumInfo(String str) throws EDAMUserException, EDAMSystemException, TException;

    PublicUserInfo getPublicUserInfo(String str) throws EDAMNotFoundException, EDAMSystemException, EDAMUserException, TException;

    User getUser(String str) throws EDAMUserException, EDAMSystemException, TException;

    AuthenticationResult refreshAuthentication(String str) throws EDAMUserException, EDAMSystemException, TException;

    void revokeLongSession(String str) throws EDAMUserException, EDAMSystemException, TException;
}
