package com.evernote.client.android.asyncclient;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.helper.EvernotePreconditions;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.SharedNotebook;
import com.evernote.thrift.TException;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* loaded from: classes4.dex */
public class EvernoteLinkedNotebookHelper extends EvernoteAsyncClient {
    protected final EvernoteNoteStoreClient mClient;
    protected final LinkedNotebook mLinkedNotebook;

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteLinkedNotebookHelper$a */
    /* loaded from: classes4.dex */
    public class CallableC4473a implements Callable<Note> {

        /* renamed from: e */
        public final /* synthetic */ Note f20879e;

        public CallableC4473a(Note note) {
            this.f20879e = note;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Note call() throws Exception {
            return EvernoteLinkedNotebookHelper.this.createNoteInLinkedNotebook(this.f20879e);
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteLinkedNotebookHelper$b */
    /* loaded from: classes4.dex */
    public class CallableC4474b implements Callable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ EvernoteNoteStoreClient f20881e;

        public CallableC4474b(EvernoteNoteStoreClient evernoteNoteStoreClient) {
            this.f20881e = evernoteNoteStoreClient;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer call() throws Exception {
            return Integer.valueOf(EvernoteLinkedNotebookHelper.this.deleteLinkedNotebook(this.f20881e));
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteLinkedNotebookHelper$c */
    /* loaded from: classes4.dex */
    public class CallableC4475c implements Callable<Notebook> {
        public CallableC4475c() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Notebook call() throws Exception {
            return EvernoteLinkedNotebookHelper.this.getCorrespondingNotebook();
        }
    }

    /* renamed from: com.evernote.client.android.asyncclient.EvernoteLinkedNotebookHelper$d */
    /* loaded from: classes4.dex */
    public class CallableC4476d implements Callable<Boolean> {
        public CallableC4476d() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(EvernoteLinkedNotebookHelper.this.isNotebookWritable());
        }
    }

    public EvernoteLinkedNotebookHelper(@NonNull EvernoteNoteStoreClient evernoteNoteStoreClient, @NonNull LinkedNotebook linkedNotebook, @NonNull ExecutorService executorService) {
        super(executorService);
        this.mClient = (EvernoteNoteStoreClient) EvernotePreconditions.checkNotNull(evernoteNoteStoreClient);
        this.mLinkedNotebook = (LinkedNotebook) EvernotePreconditions.checkNotNull(linkedNotebook);
    }

    public Note createNoteInLinkedNotebook(@NonNull Note note) throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        note.setNotebookGuid(this.mClient.getSharedNotebookByAuth().getNotebookGuid());
        return this.mClient.createNote(note);
    }

    public Future<Note> createNoteInLinkedNotebookAsync(@NonNull Note note, @Nullable EvernoteCallback<Note> evernoteCallback) {
        return submitTask(new CallableC4473a(note), evernoteCallback);
    }

    public int deleteLinkedNotebook(@NonNull EvernoteSession evernoteSession) throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        return deleteLinkedNotebook(evernoteSession.getEvernoteClientFactory().getNoteStoreClient());
    }

    public Future<Integer> deleteLinkedNotebookAsync(@NonNull EvernoteSession evernoteSession, @Nullable EvernoteCallback<Integer> evernoteCallback) {
        return deleteLinkedNotebookAsync(evernoteSession.getEvernoteClientFactory().getNoteStoreClient(), evernoteCallback);
    }

    public EvernoteNoteStoreClient getClient() {
        return this.mClient;
    }

    public Notebook getCorrespondingNotebook() throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        return this.mClient.getNotebook(this.mClient.getSharedNotebookByAuth().getNotebookGuid());
    }

    public Future<Notebook> getCorrespondingNotebookAsync(@Nullable EvernoteCallback<Notebook> evernoteCallback) {
        return submitTask(new CallableC4475c(), evernoteCallback);
    }

    public LinkedNotebook getLinkedNotebook() {
        return this.mLinkedNotebook;
    }

    public boolean isNotebookWritable() throws EDAMUserException, TException, EDAMSystemException, EDAMNotFoundException {
        return !getCorrespondingNotebook().getRestrictions().isNoCreateNotes();
    }

    public Future<Boolean> isNotebookWritableAsync(@Nullable EvernoteCallback<Boolean> evernoteCallback) {
        return submitTask(new CallableC4476d(), evernoteCallback);
    }

    public int deleteLinkedNotebook(@NonNull EvernoteNoteStoreClient evernoteNoteStoreClient) throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        SharedNotebook sharedNotebookByAuth = this.mClient.getSharedNotebookByAuth();
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(sharedNotebookByAuth.getId()));
        this.mClient.expungeSharedNotebooks(arrayList);
        return evernoteNoteStoreClient.expungeLinkedNotebook(this.mLinkedNotebook.getGuid());
    }

    public Future<Integer> deleteLinkedNotebookAsync(@NonNull EvernoteNoteStoreClient evernoteNoteStoreClient, @Nullable EvernoteCallback<Integer> evernoteCallback) {
        return submitTask(new CallableC4474b(evernoteNoteStoreClient), evernoteCallback);
    }
}
