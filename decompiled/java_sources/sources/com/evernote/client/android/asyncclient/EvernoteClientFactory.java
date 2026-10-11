package com.evernote.client.android.asyncclient;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.evernote.auth.EvernoteAuth;
import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.EvernoteUtil;
import com.evernote.client.android.helper.EvernotePreconditions;
import com.evernote.client.conn.mobile.ByteStore;
import com.evernote.client.conn.mobile.DiskBackedByteStore;
import com.evernote.client.conn.mobile.TAndroidTransport;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.notestore.NoteStore;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.User;
import com.evernote.edam.userstore.AuthenticationResult;
import com.evernote.edam.userstore.UserStore;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TBinaryProtocol;
import com.onyx.android.sdk.universal.editor.action.backup.ExecuteAutoBackupTaskAction;
import com.squareup.okhttp.ConnectionPool;
import com.squareup.okhttp.OkHttpClient;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class EvernoteClientFactory {

    /* renamed from: a */
    public final Map<String, EvernoteUserStoreClient> f20853a;

    /* renamed from: b */
    public final Map<String, EvernoteNoteStoreClient> f20854b;

    /* renamed from: c */
    public final Map<String, EvernoteLinkedNotebookHelper> f20855c;

    /* renamed from: d */
    public EvernoteBusinessNotebookHelper f20856d;

    /* renamed from: e */
    public EvernoteHtmlHelper f20857e;

    /* renamed from: f */
    public final Map<String, EvernoteHtmlHelper> f20858f;

    /* renamed from: g */
    public EvernoteHtmlHelper f20859g;

    /* renamed from: h */
    public EvernoteSearchHelper f20860h;

    /* renamed from: i */
    public final EvernoteAsyncClient f20861i;

    /* renamed from: j */
    public AuthenticationResult f20862j;
    protected final ByteStore mByteStore;
    protected final EvernoteSession mEvernoteSession;
    protected final ExecutorService mExecutorService;
    protected final Map<String, String> mHeaders;
    protected final OkHttpClient mHttpClient;

    /* loaded from: classes4.dex */
    public static class Builder {

        /* renamed from: a */
        public final EvernoteSession f20863a;

        /* renamed from: b */
        public final Map<String, String> f20864b = new HashMap();

        /* renamed from: c */
        public OkHttpClient f20865c;

        /* renamed from: d */
        public ByteStore.Factory f20866d;

        /* renamed from: e */
        public ExecutorService f20867e;

        public Builder(EvernoteSession evernoteSession) {
            this.f20863a = (EvernoteSession) EvernotePreconditions.checkNotNull(evernoteSession);
        }

        /* renamed from: a */
        public final Builder m16946a(String str, String str2) {
            this.f20864b.put(str, str2);
            return this;
        }

        /* renamed from: b */
        public final ByteStore.Factory m16947b(Context context) {
            return new DiskBackedByteStore.Factory(new File(context.getCacheDir(), "evernoteCache"), (int) (Runtime.getRuntime().maxMemory() / 32));
        }

        public EvernoteClientFactory build() {
            if (this.f20865c == null) {
                this.f20865c = m16948c();
            }
            if (this.f20866d == null) {
                this.f20866d = m16947b(this.f20863a.getApplicationContext());
            }
            if (this.f20867e == null) {
                this.f20867e = Executors.newSingleThreadExecutor();
            }
            m16946a("Cache-Control", "no-transform");
            m16946a("Accept", "application/x-thrift");
            m16946a("User-Agent", EvernoteUtil.generateUserAgentString(this.f20863a.getApplicationContext()));
            return new EvernoteClientFactory(this.f20863a, this.f20865c, this.f20866d.create(), this.f20864b, this.f20867e);
        }

        /* renamed from: c */
        public final OkHttpClient m16948c() {
            OkHttpClient okHttpClient = new OkHttpClient();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            okHttpClient.setConnectTimeout(10L, timeUnit);
            okHttpClient.setReadTimeout(10L, timeUnit);
            okHttpClient.setWriteTimeout(20L, timeUnit);
            okHttpClient.setConnectionPool(new ConnectionPool(20, ExecuteAutoBackupTaskAction.f48008l));
            return okHttpClient;
        }

        public Builder setByteStoreFactory(ByteStore.Factory factory) {
            this.f20866d = factory;
            return this;
        }

        public Builder setExecutorService(ExecutorService executorService) {
            this.f20867e = executorService;
            return this;
        }

        public Builder setHttpClient(OkHttpClient okHttpClient) {
            this.f20865c = okHttpClient;
            return this;
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteClientFactory$a */
    /* loaded from: classes4.dex */
    public class C4467a extends EvernoteAsyncClient {
        public C4467a(ExecutorService executorService) {
            super(executorService);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteClientFactory$b */
    /* loaded from: classes4.dex */
    public class CallableC4468b implements Callable<EvernoteLinkedNotebookHelper> {

        /* renamed from: e */
        public final /* synthetic */ LinkedNotebook f20869e;

        public CallableC4468b(LinkedNotebook linkedNotebook) {
            this.f20869e = linkedNotebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EvernoteLinkedNotebookHelper call() throws Exception {
            return EvernoteClientFactory.this.getLinkedNotebookHelper(this.f20869e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteClientFactory$c */
    /* loaded from: classes4.dex */
    public class CallableC4469c implements Callable<EvernoteBusinessNotebookHelper> {
        public CallableC4469c() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EvernoteBusinessNotebookHelper call() throws Exception {
            return EvernoteClientFactory.this.getBusinessNotebookHelper();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteClientFactory$d */
    /* loaded from: classes4.dex */
    public class CallableC4470d implements Callable<EvernoteHtmlHelper> {

        /* renamed from: e */
        public final /* synthetic */ LinkedNotebook f20872e;

        public CallableC4470d(LinkedNotebook linkedNotebook) {
            this.f20872e = linkedNotebook;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EvernoteHtmlHelper call() throws Exception {
            return EvernoteClientFactory.this.getLinkedHtmlHelper(this.f20872e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteClientFactory$e */
    /* loaded from: classes4.dex */
    public class CallableC4471e implements Callable<EvernoteHtmlHelper> {
        public CallableC4471e() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EvernoteHtmlHelper call() throws Exception {
            return EvernoteClientFactory.this.getHtmlHelperBusiness();
        }
    }

    public EvernoteClientFactory(EvernoteSession evernoteSession, OkHttpClient okHttpClient, ByteStore byteStore, Map<String, String> map, ExecutorService executorService) {
        this.mEvernoteSession = (EvernoteSession) EvernotePreconditions.checkNotNull(evernoteSession);
        this.mHttpClient = (OkHttpClient) EvernotePreconditions.checkNotNull(okHttpClient);
        this.mByteStore = (ByteStore) EvernotePreconditions.checkNotNull(byteStore);
        this.mHeaders = map;
        ExecutorService executorService2 = (ExecutorService) EvernotePreconditions.checkNotNull(executorService);
        this.mExecutorService = executorService2;
        this.f20853a = new HashMap();
        this.f20854b = new HashMap();
        this.f20855c = new HashMap();
        this.f20858f = new HashMap();
        this.f20861i = new C4467a(executorService2);
    }

    public final void authenticateToBusiness() throws TException, EDAMUserException, EDAMSystemException {
        if (isBusinessAuthExpired()) {
            this.f20862j = getUserStoreClient().authenticateToBusiness();
        }
    }

    public void checkLoggedIn() {
        if (!this.mEvernoteSession.isLoggedIn()) {
            throw new IllegalStateException("user not logged in");
        }
    }

    public TBinaryProtocol createBinaryProtocol(String str) {
        return new TBinaryProtocol(new TAndroidTransport(this.mHttpClient, this.mByteStore, str, this.mHeaders));
    }

    public EvernoteBusinessNotebookHelper createBusinessNotebookHelper() throws TException, EDAMUserException, EDAMSystemException {
        authenticateToBusiness();
        EvernoteNoteStoreClient noteStoreClient = getNoteStoreClient(this.f20862j.getNoteStoreUrl(), this.f20862j.getAuthenticationToken());
        User user = this.f20862j.getUser();
        return new EvernoteBusinessNotebookHelper(noteStoreClient, this.mExecutorService, user.getUsername(), user.getShardId());
    }

    public synchronized EvernoteNoteStoreClient createEvernoteNoteStoreClient(String str, String str2) {
        return new EvernoteNoteStoreClient(createNoteStoreClient(str), str2, this.mExecutorService);
    }

    public EvernoteSearchHelper createEvernoteSearchHelper() {
        return new EvernoteSearchHelper(this.mEvernoteSession, this.mExecutorService);
    }

    public EvernoteHtmlHelper createHtmlHelper(String str) {
        return new EvernoteHtmlHelper(this.mHttpClient, this.mEvernoteSession.getAuthenticationResult().getEvernoteHost(), str, this.mExecutorService);
    }

    public final String createKey(String str, String str2) {
        if (str == null && str2 == null) {
            throw new IllegalArgumentException();
        }
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        return str + str2;
    }

    public EvernoteLinkedNotebookHelper createLinkedNotebookHelper(@NonNull LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        String noteStoreUrl = linkedNotebook.getNoteStoreUrl();
        return new EvernoteLinkedNotebookHelper(getNoteStoreClient(noteStoreUrl, getNoteStoreClient(noteStoreUrl, (String) EvernotePreconditions.checkNotEmpty(this.mEvernoteSession.getAuthToken())).authenticateToSharedNotebook(linkedNotebook.getShareKey()).getAuthenticationToken()), linkedNotebook, this.mExecutorService);
    }

    public NoteStore.Client createNoteStoreClient(String str) {
        return new NoteStore.Client(createBinaryProtocol(str));
    }

    public EvernoteUserStoreClient createUserStoreClient(String str, String str2) {
        return new EvernoteUserStoreClient(new UserStore.Client(createBinaryProtocol(str)), str2, this.mExecutorService);
    }

    public synchronized EvernoteBusinessNotebookHelper getBusinessNotebookHelper() throws TException, EDAMUserException, EDAMSystemException {
        if (this.f20856d == null || isBusinessAuthExpired()) {
            this.f20856d = createBusinessNotebookHelper();
        }
        return this.f20856d;
    }

    public Future<EvernoteBusinessNotebookHelper> getBusinessNotebookHelperAsync(@Nullable EvernoteCallback<EvernoteBusinessNotebookHelper> evernoteCallback) {
        return this.f20861i.submitTask(new CallableC4469c(), evernoteCallback);
    }

    public EvernoteSearchHelper getEvernoteSearchHelper() {
        checkLoggedIn();
        if (this.f20860h == null) {
            this.f20860h = createEvernoteSearchHelper();
        }
        return this.f20860h;
    }

    public synchronized EvernoteHtmlHelper getHtmlHelperBusiness() throws TException, EDAMUserException, EDAMSystemException {
        if (this.f20859g == null) {
            authenticateToBusiness();
            this.f20859g = createHtmlHelper(this.f20862j.getAuthenticationToken());
        }
        return this.f20859g;
    }

    public Future<EvernoteHtmlHelper> getHtmlHelperBusinessAsync(@Nullable EvernoteCallback<EvernoteHtmlHelper> evernoteCallback) {
        return this.f20861i.submitTask(new CallableC4471e(), evernoteCallback);
    }

    public synchronized EvernoteHtmlHelper getHtmlHelperDefault() {
        checkLoggedIn();
        if (this.f20857e == null) {
            this.f20857e = createHtmlHelper(this.mEvernoteSession.getAuthToken());
        }
        return this.f20857e;
    }

    public EvernoteHtmlHelper getLinkedHtmlHelper(@NonNull LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        String guid = linkedNotebook.getGuid();
        EvernoteHtmlHelper evernoteHtmlHelper = this.f20858f.get(guid);
        if (evernoteHtmlHelper != null) {
            return evernoteHtmlHelper;
        }
        EvernoteHtmlHelper createHtmlHelper = createHtmlHelper(getNoteStoreClient(linkedNotebook.getNoteStoreUrl(), (String) EvernotePreconditions.checkNotEmpty(this.mEvernoteSession.getAuthToken())).authenticateToSharedNotebook(linkedNotebook.getShareKey()).getAuthenticationToken());
        this.f20858f.put(guid, createHtmlHelper);
        return createHtmlHelper;
    }

    public Future<EvernoteHtmlHelper> getLinkedHtmlHelperAsync(@NonNull LinkedNotebook linkedNotebook, @Nullable EvernoteCallback<EvernoteHtmlHelper> evernoteCallback) {
        return this.f20861i.submitTask(new CallableC4470d(linkedNotebook), evernoteCallback);
    }

    public synchronized EvernoteLinkedNotebookHelper getLinkedNotebookHelper(@NonNull LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        EvernoteLinkedNotebookHelper evernoteLinkedNotebookHelper;
        String guid = linkedNotebook.getGuid();
        evernoteLinkedNotebookHelper = this.f20855c.get(guid);
        if (evernoteLinkedNotebookHelper == null) {
            evernoteLinkedNotebookHelper = createLinkedNotebookHelper(linkedNotebook);
            this.f20855c.put(guid, evernoteLinkedNotebookHelper);
        }
        return evernoteLinkedNotebookHelper;
    }

    public Future<EvernoteLinkedNotebookHelper> getLinkedNotebookHelperAsync(@NonNull LinkedNotebook linkedNotebook, @Nullable EvernoteCallback<EvernoteLinkedNotebookHelper> evernoteCallback) {
        return this.f20861i.submitTask(new CallableC4468b(linkedNotebook), evernoteCallback);
    }

    public synchronized EvernoteNoteStoreClient getNoteStoreClient() {
        checkLoggedIn();
        return getNoteStoreClient(this.mEvernoteSession.getAuthenticationResult().getNoteStoreUrl(), (String) EvernotePreconditions.checkNotEmpty(this.mEvernoteSession.getAuthToken()));
    }

    public synchronized EvernoteUserStoreClient getUserStoreClient() {
        checkLoggedIn();
        return getUserStoreClient(new Uri.Builder().scheme("https").authority(this.mEvernoteSession.getAuthenticationResult().getEvernoteHost()).path(EvernoteAuth.f20767g).build().toString(), this.mEvernoteSession.getAuthToken());
    }

    public final boolean isBusinessAuthExpired() {
        AuthenticationResult authenticationResult = this.f20862j;
        return authenticationResult == null || authenticationResult.getExpiration() < System.currentTimeMillis();
    }

    public synchronized EvernoteNoteStoreClient getNoteStoreClient(@NonNull String str, @NonNull String str2) {
        EvernoteNoteStoreClient evernoteNoteStoreClient;
        String createKey = createKey(str, str2);
        evernoteNoteStoreClient = this.f20854b.get(createKey);
        if (evernoteNoteStoreClient == null) {
            evernoteNoteStoreClient = createEvernoteNoteStoreClient(str, str2);
            this.f20854b.put(createKey, evernoteNoteStoreClient);
        }
        return evernoteNoteStoreClient;
    }

    public synchronized EvernoteUserStoreClient getUserStoreClient(@NonNull String str, @Nullable String str2) {
        EvernoteUserStoreClient evernoteUserStoreClient;
        String createKey = createKey(str, str2);
        evernoteUserStoreClient = this.f20853a.get(createKey);
        if (evernoteUserStoreClient == null) {
            evernoteUserStoreClient = createUserStoreClient(str, str2);
            this.f20853a.put(createKey, evernoteUserStoreClient);
        }
        return evernoteUserStoreClient;
    }
}
