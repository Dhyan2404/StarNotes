package com.evernote.edam.type;

import com.evernote.thrift.TBase;
import com.evernote.thrift.TBaseHelper;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TProtocolUtil;
import com.evernote.thrift.protocol.TStruct;
import com.google.android.gms.actions.SearchIntents;
import com.google.android.material.motion.MotionUtils;
import java.io.Serializable;

/* loaded from: classes4.dex */
public class SavedSearch implements TBase<SavedSearch>, Serializable, Cloneable {
    private static final int __UPDATESEQUENCENUM_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private QueryFormat format;
    private String guid;
    private String name;
    private String query;
    private SavedSearchScope scope;
    private int updateSequenceNum;
    private static final TStruct STRUCT_DESC = new TStruct("SavedSearch");
    private static final TField GUID_FIELD_DESC = new TField("guid", (byte) 11, 1);
    private static final TField NAME_FIELD_DESC = new TField("name", (byte) 11, 2);
    private static final TField QUERY_FIELD_DESC = new TField(SearchIntents.EXTRA_QUERY, (byte) 11, 3);
    private static final TField FORMAT_FIELD_DESC = new TField(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT, (byte) 8, 4);
    private static final TField UPDATE_SEQUENCE_NUM_FIELD_DESC = new TField("updateSequenceNum", (byte) 8, 5);
    private static final TField SCOPE_FIELD_DESC = new TField("scope", (byte) 12, 6);

