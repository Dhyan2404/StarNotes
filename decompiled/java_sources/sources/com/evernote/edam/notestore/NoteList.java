package com.evernote.edam.notestore;

import com.evernote.edam.type.Note;
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
public class NoteList implements TBase<NoteList>, Serializable, Cloneable {
    private static final int __STARTINDEX_ISSET_ID = 0;
    private static final int __TOTALNOTES_ISSET_ID = 1;
    private static final int __UPDATECOUNT_ISSET_ID = 2;
    private boolean[] __isset_vector;
    private List<Note> notes;
    private List<String> searchedWords;
    private int startIndex;
    private List<String> stoppedWords;
    private int totalNotes;
    private int updateCount;
    private static final TStruct STRUCT_DESC = new TStruct("NoteList");
    private static final TField START_INDEX_FIELD_DESC = new TField("startIndex", (byte) 8, 1);
    private static final TField TOTAL_NOTES_FIELD_DESC = new TField("totalNotes", (byte) 8, 2);
    private static final TField NOTES_FIELD_DESC = new TField("notes", (byte) 15, 3);
    private static final TField STOPPED_WORDS_FIELD_DESC = new TField("stoppedWords", (byte) 15, 4);
    private static final TField SEARCHED_WORDS_FIELD_DESC = new TField("searchedWords", (byte) 15, 5);
    private static final TField UPDATE_COUNT_FIELD_DESC = new TField("updateCount", (byte) 8, 6);

    public NoteList() {
        this.__isset_vector = new boolean[3];
    }

    public void addToNotes(Note note) {
        if (this.notes == null) {
            this.notes = new ArrayList();
        }
        this.notes.add(note);
    }

    public void addToSearchedWords(String str) {
        if (this.searchedWords == null) {
            this.searchedWords = new ArrayList();
        }
        this.searchedWords.add(str);
    }

