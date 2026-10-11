package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TList;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class Note implements TBase<Note>, Serializable, Cloneable {
    private static final int __ACTIVE_ISSET_ID = 4;
    private static final int __CONTENTLENGTH_ISSET_ID = 0;
    private static final int __CREATED_ISSET_ID = 1;
    private static final int __DELETED_ISSET_ID = 3;
    private static final int __UPDATED_ISSET_ID = 2;
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 5;
    private boolean[] __isset_vector;
    private boolean active;
    private NoteAttributes attributes;
    private String content;
    private byte[] contentHash;
    private int contentLength;
    private long created;
    private long deleted;
    private String guid;
    private String notebookGuid;
    private List<Resource> resources;
    private List<String> tagGuids;
    private List<String> tagNames;
    private String title;
    private int updateSequenceNum;
    private long updated;
    private static final TStruct STRUCT_DESC = new TStruct("Note");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField TITLE_FIELD_DESC = new TField("title", (byte) 11, 2);
    private static final TField CONTENT_FIELD_DESC = new TField("content", (byte) 11, 3);
    private static final TField CONTENT_HASH_FIELD_DESC = new TField("contentHash", (byte) 11, 4);
    private static final TField CONTENT_LENGTH_FIELD_DESC = new TField("contentLength", (byte) 8, 5);
    private static final TField CREATED_FIELD_DESC = new TField("created", (byte) 10, 6);
    private static final TField UPDATED_FIELD_DESC = new TField("updated", (byte) 10, 7);
    private static final TField DELETED_FIELD_DESC = new TField("deleted", (byte) 10, 8);
    private static final TField ACTIVE_FIELD_DESC = new TField(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, (byte) 2, 9);
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 10);
    private static final TField NOTEBOOK_GUID_FIELD_DESC = new TField("notebookGuid", (byte) 11, 11);
    private static final TField TAG_GUIDS_FIELD_DESC = new TField("tagGuids", (byte) 15, 12);
    private static final TField RESOURCES_FIELD_DESC = new TField("resources", (byte) 15, 13);
    private static final TField ATTRIBUTES_FIELD_DESC = new TField("attributes", (byte) 12, 14);
    private static final TField TAG_NAMES_FIELD_DESC = new TField("tagNames", (byte) 15, 15);

    public Note() {
        this.__isset_vector = new boolean[6];
    }

    public void addToResources(Resource resource) {
        if (this.resources == null) {
            this.resources = new ArrayList();
        }
        this.resources.add(resource);
    }

    public void addToTagGuids(String str) {
        if (this.tagGuids == null) {
            this.tagGuids = new ArrayList();
        }
        this.tagGuids.add(str);
    }

    public void addToTagNames(String str) {
        if (this.tagNames == null) {
            this.tagNames = new ArrayList();
        }
        this.tagNames.add(str);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.title = null;
        this.content = null;
        this.contentHash = null;
        setContentLengthIsSet(false);
        this.contentLength = 0;
        setCreatedIsSet(false);
        this.created = 0L;
        setUpdatedIsSet(false);
        this.updated = 0L;
        setDeletedIsSet(false);
        this.deleted = 0L;
        setActiveIsSet(false);
        this.active = false;
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
        this.notebookGuid = null;
        this.tagGuids = null;
        this.resources = null;
        this.attributes = null;
        this.tagNames = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Note)) {
            return equals((Note) obj);
        }
        return false;
    }

    public NoteAttributes getAttributes() {
        return this.attributes;
    }

    public String getContent() {
        return this.content;
    }

    public byte[] getContentHash() {
        return this.contentHash;
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

    public String getNotebookGuid() {
        return this.notebookGuid;
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

    public List<String> getTagNames() {
        return this.tagNames;
    }

    public Iterator<String> getTagNamesIterator() {
        List<String> list = this.tagNames;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getTagNamesSize() {
        List<String> list = this.tagNames;
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

    public boolean isActive() {
        return this.active;
    }

    public boolean isSetActive() {
        return this.__isset_vector[4];
    }

    public boolean isSetAttributes() {
        return this.attributes != null;
    }

    public boolean isSetContent() {
        return this.content != null;
    }

    public boolean isSetContentHash() {
        return this.contentHash != null;
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

    public boolean isSetNotebookGuid() {
        return this.notebookGuid != null;
    }

    public boolean isSetResources() {
        return this.resources != null;
    }

    public boolean isSetTagGuids() {
        return this.tagGuids != null;
    }

    public boolean isSetTagNames() {
        return this.tagNames != null;
    }

    public boolean isSetTitle() {
        return this.title != null;
    }

    public boolean isSetUpdateSequenceNum() {
        return this.__isset_vector[5];
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
            int i = 0;
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.guid = tProtocol.readString();
                        break;
                    }
                case 2:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.title = tProtocol.readString();
                        break;
                    }
                case 3:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.content = tProtocol.readString();
                        break;
                    }
                case 4:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.contentHash = tProtocol.readBytes();
                        break;
                    }
                case 5:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.contentLength = tProtocol.readI32();
                        setContentLengthIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.created = tProtocol.readI64();
                        setCreatedIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updated = tProtocol.readI64();
                        setUpdatedIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.deleted = tProtocol.readI64();
                        setDeletedIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.active = tProtocol.readBool();
                        setActiveIsSet(true);
                        break;
                    }
                case 10:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updateSequenceNum = tProtocol.readI32();
                        setUpdateSequenceNumIsSet(true);
                        break;
                    }
                case 11:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.notebookGuid = tProtocol.readString();
                        break;
                    }
                case 12:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin = tProtocol.readListBegin();
                        this.tagGuids = new ArrayList(readListBegin.size);
                        while (i < readListBegin.size) {
                            this.tagGuids.add(tProtocol.readString());
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
                        TList readListBegin2 = tProtocol.readListBegin();
                        this.resources = new ArrayList(readListBegin2.size);
                        while (i < readListBegin2.size) {
                            Resource resource = new Resource();
                            resource.read(tProtocol);
                            this.resources.add(resource);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 14:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        NoteAttributes noteAttributes = new NoteAttributes();
                        this.attributes = noteAttributes;
                        noteAttributes.read(tProtocol);
                        break;
                    }
                case 15:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin3 = tProtocol.readListBegin();
                        this.tagNames = new ArrayList(readListBegin3.size);
                        while (i < readListBegin3.size) {
                            this.tagNames.add(tProtocol.readString());
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

    public void setActive(boolean z) {
        this.active = z;
        setActiveIsSet(true);
    }

    public void setActiveIsSet(boolean z) {
        this.__isset_vector[4] = z;
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

    public void setContent(String str) {
        this.content = str;
    }

    public void setContentHash(byte[] bArr) {
        this.contentHash = bArr;
    }

    public void setContentHashIsSet(boolean z) {
        if (z) {
            return;
        }
        this.contentHash = null;
    }

    public void setContentIsSet(boolean z) {
        if (z) {
            return;
        }
        this.content = null;
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

    public void setNotebookGuid(String str) {
        this.notebookGuid = str;
    }

    public void setNotebookGuidIsSet(boolean z) {
        if (z) {
            return;
        }
        this.notebookGuid = null;
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

    public void setTagGuids(List<String> list) {
        this.tagGuids = list;
    }

    public void setTagGuidsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.tagGuids = null;
    }

    public void setTagNames(List<String> list) {
        this.tagNames = list;
    }

    public void setTagNamesIsSet(boolean z) {
        if (z) {
            return;
        }
        this.tagNames = null;
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
        this.__isset_vector[5] = z;
    }

    public void setUpdated(long j) {
        this.updated = j;
        setUpdatedIsSet(true);
    }

    public void setUpdatedIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("Note(");
        boolean z2 = false;
        if (isSetGuid()) {
            sb.append("guid:");
            String str = this.guid;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetTitle()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("title:");
            String str2 = this.title;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (isSetContent()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("content:");
            String str3 = this.content;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetContentHash()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("contentHash:");
            byte[] bArr = this.contentHash;
            if (bArr == null) {
                sb.append("null");
            } else {
                TBaseHelper.toString(bArr, sb);
            }
            z = false;
        }
        if (isSetContentLength()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("contentLength:");
            sb.append(this.contentLength);
            z = false;
        }
        if (isSetCreated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("created:");
            sb.append(this.created);
            z = false;
        }
        if (isSetUpdated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updated:");
            sb.append(this.updated);
            z = false;
        }
        if (isSetDeleted()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("deleted:");
            sb.append(this.deleted);
            z = false;
        }
        if (isSetActive()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("active:");
            sb.append(this.active);
            z = false;
        }
        if (isSetUpdateSequenceNum()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updateSequenceNum:");
            sb.append(this.updateSequenceNum);
            z = false;
        }
        if (isSetNotebookGuid()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("notebookGuid:");
            String str4 = this.notebookGuid;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (isSetTagGuids()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("tagGuids:");
            List<String> list = this.tagGuids;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
            z = false;
        }
        if (isSetResources()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("resources:");
            List<Resource> list2 = this.resources;
            if (list2 == null) {
                sb.append("null");
            } else {
                sb.append(list2);
            }
            z = false;
        }
        if (isSetAttributes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("attributes:");
            NoteAttributes noteAttributes = this.attributes;
            if (noteAttributes == null) {
                sb.append("null");
            } else {
                sb.append(noteAttributes);
            }
        } else {
            z2 = z;
        }
        if (isSetTagNames()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("tagNames:");
            List<String> list3 = this.tagNames;
            if (list3 == null) {
                sb.append("null");
            } else {
                sb.append(list3);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetActive() {
        this.__isset_vector[4] = false;
    }

    public void unsetAttributes() {
        this.attributes = null;
    }

    public void unsetContent() {
        this.content = null;
    }

    public void unsetContentHash() {
        this.contentHash = null;
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

    public void unsetNotebookGuid() {
        this.notebookGuid = null;
    }

    public void unsetResources() {
        this.resources = null;
    }

    public void unsetTagGuids() {
        this.tagGuids = null;
    }

    public void unsetTagNames() {
        this.tagNames = null;
    }

    public void unsetTitle() {
        this.title = null;
    }

    public void unsetUpdateSequenceNum() {
        this.__isset_vector[5] = false;
    }

    public void unsetUpdated() {
        this.__isset_vector[2] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.guid != null && isSetGuid()) {
            tProtocol.writeFieldBegin(GUID_FIELD_DESC);
            tProtocol.writeString(this.guid);
            tProtocol.writeFieldEnd();
        }
        if (this.title != null && isSetTitle()) {
            tProtocol.writeFieldBegin(TITLE_FIELD_DESC);
            tProtocol.writeString(this.title);
            tProtocol.writeFieldEnd();
        }
        if (this.content != null && isSetContent()) {
            tProtocol.writeFieldBegin(CONTENT_FIELD_DESC);
            tProtocol.writeString(this.content);
            tProtocol.writeFieldEnd();
        }
        if (this.contentHash != null && isSetContentHash()) {
            tProtocol.writeFieldBegin(CONTENT_HASH_FIELD_DESC);
            tProtocol.writeBinary(this.contentHash);
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
        if (isSetActive()) {
            tProtocol.writeFieldBegin(ACTIVE_FIELD_DESC);
            tProtocol.writeBool(this.active);
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
        if (this.resources != null && isSetResources()) {
            tProtocol.writeFieldBegin(RESOURCES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.resources.size()));
            Iterator<Resource> it3 = this.resources.iterator();
            while (it3.hasNext()) {
                it3.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.attributes != null && isSetAttributes()) {
            tProtocol.writeFieldBegin(ATTRIBUTES_FIELD_DESC);
            this.attributes.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.tagNames != null && isSetTagNames()) {
            tProtocol.writeFieldBegin(TAG_NAMES_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 11, this.tagNames.size()));
            Iterator<String> it4 = this.tagNames.iterator();
            while (it4.hasNext()) {
                tProtocol.writeString(it4.next());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(Note note) {
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
        int compareTo15;
        if (!getClass().equals(note.getClass())) {
            return getClass().getName().compareTo(note.getClass().getName());
        }
        int compareTo16 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(note.isSetGuid()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetGuid() && (compareTo15 = TBaseHelper.compareTo(this.guid, note.guid)) != 0) {
            return compareTo15;
        }
        int compareTo17 = Boolean.valueOf(isSetTitle()).compareTo(Boolean.valueOf(note.isSetTitle()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetTitle() && (compareTo14 = TBaseHelper.compareTo(this.title, note.title)) != 0) {
            return compareTo14;
        }
        int compareTo18 = Boolean.valueOf(isSetContent()).compareTo(Boolean.valueOf(note.isSetContent()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetContent() && (compareTo13 = TBaseHelper.compareTo(this.content, note.content)) != 0) {
            return compareTo13;
        }
        int compareTo19 = Boolean.valueOf(isSetContentHash()).compareTo(Boolean.valueOf(note.isSetContentHash()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetContentHash() && (compareTo12 = TBaseHelper.compareTo(this.contentHash, note.contentHash)) != 0) {
            return compareTo12;
        }
        int compareTo20 = Boolean.valueOf(isSetContentLength()).compareTo(Boolean.valueOf(note.isSetContentLength()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetContentLength() && (compareTo11 = TBaseHelper.compareTo(this.contentLength, note.contentLength)) != 0) {
            return compareTo11;
        }
        int compareTo21 = Boolean.valueOf(isSetCreated()).compareTo(Boolean.valueOf(note.isSetCreated()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetCreated() && (compareTo10 = TBaseHelper.compareTo(this.created, note.created)) != 0) {
            return compareTo10;
        }
        int compareTo22 = Boolean.valueOf(isSetUpdated()).compareTo(Boolean.valueOf(note.isSetUpdated()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetUpdated() && (compareTo9 = TBaseHelper.compareTo(this.updated, note.updated)) != 0) {
            return compareTo9;
        }
        int compareTo23 = Boolean.valueOf(isSetDeleted()).compareTo(Boolean.valueOf(note.isSetDeleted()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetDeleted() && (compareTo8 = TBaseHelper.compareTo(this.deleted, note.deleted)) != 0) {
            return compareTo8;
        }
        int compareTo24 = Boolean.valueOf(isSetActive()).compareTo(Boolean.valueOf(note.isSetActive()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetActive() && (compareTo7 = TBaseHelper.compareTo(this.active, note.active)) != 0) {
            return compareTo7;
        }
        int compareTo25 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(note.isSetUpdateSequenceNum()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetUpdateSequenceNum() && (compareTo6 = TBaseHelper.compareTo(this.updateSequenceNum, note.updateSequenceNum)) != 0) {
            return compareTo6;
        }
        int compareTo26 = Boolean.valueOf(isSetNotebookGuid()).compareTo(Boolean.valueOf(note.isSetNotebookGuid()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (isSetNotebookGuid() && (compareTo5 = TBaseHelper.compareTo(this.notebookGuid, note.notebookGuid)) != 0) {
            return compareTo5;
        }
        int compareTo27 = Boolean.valueOf(isSetTagGuids()).compareTo(Boolean.valueOf(note.isSetTagGuids()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (isSetTagGuids() && (compareTo4 = TBaseHelper.compareTo((List) this.tagGuids, (List) note.tagGuids)) != 0) {
            return compareTo4;
        }
        int compareTo28 = Boolean.valueOf(isSetResources()).compareTo(Boolean.valueOf(note.isSetResources()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (isSetResources() && (compareTo3 = TBaseHelper.compareTo((List) this.resources, (List) note.resources)) != 0) {
            return compareTo3;
        }
        int compareTo29 = Boolean.valueOf(isSetAttributes()).compareTo(Boolean.valueOf(note.isSetAttributes()));
        if (compareTo29 != 0) {
            return compareTo29;
        }
        if (isSetAttributes() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.attributes, (Comparable) note.attributes)) != 0) {
            return compareTo2;
        }
        int compareTo30 = Boolean.valueOf(isSetTagNames()).compareTo(Boolean.valueOf(note.isSetTagNames()));
        if (compareTo30 != 0) {
            return compareTo30;
        }
        if (!isSetTagNames() || (compareTo = TBaseHelper.compareTo((List) this.tagNames, (List) note.tagNames)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<Note> deepCopy2() {
        return new Note(this);
    }

    public Note(Note note) {
        boolean[] zArr = new boolean[6];
        this.__isset_vector = zArr;
        boolean[] zArr2 = note.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (note.isSetGuid()) {
            this.guid = note.guid;
        }
        if (note.isSetTitle()) {
            this.title = note.title;
        }
        if (note.isSetContent()) {
            this.content = note.content;
        }
        if (note.isSetContentHash()) {
            byte[] bArr = new byte[note.contentHash.length];
            this.contentHash = bArr;
            byte[] bArr2 = note.contentHash;
            System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        }
        this.contentLength = note.contentLength;
        this.created = note.created;
        this.updated = note.updated;
        this.deleted = note.deleted;
        this.active = note.active;
        this.updateSequenceNum = note.updateSequenceNum;
        if (note.isSetNotebookGuid()) {
            this.notebookGuid = note.notebookGuid;
        }
        if (note.isSetTagGuids()) {
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = note.tagGuids.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.tagGuids = arrayList;
        }
        if (note.isSetResources()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<Resource> it3 = note.resources.iterator();
            while (it3.hasNext()) {
                arrayList2.add(new Resource(it3.next()));
            }
            this.resources = arrayList2;
        }
        if (note.isSetAttributes()) {
            this.attributes = new NoteAttributes(note.attributes);
        }
        if (note.isSetTagNames()) {
            ArrayList arrayList3 = new ArrayList();
            Iterator<String> it4 = note.tagNames.iterator();
            while (it4.hasNext()) {
                arrayList3.add(it4.next());
            }
            this.tagNames = arrayList3;
        }
    }

    public boolean equals(Note note) {
        if (note == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = note.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(note.guid))) {
            return false;
        }
        boolean isSetTitle = isSetTitle();
        boolean isSetTitle2 = note.isSetTitle();
        if ((isSetTitle || isSetTitle2) && !(isSetTitle && isSetTitle2 && this.title.equals(note.title))) {
            return false;
        }
        boolean isSetContent = isSetContent();
        boolean isSetContent2 = note.isSetContent();
        if ((isSetContent || isSetContent2) && !(isSetContent && isSetContent2 && this.content.equals(note.content))) {
            return false;
        }
        boolean isSetContentHash = isSetContentHash();
        boolean isSetContentHash2 = note.isSetContentHash();
        if ((isSetContentHash || isSetContentHash2) && !(isSetContentHash && isSetContentHash2 && TBaseHelper.compareTo(this.contentHash, note.contentHash) == 0)) {
            return false;
        }
        boolean isSetContentLength = isSetContentLength();
        boolean isSetContentLength2 = note.isSetContentLength();
        if ((isSetContentLength || isSetContentLength2) && !(isSetContentLength && isSetContentLength2 && this.contentLength == note.contentLength)) {
            return false;
        }
        boolean isSetCreated = isSetCreated();
        boolean isSetCreated2 = note.isSetCreated();
        if ((isSetCreated || isSetCreated2) && !(isSetCreated && isSetCreated2 && this.created == note.created)) {
            return false;
        }
        boolean isSetUpdated = isSetUpdated();
        boolean isSetUpdated2 = note.isSetUpdated();
        if ((isSetUpdated || isSetUpdated2) && !(isSetUpdated && isSetUpdated2 && this.updated == note.updated)) {
            return false;
        }
        boolean isSetDeleted = isSetDeleted();
        boolean isSetDeleted2 = note.isSetDeleted();
        if ((isSetDeleted || isSetDeleted2) && !(isSetDeleted && isSetDeleted2 && this.deleted == note.deleted)) {
            return false;
        }
        boolean isSetActive = isSetActive();
        boolean isSetActive2 = note.isSetActive();
        if ((isSetActive || isSetActive2) && !(isSetActive && isSetActive2 && this.active == note.active)) {
            return false;
        }
        boolean isSetUpdateSequenceNum = isSetUpdateSequenceNum();
        boolean isSetUpdateSequenceNum2 = note.isSetUpdateSequenceNum();
        if ((isSetUpdateSequenceNum || isSetUpdateSequenceNum2) && !(isSetUpdateSequenceNum && isSetUpdateSequenceNum2 && this.updateSequenceNum == note.updateSequenceNum)) {
            return false;
        }
        boolean isSetNotebookGuid = isSetNotebookGuid();
        boolean isSetNotebookGuid2 = note.isSetNotebookGuid();
        if ((isSetNotebookGuid || isSetNotebookGuid2) && !(isSetNotebookGuid && isSetNotebookGuid2 && this.notebookGuid.equals(note.notebookGuid))) {
            return false;
        }
        boolean isSetTagGuids = isSetTagGuids();
        boolean isSetTagGuids2 = note.isSetTagGuids();
        if ((isSetTagGuids || isSetTagGuids2) && !(isSetTagGuids && isSetTagGuids2 && this.tagGuids.equals(note.tagGuids))) {
            return false;
        }
        boolean isSetResources = isSetResources();
        boolean isSetResources2 = note.isSetResources();
        if ((isSetResources || isSetResources2) && !(isSetResources && isSetResources2 && this.resources.equals(note.resources))) {
            return false;
        }
        boolean isSetAttributes = isSetAttributes();
        boolean isSetAttributes2 = note.isSetAttributes();
        if ((isSetAttributes || isSetAttributes2) && !(isSetAttributes && isSetAttributes2 && this.attributes.equals(note.attributes))) {
            return false;
        }
        boolean isSetTagNames = isSetTagNames();
        boolean isSetTagNames2 = note.isSetTagNames();
        if (isSetTagNames || isSetTagNames2) {
            return isSetTagNames && isSetTagNames2 && this.tagNames.equals(note.tagNames);
        }
        return true;
    }
}
