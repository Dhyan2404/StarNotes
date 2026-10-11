package com.evernote.edam.notestore;

import com.evernote.edam.type.LinkedNotebook;
import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.Resource;
import com.evernote.edam.type.SavedSearch;
import com.evernote.edam.type.Tag;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TList;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolException;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class SyncChunk implements TBase<SyncChunk>, Serializable, Cloneable {
    private static final int __CHUNKHIGHUSN_ISSET_ID = 1;
    private static final int __CURRENTTIME_ISSET_ID = 0;
    private static final int __UPDATECOUNT_ISSET_ID = 2;
    private boolean[] __isset_vector;
    private int chunkHighUSN;
    private long currentTime;
    private List<String> expungedLinkedNotebooks;
    private List<String> expungedNotebooks;
    private List<String> expungedNotes;
    private List<String> expungedSearches;
    private List<String> expungedTags;
    private List<LinkedNotebook> linkedNotebooks;
    private List<Notebook> notebooks;
    private List<Note> notes;
    private List<Resource> resources;
    private List<SavedSearch> searches;
    private List<Tag> tags;
    private int updateCount;
    private static final TStruct STRUCT_DESC = new TStruct("SyncChunk");
    private static final TField CURRENT_TIME_FIELD_DESC = new TField("currentTime", (byte) 10, 1);
    private static final TField CHUNK_HIGH_USN_FIELD_DESC = new TField("chunkHighUSN", (byte) 8, 2);
    private static final TField UPDATE_COUNT_FIELD_DESC = new TField("updateCount", (byte) 8, 3);
    private static final TField NOTES_FIELD_DESC = new TField("notes", (byte) 15, 4);
    private static final TField NOTEBOOKS_FIELD_DESC = new TField("notebooks", (byte) 15, 5);
    private static final TField TAGS_FIELD_DESC = new TField("tags", (byte) 15, 6);
    private static final TField SEARCHES_FIELD_DESC = new TField("searches", (byte) 15, 7);
    private static final TField RESOURCES_FIELD_DESC = new TField("resources", (byte) 15, 8);
    private static final TField EXPUNGED_NOTES_FIELD_DESC = new TField("expungedNotes", (byte) 15, 9);
    private static final TField EXPUNGED_NOTEBOOKS_FIELD_DESC = new TField("expungedNotebooks", (byte) 15, 10);
    private static final TField EXPUNGED_TAGS_FIELD_DESC = new TField("expungedTags", (byte) 15, 11);
    private static final TField EXPUNGED_SEARCHES_FIELD_DESC = new TField("expungedSearches", (byte) 15, 12);
    private static final TField LINKED_NOTEBOOKS_FIELD_DESC = new TField("linkedNotebooks", (byte) 15, 13);
    private static final TField EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC = new TField("expungedLinkedNotebooks", (byte) 15, 14);

    public SyncChunk() {
        this.__isset_vector = new boolean[3];
    }

    public void addToExpungedLinkedNotebooks(String str) {
        if (this.expungedLinkedNotebooks == null) {
            this.expungedLinkedNotebooks = new ArrayList();
        }
        this.expungedLinkedNotebooks.add(str);
    }

    public void addToExpungedNotebooks(String str) {
        if (this.expungedNotebooks == null) {
            this.expungedNotebooks = new ArrayList();
        }
        this.expungedNotebooks.add(str);
    }

    public void addToExpungedNotes(String str) {
        if (this.expungedNotes == null) {
            this.expungedNotes = new ArrayList();
        }
        this.expungedNotes.add(str);
    }

    public void addToExpungedSearches(String str) {
        if (this.expungedSearches == null) {
            this.expungedSearches = new ArrayList();
        }
        this.expungedSearches.add(str);
    }

    public void addToExpungedTags(String str) {
        if (this.expungedTags == null) {
            this.expungedTags = new ArrayList();
        }
        this.expungedTags.add(str);
    }

    public void addToLinkedNotebooks(LinkedNotebook linkedNotebook) {
        if (this.linkedNotebooks == null) {
            this.linkedNotebooks = new ArrayList();
        }
        this.linkedNotebooks.add(linkedNotebook);
    }

    public void addToNotebooks(Notebook notebook) {
        if (this.notebooks == null) {
            this.notebooks = new ArrayList();
        }
        this.notebooks.add(notebook);
    }

    public void addToNotes(Note note) {
        if (this.notes == null) {
            this.notes = new ArrayList();
        }
        this.notes.add(note);
    }

    public void addToResources(Resource resource) {
        if (this.resources == null) {
            this.resources = new ArrayList();
        }
        this.resources.add(resource);
    }

    public void addToSearches(SavedSearch savedSearch) {
        if (this.searches == null) {
            this.searches = new ArrayList();
        }
        this.searches.add(savedSearch);
    }

    public void addToTags(Tag tag) {
        if (this.tags == null) {
            this.tags = new ArrayList();
        }
        this.tags.add(tag);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setCurrentTimeIsSet(false);
        this.currentTime = 0L;
        setChunkHighUSNIsSet(false);
        this.chunkHighUSN = 0;
        setUpdateCountIsSet(false);
        this.updateCount = 0;
        this.notes = null;
        this.notebooks = null;
        this.tags = null;
        this.searches = null;
        this.resources = null;
        this.expungedNotes = null;
        this.expungedNotebooks = null;
        this.expungedTags = null;
        this.expungedSearches = null;
        this.linkedNotebooks = null;
        this.expungedLinkedNotebooks = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof SyncChunk)) {
            return equals((SyncChunk) obj);
        }
        return false;
    }

    public int getChunkHighUSN() {
        return this.chunkHighUSN;
    }

    public long getCurrentTime() {
        return this.currentTime;
    }

    public List<String> getExpungedLinkedNotebooks() {
        return this.expungedLinkedNotebooks;
    }

    public Iterator<String> getExpungedLinkedNotebooksIterator() {
        List<String> list = this.expungedLinkedNotebooks;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getExpungedLinkedNotebooksSize() {
        List<String> list = this.expungedLinkedNotebooks;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<String> getExpungedNotebooks() {
        return this.expungedNotebooks;
    }

    public Iterator<String> getExpungedNotebooksIterator() {
        List<String> list = this.expungedNotebooks;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getExpungedNotebooksSize() {
        List<String> list = this.expungedNotebooks;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<String> getExpungedNotes() {
        return this.expungedNotes;
    }

    public Iterator<String> getExpungedNotesIterator() {
        List<String> list = this.expungedNotes;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getExpungedNotesSize() {
        List<String> list = this.expungedNotes;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<String> getExpungedSearches() {
        return this.expungedSearches;
    }

    public Iterator<String> getExpungedSearchesIterator() {
        List<String> list = this.expungedSearches;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getExpungedSearchesSize() {
        List<String> list = this.expungedSearches;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<String> getExpungedTags() {
        return this.expungedTags;
    }

    public Iterator<String> getExpungedTagsIterator() {
        List<String> list = this.expungedTags;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getExpungedTagsSize() {
        List<String> list = this.expungedTags;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<LinkedNotebook> getLinkedNotebooks() {
        return this.linkedNotebooks;
    }

    public Iterator<LinkedNotebook> getLinkedNotebooksIterator() {
        List<LinkedNotebook> list = this.linkedNotebooks;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getLinkedNotebooksSize() {
        List<LinkedNotebook> list = this.linkedNotebooks;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<Notebook> getNotebooks() {
        return this.notebooks;
    }

    public Iterator<Notebook> getNotebooksIterator() {
        List<Notebook> list = this.notebooks;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getNotebooksSize() {
        List<Notebook> list = this.notebooks;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<Note> getNotes() {
        return this.notes;
    }

    public Iterator<Note> getNotesIterator() {
        List<Note> list = this.notes;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getNotesSize() {
        List<Note> list = this.notes;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<Resource> getResources() {
        return this.resources;
    }

    public Iterator<Resource> getResourcesIterator() {
        List<Resource> list = this.resources;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getResourcesSize() {
        List<Resource> list = this.resources;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<SavedSearch> getSearches() {
        return this.searches;
    }

    public Iterator<SavedSearch> getSearchesIterator() {
        List<SavedSearch> list = this.searches;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getSearchesSize() {
        List<SavedSearch> list = this.searches;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<Tag> getTags() {
        return this.tags;
    }

    public Iterator<Tag> getTagsIterator() {
        List<Tag> list = this.tags;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getTagsSize() {
        List<Tag> list = this.tags;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int getUpdateCount() {
        return this.updateCount;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetChunkHighUSN() {
        return this.__isset_vector[1];
    }

    public boolean isSetCurrentTime() {
        return this.__isset_vector[0];
    }

    public boolean isSetExpungedLinkedNotebooks() {
        return this.expungedLinkedNotebooks != null;
    }

    public boolean isSetExpungedNotebooks() {
        return this.expungedNotebooks != null;
    }

    public boolean isSetExpungedNotes() {
        return this.expungedNotes != null;
    }

    public boolean isSetExpungedSearches() {
        return this.expungedSearches != null;
    }

    public boolean isSetExpungedTags() {
        return this.expungedTags != null;
    }

    public boolean isSetLinkedNotebooks() {
        return this.linkedNotebooks != null;
    }

    public boolean isSetNotebooks() {
        return this.notebooks != null;
    }

    public boolean isSetNotes() {
        return this.notes != null;
    }

    public boolean isSetResources() {
        return this.resources != null;
    }

    public boolean isSetSearches() {
        return this.searches != null;
    }

    public boolean isSetTags() {
        return this.tags != null;
    }

    public boolean isSetUpdateCount() {
        return this.__isset_vector[2];
    }

    @Override // com.evernote.thrift.TBase
    public void read(TProtocol tProtocol) throws TException {
        tProtocol.readStructBegin();
        while (true) {
            TField readFieldBegin = tProtocol.readFieldBegin();
            byte b = readFieldBegin.type;
            if (b == 0) {
                tProtocol.readStructEnd();
                validate();
                return;
            }
            int i = 0;
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.currentTime = tProtocol.readI64();
                        setCurrentTimeIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.chunkHighUSN = tProtocol.readI32();
                        setChunkHighUSNIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updateCount = tProtocol.readI32();
                        setUpdateCountIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin = tProtocol.readListBegin();
                        this.notes = new ArrayList(readListBegin.size);
                        while (i < readListBegin.size) {
                            Note note = new Note();
                            note.read(tProtocol);
                            this.notes.add(note);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 5:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin2 = tProtocol.readListBegin();
                        this.notebooks = new ArrayList(readListBegin2.size);
                        while (i < readListBegin2.size) {
                            Notebook notebook = new Notebook();
                            notebook.read(tProtocol);
                            this.notebooks.add(notebook);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 6:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin3 = tProtocol.readListBegin();
                        this.tags = new ArrayList(readListBegin3.size);
                        while (i < readListBegin3.size) {
                            Tag tag = new Tag();
                            tag.read(tProtocol);
                            this.tags.add(tag);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 7:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin4 = tProtocol.readListBegin();
                        this.searches = new ArrayList(readListBegin4.size);
                        while (i < readListBegin4.size) {
                            SavedSearch savedSearch = new SavedSearch();
                            savedSearch.read(tProtocol);
                            this.searches.add(savedSearch);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 8:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin5 = tProtocol.readListBegin();
                        this.resources = new ArrayList(readListBegin5.size);
                        while (i < readListBegin5.size) {
                            Resource resource = new Resource();
                            resource.read(tProtocol);
                            this.resources.add(resource);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 9:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin6 = tProtocol.readListBegin();
                        this.expungedNotes = new ArrayList(readListBegin6.size);
                        while (i < readListBegin6.size) {
                            this.expungedNotes.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 10:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin7 = tProtocol.readListBegin();
                        this.expungedNotebooks = new ArrayList(readListBegin7.size);
                        while (i < readListBegin7.size) {
                            this.expungedNotebooks.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 11:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin8 = tProtocol.readListBegin();
                        this.expungedTags = new ArrayList(readListBegin8.size);
                        while (i < readListBegin8.size) {
                            this.expungedTags.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 12:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin9 = tProtocol.readListBegin();
                        this.expungedSearches = new ArrayList(readListBegin9.size);
                        while (i < readListBegin9.size) {
                            this.expungedSearches.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 13:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin10 = tProtocol.readListBegin();
                        this.linkedNotebooks = new ArrayList(readListBegin10.size);
                        while (i < readListBegin10.size) {
                            LinkedNotebook linkedNotebook = new LinkedNotebook();
                            linkedNotebook.read(tProtocol);
                            this.linkedNotebooks.add(linkedNotebook);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 14:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin11 = tProtocol.readListBegin();
                        this.expungedLinkedNotebooks = new ArrayList(readListBegin11.size);
                        while (i < readListBegin11.size) {
                            this.expungedLinkedNotebooks.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setChunkHighUSN(int i) {
        this.chunkHighUSN = i;
        setChunkHighUSNIsSet(true);
    }

    public void setChunkHighUSNIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setCurrentTime(long j) {
        this.currentTime = j;
        setCurrentTimeIsSet(true);
    }

    public void setCurrentTimeIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setExpungedLinkedNotebooks(List<String> list) {
        this.expungedLinkedNotebooks = list;
    }

    public void setExpungedLinkedNotebooksIsSet(boolean z) {
        if (z) {
            return;
        }
        this.expungedLinkedNotebooks = null;
    }

    public void setExpungedNotebooks(List<String> list) {
        this.expungedNotebooks = list;
    }

    public void setExpungedNotebooksIsSet(boolean z) {
        if (z) {
            return;
        }
        this.expungedNotebooks = null;
    }

    public void setExpungedNotes(List<String> list) {
        this.expungedNotes = list;
    }

    public void setExpungedNotesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.expungedNotes = null;
    }

    public void setExpungedSearches(List<String> list) {
        this.expungedSearches = list;
    }

    public void setExpungedSearchesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.expungedSearches = null;
    }

    public void setExpungedTags(List<String> list) {
        this.expungedTags = list;
    }

    public void setExpungedTagsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.expungedTags = null;
    }

    public void setLinkedNotebooks(List<LinkedNotebook> list) {
        this.linkedNotebooks = list;
    }

    public void setLinkedNotebooksIsSet(boolean z) {
        if (z) {
            return;
        }
        this.linkedNotebooks = null;
    }

    public void setNotebooks(List<Notebook> list) {
        this.notebooks = list;
    }

    public void setNotebooksIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebooks = null;
    }

    public void setNotes(List<Note> list) {
        this.notes = list;
    }

    public void setNotesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notes = null;
    }

    public void setResources(List<Resource> list) {
        this.resources = list;
    }

    public void setResourcesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.resources = null;
    }

    public void setSearches(List<SavedSearch> list) {
        this.searches = list;
    }

    public void setSearchesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.searches = null;
    }

    public void setTags(List<Tag> list) {
        this.tags = list;
    }

    public void setTagsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.tags = null;
    }

    public void setUpdateCount(int i) {
        this.updateCount = i;
        setUpdateCountIsSet(true);
    }

    public void setUpdateCountIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SyncChunk(");
        sb.append("currentTime:");
        sb.append(this.currentTime);
        if (isSetChunkHighUSN()) {
            sb.append(", ");
            sb.append("chunkHighUSN:");
            sb.append(this.chunkHighUSN);
        }
        sb.append(", ");
        sb.append("updateCount:");
        sb.append(this.updateCount);
        if (isSetNotes()) {
            sb.append(", ");
            sb.append("notes:");
            List<Note> list = this.notes;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (isSetNotebooks()) {
            sb.append(", ");
            sb.append("notebooks:");
            List<Notebook> list2 = this.notebooks;
            if (list2 == null) {
                sb.append("null");
            } else {
                sb.append(list2);
            }
        }
        if (isSetTags()) {
            sb.append(", ");
            sb.append("tags:");
            List<Tag> list3 = this.tags;
            if (list3 == null) {
                sb.append("null");
            } else {
                sb.append(list3);
            }
        }
        if (isSetSearches()) {
            sb.append(", ");
            sb.append("searches:");
            List<SavedSearch> list4 = this.searches;
            if (list4 == null) {
                sb.append("null");
            } else {
                sb.append(list4);
            }
        }
        if (isSetResources()) {
            sb.append(", ");
            sb.append("resources:");
            List<Resource> list5 = this.resources;
            if (list5 == null) {
                sb.append("null");
            } else {
                sb.append(list5);
            }
        }
        if (isSetExpungedNotes()) {
            sb.append(", ");
            sb.append("expungedNotes:");
            List<String> list6 = this.expungedNotes;
            if (list6 == null) {
                sb.append("null");
            } else {
                sb.append(list6);
            }
        }
        if (isSetExpungedNotebooks()) {
            sb.append(", ");
            sb.append("expungedNotebooks:");
            List<String> list7 = this.expungedNotebooks;
            if (list7 == null) {
                sb.append("null");
            } else {
                sb.append(list7);
            }
        }
        if (isSetExpungedTags()) {
            sb.append(", ");
            sb.append("expungedTags:");
            List<String> list8 = this.expungedTags;
            if (list8 == null) {
                sb.append("null");
            } else {
                sb.append(list8);
            }
        }
        if (isSetExpungedSearches()) {
            sb.append(", ");
            sb.append("expungedSearches:");
            List<String> list9 = this.expungedSearches;
            if (list9 == null) {
                sb.append("null");
            } else {
                sb.append(list9);
            }
        }
        if (isSetLinkedNotebooks()) {
            sb.append(", ");
            sb.append("linkedNotebooks:");
            List<LinkedNotebook> list10 = this.linkedNotebooks;
            if (list10 == null) {
                sb.append("null");
            } else {
                sb.append(list10);
            }
        }
        if (isSetExpungedLinkedNotebooks()) {
            sb.append(", ");
            sb.append("expungedLinkedNotebooks:");
            List<String> list11 = this.expungedLinkedNotebooks;
            if (list11 == null) {
                sb.append("null");
            } else {
                sb.append(list11);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetChunkHighUSN() {
        this.__isset_vector[1] = false;
    }

    public void unsetCurrentTime() {
        this.__isset_vector[0] = false;
    }

    public void unsetExpungedLinkedNotebooks() {
        this.expungedLinkedNotebooks = null;
    }

    public void unsetExpungedNotebooks() {
        this.expungedNotebooks = null;
    }

    public void unsetExpungedNotes() {
        this.expungedNotes = null;
    }

    public void unsetExpungedSearches() {
        this.expungedSearches = null;
    }

    public void unsetExpungedTags() {
        this.expungedTags = null;
    }

    public void unsetLinkedNotebooks() {
        this.linkedNotebooks = null;
    }

    public void unsetNotebooks() {
        this.notebooks = null;
    }

    public void unsetNotes() {
        this.notes = null;
    }

    public void unsetResources() {
        this.resources = null;
    }

    public void unsetSearches() {
        this.searches = null;
    }

    public void unsetTags() {
        this.tags = null;
    }

    public void unsetUpdateCount() {
        this.__isset_vector[2] = false;
    }

    public void validate() throws TException {
        if (!isSetCurrentTime()) {
            throw new TProtocolException("Required field 'currentTime' is unset! Struct:" + toString());
        }
        if (isSetUpdateCount()) {
            return;
        }
        throw new TProtocolException("Required field 'updateCount' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        tProtocol.writeFieldBegin(CURRENT_TIME_FIELD_DESC);
        tProtocol.writeI64(this.currentTime);
        tProtocol.writeFieldEnd();
        if (isSetChunkHighUSN()) {
            tProtocol.writeFieldBegin(CHUNK_HIGH_USN_FIELD_DESC);
            tProtocol.writeI32(this.chunkHighUSN);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldBegin(UPDATE_COUNT_FIELD_DESC);
        tProtocol.writeI32(this.updateCount);
        tProtocol.writeFieldEnd();
        if (this.notes != null && isSetNotes()) {
            tProtocol.writeFieldBegin(NOTES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.notes.size()));
            Iterator<Note> it2 = this.notes.iterator();
            while (it2.hasNext()) {
                it2.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.notebooks != null && isSetNotebooks()) {
            tProtocol.writeFieldBegin(NOTEBOOKS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.notebooks.size()));
            Iterator<Notebook> it3 = this.notebooks.iterator();
            while (it3.hasNext()) {
                it3.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.tags != null && isSetTags()) {
            tProtocol.writeFieldBegin(TAGS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.tags.size()));
            Iterator<Tag> it4 = this.tags.iterator();
            while (it4.hasNext()) {
                it4.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.searches != null && isSetSearches()) {
            tProtocol.writeFieldBegin(SEARCHES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.searches.size()));
            Iterator<SavedSearch> it5 = this.searches.iterator();
            while (it5.hasNext()) {
                it5.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.resources != null && isSetResources()) {
            tProtocol.writeFieldBegin(RESOURCES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.resources.size()));
            Iterator<Resource> it6 = this.resources.iterator();
            while (it6.hasNext()) {
                it6.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.expungedNotes != null && isSetExpungedNotes()) {
            tProtocol.writeFieldBegin(EXPUNGED_NOTES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.expungedNotes.size()));
            Iterator<String> it7 = this.expungedNotes.iterator();
            while (it7.hasNext()) {
                tProtocol.writeString(it7.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.expungedNotebooks != null && isSetExpungedNotebooks()) {
            tProtocol.writeFieldBegin(EXPUNGED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.expungedNotebooks.size()));
            Iterator<String> it8 = this.expungedNotebooks.iterator();
            while (it8.hasNext()) {
                tProtocol.writeString(it8.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.expungedTags != null && isSetExpungedTags()) {
            tProtocol.writeFieldBegin(EXPUNGED_TAGS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.expungedTags.size()));
            Iterator<String> it9 = this.expungedTags.iterator();
            while (it9.hasNext()) {
                tProtocol.writeString(it9.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.expungedSearches != null && isSetExpungedSearches()) {
            tProtocol.writeFieldBegin(EXPUNGED_SEARCHES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.expungedSearches.size()));
            Iterator<String> it10 = this.expungedSearches.iterator();
            while (it10.hasNext()) {
                tProtocol.writeString(it10.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.linkedNotebooks != null && isSetLinkedNotebooks()) {
            tProtocol.writeFieldBegin(LINKED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.linkedNotebooks.size()));
            Iterator<LinkedNotebook> it11 = this.linkedNotebooks.iterator();
            while (it11.hasNext()) {
                it11.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.expungedLinkedNotebooks != null && isSetExpungedLinkedNotebooks()) {
            tProtocol.writeFieldBegin(EXPUNGED_LINKED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.expungedLinkedNotebooks.size()));
            Iterator<String> it12 = this.expungedLinkedNotebooks.iterator();
            while (it12.hasNext()) {
                tProtocol.writeString(it12.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(SyncChunk syncChunk) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        int compareTo7;
        int compareTo8;
        int compareTo9;
        int compareTo10;
        int compareTo11;
        int compareTo12;
        int compareTo13;
        int compareTo14;
        if (!getClass().equals(syncChunk.getClass())) {
            return getClass().getName().compareTo(syncChunk.getClass().getName());
        }
        int compareTo15 = Boolean.valueOf(isSetCurrentTime()).compareTo(Boolean.valueOf(syncChunk.isSetCurrentTime()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetCurrentTime() && (compareTo14 = TBaseHelper.compareTo(this.currentTime, syncChunk.currentTime)) != 0) {
            return compareTo14;
        }
        int compareTo16 = Boolean.valueOf(isSetChunkHighUSN()).compareTo(Boolean.valueOf(syncChunk.isSetChunkHighUSN()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetChunkHighUSN() && (compareTo13 = TBaseHelper.compareTo(this.chunkHighUSN, syncChunk.chunkHighUSN)) != 0) {
            return compareTo13;
        }
        int compareTo17 = Boolean.valueOf(isSetUpdateCount()).compareTo(Boolean.valueOf(syncChunk.isSetUpdateCount()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetUpdateCount() && (compareTo12 = TBaseHelper.compareTo(this.updateCount, syncChunk.updateCount)) != 0) {
            return compareTo12;
        }
        int compareTo18 = Boolean.valueOf(isSetNotes()).compareTo(Boolean.valueOf(syncChunk.isSetNotes()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetNotes() && (compareTo11 = TBaseHelper.compareTo((List) this.notes, (List) syncChunk.notes)) != 0) {
            return compareTo11;
        }
        int compareTo19 = Boolean.valueOf(isSetNotebooks()).compareTo(Boolean.valueOf(syncChunk.isSetNotebooks()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetNotebooks() && (compareTo10 = TBaseHelper.compareTo((List) this.notebooks, (List) syncChunk.notebooks)) != 0) {
            return compareTo10;
        }
        int compareTo20 = Boolean.valueOf(isSetTags()).compareTo(Boolean.valueOf(syncChunk.isSetTags()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetTags() && (compareTo9 = TBaseHelper.compareTo((List) this.tags, (List) syncChunk.tags)) != 0) {
            return compareTo9;
        }
        int compareTo21 = Boolean.valueOf(isSetSearches()).compareTo(Boolean.valueOf(syncChunk.isSetSearches()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetSearches() && (compareTo8 = TBaseHelper.compareTo((List) this.searches, (List) syncChunk.searches)) != 0) {
            return compareTo8;
        }
        int compareTo22 = Boolean.valueOf(isSetResources()).compareTo(Boolean.valueOf(syncChunk.isSetResources()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetResources() && (compareTo7 = TBaseHelper.compareTo((List) this.resources, (List) syncChunk.resources)) != 0) {
            return compareTo7;
        }
        int compareTo23 = Boolean.valueOf(isSetExpungedNotes()).compareTo(Boolean.valueOf(syncChunk.isSetExpungedNotes()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetExpungedNotes() && (compareTo6 = TBaseHelper.compareTo((List) this.expungedNotes, (List) syncChunk.expungedNotes)) != 0) {
            return compareTo6;
        }
        int compareTo24 = Boolean.valueOf(isSetExpungedNotebooks()).compareTo(Boolean.valueOf(syncChunk.isSetExpungedNotebooks()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetExpungedNotebooks() && (compareTo5 = TBaseHelper.compareTo((List) this.expungedNotebooks, (List) syncChunk.expungedNotebooks)) != 0) {
            return compareTo5;
        }
        int compareTo25 = Boolean.valueOf(isSetExpungedTags()).compareTo(Boolean.valueOf(syncChunk.isSetExpungedTags()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetExpungedTags() && (compareTo4 = TBaseHelper.compareTo((List) this.expungedTags, (List) syncChunk.expungedTags)) != 0) {
            return compareTo4;
        }
        int compareTo26 = Boolean.valueOf(isSetExpungedSearches()).compareTo(Boolean.valueOf(syncChunk.isSetExpungedSearches()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (isSetExpungedSearches() && (compareTo3 = TBaseHelper.compareTo((List) this.expungedSearches, (List) syncChunk.expungedSearches)) != 0) {
            return compareTo3;
        }
        int compareTo27 = Boolean.valueOf(isSetLinkedNotebooks()).compareTo(Boolean.valueOf(syncChunk.isSetLinkedNotebooks()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (isSetLinkedNotebooks() && (compareTo2 = TBaseHelper.compareTo((List) this.linkedNotebooks, (List) syncChunk.linkedNotebooks)) != 0) {
            return compareTo2;
        }
        int compareTo28 = Boolean.valueOf(isSetExpungedLinkedNotebooks()).compareTo(Boolean.valueOf(syncChunk.isSetExpungedLinkedNotebooks()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (!isSetExpungedLinkedNotebooks() || (compareTo = TBaseHelper.compareTo((List) this.expungedLinkedNotebooks, (List) syncChunk.expungedLinkedNotebooks)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<SyncChunk> deepCopy2() {
        return new SyncChunk(this);
    }

    public SyncChunk(long j, int i) {
        this();
        this.currentTime = j;
        setCurrentTimeIsSet(true);
        this.updateCount = i;
        setUpdateCountIsSet(true);
    }

    public boolean equals(SyncChunk syncChunk) {
        if (syncChunk == null || this.currentTime != syncChunk.currentTime) {
            return false;
        }
        boolean isSetChunkHighUSN = isSetChunkHighUSN();
        boolean isSetChunkHighUSN2 = syncChunk.isSetChunkHighUSN();
        if (((isSetChunkHighUSN || isSetChunkHighUSN2) && !(isSetChunkHighUSN && isSetChunkHighUSN2 && this.chunkHighUSN == syncChunk.chunkHighUSN)) || this.updateCount != syncChunk.updateCount) {
            return false;
        }
        boolean isSetNotes = isSetNotes();
        boolean isSetNotes2 = syncChunk.isSetNotes();
        if ((isSetNotes || isSetNotes2) && !(isSetNotes && isSetNotes2 && this.notes.equals(syncChunk.notes))) {
            return false;
        }
        boolean isSetNotebooks = isSetNotebooks();
        boolean isSetNotebooks2 = syncChunk.isSetNotebooks();
        if ((isSetNotebooks || isSetNotebooks2) && !(isSetNotebooks && isSetNotebooks2 && this.notebooks.equals(syncChunk.notebooks))) {
            return false;
        }
        boolean isSetTags = isSetTags();
        boolean isSetTags2 = syncChunk.isSetTags();
        if ((isSetTags || isSetTags2) && !(isSetTags && isSetTags2 && this.tags.equals(syncChunk.tags))) {
            return false;
        }
        boolean isSetSearches = isSetSearches();
        boolean isSetSearches2 = syncChunk.isSetSearches();
        if ((isSetSearches || isSetSearches2) && !(isSetSearches && isSetSearches2 && this.searches.equals(syncChunk.searches))) {
            return false;
        }
        boolean isSetResources = isSetResources();
        boolean isSetResources2 = syncChunk.isSetResources();
        if ((isSetResources || isSetResources2) && !(isSetResources && isSetResources2 && this.resources.equals(syncChunk.resources))) {
            return false;
        }
        boolean isSetExpungedNotes = isSetExpungedNotes();
        boolean isSetExpungedNotes2 = syncChunk.isSetExpungedNotes();
        if ((isSetExpungedNotes || isSetExpungedNotes2) && !(isSetExpungedNotes && isSetExpungedNotes2 && this.expungedNotes.equals(syncChunk.expungedNotes))) {
            return false;
        }
        boolean isSetExpungedNotebooks = isSetExpungedNotebooks();
        boolean isSetExpungedNotebooks2 = syncChunk.isSetExpungedNotebooks();
        if ((isSetExpungedNotebooks || isSetExpungedNotebooks2) && !(isSetExpungedNotebooks && isSetExpungedNotebooks2 && this.expungedNotebooks.equals(syncChunk.expungedNotebooks))) {
            return false;
        }
        boolean isSetExpungedTags = isSetExpungedTags();
        boolean isSetExpungedTags2 = syncChunk.isSetExpungedTags();
        if ((isSetExpungedTags || isSetExpungedTags2) && !(isSetExpungedTags && isSetExpungedTags2 && this.expungedTags.equals(syncChunk.expungedTags))) {
            return false;
        }
        boolean isSetExpungedSearches = isSetExpungedSearches();
        boolean isSetExpungedSearches2 = syncChunk.isSetExpungedSearches();
        if ((isSetExpungedSearches || isSetExpungedSearches2) && !(isSetExpungedSearches && isSetExpungedSearches2 && this.expungedSearches.equals(syncChunk.expungedSearches))) {
            return false;
        }
        boolean isSetLinkedNotebooks = isSetLinkedNotebooks();
        boolean isSetLinkedNotebooks2 = syncChunk.isSetLinkedNotebooks();
        if ((isSetLinkedNotebooks || isSetLinkedNotebooks2) && !(isSetLinkedNotebooks && isSetLinkedNotebooks2 && this.linkedNotebooks.equals(syncChunk.linkedNotebooks))) {
            return false;
        }
        boolean isSetExpungedLinkedNotebooks = isSetExpungedLinkedNotebooks();
        boolean isSetExpungedLinkedNotebooks2 = syncChunk.isSetExpungedLinkedNotebooks();
        if (isSetExpungedLinkedNotebooks || isSetExpungedLinkedNotebooks2) {
            return isSetExpungedLinkedNotebooks && isSetExpungedLinkedNotebooks2 && this.expungedLinkedNotebooks.equals(syncChunk.expungedLinkedNotebooks);
        }
        return true;
    }

    public SyncChunk(SyncChunk syncChunk) {
        boolean[] zArr = new boolean[3];
        this.__isset_vector = zArr;
        boolean[] zArr2 = syncChunk.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.currentTime = syncChunk.currentTime;
        this.chunkHighUSN = syncChunk.chunkHighUSN;
        this.updateCount = syncChunk.updateCount;
        if (syncChunk.isSetNotes()) {
            ArrayList arrayList = new ArrayList();
            Iterator<Note> it2 = syncChunk.notes.iterator();
            while (it2.hasNext()) {
                arrayList.add(new Note(it2.next()));
            }
            this.notes = arrayList;
        }
        if (syncChunk.isSetNotebooks()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<Notebook> it3 = syncChunk.notebooks.iterator();
            while (it3.hasNext()) {
                arrayList2.add(new Notebook(it3.next()));
            }
            this.notebooks = arrayList2;
        }
        if (syncChunk.isSetTags()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator<Tag> it4 = syncChunk.tags.iterator();
            while (it4.hasNext()) {
                arrayList3.add(new Tag(it4.next()));
            }
            this.tags = arrayList3;
        }
        if (syncChunk.isSetSearches()) {
            ArrayList arrayList4 = new ArrayList();
            Iterator<SavedSearch> it5 = syncChunk.searches.iterator();
            while (it5.hasNext()) {
                arrayList4.add(new SavedSearch(it5.next()));
            }
            this.searches = arrayList4;
        }
        if (syncChunk.isSetResources()) {
            ArrayList arrayList5 = new ArrayList();
            Iterator<Resource> it6 = syncChunk.resources.iterator();
            while (it6.hasNext()) {
                arrayList5.add(new Resource(it6.next()));
            }
            this.resources = arrayList5;
        }
        if (syncChunk.isSetExpungedNotes()) {
            ArrayList arrayList6 = new ArrayList();
            Iterator<String> it7 = syncChunk.expungedNotes.iterator();
            while (it7.hasNext()) {
                arrayList6.add(it7.next());
            }
            this.expungedNotes = arrayList6;
        }
        if (syncChunk.isSetExpungedNotebooks()) {
            ArrayList arrayList7 = new ArrayList();
            Iterator<String> it8 = syncChunk.expungedNotebooks.iterator();
            while (it8.hasNext()) {
                arrayList7.add(it8.next());
            }
            this.expungedNotebooks = arrayList7;
        }
        if (syncChunk.isSetExpungedTags()) {
            ArrayList arrayList8 = new ArrayList();
            Iterator<String> it9 = syncChunk.expungedTags.iterator();
            while (it9.hasNext()) {
                arrayList8.add(it9.next());
            }
            this.expungedTags = arrayList8;
        }
        if (syncChunk.isSetExpungedSearches()) {
            ArrayList arrayList9 = new ArrayList();
            Iterator<String> it10 = syncChunk.expungedSearches.iterator();
            while (it10.hasNext()) {
                arrayList9.add(it10.next());
            }
            this.expungedSearches = arrayList9;
        }
        if (syncChunk.isSetLinkedNotebooks()) {
            ArrayList arrayList10 = new ArrayList();
            Iterator<LinkedNotebook> it11 = syncChunk.linkedNotebooks.iterator();
            while (it11.hasNext()) {
                arrayList10.add(new LinkedNotebook(it11.next()));
            }
            this.linkedNotebooks = arrayList10;
        }
        if (syncChunk.isSetExpungedLinkedNotebooks()) {
            ArrayList arrayList11 = new ArrayList();
            Iterator<String> it12 = syncChunk.expungedLinkedNotebooks.iterator();
            while (it12.hasNext()) {
                arrayList11.add(it12.next());
            }
            this.expungedLinkedNotebooks = arrayList11;
        }
    }
}
