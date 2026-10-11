package com.evernote.edam.type;

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
public class SavedSearchScope implements TBase<SavedSearchScope>, Serializable, Cloneable {
    private static final int __INCLUDEACCOUNT_ISSET_ID = 0;
    private static final int __INCLUDEBUSINESSLINKEDNOTEBOOKS_ISSET_ID = 2;
    private static final int __INCLUDEPERSONALLINKEDNOTEBOOKS_ISSET_ID = 1;
    private boolean[] __isset_vector;
    private boolean includeAccount;
    private boolean includeBusinessLinkedNotebooks;
    private boolean includePersonalLinkedNotebooks;
    private static final TStruct STRUCT_DESC = new TStruct("SavedSearchScope");
    private static final TField INCLUDE_ACCOUNT_FIELD_DESC = new TField("includeAccount", (byte) 2, 1);
    private static final TField INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC = new TField("includePersonalLinkedNotebooks", (byte) 2, 2);
    private static final TField INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC = new TField("includeBusinessLinkedNotebooks", (byte) 2, 3);

    public SavedSearchScope() {
        this.__isset_vector = new boolean[3];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        setIncludeAccountIsSet(false);
        this.includeAccount = false;
        setIncludePersonalLinkedNotebooksIsSet(false);
        this.includePersonalLinkedNotebooks = false;
        setIncludeBusinessLinkedNotebooksIsSet(false);
        this.includeBusinessLinkedNotebooks = false;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof SavedSearchScope)) {
            return equals((SavedSearchScope) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isIncludeAccount() {
        return this.includeAccount;
    }

    public boolean isIncludeBusinessLinkedNotebooks() {
        return this.includeBusinessLinkedNotebooks;
    }

    public boolean isIncludePersonalLinkedNotebooks() {
        return this.includePersonalLinkedNotebooks;
    }

    public boolean isSetIncludeAccount() {
        return this.__isset_vector[0];
    }

    public boolean isSetIncludeBusinessLinkedNotebooks() {
        return this.__isset_vector[2];
    }

    public boolean isSetIncludePersonalLinkedNotebooks() {
        return this.__isset_vector[1];
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
                    if (s != 3) {
                        TProtocolUtil.skip(tProtocol, b);
                    } else if (b == 2) {
                        this.includeBusinessLinkedNotebooks = tProtocol.readBool();
                        setIncludeBusinessLinkedNotebooksIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 2) {
                    this.includePersonalLinkedNotebooks = tProtocol.readBool();
                    setIncludePersonalLinkedNotebooksIsSet(true);
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 2) {
                this.includeAccount = tProtocol.readBool();
                setIncludeAccountIsSet(true);
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setIncludeAccount(boolean z) {
        this.includeAccount = z;
        setIncludeAccountIsSet(true);
    }

    public void setIncludeAccountIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setIncludeBusinessLinkedNotebooks(boolean z) {
        this.includeBusinessLinkedNotebooks = z;
        setIncludeBusinessLinkedNotebooksIsSet(true);
    }

    public void setIncludeBusinessLinkedNotebooksIsSet(boolean z) {
        this.__isset_vector[2] = z;
    }

    public void setIncludePersonalLinkedNotebooks(boolean z) {
        this.includePersonalLinkedNotebooks = z;
        setIncludePersonalLinkedNotebooksIsSet(true);
    }

    public void setIncludePersonalLinkedNotebooksIsSet(boolean z) {
        this.__isset_vector[1] = z;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("SavedSearchScope(");
        boolean z2 = false;
        if (isSetIncludeAccount()) {
            sb.append("includeAccount:");
            sb.append(this.includeAccount);
            z = false;
        } else {
            z = true;
        }
        if (isSetIncludePersonalLinkedNotebooks()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("includePersonalLinkedNotebooks:");
            sb.append(this.includePersonalLinkedNotebooks);
        } else {
            z2 = z;
        }
        if (isSetIncludeBusinessLinkedNotebooks()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("includeBusinessLinkedNotebooks:");
            sb.append(this.includeBusinessLinkedNotebooks);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetIncludeAccount() {
        this.__isset_vector[0] = false;
    }

    public void unsetIncludeBusinessLinkedNotebooks() {
        this.__isset_vector[2] = false;
    }

    public void unsetIncludePersonalLinkedNotebooks() {
        this.__isset_vector[1] = false;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (isSetIncludeAccount()) {
            tProtocol.writeFieldBegin(INCLUDE_ACCOUNT_FIELD_DESC);
            tProtocol.writeBool(this.includeAccount);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludePersonalLinkedNotebooks()) {
            tProtocol.writeFieldBegin(INCLUDE_PERSONAL_LINKED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.includePersonalLinkedNotebooks);
            tProtocol.writeFieldEnd();
        }
        if (isSetIncludeBusinessLinkedNotebooks()) {
            tProtocol.writeFieldBegin(INCLUDE_BUSINESS_LINKED_NOTEBOOKS_FIELD_DESC);
            tProtocol.writeBool(this.includeBusinessLinkedNotebooks);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(SavedSearchScope savedSearchScope) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        if (!getClass().equals(savedSearchScope.getClass())) {
            return getClass().getName().compareTo(savedSearchScope.getClass().getName());
        }
        int compareTo4 = Boolean.valueOf(isSetIncludeAccount()).compareTo(Boolean.valueOf(savedSearchScope.isSetIncludeAccount()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (isSetIncludeAccount() && (compareTo3 = TBaseHelper.compareTo(this.includeAccount, savedSearchScope.includeAccount)) != 0) {
            return compareTo3;
        }
        int compareTo5 = Boolean.valueOf(isSetIncludePersonalLinkedNotebooks()).compareTo(Boolean.valueOf(savedSearchScope.isSetIncludePersonalLinkedNotebooks()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetIncludePersonalLinkedNotebooks() && (compareTo2 = TBaseHelper.compareTo(this.includePersonalLinkedNotebooks, savedSearchScope.includePersonalLinkedNotebooks)) != 0) {
            return compareTo2;
        }
        int compareTo6 = Boolean.valueOf(isSetIncludeBusinessLinkedNotebooks()).compareTo(Boolean.valueOf(savedSearchScope.isSetIncludeBusinessLinkedNotebooks()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (!isSetIncludeBusinessLinkedNotebooks() || (compareTo = TBaseHelper.compareTo(this.includeBusinessLinkedNotebooks, savedSearchScope.includeBusinessLinkedNotebooks)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<SavedSearchScope> deepCopy2() {
        return new SavedSearchScope(this);
    }

    public SavedSearchScope(SavedSearchScope savedSearchScope) {
        boolean[] zArr = new boolean[3];
        this.__isset_vector = zArr;
        boolean[] zArr2 = savedSearchScope.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        this.includeAccount = savedSearchScope.includeAccount;
        this.includePersonalLinkedNotebooks = savedSearchScope.includePersonalLinkedNotebooks;
        this.includeBusinessLinkedNotebooks = savedSearchScope.includeBusinessLinkedNotebooks;
    }

    public boolean equals(SavedSearchScope savedSearchScope) {
        if (savedSearchScope == null) {
            return false;
        }
        boolean isSetIncludeAccount = isSetIncludeAccount();
        boolean isSetIncludeAccount2 = savedSearchScope.isSetIncludeAccount();
        if ((isSetIncludeAccount || isSetIncludeAccount2) && !(isSetIncludeAccount && isSetIncludeAccount2 && this.includeAccount == savedSearchScope.includeAccount)) {
            return false;
        }
        boolean isSetIncludePersonalLinkedNotebooks = isSetIncludePersonalLinkedNotebooks();
        boolean isSetIncludePersonalLinkedNotebooks2 = savedSearchScope.isSetIncludePersonalLinkedNotebooks();
        if ((isSetIncludePersonalLinkedNotebooks || isSetIncludePersonalLinkedNotebooks2) && !(isSetIncludePersonalLinkedNotebooks && isSetIncludePersonalLinkedNotebooks2 && this.includePersonalLinkedNotebooks == savedSearchScope.includePersonalLinkedNotebooks)) {
            return false;
        }
        boolean isSetIncludeBusinessLinkedNotebooks = isSetIncludeBusinessLinkedNotebooks();
        boolean isSetIncludeBusinessLinkedNotebooks2 = savedSearchScope.isSetIncludeBusinessLinkedNotebooks();
        if (isSetIncludeBusinessLinkedNotebooks || isSetIncludeBusinessLinkedNotebooks2) {
            return isSetIncludeBusinessLinkedNotebooks && isSetIncludeBusinessLinkedNotebooks2 && this.includeBusinessLinkedNotebooks == savedSearchScope.includeBusinessLinkedNotebooks;
        }
        return true;
    }
}
