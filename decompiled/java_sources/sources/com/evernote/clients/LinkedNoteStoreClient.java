package com.evernote.clients;

import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.userstore.AuthenticationResult;
import com.evernote.thrift.TException;
import java.util.List;

/* loaded from: classes4.dex */
public class LinkedNoteStoreClient {

    /* renamed from: a */
    public NoteStoreClient f21183a;

    /* renamed from: b */
    public NoteStoreClient f21184b;

    /* renamed from: c */
    public AuthenticationResult f21185c;

    public LinkedNoteStoreClient(NoteStoreClient noteStoreClient, NoteStoreClient noteStoreClient2, AuthenticationResult authenticationResult) {
        this.f21183a = noteStoreClient;
        this.f21184b = noteStoreClient2;
        this.f21185c = authenticationResult;
    }

    /* renamed from: a */
    public AuthenticationResult m17113a() {
        return this.f21185c;
    }

    /* renamed from: b */
    public NoteStoreClient m17114b() {
        return this.f21183a;
    }

    /* renamed from: c */
    public String m17115c() {
        return m17113a().getAuthenticationToken();
    }

    public Note createNote(Note note, LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        note.setNotebookGuid(getClient().getSharedNotebookByAuth().getNotebookGuid());
        return getClient().createNote(note);
    }

    public NoteStoreClient getClient() {
        return this.f21184b;
    }

    public Notebook getCorrespondingNotebook(LinkedNotebook linkedNotebook) throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        return getClient().getNotebook(getClient().getSharedNotebookByAuth().getNotebookGuid());
    }

    public boolean isNotebookWritable(LinkedNotebook linkedNotebook) throws EDAMUserException, TException, EDAMSystemException, EDAMNotFoundException {
        return !getCorrespondingNotebook(linkedNotebook).getRestrictions().isNoCreateNotes();
    }

    public List<LinkedNotebook> listNotebooks() throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        return m17114b().listLinkedNotebooks();
    }
}