    public void addToStoppedWords(String str) {
        if (this.stoppedWords == null) {
            this.stoppedWords = new ArrayList();
        }
        this.stoppedWords.add(str);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setStartIndexIsSet(false);
        this.startIndex = 0;
        setTotalNotesIsSet(false);
        this.totalNotes = 0;
        this.notes = null;
        this.stoppedWords = null;
        this.searchedWords = null;
        setUpdateCountIsSet(false);
        this.updateCount = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NoteList)) {
            return equals((NoteList) obj);
        }
        return false;
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

    public List<String> getSearchedWords() {
        return this.searchedWords;
    }

    public Iterator<String> getSearchedWordsIterator() {
        List<String> list = this.searchedWords;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getSearchedWordsSize() {
        List<String> list = this.searchedWords;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int getStartIndex() {
        return this.startIndex;
    }

    public List<String> getStoppedWords() {
        return this.stoppedWords;
    }

    public Iterator<String> getStoppedWordsIterator() {
        List<String> list = this.stoppedWords;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getStoppedWordsSize() {
        List<String> list = this.stoppedWords;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public int getTotalNotes() {
        return this.totalNotes;
    }

    public int getUpdateCount() {
        return this.updateCount;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetNotes() {
        return this.notes != null;
    }

    public boolean isSetSearchedWords() {
        return this.searchedWords != null;
    }

    public boolean isSetStartIndex() {
        return this.__isset_vector[0];
    }

    public boolean isSetStoppedWords() {
        return this.stoppedWords != null;
    }

    public boolean isSetTotalNotes() {
        return this.__isset_vector[1];
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
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.startIndex = tProtocol.readI32();
                        setStartIndexIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.totalNotes = tProtocol.readI32();
                        setTotalNotesIsSet(true);
                        break;
                    }
                case 3:
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
                case 4:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin2 = tProtocol.readListBegin();
                        this.stoppedWords = new ArrayList(readListBegin2.size);
                        while (i < readListBegin2.size) {
                            this.stoppedWords.add(tProtocol.readString());
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
                        TList readListBegin3 = tProtocol.readListBegin();
                        this.searchedWords = new ArrayList(readListBegin3.size);
                        while (i < readListBegin3.size) {
                            this.searchedWords.add(tProtocol.readString());
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 6:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updateCount = tProtocol.readI32();
                        setUpdateCountIsSet(true);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
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

    public void setSearchedWords(List<String> list) {
        this.searchedWords = list;
    }

    public void setSearchedWordsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.searchedWords = null;
    }

    public void setStartIndex(int i) {
        this.startIndex = i;
        setStartIndexIsSet(true);
    }

    public void setStartIndexIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setStoppedWords(List<String> list) {
        this.stoppedWords = list;
    }

    public void setStoppedWordsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.stoppedWords = null;
    }

    public void setTotalNotes(int i) {
        this.totalNotes = i;
        setTotalNotesIsSet(true);
    }

    public void setTotalNotesIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setUpdateCount(int i) {
        this.updateCount = i;
        setUpdateCountIsSet(true);
    }

    public void setUpdateCountIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NoteList(");
        sb.append("startIndex:");
        sb.append(this.startIndex);
        sb.append(", ");
        sb.append("totalNotes:");
        sb.append(this.totalNotes);
        sb.append(", ");
        sb.append("notes:");
        List<Note> list = this.notes;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        if (isSetStoppedWords()) {
            sb.append(", ");
            sb.append("stoppedWords:");
            List<String> list2 = this.stoppedWords;
            if (list2 == null) {
                sb.append("null");
            } else {
                sb.append(list2);
            }
        }
        if (isSetSearchedWords()) {
            sb.append(", ");
            sb.append("searchedWords:");
            List<String> list3 = this.searchedWords;
            if (list3 == null) {
                sb.append("null");
            } else {
                sb.append(list3);
            }
        }
        if (isSetUpdateCount()) {
            sb.append(", ");
            sb.append("updateCount:");
            sb.append(this.updateCount);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetNotes() {
        this.notes = null;
    }

    public void unsetSearchedWords() {
        this.searchedWords = null;
    }

    public void unsetStartIndex() {
        this.__isset_vector[0] = false;
    }

    public void unsetStoppedWords() {
        this.stoppedWords = null;
    }

    public void unsetTotalNotes() {
        this.__isset_vector[1] = false;
    }

    public void unsetUpdateCount() {
        this.__isset_vector[2] = false;
    }

    public void validate() throws TException {
        if (!isSetStartIndex()) {
            throw new TProtocolException("Required field 'startIndex' is unset! Struct:" + toString());
        }
        if (!isSetTotalNotes()) {
            throw new TProtocolException("Required field 'totalNotes' is unset! Struct:" + toString());
        }
        if (isSetNotes()) {
            return;
        }
        throw new TProtocolException("Required field 'notes' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        tProtocol.writeFieldBegin(START_INDEX_FIELD_DESC);
        tProtocol.writeI32(this.startIndex);
        tProtocol.writeFieldEnd();
        tProtocol.writeFieldBegin(TOTAL_NOTES_FIELD_DESC);
        tProtocol.writeI32(this.totalNotes);
        tProtocol.writeFieldEnd();
        if (this.notes != null) {
            tProtocol.writeFieldBegin(NOTES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.notes.size()));
            Iterator<Note> it2 = this.notes.iterator();
            while (it2.hasNext()) {
                it2.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.stoppedWords != null && isSetStoppedWords()) {
            tProtocol.writeFieldBegin(STOPPED_WORDS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.stoppedWords.size()));
            Iterator<String> it3 = this.stoppedWords.iterator();
            while (it3.hasNext()) {
                tProtocol.writeString(it3.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.searchedWords != null && isSetSearchedWords()) {
            tProtocol.writeFieldBegin(SEARCHED_WORDS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.searchedWords.size()));
            Iterator<String> it4 = this.searchedWords.iterator();
            while (it4.hasNext()) {
                tProtocol.writeString(it4.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdateCount()) {
            tProtocol.writeFieldBegin(UPDATE_COUNT_FIELD_DESC);
            tProtocol.writeI32(this.updateCount);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NoteList noteList) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        if (!getClass().equals(noteList.getClass())) {
            return getClass().getName().compareTo(noteList.getClass().getName());
        }
        int compareTo7 = Boolean.valueOf(isSetStartIndex()).compareTo(Boolean.valueOf(noteList.isSetStartIndex()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetStartIndex() && (compareTo6 = TBaseHelper.compareTo(this.startIndex, noteList.startIndex)) != 0) {
            return compareTo6;
        }
        int compareTo8 = Boolean.valueOf(isSetTotalNotes()).compareTo(Boolean.valueOf(noteList.isSetTotalNotes()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (isSetTotalNotes() && (compareTo5 = TBaseHelper.compareTo(this.totalNotes, noteList.totalNotes)) != 0) {
            return compareTo5;
        }
        int compareTo9 = Boolean.valueOf(isSetNotes()).compareTo(Boolean.valueOf(noteList.isSetNotes()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (isSetNotes() && (compareTo4 = TBaseHelper.compareTo((List) this.notes, (List) noteList.notes)) != 0) {
            return compareTo4;
        }
        int compareTo10 = Boolean.valueOf(isSetStoppedWords()).compareTo(Boolean.valueOf(noteList.isSetStoppedWords()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (isSetStoppedWords() && (compareTo3 = TBaseHelper.compareTo((List) this.stoppedWords, (List) noteList.stoppedWords)) != 0) {
            return compareTo3;
        }
        int compareTo11 = Boolean.valueOf(isSetSearchedWords()).compareTo(Boolean.valueOf(noteList.isSetSearchedWords()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (isSetSearchedWords() && (compareTo2 = TBaseHelper.compareTo((List) this.searchedWords, (List) noteList.searchedWords)) != 0) {
            return compareTo2;
        }
        int compareTo12 = Boolean.valueOf(isSetUpdateCount()).compareTo(Boolean.valueOf(noteList.isSetUpdateCount()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (!isSetUpdateCount() || (compareTo = TBaseHelper.compareTo(this.updateCount, noteList.updateCount)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NoteList> deepCopy2() {
        return new NoteList(this);
    }

    public NoteList(int i, int i2, List<Note> list) {
        this();
        this.startIndex = i;
        setStartIndexIsSet(true);
        this.totalNotes = i2;
        setTotalNotesIsSet(true);
        this.notes = list;
    }

    public boolean equals(NoteList noteList) {
        if (noteList == null || this.startIndex != noteList.startIndex || this.totalNotes != noteList.totalNotes) {
            return false;
        }
        boolean isSetNotes = isSetNotes();
        boolean isSetNotes2 = noteList.isSetNotes();
        if ((isSetNotes || isSetNotes2) && !(isSetNotes && isSetNotes2 && this.notes.equals(noteList.notes))) {
            return false;
        }
        boolean isSetStoppedWords = isSetStoppedWords();
        boolean isSetStoppedWords2 = noteList.isSetStoppedWords();
        if ((isSetStoppedWords || isSetStoppedWords2) && !(isSetStoppedWords && isSetStoppedWords2 && this.stoppedWords.equals(noteList.stoppedWords))) {
            return false;
        }
        boolean isSetSearchedWords = isSetSearchedWords();
        boolean isSetSearchedWords2 = noteList.isSetSearchedWords();
        if ((isSetSearchedWords || isSetSearchedWords2) && !(isSetSearchedWords && isSetSearchedWords2 && this.searchedWords.equals(noteList.searchedWords))) {
            return false;
        }
        boolean isSetUpdateCount = isSetUpdateCount();
        boolean isSetUpdateCount2 = noteList.isSetUpdateCount();
        if (isSetUpdateCount || isSetUpdateCount2) {
            return isSetUpdateCount && isSetUpdateCount2 && this.updateCount == noteList.updateCount;
        }
        return true;
    }

    public NoteList(NoteList noteList) {
        boolean[] zArr = new boolean[3];
        this.__isset_vector = zArr;
        boolean[] zArr2 = noteList.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.startIndex = noteList.startIndex;
        this.totalNotes = noteList.totalNotes;
        if (noteList.isSetNotes()) {
            ArrayList arrayList = new ArrayList();
            Iterator<Note> it2 = noteList.notes.iterator();
            while (it2.hasNext()) {
                arrayList.add(new Note(it2.next()));
            }
            this.notes = arrayList;
        }
        if (noteList.isSetStoppedWords()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it3 = noteList.stoppedWords.iterator();
            while (it3.hasNext()) {
                arrayList2.add(it3.next());
            }
            this.stoppedWords = arrayList2;
        }
        if (noteList.isSetSearchedWords()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator<String> it4 = noteList.searchedWords.iterator();
            while (it4.hasNext()) {
                arrayList3.add(it4.next());
            }
            this.searchedWords = arrayList3;
        }
        this.updateCount = noteList.updateCount;
    }
}
