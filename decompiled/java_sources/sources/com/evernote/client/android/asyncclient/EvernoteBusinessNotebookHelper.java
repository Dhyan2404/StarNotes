package com.evernote.client.android.asyncclient;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.helper.EvernotePreconditions;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.SharedNotebook;
import com.evernote.thrift.TException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public class EvernoteBusinessNotebookHelper extends EvernoteAsyncClient {

    /* renamed from: d */
    public final EvernoteNoteStoreClient f20845d;

    /* renamed from: e */
    public final String f20846e;

    /* renamed from: f */
    public final String f20847f;

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteBusinessNotebookHelper$a */
    /* loaded from: classes4.dex */
    public class CallableC4465a implements Callable<List<LinkedNotebook>> {

        /* renamed from: e */
        public final /* synthetic */ EvernoteNoteStoreClient f20848e;

        public CallableC4465a(EvernoteNoteStoreClient evernoteNoteStoreClient) {
            this.f20848e = evernoteNoteStoreClient;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<LinkedNotebook> call() throws Exception {
            return EvernoteBusinessNotebookHelper.this.listBusinessNotebooks(this.f20848e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteBusinessNotebookHelper$b */
    /* loaded from: classes4.dex */
    public class CallableC4466b implements Callable<LinkedNotebook> {

        /* renamed from: e */
        public final /* synthetic */ Notebook f20850e;

        /* renamed from: f */
        public final /* synthetic */ EvernoteNoteStoreClient f20851f;

        public CallableC4466b(Notebook notebook, EvernoteNoteStoreClient evernoteNoteStoreClient) {
            this.f20850e = notebook;
            this.f20851f = evernoteNoteStoreClient;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public LinkedNotebook call() throws Exception {
            return EvernoteBusinessNotebookHelper.this.createBusinessNotebook(this.f20850e, this.f20851f);
        }
    }

    public EvernoteBusinessNotebookHelper(@NonNull EvernoteNoteStoreClient evernoteNoteStoreClient, @NonNull ExecutorService executorService, @NonNull String str, @NonNull String str2) {
        super(executorService);
        this.f20845d = (EvernoteNoteStoreClient) EvernotePreconditions.checkNotNull(evernoteNoteStoreClient);
        this.f20846e = (String) EvernotePreconditions.checkNotEmpty(str);
        this.f20847f = (String) EvernotePreconditions.checkNotEmpty(str2);
    }

    public static boolean isBusinessNotebook(LinkedNotebook linkedNotebook) {
        return linkedNotebook.isSetBusinessId();
    }

    public LinkedNotebook createBusinessNotebook(@NonNull Notebook notebook, @NonNull EvernoteSession evernoteSession) throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        return createBusinessNotebook(notebook, evernoteSession.getEvernoteClientFactory().getNoteStoreClient());
    }

    public Future<LinkedNotebook> createBusinessNotebookAsync(@NonNull Notebook notebook, @NonNull EvernoteSession evernoteSession, @Nullable EvernoteCallback<LinkedNotebook> evernoteCallback) {
        return createBusinessNotebookAsync(notebook, evernoteSession.getEvernoteClientFactory().getNoteStoreClient(), evernoteCallback);
    }

    public String getBusinessUserName() {
        return this.f20846e;
    }

    public String getBusinessUserShardId() {
        return this.f20847f;
    }

    public EvernoteNoteStoreClient getClient() {
        return this.f20845d;
    }

    public List<LinkedNotebook> listBusinessNotebooks(@NonNull EvernoteSession evernoteSession) throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        return listBusinessNotebooks(evernoteSession.getEvernoteClientFactory().getNoteStoreClient());
    }

    public Future<List<LinkedNotebook>> listBusinessNotebooksAsync(@NonNull EvernoteSession evernoteSession, @Nullable EvernoteCallback<List<LinkedNotebook>> evernoteCallback) {
        return listBusinessNotebooksAsync(evernoteSession.getEvernoteClientFactory().getNoteStoreClient(), evernoteCallback);
    }

    public LinkedNotebook createBusinessNotebook(@NonNull Notebook notebook, @NonNull EvernoteNoteStoreClient evernoteNoteStoreClient) throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        Notebook createNotebook = this.f20845d.createNotebook(notebook);
        SharedNotebook sharedNotebook = createNotebook.getSharedNotebooks().get(0);
        LinkedNotebook linkedNotebook = new LinkedNotebook();
        linkedNotebook.setShareKey(sharedNotebook.getShareKey());
        linkedNotebook.setShareName(createNotebook.getName());
        linkedNotebook.setUsername(this.f20846e);
        linkedNotebook.setShardId(this.f20847f);
        return evernoteNoteStoreClient.createLinkedNotebook(linkedNotebook);
    }

    public Future<LinkedNotebook> createBusinessNotebookAsync(@NonNull Notebook notebook, @NonNull EvernoteNoteStoreClient evernoteNoteStoreClient, @Nullable EvernoteCallback<LinkedNotebook> evernoteCallback) {
        return submitTask(new CallableC4466b(notebook, evernoteNoteStoreClient), evernoteCallback);
    }

    public List<LinkedNotebook> listBusinessNotebooks(@NonNull EvernoteNoteStoreClient evernoteNoteStoreClient) throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        ArrayList arrayList = new ArrayList(evernoteNoteStoreClient.listLinkedNotebooks());
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (!isBusinessNotebook((LinkedNotebook) it2.next())) {
                it2.remove();
            }
        }
        return arrayList;
    }

    public Future<List<LinkedNotebook>> listBusinessNotebooksAsync(@NonNull EvernoteNoteStoreClient evernoteNoteStoreClient, @Nullable EvernoteCallback<List<LinkedNotebook>> evernoteCallback) {
        return submitTask(new CallableC4465a(evernoteNoteStoreClient), evernoteCallback);
    }
}
