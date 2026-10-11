package com.evernote.edam.notestore;

import com.evernote.edam.error.EDAMNotFoundException;
import com.evernote.edam.error.EDAMSystemException;
import com.evernote.edam.error.EDAMUserException;
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
import java.util.List;

/* loaded from: classes4.dex */
public interface NoteStoreIface {
    AuthenticationResult authenticateToSharedNote(String str, String str2, String str3) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    AuthenticationResult authenticateToSharedNotebook(String str, String str2) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    Note copyNote(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    LinkedNotebook createLinkedNotebook(String str, LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    Note createNote(String str, Note note) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    Notebook createNotebook(String str, Notebook notebook) throws EDAMUserException, EDAMSystemException, TException;

    SavedSearch createSearch(String str, SavedSearch savedSearch) throws EDAMUserException, EDAMSystemException, TException;

    SharedNotebook createSharedNotebook(String str, SharedNotebook sharedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    Tag createTag(String str, Tag tag) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int deleteNote(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    void emailNote(String str, NoteEmailParameters noteEmailParameters) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    int expungeInactiveNotes(String str) throws EDAMUserException, EDAMSystemException, TException;

    int expungeLinkedNotebook(String str, String str2) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    int expungeNote(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int expungeNotebook(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int expungeNotes(String str, List<String> list) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int expungeSearch(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int expungeSharedNotebooks(String str, List<Long> list) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    int expungeTag(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    NoteCollectionCounts findNoteCounts(String str, NoteFilter noteFilter, boolean z) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int findNoteOffset(String str, NoteFilter noteFilter, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    NoteList findNotes(String str, NoteFilter noteFilter, int i, int i2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    NotesMetadataList findNotesMetadata(String str, NoteFilter noteFilter, int i, int i2, NotesMetadataResultSpec notesMetadataResultSpec) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    RelatedResult findRelated(String str, RelatedQuery relatedQuery, RelatedResultSpec relatedResultSpec) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    Notebook getDefaultNotebook(String str) throws EDAMUserException, EDAMSystemException, TException;

    SyncChunk getFilteredSyncChunk(String str, int i, int i2, SyncChunkFilter syncChunkFilter) throws EDAMUserException, EDAMSystemException, TException;

    SyncChunk getLinkedNotebookSyncChunk(String str, LinkedNotebook linkedNotebook, int i, int i2, boolean z) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    SyncState getLinkedNotebookSyncState(String str, LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    Note getNote(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    LazyMap getNoteApplicationData(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    String getNoteApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    String getNoteContent(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    String getNoteSearchText(String str, String str2, boolean z, boolean z2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    List<String> getNoteTagNames(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    Note getNoteVersion(String str, String str2, int i, boolean z, boolean z2, boolean z3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    Notebook getNotebook(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    Notebook getPublicNotebook(int i, String str) throws EDAMSystemException, EDAMNotFoundException, TException;

    Resource getResource(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    byte[] getResourceAlternateData(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    LazyMap getResourceApplicationData(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    String getResourceApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    ResourceAttributes getResourceAttributes(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    Resource getResourceByHash(String str, String str2, byte[] bArr, boolean z, boolean z2, boolean z3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    byte[] getResourceData(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    byte[] getResourceRecognition(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    String getResourceSearchText(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    SavedSearch getSearch(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    SharedNotebook getSharedNotebookByAuth(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    SyncChunk getSyncChunk(String str, int i, int i2, boolean z) throws EDAMUserException, EDAMSystemException, TException;

    SyncState getSyncState(String str) throws EDAMUserException, EDAMSystemException, TException;

    SyncState getSyncStateWithMetrics(String str, ClientUsageMetrics clientUsageMetrics) throws EDAMUserException, EDAMSystemException, TException;

    Tag getTag(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    List<LinkedNotebook> listLinkedNotebooks(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    List<NoteVersionId> listNoteVersions(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    List<Notebook> listNotebooks(String str) throws EDAMUserException, EDAMSystemException, TException;

    List<SavedSearch> listSearches(String str) throws EDAMUserException, EDAMSystemException, TException;

    List<SharedNotebook> listSharedNotebooks(String str) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    List<Tag> listTags(String str) throws EDAMUserException, EDAMSystemException, TException;

    List<Tag> listTagsByNotebook(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int sendMessageToSharedNotebookMembers(String str, String str2, String str3, List<String> list) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    int setNoteApplicationDataEntry(String str, String str2, String str3, String str4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int setResourceApplicationDataEntry(String str, String str2, String str3, String str4) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int setSharedNotebookRecipientSettings(String str, long j, SharedNotebookRecipientSettings sharedNotebookRecipientSettings) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    String shareNote(String str, String str2) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    void stopSharingNote(String str, String str2) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    int unsetNoteApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int unsetResourceApplicationDataEntry(String str, String str2, String str3) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    void untagAll(String str, String str2) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int updateLinkedNotebook(String str, LinkedNotebook linkedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    Note updateNote(String str, Note note) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int updateNotebook(String str, Notebook notebook) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int updateResource(String str, Resource resource) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int updateSearch(String str, SavedSearch savedSearch) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;

    int updateSharedNotebook(String str, SharedNotebook sharedNotebook) throws EDAMUserException, EDAMNotFoundException, EDAMSystemException, TException;

    int updateTag(String str, Tag tag) throws EDAMUserException, EDAMSystemException, EDAMNotFoundException, TException;
}
