package com.evernote.client.android.asyncclient;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.evernote.client.android.helper.EvernotePreconditions;
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
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public class EvernoteUserStoreClient extends EvernoteAsyncClient {

    /* renamed from: d */
    public final UserStore.Client f21094d;

    /* renamed from: e */
    public final String f21095e;

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$a */
    /* loaded from: classes4.dex */
    public class CallableC4554a implements Callable<PublicUserInfo> {

        /* renamed from: e */
        public final /* synthetic */ String f21096e;

        public CallableC4554a(String str) {
            this.f21096e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PublicUserInfo call() throws Exception {
            return EvernoteUserStoreClient.this.getPublicUserInfo(this.f21096e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$b */
    /* loaded from: classes4.dex */
    public class CallableC4555b implements Callable<PremiumInfo> {
        public CallableC4555b() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PremiumInfo call() throws Exception {
            return EvernoteUserStoreClient.this.getPremiumInfo();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$c */
    /* loaded from: classes4.dex */
    public class CallableC4556c implements Callable<String> {
        public CallableC4556c() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String call() throws Exception {
            return EvernoteUserStoreClient.this.getNoteStoreUrl();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$d */
    /* loaded from: classes4.dex */
    public class CallableC4557d implements Callable<Boolean> {
        public CallableC4557d() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(EvernoteUserStoreClient.this.isBusinessUser());
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$e */
    /* loaded from: classes4.dex */
    public class CallableC4558e implements Callable<Boolean> {

        /* renamed from: e */
        public final /* synthetic */ String f21101e;

        /* renamed from: f */
        public final /* synthetic */ short f21102f;

        /* renamed from: g */
        public final /* synthetic */ short f21103g;

        public CallableC4558e(String str, short s, short s2) {
            this.f21101e = str;
            this.f21102f = s;
            this.f21103g = s2;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(EvernoteUserStoreClient.this.checkVersion(this.f21101e, this.f21102f, this.f21103g));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$f */
    /* loaded from: classes4.dex */
    public class CallableC4559f implements Callable<BootstrapInfo> {

        /* renamed from: e */
        public final /* synthetic */ String f21105e;

        public CallableC4559f(String str) {
            this.f21105e = str;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BootstrapInfo call() throws Exception {
            return EvernoteUserStoreClient.this.getBootstrapInfo(this.f21105e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$g */
    /* loaded from: classes4.dex */
    public class CallableC4560g implements Callable<AuthenticationResult> {

        /* renamed from: e */
        public final /* synthetic */ String f21107e;

        /* renamed from: f */
        public final /* synthetic */ String f21108f;

        /* renamed from: g */
        public final /* synthetic */ String f21109g;

        /* renamed from: h */
        public final /* synthetic */ String f21110h;

        /* renamed from: i */
        public final /* synthetic */ boolean f21111i;

        public CallableC4560g(String str, String str2, String str3, String str4, boolean z) {
            this.f21107e = str;
            this.f21108f = str2;
            this.f21109g = str3;
            this.f21110h = str4;
            this.f21111i = z;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AuthenticationResult call() throws Exception {
            return EvernoteUserStoreClient.this.authenticate(this.f21107e, this.f21108f, this.f21109g, this.f21110h, this.f21111i);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$h */
    /* loaded from: classes4.dex */
    public class CallableC4561h implements Callable<AuthenticationResult> {

        /* renamed from: e */
        public final /* synthetic */ String f21113e;

        /* renamed from: f */
        public final /* synthetic */ String f21114f;

        /* renamed from: g */
        public final /* synthetic */ String f21115g;

        /* renamed from: h */
        public final /* synthetic */ String f21116h;

        /* renamed from: i */
        public final /* synthetic */ String f21117i;

        /* renamed from: j */
        public final /* synthetic */ String f21118j;

        /* renamed from: k */
        public final /* synthetic */ boolean f21119k;

        public CallableC4561h(String str, String str2, String str3, String str4, String str5, String str6, boolean z) {
            this.f21113e = str;
            this.f21114f = str2;
            this.f21115g = str3;
            this.f21116h = str4;
            this.f21117i = str5;
            this.f21118j = str6;
            this.f21119k = z;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AuthenticationResult call() throws Exception {
            return EvernoteUserStoreClient.this.authenticateLongSession(this.f21113e, this.f21114f, this.f21115g, this.f21116h, this.f21117i, this.f21118j, this.f21119k);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$i */
    /* loaded from: classes4.dex */
    public class CallableC4562i implements Callable<AuthenticationResult> {

        /* renamed from: e */
        public final /* synthetic */ String f21121e;

        /* renamed from: f */
        public final /* synthetic */ String f21122f;

        /* renamed from: g */
        public final /* synthetic */ String f21123g;

        /* renamed from: h */
        public final /* synthetic */ String f21124h;

        public CallableC4562i(String str, String str2, String str3, String str4) {
            this.f21121e = str;
            this.f21122f = str2;
            this.f21123g = str3;
            this.f21124h = str4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AuthenticationResult call() throws Exception {
            return EvernoteUserStoreClient.this.completeTwoFactorAuthentication(this.f21121e, this.f21122f, this.f21123g, this.f21124h);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$j */
    /* loaded from: classes4.dex */
    public class CallableC4563j implements Callable<Void> {
        public CallableC4563j() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            EvernoteUserStoreClient.this.revokeLongSession();
            return null;
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$k */
    /* loaded from: classes4.dex */
    public class CallableC4564k implements Callable<AuthenticationResult> {
        public CallableC4564k() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AuthenticationResult call() throws Exception {
            return EvernoteUserStoreClient.this.authenticateToBusiness();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$l */
    /* loaded from: classes4.dex */
    public class CallableC4565l implements Callable<AuthenticationResult> {
        public CallableC4565l() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AuthenticationResult call() throws Exception {
            return EvernoteUserStoreClient.this.refreshAuthentication();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteUserStoreClient$m */
    /* loaded from: classes4.dex */
    public class CallableC4566m implements Callable<User> {
        public CallableC4566m() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public User call() throws Exception {
            return EvernoteUserStoreClient.this.getUser();
        }
    }

    public EvernoteUserStoreClient(@NonNull UserStore.Client client, @Nullable String str, @NonNull ExecutorService executorService) {
        super(executorService);
        this.f21094d = (UserStore.Client) EvernotePreconditions.checkNotNull(client);
        this.f21095e = str;
    }

    public AuthenticationResult authenticate(String str, String str2, String str3, String str4, boolean z) throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.authenticate(str, str2, str3, str4, z);
    }

    public Future<AuthenticationResult> authenticateAsync(String str, String str2, String str3, String str4, boolean z, EvernoteCallback<AuthenticationResult> evernoteCallback) {
        return submitTask(new CallableC4560g(str, str2, str3, str4, z), evernoteCallback);
    }

    public AuthenticationResult authenticateLongSession(String str, String str2, String str3, String str4, String str5, String str6, boolean z) throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.authenticateLongSession(str, str2, str3, str4, str5, str6, z);
    }

    public Future<AuthenticationResult> authenticateLongSessionAsync(String str, String str2, String str3, String str4, String str5, String str6, boolean z, EvernoteCallback<AuthenticationResult> evernoteCallback) {
        return submitTask(new CallableC4561h(str, str2, str3, str4, str5, str6, z), evernoteCallback);
    }

    public AuthenticationResult authenticateToBusiness() throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.authenticateToBusiness(this.f21095e);
    }

    public Future<AuthenticationResult> authenticateToBusinessAsync(EvernoteCallback<AuthenticationResult> evernoteCallback) {
        return submitTask(new CallableC4564k(), evernoteCallback);
    }

    public boolean checkVersion(String str, short s, short s2) throws TException {
        return this.f21094d.checkVersion(str, s, s2);
    }

    public Future<Boolean> checkVersionAsync(String str, short s, short s2, EvernoteCallback<Boolean> evernoteCallback) {
        return submitTask(new CallableC4558e(str, s, s2), evernoteCallback);
    }

    public AuthenticationResult completeTwoFactorAuthentication(String str, String str2, String str3, String str4) throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.completeTwoFactorAuthentication(str, str2, str3, str4);
    }

    public Future<AuthenticationResult> completeTwoFactorAuthenticationAsync(String str, String str2, String str3, String str4, EvernoteCallback<AuthenticationResult> evernoteCallback) {
        return submitTask(new CallableC4562i(str, str2, str3, str4), evernoteCallback);
    }

    public BootstrapInfo getBootstrapInfo(String str) throws TException {
        return this.f21094d.getBootstrapInfo(str);
    }

    public Future<BootstrapInfo> getBootstrapInfoAsync(String str, EvernoteCallback<BootstrapInfo> evernoteCallback) {
        return submitTask(new CallableC4559f(str), evernoteCallback);
    }

    public String getNoteStoreUrl() throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.getNoteStoreUrl(this.f21095e);
    }

    public Future<String> getNoteStoreUrlAsync(EvernoteCallback<String> evernoteCallback) {
        return submitTask(new CallableC4556c(), evernoteCallback);
    }

    public PremiumInfo getPremiumInfo() throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.getPremiumInfo(this.f21095e);
    }

    public Future<PremiumInfo> getPremiumInfoAsync(EvernoteCallback<PremiumInfo> evernoteCallback) {
        return submitTask(new CallableC4555b(), evernoteCallback);
    }

    public PublicUserInfo getPublicUserInfo(String str) throws EDAMNotFoundException, EDAMSystemException, EDAMUserException, TException {
        return this.f21094d.getPublicUserInfo(str);
    }

    public Future<PublicUserInfo> getPublicUserInfoAsync(String str, EvernoteCallback<PublicUserInfo> evernoteCallback) {
        return submitTask(new CallableC4554a(str), evernoteCallback);
    }

    public User getUser() throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.getUser(this.f21095e);
    }

    public Future<User> getUserAsync(EvernoteCallback<User> evernoteCallback) {
        return submitTask(new CallableC4566m(), evernoteCallback);
    }

    public boolean isBusinessUser() throws TException, EDAMUserException, EDAMSystemException {
        return getUser().getAccounting().isSetBusinessId();
    }

    public Future<Boolean> isBusinessUserAsync(EvernoteCallback<Boolean> evernoteCallback) {
        return submitTask(new CallableC4557d(), evernoteCallback);
    }

    public AuthenticationResult refreshAuthentication() throws EDAMUserException, EDAMSystemException, TException {
        return this.f21094d.refreshAuthentication(this.f21095e);
    }

    public Future<AuthenticationResult> refreshAuthenticationAsync(EvernoteCallback<AuthenticationResult> evernoteCallback) {
        return submitTask(new CallableC4565l(), evernoteCallback);
    }

    public void revokeLongSession() throws EDAMUserException, EDAMSystemException, TException {
        this.f21094d.revokeLongSession(this.f21095e);
    }

    public Future<Void> revokeLongSessionAsync(EvernoteCallback<Void> evernoteCallback) {
        return submitTask(new CallableC4563j(), evernoteCallback);
    }
}