    public SavedSearch() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.guid = null;
        this.name = null;
        this.query = null;
        this.format = null;
        setUpdateSequenceNumIsSet(false);
        this.updateSequenceNum = 0;
        this.scope = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof SavedSearch)) {
            return equals((SavedSearch) obj);
        }
        return false;
    }

    public QueryFormat getFormat() {
        return this.format;
    }

    public String getGuid() {
        return this.guid;
    }

    public String getName() {
        return this.name;
    }

    public String getQuery() {
        return this.query;
    }

    public SavedSearchScope getScope() {
        return this.scope;
    }

    public int getUpdateSequenceNum() {
        return this.updateSequenceNum;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isSetFormat() {
        return this.format != null;
    }

    public boolean isSetGuid() {
        return this.guid != null;
    }

    public boolean isSetName() {
        return this.name != null;
    }

    public boolean isSetQuery() {
        return this.query != null;
    }

    public boolean isSetScope() {
        return this.scope != null;
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
                    if (b != 11) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.query = tProtocol.readString();
                        break;
                    }
                case 4:
                    if (b != 8) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        this.format = QueryFormat.findByValue(tProtocol.readI32());
                        break;
                    }
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
                    if (b != 12) {
                        TProtocolUtil.skip(tProtocol, b);
                        break;
                    } else {
                        SavedSearchScope savedSearchScope = new SavedSearchScope();
                        this.scope = savedSearchScope;
                        savedSearchScope.read(tProtocol);
                        break;
                    }
                default:
                    TProtocolUtil.skip(tProtocol, b);
                    break;
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setFormat(QueryFormat queryFormat) {
        this.format = queryFormat;
    }

    public void setFormatIsSet(boolean z) {
        if (z) {
            return;
        }
        this.format = null;
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

    public void setQuery(String str) {
        this.query = str;
    }

    public void setQueryIsSet(boolean z) {
        if (z) {
            return;
        }
        this.query = null;
    }

    public void setScope(SavedSearchScope savedSearchScope) {
        this.scope = savedSearchScope;
    }

    public void setScopeIsSet(boolean z) {
        if (z) {
            return;
        }
        this.scope = null;
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
        StringBuilder sb = new StringBuilder("SavedSearch(");
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
        if (isSetQuery()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("query:");
            String str3 = this.query;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (isSetFormat()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("format:");
            QueryFormat queryFormat = this.format;
            if (queryFormat == null) {
                sb.append("null");
            } else {
                sb.append(queryFormat);
            }
            z = false;
        }
        if (isSetUpdateSequenceNum()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("updateSequenceNum:");
            sb.append(this.updateSequenceNum);
        } else {
            z2 = z;
        }
        if (isSetScope()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("scope:");
            SavedSearchScope savedSearchScope = this.scope;
            if (savedSearchScope == null) {
                sb.append("null");
            } else {
                sb.append(savedSearchScope);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetFormat() {
        this.format = null;
    }

    public void unsetGuid() {
        this.guid = null;
    }

    public void unsetName() {
        this.name = null;
    }

    public void unsetQuery() {
        this.query = null;
    }

    public void unsetScope() {
        this.scope = null;
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
        if (this.query != null && isSetQuery()) {
            tProtocol.writeFieldBegin(QUERY_FIELD_DESC);
            tProtocol.writeString(this.query);
            tProtocol.writeFieldEnd();
        }
        if (this.format != null && isSetFormat()) {
            tProtocol.writeFieldBegin(FORMAT_FIELD_DESC);
            tProtocol.writeI32(this.format.getValue());
            tProtocol.writeFieldEnd();
        }
        if (isSetUpdateSequenceNum()) {
            tProtocol.writeFieldBegin(UPDATE_SEQUENCE_NUM_FIELD_DESC);
            tProtocol.writeI32(this.updateSequenceNum);
            tProtocol.writeFieldEnd();
        }
        if (this.scope != null && isSetScope()) {
            tProtocol.writeFieldBegin(SCOPE_FIELD_DESC);
            this.scope.write(tProtocol);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(SavedSearch savedSearch) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        int compareTo5;
        int compareTo6;
        if (!getClass().equals(savedSearch.getClass())) {
            return getClass().getName().compareTo(savedSearch.getClass().getName());
        }
        int compareTo7 = Boolean.valueOf(isSetGuid()).compareTo(Boolean.valueOf(savedSearch.isSetGuid()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetGuid() && (compareTo6 = TBaseHelper.compareTo(this.guid, savedSearch.guid)) != 0) {
            return compareTo6;
        }
        int compareTo8 = Boolean.valueOf(isSetName()).compareTo(Boolean.valueOf(savedSearch.isSetName()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (isSetName() && (compareTo5 = TBaseHelper.compareTo(this.name, savedSearch.name)) != 0) {
            return compareTo5;
        }
        int compareTo9 = Boolean.valueOf(isSetQuery()).compareTo(Boolean.valueOf(savedSearch.isSetQuery()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (isSetQuery() && (compareTo4 = TBaseHelper.compareTo(this.query, savedSearch.query)) != 0) {
            return compareTo4;
        }
        int compareTo10 = Boolean.valueOf(isSetFormat()).compareTo(Boolean.valueOf(savedSearch.isSetFormat()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (isSetFormat() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.format, (Comparable) savedSearch.format)) != 0) {
            return compareTo3;
        }
        int compareTo11 = Boolean.valueOf(isSetUpdateSequenceNum()).compareTo(Boolean.valueOf(savedSearch.isSetUpdateSequenceNum()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (isSetUpdateSequenceNum() && (compareTo2 = TBaseHelper.compareTo(this.updateSequenceNum, savedSearch.updateSequenceNum)) != 0) {
            return compareTo2;
        }
        int compareTo12 = Boolean.valueOf(isSetScope()).compareTo(Boolean.valueOf(savedSearch.isSetScope()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (!isSetScope() || (compareTo = TBaseHelper.compareTo((Comparable) this.scope, (Comparable) savedSearch.scope)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<SavedSearch> deepCopy2() {
        return new SavedSearch(this);
    }

    public SavedSearch(SavedSearch savedSearch) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = savedSearch.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (savedSearch.isSetGuid()) {
            this.guid = savedSearch.guid;
        }
        if (savedSearch.isSetName()) {
            this.name = savedSearch.name;
        }
        if (savedSearch.isSetQuery()) {
            this.query = savedSearch.query;
        }
        if (savedSearch.isSetFormat()) {
            this.format = savedSearch.format;
        }
        this.updateSequenceNum = savedSearch.updateSequenceNum;
        if (savedSearch.isSetScope()) {
            this.scope = new SavedSearchScope(savedSearch.scope);
        }
    }

    public boolean equals(SavedSearch savedSearch) {
        if (savedSearch == null) {
            return false;
        }
        boolean isSetGuid = isSetGuid();
        boolean isSetGuid2 = savedSearch.isSetGuid();
        if ((isSetGuid || isSetGuid2) && !(isSetGuid && isSetGuid2 && this.guid.equals(savedSearch.guid))) {
            return false;
        }
        boolean isSetName = isSetName();
        boolean isSetName2 = savedSearch.isSetName();
        if ((isSetName || isSetName2) && !(isSetName && isSetName2 && this.name.equals(savedSearch.name))) {
            return false;
        }
        boolean isSetQuery = isSetQuery();
        boolean isSetQuery2 = savedSearch.isSetQuery();
        if ((isSetQuery || isSetQuery2) && !(isSetQuery && isSetQuery2 && this.query.equals(savedSearch.query))) {
            return false;
        }
        boolean isSetFormat = isSetFormat();
        boolean isSetFormat2 = savedSearch.isSetFormat();
        if ((isSetFormat || isSetFormat2) && !(isSetFormat && isSetFormat2 && this.format.equals(savedSearch.format))) {
            return false;
        }
        boolean isSetUpdateSequenceNum = isSetUpdateSequenceNum();
        boolean isSetUpdateSequenceNum2 = savedSearch.isSetUpdateSequenceNum();
        if ((isSetUpdateSequenceNum || isSetUpdateSequenceNum2) && !(isSetUpdateSequenceNum && isSetUpdateSequenceNum2 && this.updateSequenceNum == savedSearch.updateSequenceNum)) {
            return false;
        }
        boolean isSetScope = isSetScope();
        boolean isSetScope2 = savedSearch.isSetScope();
        if (isSetScope || isSetScope2) {
            return isSetScope && isSetScope2 && this.scope.equals(savedSearch.scope);
        }
        return true;
    }
}
