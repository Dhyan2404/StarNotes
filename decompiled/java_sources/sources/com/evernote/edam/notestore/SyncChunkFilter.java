package com.evernote.edam.notestore;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class SyncChunkFilter implements TBase<SyncChunkFilter>, Serializable, Cloneable {
    private static final int __INCLUDEEXPUNGED_ISSET_ID = 8;
    private static final int __INCLUDELINKEDNOTEBOOKS_ISSET_ID = 7;
    private static final int __INCLUDENOTEAPPLICATIONDATAFULLMAP_ISSET_ID = 9;
    private static final int __INCLUDENOTEATTRIBUTES_ISSET_ID = 2;
    private static final int __INCLUDENOTEBOOKS_ISSET_ID = 3;
    private static final int __INCLUDENOTERESOURCEAPPLICATIONDATAFULLMAP_ISSET_ID = 11;
    private static final int __INCLUDENOTERESOURCES_ISSET_ID = 1;
    private static final int __INCLUDENOTES_ISSET_ID = 0;
    private static final int __INCLUDERESOURCEAPPLICATIONDATAFULLMAP_ISSET_ID = 10;
    private static final int __INCLUDERESOURCES_ISSET_ID = 6;
    private static final int __INCLUDESEARCHES_ISSET_ID = 5;
    private static final int __INCLUDETAGS_ISSET_ID = 4;
    private boolean[] __isset_vector;
    private boolean includeExpunged;
    private boolean includeLinkedNotebooks;
    private boolean includeNoteApplicationDataFullMap;
    private boolean includeNoteAttributes;
    private boolean includeNoteResourceApplicationDataFullMap;
    private boolean includeNoteResources;
    private boolean includeNotebooks;
    private boolean includeNotes;
    private boolean includeResourceApplicationDataFullMap;
    private boolean includeResources;
    private boolean includeSearches;
    private boolean includeTags;
    private String requireNoteContentClass;
    private static final TStruct STRUCT_DESC = new TStruct("SyncChunkFilter");
    private static final TField INCLUDE_NOTES_FIELD_DESC = new TField("includeNotes", (byte) 2, 1);
    private static final TField INCLUDE_NOTE_RESOURCES_FIELD_DESC = new TField("includeNoteResources", (byte) 2, 2);
    private static final TField INCLUDE_NOTE_ATTRIBUTES_FIELD_DESC = new TField("includeNoteAttributes", (byte) 2, 3);
    private static final TField INCLUDE_NOTEBOOKS_FIELD_DESC = new TField("includeNotebooks", (byte) 2, 4);
    private static final TField INCLUDE_TAGS_FIELD_DESC = new TField("includeTags", (byte) 2, 5);
    private static final TField INCLUDE_SEARCHES_FIELD_DESC = new TField("includeSearches", (byte) 2, 6);
    private static final TField INCLUDE_RESOURCES_FIELD_DESC = new TField("includeResources", (byte) 2, 7);
    private static final TField INCLUDE_LINKED_NOTEBOOKS_FIELD_DESC = new TField("includeLinkedNotebooks", (byte) 2, 8);
    private static final TField INCLUDE_EXPUNGED_FIELD_DESC = new TField("includeExpunged", (byte) 2, 9);
    private static final TField INCLUDE_NOTE_APPLICATION_DATA_FULL_MAP_FIELD_DESC = new TField("includeNoteApplicationDataFullMap", (byte) 2, 10);
    private static final TField INCLUDE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC = new TField("includeResourceApplicationDataFullMap", (byte) 2, 12);
    private static final TField INCLUDE_NOTE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC = new TField("includeNoteResourceApplicationDataFullMap", (byte) 2, 13);
    private static final TField REQUIRE_NOTE_CONTENT_CLASS_FIELD_DESC = new TField("requireNoteContentClass", (byte) 11, 11);

    public SyncChunkFilter() {
        this.__isset_vector = new boolean[12];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setIncludeNotesIsSet(false);
        this.includeNotes = false;
        setIncludeNoteResourcesIsSet(false);
        this.includeNoteResources = false;
        setIncludeNoteAttributesIsSet(false);
        this.includeNoteAttributes = false;
        setIncludeNotebooksIsSet(false);
        this.includeNotebooks = false;
        setIncludeTagsIsSet(false);
        this.includeTags = false;
        setIncludeSearchesIsSet(false);
        this.includeSearches = false;
        setIncludeResourcesIsSet(false);
        this.includeResources = false;
        setIncludeLinkedNotebooksIsSet(false);
        this.includeLinkedNotebooks = false;
        setIncludeExpungedIsSet(false);
        this.includeExpunged = false;
        setIncludeNoteApplicationDataFullMapIsSet(false);
        this.includeNoteApplicationDataFullMap = false;
        setIncludeResourceApplicationDataFullMapIsSet(false);
        this.includeResourceApplicationDataFullMap = false;
        setIncludeNoteResourceApplicationDataFullMapIsSet(false);
        this.includeNoteResourceApplicationDataFullMap = false;
        this.requireNoteContentClass = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof SyncChunkFilter)) {
            return equals((SyncChunkFilter) obj);
        }
        return false;
    }

    public String getRequireNoteContentClass() {
        return this.requireNoteContentClass;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isIncludeExpunged() {
        return this.includeExpunged;
    }

    public boolean isIncludeLinkedNotebooks() {
        return this.includeLinkedNotebooks;
    }

    public boolean isIncludeNoteApplicationDataFullMap() {
        return this.includeNoteApplicationDataFullMap;
    }

    public boolean isIncludeNoteAttributes() {
        return this.includeNoteAttributes;
    }

    public boolean isIncludeNoteResourceApplicationDataFullMap() {
        return this.includeNoteResourceApplicationDataFullMap;
    }

    public boolean isIncludeNoteResources() {
        return this.includeNoteResources;
    }

    public boolean isIncludeNotebooks() {
        return this.includeNotebooks;
    }

    public boolean isIncludeNotes() {
        return this.includeNotes;
    }

    public boolean isIncludeResourceApplicationDataFullMap() {
        return this.includeResourceApplicationDataFullMap;
    }

    public boolean isIncludeResources() {
        return this.includeResources;
    }

    public boolean isIncludeSearches() {
        return this.includeSearches;
    }

    public boolean isIncludeTags() {
        return this.includeTags;
    }

    public boolean isSetIncludeExpunged() {
        return this.__isset_vector[8];
    }

    public boolean isSetIncludeLinkedNotebooks() {
        return this.__isset_vector[7];
    }

    public boolean isSetIncludeNoteApplicationDataFullMap() {
        return this.__isset_vector[9];
    }

    public boolean isSetIncludeNoteAttributes() {
        return this.__isset_vector[2];
    }

    public boolean isSetIncludeNoteResourceApplicationDataFullMap() {
        return this.__isset_vector[11];
    }

    public boolean isSetIncludeNoteResources() {
        return this.__isset_vector[1];
    }

    public boolean isSetIncludeNotebooks() {
        return this.__isset_vector[3];
    }

    public boolean isSetIncludeNotes() {
        return this.__isset_vector[0];
    }

    public boolean isSetIncludeResourceApplicationDataFullMap() {
        return this.__isset_vector[10];
    }

    public boolean isSetIncludeResources() {
        return this.__isset_vector[6];
    }

    public boolean isSetIncludeSearches() {
        return this.__isset_vector[5];
    }

    public boolean isSetIncludeTags() {
        return this.__isset_vector[4];
    }

    public boolean isSetRequireNoteContentClass() {
        return this.requireNoteContentClass != null;
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
            switch (readFieldBegin.f21203id) {
                case 1:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeNotes = tProtocol.readBool();
                        setIncludeNotesIsSet(true);
                        break;
                    }
                case 2:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeNoteResources = tProtocol.readBool();
                        setIncludeNoteResourcesIsSet(true);
                        break;
                    }
                case 3:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeNoteAttributes = tProtocol.readBool();
                        setIncludeNoteAttributesIsSet(true);
                        break;
                    }
                case 4:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeNotebooks = tProtocol.readBool();
                        setIncludeNotebooksIsSet(true);
                        break;
                    }
                case 5:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeTags = tProtocol.readBool();
                        setIncludeTagsIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeSearches = tProtocol.readBool();
                        setIncludeSearchesIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeResources = tProtocol.readBool();
                        setIncludeResourcesIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeLinkedNotebooks = tProtocol.readBool();
                        setIncludeLinkedNotebooksIsSet(true);
                        break;
                    }
                case 9:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeExpunged = tProtocol.readBool();
                        setIncludeExpungedIsSet(true);
                        break;
                    }
                case 10:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeNoteApplicationDataFullMap = tProtocol.readBool();
                        setIncludeNoteApplicationDataFullMapIsSet(true);
                        break;
                    }
                case 11:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.requireNoteContentClass = tProtocol.readString();
                        break;
                    }
                case 12:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeResourceApplicationDataFullMap = tProtocol.readBool();
                        setIncludeResourceApplicationDataFullMapIsSet(true);
                        break;
                    }
                case 13:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.includeNoteResourceApplicationDataFullMap = tProtocol.readBool();
                        setIncludeNoteResourceApplicationDataFullMapIsSet(true);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setIncludeExpunged(boolean z) {
        this.includeExpunged = z;
        setIncludeExpungedIsSet(true);
    }

    public void setIncludeExpungedIsSet(boolean z) {
        this.__isset_vector[8] = z;
    }

    public void setIncludeLinkedNotebooks(boolean z) {
        this.includeLinkedNotebooks = z;
        setIncludeLinkedNotebooksIsSet(true);
    }

    public void setIncludeLinkedNotebooksIsSet(boolean z) {
        this.__isset_vector[7] = z;
    }

    public void setIncludeNoteApplicationDataFullMap(boolean z) {
        this.includeNoteApplicationDataFullMap = z;
        setIncludeNoteApplicationDataFullMapIsSet(true);
    }

    public void setIncludeNoteApplicationDataFullMapIsSet(boolean z) {
        this.__isset_vector[9] = z;
    }

    public void setIncludeNoteAttributes(boolean z) {
        this.includeNoteAttributes = z;
        setIncludeNoteAttributesIsSet(true);
    }

    public void setIncludeNoteAttributesIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setIncludeNoteResourceApplicationDataFullMap(boolean z) {
        this.includeNoteResourceApplicationDataFullMap = z;
        setIncludeNoteResourceApplicationDataFullMapIsSet(true);
    }

    public void setIncludeNoteResourceApplicationDataFullMapIsSet(boolean z) {
        this.__isset_vector[11] = z;
    }

    public void setIncludeNoteResources(boolean z) {
        this.includeNoteResources = z;
        setIncludeNoteResourcesIsSet(true);
    }

    public void setIncludeNoteResourcesIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public void setIncludeNotebooks(boolean z) {
        this.includeNotebooks = z;
        setIncludeNotebooksIsSet(true);
    }

    public void setIncludeNotebooksIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setIncludeNotes(boolean z) {
        this.includeNotes = z;
        setIncludeNotesIsSet(true);
    }

    public void setIncludeNotesIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setIncludeResourceApplicationDataFullMap(boolean z) {
        this.includeResourceApplicationDataFullMap = z;
        setIncludeResourceApplicationDataFullMapIsSet(true);
    }

    public void setIncludeResourceApplicationDataFullMapIsSet(boolean z) {
        this.__isset_vector[10] = z;
    }

    public void setIncludeResources(boolean z) {
        this.includeResources = z;
        setIncludeResourcesIsSet(true);
    }

    public void setIncludeResourcesIsSet(boolean z) {
        this.__isset_vector[6] = z;
    }

    public void setIncludeSearches(boolean z) {
        this.includeSearches = z;
        setIncludeSearchesIsSet(true);
    }

    public void setIncludeSearchesIsSet(boolean z) {
        this.__isset_vector[5] = z;
    }

    public void setIncludeTags(boolean z) {
        this.includeTags = z;
        setIncludeTagsIsSet(true);
    }

    public void setIncludeTagsIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setRequireNoteContentClass(String str) {
        this.requireNoteContentClass = str;
    }

    public void setRequireNoteContentClassIsSet(boolean z) {
        if (z) {
            return;
        }
        this.requireNoteContentClass = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("SyncChunkFilter(");
        boolean z2 = false;
        if (isSetIncludeNotes()) {
            sb.append("includeNotes:");
            sb.append(this.includeNotes);
            z = false;
        } else {
            z = true;
        }
        if (isSetIncludeNoteResources()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeNoteResources:");
            sb.append(this.includeNoteResources);
            z = false;
        }
        if (isSetIncludeNoteAttributes()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeNoteAttributes:");
            sb.append(this.includeNoteAttributes);
            z = false;
        }
        if (isSetIncludeNotebooks()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeNotebooks:");
            sb.append(this.includeNotebooks);
            z = false;
        }
        if (isSetIncludeTags()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeTags:");
            sb.append(this.includeTags);
            z = false;
        }
        if (isSetIncludeSearches()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeSearches:");
            sb.append(this.includeSearches);
            z = false;
        }
        if (isSetIncludeResources()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeResources:");
            sb.append(this.includeResources);
            z = false;
        }
        if (isSetIncludeLinkedNotebooks()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeLinkedNotebooks:");
            sb.append(this.includeLinkedNotebooks);
            z = false;
        }
        if (isSetIncludeExpunged()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeExpunged:");
            sb.append(this.includeExpunged);
            z = false;
        }
        if (isSetIncludeNoteApplicationDataFullMap()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeNoteApplicationDataFullMap:");
            sb.append(this.includeNoteApplicationDataFullMap);
            z = false;
        }
        if (isSetIncludeResourceApplicationDataFullMap()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeResourceApplicationDataFullMap:");
            sb.append(this.includeResourceApplicationDataFullMap);
            z = false;
        }
        if (isSetIncludeNoteResourceApplicationDataFullMap()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includeNoteResourceApplicationDataFullMap:");
            sb.append(this.includeNoteResourceApplicationDataFullMap);
        } else {
            z2 = z;
        }
        if (isSetRequireNoteContentClass()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("requireNoteContentClass:");
            String str = this.requireNoteContentClass;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetIncludeExpunged() {
        this.__isset_vector[8] = false;
    }

    public void unsetIncludeLinkedNotebooks() {
        this.__isset_vector[7] = false;
    }

    public void unsetIncludeNoteApplicationDataFullMap() {
        this.__isset_vector[9] = false;
    }

    public void unsetIncludeNoteAttributes() {
        this.__isset_vector[2] = false;
    }

    public void unsetIncludeNoteResourceApplicationDataFullMap() {
        this.__isset_vector[11] = false;
    }

    public void unsetIncludeNoteResources() {
        this.__isset_vector[1] = false;
    }

    public void unsetIncludeNotebooks() {
        this.__isset_vector[3] = false;
    }

    public void unsetIncludeNotes() {
        this.__isset_vector[0] = false;
    }

    public void unsetIncludeResourceApplicationDataFullMap() {
        this.__isset_vector[10] = false;
    }

    public void unsetIncludeResources() {
        this.__isset_vector[6] = false;
    }

    public void unsetIncludeSearches() {
        this.__isset_vector[5] = false;
    }

    public void unsetIncludeTags() {
        this.__isset_vector[4] = false;
    }

    public void unsetRequireNoteContentClass() {
        this.requireNoteContentClass = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetIncludeNotes()) {
            tProtocol.writeFieldBegin(INCLUDE_NOTES_FIELD_DESC);
            tProtocol.writeBool(this.includeNotes);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeNoteResources()) {
            tProtocol.writeFieldBegin(INCLUDE_NOTE_RESOURCES_FIELD_DESC);
            tProtocol.writeBool(this.includeNoteResources);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeNoteAttributes()) {
            tProtocol.writeFieldBegin(INCLUDE_NOTE_ATTRIBUTES_FIELD_DESC);
            tProtocol.writeBool(this.includeNoteAttributes);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeNotebooks()) {
            tProtocol.writeFieldBegin(INCLUDE_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.includeNotebooks);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeTags()) {
            tProtocol.writeFieldBegin(INCLUDE_TAGS_FIELD_DESC);
            tProtocol.writeBool(this.includeTags);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeSearches()) {
            tProtocol.writeFieldBegin(INCLUDE_SEARCHES_FIELD_DESC);
            tProtocol.writeBool(this.includeSearches);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeResources()) {
            tProtocol.writeFieldBegin(INCLUDE_RESOURCES_FIELD_DESC);
            tProtocol.writeBool(this.includeResources);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeLinkedNotebooks()) {
            tProtocol.writeFieldBegin(INCLUDE_LINKED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.includeLinkedNotebooks);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeExpunged()) {
            tProtocol.writeFieldBegin(INCLUDE_EXPUNGED_FIELD_DESC);
            tProtocol.writeBool(this.includeExpunged);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeNoteApplicationDataFullMap()) {
            tProtocol.writeFieldBegin(INCLUDE_NOTE_APPLICATION_DATA_FULL_MAP_FIELD_DESC);
            tProtocol.writeBool(this.includeNoteApplicationDataFullMap);
            tProtocol.writeFieldEnd();
        }
        if (this.requireNoteContentClass != null && isSetRequireNoteContentClass()) {
            tProtocol.writeFieldBegin(REQUIRE_NOTE_CONTENT_CLASS_FIELD_DESC);
            tProtocol.writeString(this.requireNoteContentClass);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeResourceApplicationDataFullMap()) {
            tProtocol.writeFieldBegin(INCLUDE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC);
            tProtocol.writeBool(this.includeResourceApplicationDataFullMap);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeNoteResourceApplicationDataFullMap()) {
            tProtocol.writeFieldBegin(INCLUDE_NOTE_RESOURCE_APPLICATION_DATA_FULL_MAP_FIELD_DESC);
            tProtocol.writeBool(this.includeNoteResourceApplicationDataFullMap);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(SyncChunkFilter syncChunkFilter) {
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
        if (!getClass().equals(syncChunkFilter.getClass())) {
            return getClass().getName().compareTo(syncChunkFilter.getClass().getName());
        }
        int compareTo14 = Boolean.valueOf(isSetIncludeNotes()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeNotes()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (isSetIncludeNotes() && (compareTo13 = TBaseHelper.compareTo(this.includeNotes, syncChunkFilter.includeNotes)) != 0) {
            return compareTo13;
        }
        int compareTo15 = Boolean.valueOf(isSetIncludeNoteResources()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeNoteResources()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetIncludeNoteResources() && (compareTo12 = TBaseHelper.compareTo(this.includeNoteResources, syncChunkFilter.includeNoteResources)) != 0) {
            return compareTo12;
        }
        int compareTo16 = Boolean.valueOf(isSetIncludeNoteAttributes()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeNoteAttributes()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetIncludeNoteAttributes() && (compareTo11 = TBaseHelper.compareTo(this.includeNoteAttributes, syncChunkFilter.includeNoteAttributes)) != 0) {
            return compareTo11;
        }
        int compareTo17 = Boolean.valueOf(isSetIncludeNotebooks()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeNotebooks()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetIncludeNotebooks() && (compareTo10 = TBaseHelper.compareTo(this.includeNotebooks, syncChunkFilter.includeNotebooks)) != 0) {
            return compareTo10;
        }
        int compareTo18 = Boolean.valueOf(isSetIncludeTags()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeTags()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetIncludeTags() && (compareTo9 = TBaseHelper.compareTo(this.includeTags, syncChunkFilter.includeTags)) != 0) {
            return compareTo9;
        }
        int compareTo19 = Boolean.valueOf(isSetIncludeSearches()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeSearches()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetIncludeSearches() && (compareTo8 = TBaseHelper.compareTo(this.includeSearches, syncChunkFilter.includeSearches)) != 0) {
            return compareTo8;
        }
        int compareTo20 = Boolean.valueOf(isSetIncludeResources()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeResources()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetIncludeResources() && (compareTo7 = TBaseHelper.compareTo(this.includeResources, syncChunkFilter.includeResources)) != 0) {
            return compareTo7;
        }
        int compareTo21 = Boolean.valueOf(isSetIncludeLinkedNotebooks()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeLinkedNotebooks()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetIncludeLinkedNotebooks() && (compareTo6 = TBaseHelper.compareTo(this.includeLinkedNotebooks, syncChunkFilter.includeLinkedNotebooks)) != 0) {
            return compareTo6;
        }
        int compareTo22 = Boolean.valueOf(isSetIncludeExpunged()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeExpunged()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetIncludeExpunged() && (compareTo5 = TBaseHelper.compareTo(this.includeExpunged, syncChunkFilter.includeExpunged)) != 0) {
            return compareTo5;
        }
        int compareTo23 = Boolean.valueOf(isSetIncludeNoteApplicationDataFullMap()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeNoteApplicationDataFullMap()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetIncludeNoteApplicationDataFullMap() && (compareTo4 = TBaseHelper.compareTo(this.includeNoteApplicationDataFullMap, syncChunkFilter.includeNoteApplicationDataFullMap)) != 0) {
            return compareTo4;
        }
        int compareTo24 = Boolean.valueOf(isSetIncludeResourceApplicationDataFullMap()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeResourceApplicationDataFullMap()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetIncludeResourceApplicationDataFullMap() && (compareTo3 = TBaseHelper.compareTo(this.includeResourceApplicationDataFullMap, syncChunkFilter.includeResourceApplicationDataFullMap)) != 0) {
            return compareTo3;
        }
        int compareTo25 = Boolean.valueOf(isSetIncludeNoteResourceApplicationDataFullMap()).compareTo(Boolean.valueOf(syncChunkFilter.isSetIncludeNoteResourceApplicationDataFullMap()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetIncludeNoteResourceApplicationDataFullMap() && (compareTo2 = TBaseHelper.compareTo(this.includeNoteResourceApplicationDataFullMap, syncChunkFilter.includeNoteResourceApplicationDataFullMap)) != 0) {
            return compareTo2;
        }
        int compareTo26 = Boolean.valueOf(isSetRequireNoteContentClass()).compareTo(Boolean.valueOf(syncChunkFilter.isSetRequireNoteContentClass()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (!isSetRequireNoteContentClass() || (compareTo = TBaseHelper.compareTo(this.requireNoteContentClass, syncChunkFilter.requireNoteContentClass)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<SyncChunkFilter> deepCopy2() {
        return new SyncChunkFilter(this);
    }

    public SyncChunkFilter(SyncChunkFilter syncChunkFilter) {
        boolean[] zArr = new boolean[12];
        this.__isset_vector = zArr;
        boolean[] zArr2 = syncChunkFilter.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.includeNotes = syncChunkFilter.includeNotes;
        this.includeNoteResources = syncChunkFilter.includeNoteResources;
        this.includeNoteAttributes = syncChunkFilter.includeNoteAttributes;
        this.includeNotebooks = syncChunkFilter.includeNotebooks;
        this.includeTags = syncChunkFilter.includeTags;
        this.includeSearches = syncChunkFilter.includeSearches;
        this.includeResources = syncChunkFilter.includeResources;
        this.includeLinkedNotebooks = syncChunkFilter.includeLinkedNotebooks;
        this.includeExpunged = syncChunkFilter.includeExpunged;
        this.includeNoteApplicationDataFullMap = syncChunkFilter.includeNoteApplicationDataFullMap;
        this.includeResourceApplicationDataFullMap = syncChunkFilter.includeResourceApplicationDataFullMap;
        this.includeNoteResourceApplicationDataFullMap = syncChunkFilter.includeNoteResourceApplicationDataFullMap;
        if (syncChunkFilter.isSetRequireNoteContentClass()) {
            this.requireNoteContentClass = syncChunkFilter.requireNoteContentClass;
        }
    }

    public boolean equals(SyncChunkFilter syncChunkFilter) {
        if (syncChunkFilter == null) {
            return false;
        }
        boolean isSetIncludeNotes = isSetIncludeNotes();
        boolean isSetIncludeNotes2 = syncChunkFilter.isSetIncludeNotes();
        if ((isSetIncludeNotes || isSetIncludeNotes2) && !(isSetIncludeNotes && isSetIncludeNotes2 && this.includeNotes == syncChunkFilter.includeNotes)) {
            return false;
        }
        boolean isSetIncludeNoteResources = isSetIncludeNoteResources();
        boolean isSetIncludeNoteResources2 = syncChunkFilter.isSetIncludeNoteResources();
        if ((isSetIncludeNoteResources || isSetIncludeNoteResources2) && !(isSetIncludeNoteResources && isSetIncludeNoteResources2 && this.includeNoteResources == syncChunkFilter.includeNoteResources)) {
            return false;
        }
        boolean isSetIncludeNoteAttributes = isSetIncludeNoteAttributes();
        boolean isSetIncludeNoteAttributes2 = syncChunkFilter.isSetIncludeNoteAttributes();
        if ((isSetIncludeNoteAttributes || isSetIncludeNoteAttributes2) && !(isSetIncludeNoteAttributes && isSetIncludeNoteAttributes2 && this.includeNoteAttributes == syncChunkFilter.includeNoteAttributes)) {
            return false;
        }
        boolean isSetIncludeNotebooks = isSetIncludeNotebooks();
        boolean isSetIncludeNotebooks2 = syncChunkFilter.isSetIncludeNotebooks();
        if ((isSetIncludeNotebooks || isSetIncludeNotebooks2) && !(isSetIncludeNotebooks && isSetIncludeNotebooks2 && this.includeNotebooks == syncChunkFilter.includeNotebooks)) {
            return false;
        }
        boolean isSetIncludeTags = isSetIncludeTags();
        boolean isSetIncludeTags2 = syncChunkFilter.isSetIncludeTags();
        if ((isSetIncludeTags || isSetIncludeTags2) && !(isSetIncludeTags && isSetIncludeTags2 && this.includeTags == syncChunkFilter.includeTags)) {
            return false;
        }
        boolean isSetIncludeSearches = isSetIncludeSearches();
        boolean isSetIncludeSearches2 = syncChunkFilter.isSetIncludeSearches();
        if ((isSetIncludeSearches || isSetIncludeSearches2) && !(isSetIncludeSearches && isSetIncludeSearches2 && this.includeSearches == syncChunkFilter.includeSearches)) {
            return false;
        }
        boolean isSetIncludeResources = isSetIncludeResources();
        boolean isSetIncludeResources2 = syncChunkFilter.isSetIncludeResources();
        if ((isSetIncludeResources || isSetIncludeResources2) && !(isSetIncludeResources && isSetIncludeResources2 && this.includeResources == syncChunkFilter.includeResources)) {
            return false;
        }
        boolean isSetIncludeLinkedNotebooks = isSetIncludeLinkedNotebooks();
        boolean isSetIncludeLinkedNotebooks2 = syncChunkFilter.isSetIncludeLinkedNotebooks();
        if ((isSetIncludeLinkedNotebooks || isSetIncludeLinkedNotebooks2) && !(isSetIncludeLinkedNotebooks && isSetIncludeLinkedNotebooks2 && this.includeLinkedNotebooks == syncChunkFilter.includeLinkedNotebooks)) {
            return false;
        }
        boolean isSetIncludeExpunged = isSetIncludeExpunged();
        boolean isSetIncludeExpunged2 = syncChunkFilter.isSetIncludeExpunged();
        if ((isSetIncludeExpunged || isSetIncludeExpunged2) && !(isSetIncludeExpunged && isSetIncludeExpunged2 && this.includeExpunged == syncChunkFilter.includeExpunged)) {
            return false;
        }
        boolean isSetIncludeNoteApplicationDataFullMap = isSetIncludeNoteApplicationDataFullMap();
        boolean isSetIncludeNoteApplicationDataFullMap2 = syncChunkFilter.isSetIncludeNoteApplicationDataFullMap();
        if ((isSetIncludeNoteApplicationDataFullMap || isSetIncludeNoteApplicationDataFullMap2) && !(isSetIncludeNoteApplicationDataFullMap && isSetIncludeNoteApplicationDataFullMap2 && this.includeNoteApplicationDataFullMap == syncChunkFilter.includeNoteApplicationDataFullMap)) {
            return false;
        }
        boolean isSetIncludeResourceApplicationDataFullMap = isSetIncludeResourceApplicationDataFullMap();
        boolean isSetIncludeResourceApplicationDataFullMap2 = syncChunkFilter.isSetIncludeResourceApplicationDataFullMap();
        if ((isSetIncludeResourceApplicationDataFullMap || isSetIncludeResourceApplicationDataFullMap2) && !(isSetIncludeResourceApplicationDataFullMap && isSetIncludeResourceApplicationDataFullMap2 && this.includeResourceApplicationDataFullMap == syncChunkFilter.includeResourceApplicationDataFullMap)) {
            return false;
        }
        boolean isSetIncludeNoteResourceApplicationDataFullMap = isSetIncludeNoteResourceApplicationDataFullMap();
        boolean isSetIncludeNoteResourceApplicationDataFullMap2 = syncChunkFilter.isSetIncludeNoteResourceApplicationDataFullMap();
        if ((isSetIncludeNoteResourceApplicationDataFullMap || isSetIncludeNoteResourceApplicationDataFullMap2) && !(isSetIncludeNoteResourceApplicationDataFullMap && isSetIncludeNoteResourceApplicationDataFullMap2 && this.includeNoteResourceApplicationDataFullMap == syncChunkFilter.includeNoteResourceApplicationDataFullMap)) {
            return false;
        }
        boolean isSetRequireNoteContentClass = isSetRequireNoteContentClass();
        boolean isSetRequireNoteContentClass2 = syncChunkFilter.isSetRequireNoteContentClass();
        if (isSetRequireNoteContentClass || isSetRequireNoteContentClass2) {
            return isSetRequireNoteContentClass && isSetRequireNoteContentClass2 && this.requireNoteContentClass.equals(syncChunkFilter.requireNoteContentClass);
        }
        return true;
    }
}
