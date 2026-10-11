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
public class Publishing implements TBase<Publishing>, Serializable, Cloneable {
    private static final int __ASCENDING_ISSET_ID = 0;
    private boolean[] __isset_vector;
    private boolean ascending;
    private NoteSortOrder order;
    private String publicDescription;
    private String uri;
    private static final TStruct STRUCT_DESC = new TStruct("Publishing");
    private static final TField URI_FIELD_DESC = new TField("uri", (byte) 11, 1);
    private static final TField ORDER_FIELD_DESC = new TField(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER, (byte) 8, 2);
    private static final TField ASCENDING_FIELD_DESC = new TField(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_ORDER_ASCENDING, (byte) 2, 3);
    private static final TField PUBLIC_DESCRIPTION_FIELD_DESC = new TField("publicDescription", (byte) 11, 4);

    public Publishing() {
        this.__isset_vector = new boolean[1];
    }

    @Override // com.evernote.thrift.TBase
    public void clear() {
        this.uri = null;
        this.order = null;
        setAscendingIsSet(false);
        this.ascending = false;
        this.publicDescription = null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof Publishing)) {
            return equals((Publishing) obj);
        }
        return false;
    }

    public NoteSortOrder getOrder() {
        return this.order;
    }

    public String getPublicDescription() {
        return this.publicDescription;
    }

    public String getUri() {
        return this.uri;
    }

    public int hashCode() {
        return 0;
    }

    public boolean isAscending() {
        return this.ascending;
    }

    public boolean isSetAscending() {
        return this.__isset_vector[0];
    }

    public boolean isSetOrder() {
        return this.order != null;
    }

    public boolean isSetPublicDescription() {
        return this.publicDescription != null;
    }

    public boolean isSetUri() {
        return this.uri != null;
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
                        if (s != 4) {
                            TProtocolUtil.skip(tProtocol, b);
                        } else if (b == 11) {
                            this.publicDescription = tProtocol.readString();
                        } else {
                            TProtocolUtil.skip(tProtocol, b);
                        }
                    } else if (b == 2) {
                        this.ascending = tProtocol.readBool();
                        setAscendingIsSet(true);
                    } else {
                        TProtocolUtil.skip(tProtocol, b);
                    }
                } else if (b == 8) {
                    this.order = NoteSortOrder.findByValue(tProtocol.readI32());
                } else {
                    TProtocolUtil.skip(tProtocol, b);
                }
            } else if (b == 11) {
                this.uri = tProtocol.readString();
            } else {
                TProtocolUtil.skip(tProtocol, b);
            }
            tProtocol.readFieldEnd();
        }
    }

    public void setAscending(boolean z) {
        this.ascending = z;
        setAscendingIsSet(true);
    }

    public void setAscendingIsSet(boolean z) {
        this.__isset_vector[0] = z;
    }

    public void setOrder(NoteSortOrder noteSortOrder) {
        this.order = noteSortOrder;
    }

    public void setOrderIsSet(boolean z) {
        if (z) {
            return;
        }
        this.order = null;
    }

    public void setPublicDescription(String str) {
        this.publicDescription = str;
    }

    public void setPublicDescriptionIsSet(boolean z) {
        if (z) {
            return;
        }
        this.publicDescription = null;
    }

    public void setUri(String str) {
        this.uri = str;
    }

    public void setUriIsSet(boolean z) {
        if (z) {
            return;
        }
        this.uri = null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("Publishing(");
        boolean z2 = false;
        if (isSetUri()) {
            sb.append("uri:");
            String str = this.uri;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (isSetOrder()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("order:");
            NoteSortOrder noteSortOrder = this.order;
            if (noteSortOrder == null) {
                sb.append("null");
            } else {
                sb.append(noteSortOrder);
            }
            z = false;
        }
        if (isSetAscending()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("ascending:");
            sb.append(this.ascending);
        } else {
            z2 = z;
        }
        if (isSetPublicDescription()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("publicDescription:");
            String str2 = this.publicDescription;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public void unsetAscending() {
        this.__isset_vector[0] = false;
    }

    public void unsetOrder() {
        this.order = null;
    }

    public void unsetPublicDescription() {
        this.publicDescription = null;
    }

    public void unsetUri() {
        this.uri = null;
    }

    public void validate() throws TException {
    }

    @Override // com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (this.uri != null && isSetUri()) {
            tProtocol.writeFieldBegin(URI_FIELD_DESC);
            tProtocol.writeString(this.uri);
            tProtocol.writeFieldEnd();
        }
        if (this.order != null && isSetOrder()) {
            tProtocol.writeFieldBegin(ORDER_FIELD_DESC);
            tProtocol.writeI32(this.order.getValue());
            tProtocol.writeFieldEnd();
        }
        if (isSetAscending()) {
            tProtocol.writeFieldBegin(ASCENDING_FIELD_DESC);
            tProtocol.writeBool(this.ascending);
            tProtocol.writeFieldEnd();
        }
        if (this.publicDescription != null && isSetPublicDescription()) {
            tProtocol.writeFieldBegin(PUBLIC_DESCRIPTION_FIELD_DESC);
            tProtocol.writeString(this.publicDescription);
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }

    @Override // java.lang.Comparable
    public int compareTo(Publishing publishing) {
        int compareTo;
        int compareTo2;
        int compareTo3;
        int compareTo4;
        if (!getClass().equals(publishing.getClass())) {
            return getClass().getName().compareTo(publishing.getClass().getName());
        }
        int compareTo5 = Boolean.valueOf(isSetUri()).compareTo(Boolean.valueOf(publishing.isSetUri()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (isSetUri() && (compareTo4 = TBaseHelper.compareTo(this.uri, publishing.uri)) != 0) {
            return compareTo4;
        }
        int compareTo6 = Boolean.valueOf(isSetOrder()).compareTo(Boolean.valueOf(publishing.isSetOrder()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (isSetOrder() && (compareTo3 = TBaseHelper.compareTo((Comparable) this.order, (Comparable) publishing.order)) != 0) {
            return compareTo3;
        }
        int compareTo7 = Boolean.valueOf(isSetAscending()).compareTo(Boolean.valueOf(publishing.isSetAscending()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (isSetAscending() && (compareTo2 = TBaseHelper.compareTo(this.ascending, publishing.ascending)) != 0) {
            return compareTo2;
        }
        int compareTo8 = Boolean.valueOf(isSetPublicDescription()).compareTo(Boolean.valueOf(publishing.isSetPublicDescription()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!isSetPublicDescription() || (compareTo = TBaseHelper.compareTo(this.publicDescription, publishing.publicDescription)) == 0) {
            return 0;
        }
        return compareTo;
    }

    @Override // com.evernote.thrift.TBase
    /* renamed from: deepCopy */
    public TBase<Publishing> deepCopy2() {
        return new Publishing(this);
    }

    public Publishing(Publishing publishing) {
        boolean[] zArr = new boolean[1];
        this.__isset_vector = zArr;
        boolean[] zArr2 = publishing.__isset_vector;
        System.arraycopy(zArr2, 0, zArr, 0, zArr2.length);
        if (publishing.isSetUri()) {
            this.uri = publishing.uri;
        }
        if (publishing.isSetOrder()) {
            this.order = publishing.order;
        }
        this.ascending = publishing.ascending;
        if (publishing.isSetPublicDescription()) {
            this.publicDescription = publishing.publicDescription;
        }
    }

    public boolean equals(Publishing publishing) {
        if (publishing == null) {
            return false;
        }
        boolean isSetUri = isSetUri();
        boolean isSetUri2 = publishing.isSetUri();
        if ((isSetUri || isSetUri2) && !(isSetUri && isSetUri2 && this.uri.equals(publishing.uri))) {
            return false;
        }
        boolean isSetOrder = isSetOrder();
        boolean isSetOrder2 = publishing.isSetOrder();
        if ((isSetOrder || isSetOrder2) && !(isSetOrder && isSetOrder2 && this.order.equals(publishing.order))) {
            return false;
        }
        boolean isSetAscending = isSetAscending();
        boolean isSetAscending2 = publishing.isSetAscending();
        if ((isSetAscending || isSetAscending2) && !(isSetAscending && isSetAscending2 && this.ascending == publishing.ascending)) {
            return false;
        }
        boolean isSetPublicDescription = isSetPublicDescription();
        boolean isSetPublicDescription2 = publishing.isSetPublicDescription();
        if (isSetPublicDescription || isSetPublicDescription2) {
            return isSetPublicDescription && isSetPublicDescription2 && this.publicDescription.equals(publishing.publicDescription);
        }
        return true;
    }
}
