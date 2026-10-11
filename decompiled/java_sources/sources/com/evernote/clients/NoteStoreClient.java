package com.evernote.clients;

import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
import com.evernote.edam.notestore.ClientUsageMetrics;
import com.evernote.edam.notestore.NoteCollectionCounts;
import com.evernote.edam.notestore.NoteEmailParameters;
import com.evernote.edam.notestore.NoteFilter;
import com.evernote.edam.notestore.NoteList;
import com.evernote.edam.notestore.NoteStore;
import com.evernote.edam.notestore.NoteVersionId;
import com.evernote.edam.notestore.NotesMetadataList;
import com.evernote.edam.notestore.NotesMetadataResultSpec;
import com.evernote.edam.notestore.RelatedQuery;
import com.evernote.edam.notestore.RelatedResult;
import com.evernote.edam.notestore.RelatedResultSpec;
import com.evernote.edam.notestore.SyncChunk;
import com.evernote.edam.notestore.SyncChunkFilter;
import com.evernote.edam.notestore.SyncState;
import com.evernote.edam.type.LazyMap;
import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.Resource;
import com.evernote.edam.type.ResourceAttributes;
import com.evernote.edam.type.SavedSearch;
import com.evernote.edam.type.SharedNotebook;
import com.evernote.edam.type.SharedNotebookRecipientSettings;
import com.evernote.edam.type.Tag;
import com.evernote.edam.userstore.AuthenticationResult;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TProtocol;
import java.util.List;

/* loaded from: classes4.dex */
public class NoteStoreClient {
    protected final NoteStore.Client client;
    protected String token;

    public NoteStoreClient(TProtocol tProtocol, String str) {
        if (tProtocol != null && str != null) {
            this.client = new NoteStore.Client(tProtocol);
            this.token = str;
            return;
        }
        throw new IllegalArgumentException("TProtocol and Token must not be null.");
    }

    /* renamed from: a */
    public String m17116a() {
        return this.token;
    }

