package com.evernote.edam.notestore;

import com.evernote.edam.type.NoteAttributes;
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
public class NoteMetadata implements TBase<NoteMetadata>, Serializable, Cloneable {
    private static final int __CONTENTLENGTH_ISSET_ID = 0;
    private static final int __CREATED_ISSET_ID = 1;
    private static final int __DELETED_ISSET_ID = 3;
    private static final int __LARGESTRESOURCESIZE_ISSET_ID = 5;
    private static final int __UPDATED_ISSET_ID = 2;
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 4;
    private boolean[] __isset_vector;
    private NoteAttributes attributes;
    private int contentLength;
    private long created;
    private long deleted;
    private String guid;
    private String largestResourceMime;
    private int largestResourceSize;
    private String notebookGuid;
    private List<String> tagGuids;
    private String title;
    private int updateSequenceNum;
    private long updated;
    private static final TStruct STRUCT_DESC = new TStruct("NoteMetadata");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField TITLE_FIELD_DESC = new TField("title", (byte) 11, 2);
    private static final TField CONTENT_LENGTH_FIELD_DESC = new TField("contentLength", (byte) 8, 5);
    private static final TField CREATED_FIELD_DESC = new TField("created", (byte) 10, 6);
    private static final TField UPDATED_FIELD_DESC = new TField("updated", (byte) 10, 7);
    private static final TField DELETED_FIELD_DESC = new TField("deleted", (byte) 10, 8);
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 10);
    private static final TField NOTEBOOK_GUID_FIELD_DESC = new TField("notebookGuid", (byte) 11, 11);
    private static final TField TAG_GUIDS_FIELD_DESC = new TField("tagGuids", (byte) 15, 12);
    private static final TField ATTRIBUTES_FIELD_DESC = new TField("attributes", (byte) 12, 14);
    private static final TField LARGEST_RESOURCE_MIME_FIELD_DESC = new TField("largestResourceMime", (byte) 11, 20);
    private static final TField LARGEST_RESOURCE_SIZE_FIELD_DESC = new TField("largestResourceSize", (byte) 8, 21);

    public NoteMetadata() {
        this.__isset_vector = new boolean[6];
    }

    public void addToTagGuids(String str) {
        if (this.tagGuids == null) {
            this.tagGuids = new ArrayList();
        }
        this.tagGuids.add(str);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.title = null;
        setContentLengthIsSet(false);
        this.contentLength = 0;
        setCreatedIsSet(false);
        this.created = 0L;
        setUpdatedIsSet(false);
        this.updated = 0L;
        setDeletedIsSet(false);
        this.deleted = 0L;
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
        this.notebookGuid = null;
        this.tagGuids = null;
        this.attributes = null;
        this.largestResourceMime = null;
        setLargestResourceSizeIsSet(false);
        this.largestResourceSize = 0;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof NoteMetadata)) {
            return equals((NoteMetadata) obj);
        }
        return false;
    }

    public NoteAttributes getAttributes() {
        return this.attributes;
    }

    public int getContentLength() {
        return this.contentLength;
    }

    public long getCreated() {
        return this.created;
    }

    public long getDeleted() {
        return this.deleted;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getLargestResourceMime() {
        return this.largestResourceMime;
    }

    public int getLargestResourceSize() {
        return this.largestResourceSize;
    }

    public String getNotebookGuid() {
        return this.notebookGuid;
    }

    public List<String> getTagGuids() {
        return this.tagGuids;
    }

    public Iterator<String> getTagGuidsIterator() {
        List<String> list = this.tagGuids;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getTagGuidsSize() {
        List<String> list = this.tagGuids;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String getTitle() {
        return this.title;
    }

    public int getUpdateSequenceNum() {
        return this.updateSequenceNum;
    }

    public long getUpdated() {
        return this.updated;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetAttributes() {
        return this.attributes != null;
    }

    public boolean isSetContentLength() {
        return this.__isset_vector[0];
    }

    public boolean isSetCreated() {
        return this.__isset_vector[1];
    }

    public boolean isSetDeleted() {
        return this.__isset_vector[3];
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetLargestResourceMime() {
        return this.largestResourceMime != null;
    }

    public boolean isSetLargestResourceSize() {
        return this.__isset_vector[5];
    }

    public boolean isSetNotebookGuid() {
        return this.notebookGuid != null;
    }

    public boolean isSetTagGuids() {
        return this.tagGuids != null;
    }

    public boolean isSetTitle() {
        return this.title != null;
    }

    public boolean isSetUpdateSequenceNum() {
        return this.__isset_vector[4];
    }

    public boolean isSetUpdated() {
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
            short s = readFieldBegin.f21203id;
            if (s != 1) {
                if (s != 2) {
                    if (s != 5) {
                        if (s != 6) {
                            if (s != 7) {
                                if (s != 8) {
                                    if (s != 14) {
                                        if (s != 20) {
                                            if (s != 21) {
                                                switch (s) {
                                                    case 10:
                                                        if (b == 8) {
                                                            this.updateSequenceNum = tProtocol.readI32();
                                                            setUpdateSequenceNumIsSet(true);
                                                            break;
                                                        } else {
                                                            TProtocolUtil.skip(tProtocol, b);
                                                            break;
                                                        }
                                                    case 11:
                                                        if (b == 11) {
                                                            this.notebookGuid = tProtocol.readString();
                                                            break;
                                                        } else {
                                                            TProtocolUtil.skip(tProtocol, b);
                                                            break;
                                                        }
                                                    case 12:
                                                        if (b == 15) {
                                                            TList readListBegin = tProtocol.readListBegin();
                                                            this.tagGuids = new ArrayList(readListBegin.size);
                                                            for (int i = 0; i < readListBegin.size; i++) {
                                                                this.tagGuids.add(tProtocol.readString());
                                                            }
                                                            tProtocol.readListEnd();
                                                            break;
                                                        } else {
                                                            TProtocolUtil.skip(tProtocol, b);
                                                            break;
                                                        }
                                                    default:
                                                        TProtocolUtil.skip(tProtocol, b);
                                                        break;
                                                }
                                            } else if (b == 8) {
                                                this.largestResourceSize = tProtocol.readI32();
                                                setLargestResourceSizeIsSet(true);
                                            } else {
                                                TProtocolUtil.skip(tProtocol, b);
                                            }
                                        } else if (b == 11) {
                                            this.largestResourceMime = tProtocol.readString();
                                        } else {
                                            TProtocolUtil.skip(tProtocol, b);
                                        }
                                    } else if (b == 12) {
                                        NoteAttributes noteAttributes = new NoteAttributes();
                                        this.attributes = noteAttributes;
                                        noteAttributes.read(tProtocol);
                                    } else {
                                        TProtocolUtil.skip(tProtocol, b);
                                    }
                                } else if (b == 10) {
                                    this.deleted = tProtocol.readI64();
                                    setDeletedIsSet(true);
                                } else {
                                    TProtocolUtil.skip(tProtocol, b);
                                }
                            } else if (b == 10) {
                                this.updated = tProtocol.readI64();
                                setUpdatedIsSet(true);
                            } else {
                                TProtocolUtil.skip(tProtocol, b);
                            }
                        } else if (b == 10) {
                            this.created = tProtocol.readI64();
                            setCreatedIsSet(true);
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 8) {
                        this.contentLength = tProtocol.readI32();
                        setContentLengthIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 11) {
                    this.title = tProtocol.readString();
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.guid = tProtocol.readString();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAttributes(NoteAttributes noteAttributes) {
        this.attributes = noteAttributes;
    }

    public void setAttributesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.attributes = null;
    }

    public void setContentLength(int i) {
        this.contentLength = i;
        setContentLengthIsSet(true);
    }

    public void setContentLengthIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setCreated(long j) {
        this.created = j;
        setCreatedIsSet(true);
    }

    public void setCreatedIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setDeleted(long j) {
        this.deleted = j;
        setDeletedIsSet(true);
    }

    public void setDeletedIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setGuid(String str) {
        this.guid = str;
    }

    public void setGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.guid = null;
    }

    public void setLargestResourceMime(String str) {
        this.largestResourceMime = str;
    }

    public void setLargestResourceMimeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.largestResourceMime = null;
    }

    public void setLargestResourceSize(int i) {
        this.largestResourceSize = i;
        setLargestResourceSizeIsSet(true);
    }

    public void setLargestResourceSizeIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setNotebookGuid(String str) {
        this.notebookGuid = str;
    }

    public void setNotebookGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebookGuid = null;
    }

    public void setTagGuids(List<String> list) {
        this.tagGuids = list;
    }

    public void setTagGuidsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.tagGuids = null;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTitleIsSet(boolean z) {
        if (z) {
            return;
        }
        this.title = null;
    }

    public void setUpdateSequenceNum(int i) {
        this.updateSequenceNum = i;
        setUpdateSequenceNumIsSet(true);
    }

    public void setUpdateSequenceNumIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setUpdated(long j) {
        this.updated = j;
        setUpdatedIsSet(true);
    }

    public void setUpdatedIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NoteMetadata(");
        sb.append("guid:");
        String str = this.guid;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (isSetTitle()) {
            sb.append(", ");
            sb.append("title:");
            String str2 = this.title;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (isSetContentLength()) {
            sb.append(", ");
            sb.append("contentLength:");
            sb.append(this.contentLength);
        }
        if (isSetCreated()) {
            sb.append(", ");
            sb.append("created:");
            sb.append(this.created);
        }
        if (isSetUpdated()) {
            sb.append(", ");
            sb.append("updated:");
            sb.append(this.updated);
        }
        if (isSetDeleted()) {
            sb.append(", ");
            sb.append("deleted:");
            sb.append(this.deleted);
        }
        if (isSetUpdateSequenceNum()) {
            sb.append(", ");
            sb.append("updateSequenceNum:");
            sb.append(this.updateSequenceNum);
        }
        if (isSetNotebookGuid()) {
            sb.append(", ");
            sb.append("notebookGuid:");
            String str3 = this.notebookGuid;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (isSetTagGuids()) {
            sb.append(", ");
            sb.append("tagGuids:");
            List<String> list = this.tagGuids;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (isSetAttributes()) {
            sb.append(", ");
            sb.append("attributes:");
            NoteAttributes noteAttributes = this.attributes;
            if (noteAttributes == null) {
                sb.append("null");
            } else {
                sb.append(noteAttributes);
            }
        }
        if (isSetLargestResourceMime()) {
            sb.append(", ");
            sb.append("largestResourceMime:");
            String str4 = this.largestResourceMime;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (isSetLargestResourceSize()) {
            sb.append(", ");
            sb.append("largestResourceSize:");
            sb.append(this.largestResourceSize);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAttributes() {
        this.attributes = null;
    }

    public void unsetContentLength() {
        this.__isset_vector[0] = false;
    }

    public void unsetCreated() {
        this.__isset_vector[1] = false;
    }

    public void unsetDeleted() {
        this.__isset_vector[3] = false;
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetLargestResourceMime() {
        this.largestResourceMime = null;
    }

    public void unsetLargestResourceSize() {
        this.__isset_vector[5] = false;
    }

    public void unsetNotebookGuid() {
        this.notebookGuid = null;
    }

    public void unsetTagGuids() {
        this.tagGuids = null;
    }

    public void unsetTitle() {
        this.title = null;
    }

    public void unsetUpdateSequenceNum() {
        this.__isset_vector[4] = false;
    }

    public void unsetUpdated() {
        this.__isset_vector[2] = false;
    }

    public void validate() throws TException {
        if (isSetGuid()) {
            return;
        }
        throw new TProtocolException("Required field 'guid' is unset! Struct:" + toString());
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.guid != null) {
            tProtocol.writeFieldBegin(GUID_FIELD_DESC);
            tProtocol.writeString(this.guid);
            tProtocol.writeFieldEnd();
        }
        if (this.title != null && isSetTitle()) {
            tProtocol.writeFieldBegin(TITLE_FIELD_DESC);
            tProtocol.writeString(this.title);
            tProtocol.writeFieldEnd();
        }
        if (isSetContentLength()) {
            tProtocol.writeFieldBegin(CONTENT_LENGTH_FIELD_DESC);
            tProtocol.writeI32(this.contentLength);
            tProtocol.writeFieldEnd();
        }
        if (isSetCreated()) {
            tProtocol.writeFieldBegin(CREATED_FIELD_DESC);
            tProtocol.writeI64(this.created);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdated()) {
            tProtocol.writeFieldBegin(UPDATED_FIELD_DESC);
            tProtocol.writeI64(this.updated);
            tProtocol.writeFieldEnd();
        }
        if (isSetDeleted()) {
            tProtocol.writeFieldBegin(DELETED_FIELD_DESC);
            tProtocol.writeI64(this.deleted);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdateSequenceNum()) {
            tProtocol.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
            tProtocol.writeI32(this.updateSequenceNum);
            tProtocol.writeFieldEnd();
        }
        if (this.notebookGuid != null && isSetNotebookGuid()) {
            tProtocol.writeFieldBegin(NOTEBOOK_GUID_FIELD_DESC);
            tProtocol.writeString(this.notebookGuid);
            tProtocol.writeFieldEnd();
        }
        if (this.tagGuids != null && isSetTagGuids()) {
            tProtocol.writeFieldBegin(TAG_GUIDS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.tagGuids.size()));
            Iterator<String> it2 = this.tagGuids.iterator();
            while (it2.hasNext()) {
                tProtocol.writeString(it2.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.attributes != null && isSetAttributes()) {
            tProtocol.writeFieldBegin(ATTRIBUTES_FIELD_DESC);
            this.attributes.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.largestResourceMime != null && isSetLargestResourceMime()) {
            tProtocol.writeFieldBegin(LARGEST_RESOURCE_MIME_FIELD_DESC);
            tProtocol.writeString(this.largestResourceMime);
            tProtocol.writeFieldEnd();
        }
        if (isSetLargestResourceSize()) {
            tProtocol.writeFieldBegin(LARGEST_RESOURCE_SIZE_FIELD_DESC);
            tProtocol.writeI32(this.largestResourceSize);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(NoteMetadata noteMetadata) {
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
        if (!getClass().equals(noteMetadata.getClass())) {
            return getClass().getName().compareTo(noteMetadata.getClass().getName());
        }
        int compareTo13 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(noteMetadata.isSetGuid()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (isSetGuid() && (compareTo12 = TBaseHelper.compareTo(this.guid, noteMetadata.guid)) != 0) {
            return compareTo12;
        }
        int compareTo14 = Boolean.valueOf(isSetTitle()).compareTo(Boolean.valueOf(noteMetadata.isSetTitle()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetTitle() && (compareTo11 = TBaseHelper.compareTo(this.title, noteMetadata.title)) != 0) {
            return compareTo11;
        }
        int compareTo15 = Boolean.valueOf(isSetContentLength()).compareTo(Boolean.valueOf(noteMetadata.isSetContentLength()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetContentLength() && (compareTo10 = TBaseHelper.compareTo(this.contentLength, noteMetadata.contentLength)) != 0) {
            return compareTo10;
        }
        int compareTo16 = Boolean.valueOf(isSetCreated()).compareTo(Boolean.valueOf(noteMetadata.isSetCreated()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetCreated() && (compareTo9 = TBaseHelper.compareTo(this.created, noteMetadata.created)) != 0) {
            return compareTo9;
        }
        int compareTo17 = Boolean.valueOf(isSetUpdated()).compareTo(Boolean.valueOf(noteMetadata.isSetUpdated()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetUpdated() && (compareTo8 = TBaseHelper.compareTo(this.updated, noteMetadata.updated)) != 0) {
            return compareTo8;
        }
        int compareTo18 = Boolean.valueOf(isSetDeleted()).compareTo(Boolean.valueOf(noteMetadata.isSetDeleted()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetDeleted() && (compareTo7 = TBaseHelper.compareTo(this.deleted, noteMetadata.deleted)) != 0) {
            return compareTo7;
        }
        int compareTo19 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(noteMetadata.isSetUpdateSequenceNum()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetUpdateSequenceNum() && (compareTo6 = TBaseHelper.compareTo(this.updateSequenceNum, noteMetadata.updateSequenceNum)) != 0) {
            return compareTo6;
        }
        int compareTo20 = Boolean.valueOf(isSetNotebookGuid()).compareTo(Boolean.valueOf(noteMetadata.isSetNotebookGuid()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetNotebookGuid() && (compareTo5 = TBaseHelper.compareTo(this.notebookGuid, noteMetadata.notebookGuid)) != 0) {
            return compareTo5;
        }
        int compareTo21 = Boolean.valueOf(isSetTagGuids()).compareTo(Boolean.valueOf(noteMetadata.isSetTagGuids()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetTagGuids() && (compareTo4 = TBaseHelper.compareTo((List) this.tagGuids, (List) noteMetadata.tagGuids)) != 0) {
            return compareTo4;
        }
        int compareTo22 = Boolean.valueOf(isSetAttributes()).compareTo(Boolean.valueOf(noteMetadata.isSetAttributes()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetAttributes() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.attributes, (Comparable) noteMetadata.attributes)) != 0) {
            return compareTo3;
        }
        int compareTo23 = Boolean.valueOf(isSetLargestResourceMime()).compareTo(Boolean.valueOf(noteMetadata.isSetLargestResourceMime()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetLargestResourceMime() && (compareTo2 = TBaseHelper.compareTo(this.largestResourceMime, noteMetadata.largestResourceMime)) != 0) {
            return compareTo2;
        }
        int compareTo24 = Boolean.valueOf(isSetLargestResourceSize()).compareTo(Boolean.valueOf(noteMetadata.isSetLargestResourceSize()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (!isSetLargestResourceSize() || (compareTo = TBaseHelper.compareTo(this.largestResourceSize, noteMetadata.largestResourceSize)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<NoteMetadata> deepCopy2() {
        return new NoteMetadata(this);
    }

    public NoteMetadata(String str) {
        this();
        this.guid = str;
    }

    public boolean equals(NoteMetadata noteMetadata) {
        if (noteMetadata == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = noteMetadata.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(noteMetadata.guid))) {
            return false;
        }
        boolean isSetTitle = isSetTitle();
        boolean isSetTitle2 = noteMetadata.isSetTitle();
        if ((isSetTitle || isSetTitle2) && !(isSetTitle && isSetTitle2 && this.title.equals(noteMetadata.title))) {
            return false;
        }
        boolean isSetContentLength = isSetContentLength();
        boolean isSetContentLength2 = noteMetadata.isSetContentLength();
        if ((isSetContentLength || isSetContentLength2) && !(isSetContentLength && isSetContentLength2 && this.contentLength == noteMetadata.contentLength)) {
            return false;
        }
        boolean isSetCreated = isSetCreated();
        boolean isSetCreated2 = noteMetadata.isSetCreated();
        if ((isSetCreated || isSetCreated2) && !(isSetCreated && isSetCreated2 && this.created == noteMetadata.created)) {
            return false;
        }
        boolean isSetUpdated = isSetUpdated();
        boolean isSetUpdated2 = noteMetadata.isSetUpdated();
        if ((isSetUpdated || isSetUpdated2) && !(isSetUpdated && isSetUpdated2 && this.updated == noteMetadata.updated)) {
            return false;
        }
        boolean isSetDeleted = isSetDeleted();
        boolean isSetDeleted2 = noteMetadata.isSetDeleted();
        if ((isSetDeleted || isSetDeleted2) && !(isSetDeleted && isSetDeleted2 && this.deleted == noteMetadata.deleted)) {
            return false;
        }
        boolean isSetUpdateSequenceNum = isSetUpdateSequenceNum();
        boolean isSetUpdateSequenceNum2 = noteMetadata.isSetUpdateSequenceNum();
        if ((isSetUpdateSequenceNum || isSetUpdateSequenceNum2) && !(isSetUpdateSequenceNum && isSetUpdateSequenceNum2 && this.updateSequenceNum == noteMetadata.updateSequenceNum)) {
            return false;
        }
        boolean isSetNotebookGuid = isSetNotebookGuid();
        boolean isSetNotebookGuid2 = noteMetadata.isSetNotebookGuid();
        if ((isSetNotebookGuid || isSetNotebookGuid2) && !(isSetNotebookGuid && isSetNotebookGuid2 && this.notebookGuid.equals(noteMetadata.notebookGuid))) {
            return false;
        }
        boolean isSetTagGuids = isSetTagGuids();
        boolean isSetTagGuids2 = noteMetadata.isSetTagGuids();
        if ((isSetTagGuids || isSetTagGuids2) && !(isSetTagGuids && isSetTagGuids2 && this.tagGuids.equals(noteMetadata.tagGuids))) {
            return false;
        }
        boolean isSetAttributes = isSetAttributes();
        boolean isSetAttributes2 = noteMetadata.isSetAttributes();
        if ((isSetAttributes || isSetAttributes2) && !(isSetAttributes && isSetAttributes2 && this.attributes.equals(noteMetadata.attributes))) {
            return false;
        }
        boolean isSetLargestResourceMime = isSetLargestResourceMime();
        boolean isSetLargestResourceMime2 = noteMetadata.isSetLargestResourceMime();
        if ((isSetLargestResourceMime || isSetLargestResourceMime2) && !(isSetLargestResourceMime && isSetLargestResourceMime2 && this.largestResourceMime.equals(noteMetadata.largestResourceMime))) {
            return false;
        }
        boolean isSetLargestResourceSize = isSetLargestResourceSize();
        boolean isSetLargestResourceSize2 = noteMetadata.isSetLargestResourceSize();
        if (isSetLargestResourceSize || isSetLargestResourceSize2) {
            return isSetLargestResourceSize && isSetLargestResourceSize2 && this.largestResourceSize == noteMetadata.largestResourceSize;
        }
        return true;
    }

    public NoteMetadata(NoteMetadata noteMetadata) {
        boolean[] zArr = new boolean[6];
        this.__isset_vector = zArr;
        boolean[] zArr2 = noteMetadata.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (noteMetadata.isSetGuid()) {
            this.guid = noteMetadata.guid;
        }
        if (noteMetadata.isSetTitle()) {
            this.title = noteMetadata.title;
        }
        this.contentLength = noteMetadata.contentLength;
        this.created = noteMetadata.created;
        this.updated = noteMetadata.updated;
        this.deleted = noteMetadata.deleted;
        this.updateSequenceNum = noteMetadata.updateSequenceNum;
        if (noteMetadata.isSetNotebookGuid()) {
            this.notebookGuid = noteMetadata.notebookGuid;
        }
        if (noteMetadata.isSetTagGuids()) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = noteMetadata.tagGuids.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.tagGuids = arrayList;
        }
        if (noteMetadata.isSetAttributes()) {
            this.attributes = new NoteAttributes(noteMetadata.attributes);
        }
        if (noteMetadata.isSetLargestResourceMime()) {
            this.largestResourceMime = noteMetadata.largestResourceMime;
        }
        this.largestResourceSize = noteMetadata.largestResourceSize;
    }
}
