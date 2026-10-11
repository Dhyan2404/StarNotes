package com.sunia.HTREnginev2;

import com.evernote.client.android.EvernoteSession;
import com.evernote.client.android.asyncclient.EvernoteNoteStoreClient;
import com.evernote.client.android.type.NoteRef;
import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.thrift.TException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class d1k {

    /* renamed from: a */
    public static final Map<String, LinkedNotebook> f67397a = new HashMap();

    /* renamed from: a */
    public static LinkedNotebook m53572a(String str) throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        Map<String, LinkedNotebook> map = f67397a;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        for (LinkedNotebook linkedNotebook : m53574c().getEvernoteClientFactory().getNoteStoreClient().listLinkedNotebooks()) {
            f67397a.put(linkedNotebook.getGuid(), linkedNotebook);
        }
        return f67397a.get(str);
    }

    /* renamed from: b */
    public static EvernoteNoteStoreClient m53573b(NoteRef noteRef) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        EvernoteSession m53574c = m53574c();
        if (!noteRef.isLinked()) {
            return m53574c().getEvernoteClientFactory().getNoteStoreClient();
        }
        LinkedNotebook m53572a = m53572a(noteRef.getNotebookGuid());
        if (m53572a == null) {
            return null;
        }
        return m53574c.getEvernoteClientFactory().getLinkedNotebookHelper(m53572a).getClient();
    }

    /* renamed from: c */
    public static EvernoteSession m53574c() {
        EvernoteSession evernoteSession = EvernoteSession.getInstance();
        if (evernoteSession.isLoggedIn()) {
            return evernoteSession;
        }
        throw new IllegalArgumentException("session not logged in");
    }
}
