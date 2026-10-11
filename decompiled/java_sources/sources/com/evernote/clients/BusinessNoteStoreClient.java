package com.evernote.clients;

import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.SharedNotebook;
import com.evernote.edam.userstore.AuthenticationResult;
import com.evernote.thrift.TException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class BusinessNoteStoreClient extends LinkedNoteStoreClient {
    public BusinessNoteStoreClient(NoteStoreClient noteStoreClient, NoteStoreClient noteStoreClient2, AuthenticationResult authenticationResult) {
        super(noteStoreClient, noteStoreClient2, authenticationResult);
    }

    public LinkedNotebook createNotebook(Notebook notebook) throws TException, EDAMUserException, EDAMSystemException, EDAMNotFoundException {
        Notebook createNotebook = getClient().createNotebook(notebook);
        SharedNotebook sharedNotebook = createNotebook.getSharedNotebooks().get(0);
        LinkedNotebook linkedNotebook = new LinkedNotebook();
        linkedNotebook.setShareKey(sharedNotebook.getShareKey());
        linkedNotebook.setShareName(createNotebook.getName());
        linkedNotebook.setUsername(m17113a().getUser().getUsername());
        linkedNotebook.setShardId(m17113a().getUser().getShardId());
        return m17114b().createLinkedNotebook(linkedNotebook);
    }

    @Override // com.evernote.clients.LinkedNoteStoreClient
    public List<LinkedNotebook> listNotebooks() throws EDAMUserException, EDAMSystemException, TException, EDAMNotFoundException {
        ArrayList arrayList = new ArrayList();
        for (LinkedNotebook linkedNotebook : super.listNotebooks()) {
            if (linkedNotebook.isSetBusinessId()) {
                arrayList.add(linkedNotebook);
            }
        }
        return arrayList;
    }
}
