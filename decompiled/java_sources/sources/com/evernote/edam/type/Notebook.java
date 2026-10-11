package com.evernote.edam.type;

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
import xcrash.TombstoneParser;

/* loaded from: classes4.dex */
public class Notebook implements TBase<Notebook>, Serializable, Cloneable {
    private static final int __DEFAULTNOTEBOOK_ISSET_ID = 1;
    private static final int __PUBLISHED_ISSET_ID = 4;
    private static final int __SERVICECREATED_ISSET_ID = 2;
    private static final int __SERVICEUPDATED_ISSET_ID = 3;
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private BusinessNotebook businessNotebook;
    private User contact;
    private boolean defaultNotebook;
    private String guid;
    private String name;
    private boolean published;
    private Publishing publishing;
    private NotebookRestrictions restrictions;
    private long serviceCreated;
    private long serviceUpdated;
    private List<Long> sharedNotebookIds;
    private List<SharedNotebook> sharedNotebooks;
    private String stack;
    private int updateSequenceNum;
    private static final TStruct STRUCT_DESC = new TStruct("Notebook");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField NAME_FIELD_DESC = new TField("name", (byte) 11, 2);
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 5);
    private static final TField DEFAULT_NOTEBOOK_FIELD_DESC = new TField("defaultNotebook", (byte) 2, 6);
    private static final TField SERVICE_CREATED_FIELD_DESC = new TField("serviceCreated", (byte) 10, 7);
    private static final TField SERVICE_UPDATED_FIELD_DESC = new TField("serviceUpdated", (byte) 10, 8);
    private static final TField PUBLISHING_FIELD_DESC = new TField("publishing", (byte) 12, 10);
    private static final TField PUBLISHED_FIELD_DESC = new TField("published", (byte) 2, 11);
    private static final TField STACK_FIELD_DESC = new TField(TombstoneParser.keyStack, (byte) 11, 12);
    private static final TField SHARED_NOTEBOOK_IDS_FIELD_DESC = new TField("sharedNotebookIds", (byte) 15, 13);
    private static final TField SHARED_NOTEBOOKS_FIELD_DESC = new TField("sharedNotebooks", (byte) 15, 14);
    private static final TField BUSINESS_NOTEBOOK_FIELD_DESC = new TField("businessNotebook", (byte) 12, 15);
    private static final TField CONTACT_FIELD_DESC = new TField("contact", (byte) 12, 16);
    private static final TField RESTRICTIONS_FIELD_DESC = new TField("restrictions", (byte) 12, 17);

    public Notebook() {
        this.__isset_vector = new boolean[5];
    }

    public void addToSharedNotebookIds(long j) {
        if (this.sharedNotebookIds == null) {
            this.sharedNotebookIds = new ArrayList();
        }
        this.sharedNotebookIds.add(Long.valueOf(j));
    }

    public void addToSharedNotebooks(SharedNotebook sharedNotebook) {
        if (this.sharedNotebooks == null) {
            this.sharedNotebooks = new ArrayList();
        }
        this.sharedNotebooks.add(sharedNotebook);
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.name = null;
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
        setDefaultNotebookIsSet(false);
        this.defaultNotebook = false;
        setServiceCreatedIsSet(false);
        this.serviceCreated = 0L;
        setServiceUpdatedIsSet(false);
        this.serviceUpdated = 0L;
        this.publishing = null;
        setPublishedIsSet(false);
        this.published = false;
        this.stack = null;
        this.sharedNotebookIds = null;
        this.sharedNotebooks = null;
        this.businessNotebook = null;
        this.contact = null;
        this.restrictions = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Notebook)) {
            return equals((Notebook) obj);
        }
        return false;
    }

    public BusinessNotebook getBusinessNotebook() {
        return this.businessNotebook;
    }

    public User getContact() {
        return this.contact;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getName() {
        return this.name;
    }

    public Publishing getPublishing() {
        return this.publishing;
    }

    public NotebookRestrictions getRestrictions() {
        return this.restrictions;
    }

    public long getServiceCreated() {
        return this.serviceCreated;
    }

    public long getServiceUpdated() {
        return this.serviceUpdated;
    }

    public List<Long> getSharedNotebookIds() {
        return this.sharedNotebookIds;
    }

    public Iterator<Long> getSharedNotebookIdsIterator() {
        List<Long> list = this.sharedNotebookIds;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getSharedNotebookIdsSize() {
        List<Long> list = this.sharedNotebookIds;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public List<SharedNotebook> getSharedNotebooks() {
        return this.sharedNotebooks;
    }

    public Iterator<SharedNotebook> getSharedNotebooksIterator() {
        List<SharedNotebook> list = this.sharedNotebooks;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public int getSharedNotebooksSize() {
        List<SharedNotebook> list = this.sharedNotebooks;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public String getStack() {
        return this.stack;
    }

    public int getUpdateSequenceNum() {
        return this.updateSequenceNum;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isDefaultNotebook() {
        return this.defaultNotebook;
    }

    public boolean isPublished() {
        return this.published;
    }

    public boolean isSetBusinessNotebook() {
        return this.businessNotebook != null;
    }

    public boolean isSetContact() {
        return this.contact != null;
    }

    public boolean isSetDefaultNotebook() {
        return this.__isset_vector[1];
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetName() {
        return this.name != null;
    }

    public boolean isSetPublished() {
        return this.__isset_vector[4];
    }

    public boolean isSetPublishing() {
        return this.publishing != null;
    }

    public boolean isSetRestrictions() {
        return this.restrictions != null;
    }

    public boolean isSetServiceCreated() {
        return this.__isset_vector[2];
    }

    public boolean isSetServiceUpdated() {
        return this.__isset_vector[3];
    }

    public boolean isSetSharedNotebookIds() {
        return this.sharedNotebookIds != null;
    }

    public boolean isSetSharedNotebooks() {
        return this.sharedNotebooks != null;
    }

    public boolean isSetStack() {
        return this.stack != null;
    }

    public boolean isSetUpdateSequenceNum() {
        return this.__isset_vector[0];
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
                        this.name = tProtocol.readString();
                        break;
                    }
                case 3:
                case 4:
                case 9:
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
                case 5:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.updateSequenceNum = tProtocol.readI32();
                        setUpdateSequenceNumIsSet(true);
                        break;
                    }
                case 6:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.defaultNotebook = tProtocol.readBool();
                        setDefaultNotebookIsSet(true);
                        break;
                    }
                case 7:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.serviceCreated = tProtocol.readI64();
                        setServiceCreatedIsSet(true);
                        break;
                    }
                case 8:
                    if (b != 10) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.serviceUpdated = tProtocol.readI64();
                        setServiceUpdatedIsSet(true);
                        break;
                    }
                case 10:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        Publishing publishing = new Publishing();
                        this.publishing = publishing;
                        publishing.read(tProtocol);
                        break;
                    }
                case 11:
                    if (b != 2) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.published = tProtocol.readBool();
                        setPublishedIsSet(true);
                        break;
                    }
                case 12:
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.stack = tProtocol.readString();
                        break;
                    }
                case 13:
                    if (b != 15) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        TList readListBegin = tProtocol.readListBegin();
                        this.sharedNotebookIds = new ArrayList(readListBegin.size);
                        while (i < readListBegin.size) {
                            this.sharedNotebookIds.add(Long.valueOf(tProtocol.readI64()));
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
                        TList readListBegin2 = tProtocol.readListBegin();
                        this.sharedNotebooks = new ArrayList(readListBegin2.size);
                        while (i < readListBegin2.size) {
                            SharedNotebook sharedNotebook = new SharedNotebook();
                            sharedNotebook.read(tProtocol);
                            this.sharedNotebooks.add(sharedNotebook);
                            i++;
                        }
                        tProtocol.readListEnd();
                        break;
                    }
                case 15:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        BusinessNotebook businessNotebook = new BusinessNotebook();
                        this.businessNotebook = businessNotebook;
                        businessNotebook.read(tProtocol);
                        break;
                    }
                case 16:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        User user = new User();
                        this.contact = user;
                        user.read(tProtocol);
                        break;
                    }
                case 17:
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        NotebookRestrictions notebookRestrictions = new NotebookRestrictions();
                        this.restrictions = notebookRestrictions;
                        notebookRestrictions.read(tProtocol);
                        break;
                    }
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setBusinessNotebook(BusinessNotebook businessNotebook) {
        this.businessNotebook = businessNotebook;
    }

    public void setBusinessNotebookIsSet(boolean z) {
        if (z) {
            return;
        }
        this.businessNotebook = null;
    }

    public void setContact(User user) {
        this.contact = user;
    }

    public void setContactIsSet(boolean z) {
        if (z) {
            return;
        }
        this.contact = null;
    }

    public void setDefaultNotebook(boolean z) {
        this.defaultNotebook = z;
        setDefaultNotebookIsSet(true);
    }

    public void setDefaultNotebookIsSet(boolean z) {
        this.__isset_vector[1] = z;
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

    public void setName(String str) {
        this.name = str;
    }

    public void setNameIsSet(boolean z) {
        if (z) {
            return;
        }
        this.name = null;
    }

    public void setPublished(boolean z) {
        this.published = z;
        setPublishedIsSet(true);
    }

    public void setPublishedIsSet(boolean z) {
        this.__isset_vector[4] = z;
    }

    public void setPublishing(Publishing publishing) {
        this.publishing = publishing;
    }

    public void setPublishingIsSet(boolean z) {
        if (z) {
            return;
        }
        this.publishing = null;
    }

    public void setRestrictions(NotebookRestrictions notebookRestrictions) {
        this.restrictions = notebookRestrictions;
    }

    public void setRestrictionsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.restrictions = null;
    }

    public void setServiceCreated(long j) {
        this.serviceCreated = j;
        setServiceCreatedIsSet(true);
    }

    public void setServiceCreatedIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setServiceUpdated(long j) {
        this.serviceUpdated = j;
        setServiceUpdatedIsSet(true);
    }

    public void setServiceUpdatedIsSet(boolean z) {
        this.__isset_vector[3] = z;
    }

    public void setSharedNotebookIds(List<Long> list) {
        this.sharedNotebookIds = list;
    }

    public void setSharedNotebookIdsIsSet(boolean z) {
        if (z) {
            return;
        }
        this.sharedNotebookIds = null;
    }

    public void setSharedNotebooks(List<SharedNotebook> list) {
        this.sharedNotebooks = list;
    }

    public void setSharedNotebooksIsSet(boolean z) {
        if (z) {
            return;
        }
        this.sharedNotebooks = null;
    }

    public void setStack(String str) {
        this.stack = str;
    }

    public void setStackIsSet(boolean z) {
        if (z) {
            return;
        }
        this.stack = null;
    }

    public void setUpdateSequenceNum(int i) {
        this.updateSequenceNum = i;
        setUpdateSequenceNumIsSet(true);
    }

    public void setUpdateSequenceNumIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("Notebook(");
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
        if (isSetName()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("name:");
            String str2 = this.name;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
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
        if (isSetDefaultNotebook()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("defaultNotebook:");
            sb.append(this.defaultNotebook);
            z = false;
        }
        if (isSetServiceCreated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("serviceCreated:");
            sb.append(this.serviceCreated);
            z = false;
        }
        if (isSetServiceUpdated()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("serviceUpdated:");
            sb.append(this.serviceUpdated);
            z = false;
        }
        if (isSetPublishing()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("publishing:");
            Publishing publishing = this.publishing;
            if (publishing == null) {
                sb.append("null");
            } else {
                sb.append(publishing);
            }
            z = false;
        }
        if (isSetPublished()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("published:");
            sb.append(this.published);
            z = false;
        }
        if (isSetStack()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("stack:");
            String str3 = this.stack;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetSharedNotebookIds()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sharedNotebookIds:");
            List<Long> list = this.sharedNotebookIds;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
            z = false;
        }
        if (isSetSharedNotebooks()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sharedNotebooks:");
            List<SharedNotebook> list2 = this.sharedNotebooks;
            if (list2 == null) {
                sb.append("null");
            } else {
                sb.append(list2);
            }
            z = false;
        }
        if (isSetBusinessNotebook()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("businessNotebook:");
            BusinessNotebook businessNotebook = this.businessNotebook;
            if (businessNotebook == null) {
                sb.append("null");
            } else {
                sb.append(businessNotebook);
            }
            z = false;
        }
        if (isSetContact()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("contact:");
            User user = this.contact;
            if (user == null) {
                sb.append("null");
            } else {
                sb.append(user);
            }
        } else {
            z2 = z;
        }
        if (isSetRestrictions()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("restrictions:");
            NotebookRestrictions notebookRestrictions = this.restrictions;
            if (notebookRestrictions == null) {
                sb.append("null");
            } else {
                sb.append(notebookRestrictions);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetBusinessNotebook() {
        this.businessNotebook = null;
    }

    public void unsetContact() {
        this.contact = null;
    }

    public void unsetDefaultNotebook() {
        this.__isset_vector[1] = false;
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetName() {
        this.name = null;
    }

    public void unsetPublished() {
        this.__isset_vector[4] = false;
    }

    public void unsetPublishing() {
        this.publishing = null;
    }

    public void unsetRestrictions() {
        this.restrictions = null;
    }

    public void unsetServiceCreated() {
        this.__isset_vector[2] = false;
    }

    public void unsetServiceUpdated() {
        this.__isset_vector[3] = false;
    }

    public void unsetSharedNotebookIds() {
        this.sharedNotebookIds = null;
    }

    public void unsetSharedNotebooks() {
        this.sharedNotebooks = null;
    }

    public void unsetStack() {
        this.stack = null;
    }

    public void unsetUpdateSequenceNum() {
        this.__isset_vector[0] = false;
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
        if (this.name != null && isSetName()) {
            tProtocol.writeFieldBegin(NAME_FIELD_DESC);
            tProtocol.writeString(this.name);
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdateSequenceNum()) {
            tProtocol.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
            tProtocol.writeI32(this.updateSequenceNum);
            tProtocol.writeFieldEnd();
        }
        if (isSetDefaultNotebook()) {
            tProtocol.writeFieldBegin(DEFAULT_NOTEBOOK_FIELD_DESC);
            tProtocol.writeBool(this.defaultNotebook);
            tProtocol.writeFieldEnd();
        }
        if (isSetServiceCreated()) {
            tProtocol.writeFieldBegin(SERVICE_CREATED_FIELD_DESC);
            tProtocol.writeI64(this.serviceCreated);
            tProtocol.writeFieldEnd();
        }
        if (isSetServiceUpdated()) {
            tProtocol.writeFieldBegin(SERVICE_UPDATED_FIELD_DESC);
            tProtocol.writeI64(this.serviceUpdated);
            tProtocol.writeFieldEnd();
        }
        if (this.publishing != null && isSetPublishing()) {
            tProtocol.writeFieldBegin(PUBLISHING_FIELD_DESC);
            this.publishing.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (isSetPublished()) {
            tProtocol.writeFieldBegin(PUBLISHED_FIELD_DESC);
            tProtocol.writeBool(this.published);
            tProtocol.writeFieldEnd();
        }
        if (this.stack != null && isSetStack()) {
            tProtocol.writeFieldBegin(STACK_FIELD_DESC);
            tProtocol.writeString(this.stack);
            tProtocol.writeFieldEnd();
        }
        if (this.sharedNotebookIds != null && isSetSharedNotebookIds()) {
            tProtocol.writeFieldBegin(SHARED_NOTEBOOK_IDS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 10, this.sharedNotebookIds.size()));
            Iterator<Long> it2 = this.sharedNotebookIds.iterator();
            while (it2.hasNext()) {
                tProtocol.writeI64(it2.next().longValue());
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.sharedNotebooks != null && isSetSharedNotebooks()) {
            tProtocol.writeFieldBegin(SHARED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeListBegin(new TList((byte) 12, this.sharedNotebooks.size()));
            Iterator<SharedNotebook> it3 = this.sharedNotebooks.iterator();
            while (it3.hasNext()) {
                it3.next().write(tProtocol);
            }
            tProtocol.writeListEnd();
            tProtocol.writeFieldEnd();
        }
        if (this.businessNotebook != null && isSetBusinessNotebook()) {
            tProtocol.writeFieldBegin(BUSINESS_NOTEBOOK_FIELD_DESC);
            this.businessNotebook.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.contact != null && isSetContact()) {
            tProtocol.writeFieldBegin(CONTACT_FIELD_DESC);
            this.contact.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        if (this.restrictions != null && isSetRestrictions()) {
            tProtocol.writeFieldBegin(RESTRICTIONS_FIELD_DESC);
            this.restrictions.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(Notebook notebook) {
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
        if (!getClass().equals(notebook.getClass())) {
            return getClass().getName().compareTo(notebook.getClass().getName());
        }
        int compareTo15 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(notebook.isSetGuid()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (isSetGuid() && (compareTo14 = TBaseHelper.compareTo(this.guid, notebook.guid)) != 0) {
            return compareTo14;
        }
        int compareTo16 = Boolean.valueOf(isSetName()).compareTo(Boolean.valueOf(notebook.isSetName()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (isSetName() && (compareTo13 = TBaseHelper.compareTo(this.name, notebook.name)) != 0) {
            return compareTo13;
        }
        int compareTo17 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(notebook.isSetUpdateSequenceNum()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (isSetUpdateSequenceNum() && (compareTo12 = TBaseHelper.compareTo(this.updateSequenceNum, notebook.updateSequenceNum)) != 0) {
            return compareTo12;
        }
        int compareTo18 = Boolean.valueOf(isSetDefaultNotebook()).compareTo(Boolean.valueOf(notebook.isSetDefaultNotebook()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (isSetDefaultNotebook() && (compareTo11 = TBaseHelper.compareTo(this.defaultNotebook, notebook.defaultNotebook)) != 0) {
            return compareTo11;
        }
        int compareTo19 = Boolean.valueOf(isSetServiceCreated()).compareTo(Boolean.valueOf(notebook.isSetServiceCreated()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (isSetServiceCreated() && (compareTo10 = TBaseHelper.compareTo(this.serviceCreated, notebook.serviceCreated)) != 0) {
            return compareTo10;
        }
        int compareTo20 = Boolean.valueOf(isSetServiceUpdated()).compareTo(Boolean.valueOf(notebook.isSetServiceUpdated()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (isSetServiceUpdated() && (compareTo9 = TBaseHelper.compareTo(this.serviceUpdated, notebook.serviceUpdated)) != 0) {
            return compareTo9;
        }
        int compareTo21 = Boolean.valueOf(isSetPublishing()).compareTo(Boolean.valueOf(notebook.isSetPublishing()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (isSetPublishing() && (compareTo8 = TBaseHelper.compareTo((Comparable) this.publishing, (Comparable) notebook.publishing)) != 0) {
            return compareTo8;
        }
        int compareTo22 = Boolean.valueOf(isSetPublished()).compareTo(Boolean.valueOf(notebook.isSetPublished()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (isSetPublished() && (compareTo7 = TBaseHelper.compareTo(this.published, notebook.published)) != 0) {
            return compareTo7;
        }
        int compareTo23 = Boolean.valueOf(isSetStack()).compareTo(Boolean.valueOf(notebook.isSetStack()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (isSetStack() && (compareTo6 = TBaseHelper.compareTo(this.stack, notebook.stack)) != 0) {
            return compareTo6;
        }
        int compareTo24 = Boolean.valueOf(isSetSharedNotebookIds()).compareTo(Boolean.valueOf(notebook.isSetSharedNotebookIds()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (isSetSharedNotebookIds() && (compareTo5 = TBaseHelper.compareTo((List) this.sharedNotebookIds, (List) notebook.sharedNotebookIds)) != 0) {
            return compareTo5;
        }
        int compareTo25 = Boolean.valueOf(isSetSharedNotebooks()).compareTo(Boolean.valueOf(notebook.isSetSharedNotebooks()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (isSetSharedNotebooks() && (compareTo4 = TBaseHelper.compareTo((List) this.sharedNotebooks, (List) notebook.sharedNotebooks)) != 0) {
            return compareTo4;
        }
        int compareTo26 = Boolean.valueOf(isSetBusinessNotebook()).compareTo(Boolean.valueOf(notebook.isSetBusinessNotebook()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (isSetBusinessNotebook() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.businessNotebook, (Comparable) notebook.businessNotebook)) != 0) {
            return compareTo3;
        }
        int compareTo27 = Boolean.valueOf(isSetContact()).compareTo(Boolean.valueOf(notebook.isSetContact()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (isSetContact() && (compareTo2 = TBaseHelper.compareTo((Comparable) this.contact, (Comparable) notebook.contact)) != 0) {
            return compareTo2;
        }
        int compareTo28 = Boolean.valueOf(isSetRestrictions()).compareTo(Boolean.valueOf(notebook.isSetRestrictions()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (!isSetRestrictions() || (compareTo = TBaseHelper.compareTo((Comparable) this.restrictions, (Comparable) notebook.restrictions)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<Notebook> deepCopy2() {
        return new Notebook(this);
    }

    public Notebook(Notebook notebook) {
        boolean[] zArr = new boolean[5];
        this.__isset_vector = zArr;
        boolean[] zArr2 = notebook.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (notebook.isSetGuid()) {
            this.guid = notebook.guid;
        }
        if (notebook.isSetName()) {
            this.name = notebook.name;
        }
        this.updateSequenceNum = notebook.updateSequenceNum;
        this.defaultNotebook = notebook.defaultNotebook;
        this.serviceCreated = notebook.serviceCreated;
        this.serviceUpdated = notebook.serviceUpdated;
        if (notebook.isSetPublishing()) {
            this.publishing = new Publishing(notebook.publishing);
        }
        this.published = notebook.published;
        if (notebook.isSetStack()) {
            this.stack = notebook.stack;
        }
        if (notebook.isSetSharedNotebookIds()) {
            ArrayList arrayList = new ArrayList();
            Iterator<Long> it2 = notebook.sharedNotebookIds.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            this.sharedNotebookIds = arrayList;
        }
        if (notebook.isSetSharedNotebooks()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator<SharedNotebook> it3 = notebook.sharedNotebooks.iterator();
            while (it3.hasNext()) {
                arrayList2.add(new SharedNotebook(it3.next()));
            }
            this.sharedNotebooks = arrayList2;
        }
        if (notebook.isSetBusinessNotebook()) {
            this.businessNotebook = new BusinessNotebook(notebook.businessNotebook);
        }
        if (notebook.isSetContact()) {
            this.contact = new User(notebook.contact);
        }
        if (notebook.isSetRestrictions()) {
            this.restrictions = new NotebookRestrictions(notebook.restrictions);
        }
    }

    public boolean equals(Notebook notebook) {
        if (notebook == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = notebook.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(notebook.guid))) {
            return false;
        }
        boolean isSetName = isSetName();
        boolean isSetName2 = notebook.isSetName();
        if ((isSetName || isSetName2) && !(isSetName && isSetName2 && this.name.equals(notebook.name))) {
            return false;
        }
        boolean isSetUpdateSequenceNum = isSetUpdateSequenceNum();
        boolean isSetUpdateSequenceNum2 = notebook.isSetUpdateSequenceNum();
        if ((isSetUpdateSequenceNum || isSetUpdateSequenceNum2) && !(isSetUpdateSequenceNum && isSetUpdateSequenceNum2 && this.updateSequenceNum == notebook.updateSequenceNum)) {
            return false;
        }
        boolean isSetDefaultNotebook = isSetDefaultNotebook();
        boolean isSetDefaultNotebook2 = notebook.isSetDefaultNotebook();
        if ((isSetDefaultNotebook || isSetDefaultNotebook2) && !(isSetDefaultNotebook && isSetDefaultNotebook2 && this.defaultNotebook == notebook.defaultNotebook)) {
            return false;
        }
        boolean isSetServiceCreated = isSetServiceCreated();
        boolean isSetServiceCreated2 = notebook.isSetServiceCreated();
        if ((isSetServiceCreated || isSetServiceCreated2) && !(isSetServiceCreated && isSetServiceCreated2 && this.serviceCreated == notebook.serviceCreated)) {
            return false;
        }
        boolean isSetServiceUpdated = isSetServiceUpdated();
        boolean isSetServiceUpdated2 = notebook.isSetServiceUpdated();
        if ((isSetServiceUpdated || isSetServiceUpdated2) && !(isSetServiceUpdated && isSetServiceUpdated2 && this.serviceUpdated == notebook.serviceUpdated)) {
            return false;
        }
        boolean isSetPublishing = isSetPublishing();
        boolean isSetPublishing2 = notebook.isSetPublishing();
        if ((isSetPublishing || isSetPublishing2) && !(isSetPublishing && isSetPublishing2 && this.publishing.equals(notebook.publishing))) {
            return false;
        }
        boolean isSetPublished = isSetPublished();
        boolean isSetPublished2 = notebook.isSetPublished();
        if ((isSetPublished || isSetPublished2) && !(isSetPublished && isSetPublished2 && this.published == notebook.published)) {
            return false;
        }
        boolean isSetStack = isSetStack();
        boolean isSetStack2 = notebook.isSetStack();
        if ((isSetStack || isSetStack2) && !(isSetStack && isSetStack2 && this.stack.equals(notebook.stack))) {
            return false;
        }
        boolean isSetSharedNotebookIds = isSetSharedNotebookIds();
        boolean isSetSharedNotebookIds2 = notebook.isSetSharedNotebookIds();
        if ((isSetSharedNotebookIds || isSetSharedNotebookIds2) && !(isSetSharedNotebookIds && isSetSharedNotebookIds2 && this.sharedNotebookIds.equals(notebook.sharedNotebookIds))) {
            return false;
        }
        boolean isSetSharedNotebooks = isSetSharedNotebooks();
        boolean isSetSharedNotebooks2 = notebook.isSetSharedNotebooks();
        if ((isSetSharedNotebooks || isSetSharedNotebooks2) && !(isSetSharedNotebooks && isSetSharedNotebooks2 && this.sharedNotebooks.equals(notebook.sharedNotebooks))) {
            return false;
        }
        boolean isSetBusinessNotebook = isSetBusinessNotebook();
        boolean isSetBusinessNotebook2 = notebook.isSetBusinessNotebook();
        if ((isSetBusinessNotebook || isSetBusinessNotebook2) && !(isSetBusinessNotebook && isSetBusinessNotebook2 && this.businessNotebook.equals(notebook.businessNotebook))) {
            return false;
        }
        boolean isSetContact = isSetContact();
        boolean isSetContact2 = notebook.isSetContact();
        if ((isSetContact || isSetContact2) && !(isSetContact && isSetContact2 && this.contact.equals(notebook.contact))) {
            return false;
        }
        boolean isSetRestrictions = isSetRestrictions();
        boolean isSetRestrictions2 = notebook.isSetRestrictions();
        if (isSetRestrictions || isSetRestrictions2) {
            return isSetRestrictions && isSetRestrictions2 && this.restrictions.equals(notebook.restrictions);
        }
        return true;
    }
}