    public AuthenticationResult authenticateToSharedNote(String str, String str2, String str3) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().authenticateToSharedNote(str, str2, str3);
    }

    public AuthenticationResult authenticateToSharedNotebook(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().authenticateToSharedNotebook(str, m17116a());
    }

    public Note copyNote(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().copyNote(m17116a(), str, str2);
    }

    public LinkedNotebook createLinkedNotebook(LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().createLinkedNotebook(m17116a(), linkedNotebook);
    }

    public Note createNote(Note note) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().createNote(m17116a(), note);
    }

    public Notebook createNotebook(Notebook notebook) throws EDAMUserException, EDAMSystemException, TException {
        return getClient().createNotebook(m17116a(), notebook);
    }

    public SavedSearch createSearch(SavedSearch savedSearch) throws EDAMUserException, EDAMSystemException, TException {
        return getClient().createSearch(m17116a(), savedSearch);
    }

    public SharedNotebook createSharedNotebook(SharedNotebook sharedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().createSharedNotebook(m17116a(), sharedNotebook);
    }

    public Tag createTag(Tag tag) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().createTag(m17116a(), tag);
    }

    public int deleteNote(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().deleteNote(m17116a(), str);
    }

    public void emailNote(NoteEmailParameters noteEmailParameters) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        getClient().emailNote(m17116a(), noteEmailParameters);
    }

    public int expungeInactiveNotes() throws EDAMUserException, EDAMSystemException, TException {
        return getClient().expungeInactiveNotes(m17116a());
    }

    public int expungeLinkedNotebook(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().expungeLinkedNotebook(m17116a(), str);
    }

    public int expungeNote(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().expungeNote(m17116a(), str);
    }

    public int expungeNotebook(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().expungeNotebook(m17116a(), str);
    }

    public int expungeNotes(List<String> list) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().expungeNotes(m17116a(), list);
    }

    public int expungeSearch(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().expungeSearch(m17116a(), str);
    }

    public int expungeSharedNotebooks(List<Long> list) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().expungeSharedNotebooks(m17116a(), list);
    }

    public int expungeTag(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().expungeTag(m17116a(), str);
    }

    public NoteCollectionCounts findNoteCounts(NoteFilter noteFilter, boolean z) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().findNoteCounts(m17116a(), noteFilter, z);
    }

    public int findNoteOffset(NoteFilter noteFilter, String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().findNoteOffset(m17116a(), noteFilter, str);
    }

    public NoteList findNotes(NoteFilter noteFilter, int i, int i2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().findNotes(m17116a(), noteFilter, i, i2);
    }

    public NotesMetadataList findNotesMetadata(NoteFilter noteFilter, int i, int i2, NotesMetadataResultSpec notesMetadataResultSpec) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().findNotesMetadata(m17116a(), noteFilter, i, i2, notesMetadataResultSpec);
    }

    public RelatedResult findRelated(RelatedQuery relatedQuery, RelatedResultSpec relatedResultSpec) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().findRelated(m17116a(), relatedQuery, relatedResultSpec);
    }

    public NoteStore.Client getClient() {
        return this.client;
    }

    public Notebook getDefaultNotebook() throws EDAMUserException, EDAMSystemException, TException {
        return getClient().getDefaultNotebook(m17116a());
    }

    public SyncChunk getFilteredSyncChunk(int i, int i2, SyncChunkFilter syncChunkFilter) throws EDAMUserException, EDAMSystemException, TException {
        return getClient().getFilteredSyncChunk(m17116a(), i, i2, syncChunkFilter);
    }

    public SyncChunk getLinkedNotebookSyncChunk(LinkedNotebook linkedNotebook, int i, int i2, boolean z) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getLinkedNotebookSyncChunk(m17116a(), linkedNotebook, i, i2, z);
    }

    public SyncState getLinkedNotebookSyncState(LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getLinkedNotebookSyncState(m17116a(), linkedNotebook);
    }

    public Note getNote(String str, boolean z, boolean z2, boolean z3, boolean z4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNote(m17116a(), str, z, z2, z3, z4);
    }

    public LazyMap getNoteApplicationData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNoteApplicationData(m17116a(), str);
    }

    public String getNoteApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNoteApplicationDataEntry(m17116a(), str, str2);
    }

    public String getNoteContent(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNoteContent(m17116a(), str);
    }

    public String getNoteSearchText(String str, boolean z, boolean z2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNoteSearchText(m17116a(), str, z, z2);
    }

    public List<String> getNoteTagNames(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNoteTagNames(m17116a(), str);
    }

    public Note getNoteVersion(String str, int i, boolean z, boolean z2, boolean z3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNoteVersion(m17116a(), str, i, z, z2, z3);
    }

    public Notebook getNotebook(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getNotebook(m17116a(), str);
    }

    public Notebook getPublicNotebook(int i, String str) throws EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getPublicNotebook(i, str);
    }

    public Resource getResource(String str, boolean z, boolean z2, boolean z3, boolean z4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResource(m17116a(), str, z, z2, z3, z4);
    }

    public byte[] getResourceAlternateData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceAlternateData(m17116a(), str);
    }

    public LazyMap getResourceApplicationData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceApplicationData(m17116a(), str);
    }

    public String getResourceApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceApplicationDataEntry(m17116a(), str, str2);
    }

    public ResourceAttributes getResourceAttributes(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceAttributes(m17116a(), str);
    }

    public Resource getResourceByHash(String str, byte[] bArr, boolean z, boolean z2, boolean z3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceByHash(m17116a(), str, bArr, z, z2, z3);
    }

    public byte[] getResourceData(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceData(m17116a(), str);
    }

    public byte[] getResourceRecognition(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceRecognition(m17116a(), str);
    }

    public String getResourceSearchText(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getResourceSearchText(m17116a(), str);
    }

    public SavedSearch getSearch(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getSearch(m17116a(), str);
    }

    public SharedNotebook getSharedNotebookByAuth() throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().getSharedNotebookByAuth(m17116a());
    }

    public SyncChunk getSyncChunk(int i, int i2, boolean z) throws EDAMUserException, EDAMSystemException, TException {
        return getClient().getSyncChunk(m17116a(), i, i2, z);
    }

    public SyncState getSyncState() throws EDAMUserException, EDAMSystemException, TException {
        return getClient().getSyncState(m17116a());
    }

    public SyncState getSyncStateWithMetrics(ClientUsageMetrics clientUsageMetrics) throws EDAMUserException, EDAMSystemException, TException {
        return getClient().getSyncStateWithMetrics(m17116a(), clientUsageMetrics);
    }

    public Tag getTag(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().getTag(m17116a(), str);
    }

    public List<LinkedNotebook> listLinkedNotebooks() throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().listLinkedNotebooks(m17116a());
    }

    public List<NoteVersionId> listNoteVersions(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().listNoteVersions(m17116a(), str);
    }

    public List<Notebook> listNotebooks() throws EDAMUserException, EDAMSystemException, TException {
        return getClient().listNotebooks(m17116a());
    }

    public List<SavedSearch> listSearches() throws EDAMUserException, EDAMSystemException, TException {
        return getClient().listSearches(m17116a());
    }

    public List<SharedNotebook> listSharedNotebooks() throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().listSharedNotebooks(m17116a());
    }

    public List<Tag> listTags() throws EDAMUserException, EDAMSystemException, TException {
        return getClient().listTags(m17116a());
    }

    public List<Tag> listTagsByNotebook(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().listTagsByNotebook(m17116a(), str);
    }

    public int sendMessageToSharedNotebookMembers(String str, String str2, List<String> list) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().sendMessageToSharedNotebookMembers(m17116a(), str, str2, list);
    }

    public int setNoteApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().setNoteApplicationDataEntry(m17116a(), str, str2, str3);
    }

    public int setResourceApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().setResourceApplicationDataEntry(m17116a(), str, str2, str3);
    }

    public void setSharedNotebookRecipientSettings(String str, long j, SharedNotebookRecipientSettings sharedNotebookRecipientSettings) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        getClient().setSharedNotebookRecipientSettings(str, j, sharedNotebookRecipientSettings);
    }

    public String shareNote(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().shareNote(m17116a(), str);
    }

    public void stopSharingNote(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        getClient().stopSharingNote(m17116a(), str);
    }

    public int unsetNoteApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().unsetNoteApplicationDataEntry(m17116a(), str, str2);
    }

    public int unsetResourceApplicationDataEntry(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().unsetResourceApplicationDataEntry(m17116a(), str, str2);
    }

    public void untagAll(String str) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        getClient().untagAll(m17116a(), str);
    }

    public int updateLinkedNotebook(LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().updateLinkedNotebook(m17116a(), linkedNotebook);
    }

    public Note updateNote(Note note) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().updateNote(m17116a(), note);
    }

    public int updateNotebook(Notebook notebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().updateNotebook(m17116a(), notebook);
    }

    public int updateResource(Resource resource) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().updateResource(m17116a(), resource);
    }

    public int updateSearch(SavedSearch savedSearch) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().updateSearch(m17116a(), savedSearch);
    }

    public int updateSharedNotebook(SharedNotebook sharedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException {
        return getClient().updateSharedNotebook(m17116a(), sharedNotebook);
    }

    public int updateTag(Tag tag) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException {
        return getClient().updateTag(m17116a(), tag);
    }

    public NoteStoreClient(TProtocol tProtocol, TProtocol tProtocol2, String str) {
        if (tProtocol != null && tProtocol2 != null && str != null) {
            this.client = new NoteStore.Client(tProtocol, tProtocol2);
            this.token = str;
            return;
        }
        throw new IllegalArgumentException("TProtocol and Token must not be null.");
    }
}
