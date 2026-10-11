package com.evernote.edam.notestore;

import com.evernote.edam.type.Note;
import com.evernote.edam.type.Notebook;
import com.evernote.edam.type.NotebookDescriptor;
import com.evernote.edam.type.Tag;
import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TList;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class RelatedResult implements TBase<RelatedResult>, Serializable, Cloneable {
    private List<NotebookDescriptor> containingNotebooks;
    private List<Notebook> notebooks;
    private List<Note> notes;
    private List<Tag> tags;
    private static final TStruct STRUCT_DESC = new TStruct("RelatedResult");
    private static final TField NOTES_FIELD_DESC = new TField("notes", (byte) 15, 1);
    private static final TField NOTEBOOKS_FIELD_DESC = new TField("notebooks", (byte) 15, 2);
    private static final TField TAGS_FIELD_DESC = new TField("tags", (byte) 15, 3);
    private static final TField CONTAINING_NOTEBOOKS_FIELD_DESC = new TField("containingNotebooks", (byte) 15, 4);

    public RelatedResult() {
    }

    public void addToContainingNotebooks(NotebookDescriptor notebookDescriptor) {
        if (this.containingNotebooks == null) {
            this.containingNotebooks = new ArrayList();
        }
        this.containingNotebooks.add(notebookDescriptor);
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

    public void addToTags(Tag tag) {
        if (this.tags == null) {
            this.tags = new ArrayList();
        }
        this.tags.add(tag);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.notes = null;
        this.notebooks = null;
        this.tags = null;
        this.containingNotebooks = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof RelatedResult)) {
            return equals((RelatedResult) obj);
        }
        return false;
    }

    public List<NotebookDescriptor> getContainingNotebooks() {
        return this.containingNotebooks;
    }

    public Iterator<NotebookDescriptor> getContainingNotebooksIterator() {
        List<NotebookDescriptor> list = this.containingNotebooks;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getContainingNotebooksSize() {
        List<NotebookDescriptor> list = this.containingNotebooks;
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

    public int hashCode() {
        return 0;
    }

    public boolean isSetContainingNotebooks() {
        return this.containingNotebooks != null;
    }

    public boolean isSetNotebooks() {
        return this.notebooks != null;
    }

    public boolean isSetNotes() {
        return this.notes != null;
    }

    public boolean isSetTags() {
        return this.tags != null;
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
            short s = readFieldBegin.f21203id;
            int i = 0;
            if (s != 1) {
                if (s != 2) {
                    if (s != 3) {
                        if (s != 4) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 15) {
                            TList readListBegin = tProtocol.readListBegin();
                            this.containingNotebooks = new ArrayList(readListBegin.size);
                            while (i < readListBegin.size) {
                                NotebookDescriptor notebookDescriptor = new NotebookDescriptor();
                                notebookDescriptor.read(tProtocol);
                                this.containingNotebooks.add(notebookDescriptor);
                                i++;
                            }
                            tProtocol.readListEnd();
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 15) {
                        TList readListBegin2 = tProtocol.readListBegin();
                        this.tags = new ArrayList(readListBegin2.size);
                        while (i < readListBegin2.size) {
                            Tag tag = new Tag();
                            tag.read(tProtocol);
                            this.tags.add(tag);
                            i++;
                        }
                        tProtocol.readListEnd();
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 15) {
                    TList readListBegin3 = tProtocol.readListBegin();
                    this.notebooks = new ArrayList(readListBegin3.size);
                    while (i < readListBegin3.size) {
                        Notebook notebook = new Notebook();
                        notebook.read(tProtocol);
                        this.notebooks.add(notebook);
                        i++;
                    }
                    tProtocol.readListEnd();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 15) {
                TList readListBegin4 = tProtocol.readListBegin();
                this.notes = new ArrayList(readListBegin4.size);
                while (i < readListBegin4.size) {
                    Note note = new Note();
                    note.read(tProtocol);
                    this.notes.add(note);
                    i++;
                }
                tProtocol.readListEnd();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setContainingNotebooks(List<NotebookDescriptor> list) {
        this.containingNotebooks = list;
    }

    public void setContainingNotebooksIsSet(boolean z) {
        if (z) {
            return;
        }
        this.containingNotebooks = null;
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

    public void setTags(List<Tag> list) {
        this.tags = list;
    }

    public void setTagsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.tags = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("RelatedResult(");
        boolean z2 = false;
        if (isSetNotes()) {
            sb.append("notes:");
            List<Note> list = this.notes;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetNotebooks()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("notebooks:");
            List<Notebook> list2 = this.notebooks;
            if (list2 == null) {
                sb.append("null");
            } else {
                sb.append(list2);
            }
            z = false;
        }
        if (isSetTags()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("tags:");
            List<Tag> list3 = this.tags;
            if (list3 == null) {
                sb.append("null");
            } else {
                sb.append(list3);
            }
        } else {
            z2 = z;
        }
        if (isSetContainingNotebooks()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("containingNotebooks:");
            List<NotebookDescriptor> list4 = this.containingNotebooks;
            if (list4 == null) {
                sb.append("null");
            } else {
                sb.append(list4);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetContainingNotebooks() {
        this.containingNotebooks = null;
    }

    public void unsetNotebooks() {
        this.notebooks = null;
    }

    public void unsetNotes() {
        this.notes = null;
    }

    public void unsetTags() {
        this.tags = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
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
        if (this.containingNotebooks != null && isSetContainingNotebooks()) {
            tProtocol.writeFieldBegin(CONTAINING_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.containingNotebooks.size()));
            Iterator<NotebookDescriptor> it5 = this.containingNotebooks.iterator();
            while (it5.hasNext()) {
                it5.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    public RelatedResult(RelatedResult relatedResult) {
        if (relatedResult.isSetNotes()) {
            ArrayList arrayList = new ArrayList();
            Iterator<Note> it2 = relatedResult.notes.iterator();
            while (it2.hasNext()) {
                arrayList.add(new Note(it2.next()));
            }
            this.notes = arrayList;
        }
        if (relatedResult.isSetNotebooks()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<Notebook> it3 = relatedResult.notebooks.iterator();
            while (it3.hasNext()) {
                arrayList2.add(new Notebook(it3.next()));
            }
            this.notebooks = arrayList2;
        }
        if (relatedResult.isSetTags()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator<Tag> it4 = relatedResult.tags.iterator();
            while (it4.hasNext()) {
                arrayList3.add(new Tag(it4.next()));
            }
            this.tags = arrayList3;
        }
        if (relatedResult.isSetContainingNotebooks()) {
            ArrayList arrayList4 = new ArrayList();
            Iterator<NotebookDescriptor> it5 = relatedResult.containingNotebooks.iterator();
            while (it5.hasNext()) {
                arrayList4.add(new NotebookDescriptor(it5.next()));
            }
            this.containingNotebooks = arrayList4;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(RelatedResult relatedResult) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        if (!getClass().equals(relatedResult.getClass())) {
            return getClass().getName().compareTo(relatedResult.getClass().getName());
        }
        int compareTo5 = Boolean.valueOf(isSetNotes()).compareTo(Boolean.valueOf(relatedResult.isSetNotes()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetNotes() && (compareTo4 = TBaseHelper.compareTo((List) this.notes, (List) relatedResult.notes)) != 0) {
            return compareTo4;
        }
        int compareTo6 = Boolean.valueOf(isSetNotebooks()).compareTo(Boolean.valueOf(relatedResult.isSetNotebooks()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetNotebooks() && (compareTo3 = TBaseHelper.compareTo((List) this.notebooks, (List) relatedResult.notebooks)) != 0) {
            return compareTo3;
        }
        int compareTo7 = Boolean.valueOf(isSetTags()).compareTo(Boolean.valueOf(relatedResult.isSetTags()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetTags() && (compareTo2 = TBaseHelper.compareTo((List) this.tags, (List) relatedResult.tags)) != 0) {
            return compareTo2;
        }
        int compareTo8 = Boolean.valueOf(isSetContainingNotebooks()).compareTo(Boolean.valueOf(relatedResult.isSetContainingNotebooks()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!isSetContainingNotebooks() || (compareTo = TBaseHelper.compareTo((List) this.containingNotebooks, (List) relatedResult.containingNotebooks)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<RelatedResult> deepCopy2() {
        return new RelatedResult(this);
    }

    public boolean equals(RelatedResult relatedResult) {
        if (relatedResult == null) {
            return false;
        }
        boolean isSetNotes = isSetNotes();
        boolean isSetNotes2 = relatedResult.isSetNotes();
        if ((isSetNotes || isSetNotes2) && !(isSetNotes && isSetNotes2 && this.notes.equals(relatedResult.notes))) {
            return false;
        }
        boolean isSetNotebooks = isSetNotebooks();
        boolean isSetNotebooks2 = relatedResult.isSetNotebooks();
        if ((isSetNotebooks || isSetNotebooks2) && !(isSetNotebooks && isSetNotebooks2 && this.notebooks.equals(relatedResult.notebooks))) {
            return false;
        }
        boolean isSetTags = isSetTags();
        boolean isSetTags2 = relatedResult.isSetTags();
        if ((isSetTags || isSetTags2) && !(isSetTags && isSetTags2 && this.tags.equals(relatedResult.tags))) {
            return false;
        }
        boolean isSetContainingNotebooks = isSetContainingNotebooks();
        boolean isSetContainingNotebooks2 = relatedResult.isSetContainingNotebooks();
        if (isSetContainingNotebooks || isSetContainingNotebooks2) {
            return isSetContainingNotebooks && isSetContainingNotebooks2 && this.containingNotebooks.equals(relatedResult.containingNotebooks);
        }
        return true;
    }
}
