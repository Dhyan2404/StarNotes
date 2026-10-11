package org.apache.xerces.xni;

/* loaded from: classes13.dex */
public class QName implements Cloneable {
    public String localpart;
    public String prefix;
    public String rawname;
    public String uri;

    public QName() {
        clear();
    }

    public void clear() {
        this.prefix = null;
        this.localpart = null;
        this.rawname = null;
        this.uri = null;
    }

    public Object clone() {
        return new QName(this);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof QName)) {
            return false;
        }
        QName qName = (QName) obj;
        String str = qName.uri;
        return str != null ? this.uri == str && this.localpart == qName.localpart : this.uri == null && this.rawname == qName.rawname;
    }

    public int hashCode() {
        String str = this.uri;
        if (str != null) {
            int hashCode = str.hashCode();
            String str2 = this.localpart;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }
        String str3 = this.rawname;
        if (str3 != null) {
            return str3.hashCode();
        }
        return 0;
    }

    public void setValues(String str, String str2, String str3, String str4) {
        this.prefix = str;
        this.localpart = str2;
        this.rawname = str3;
        this.uri = str4;
    }

    public String toString() {
        boolean z;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z2 = true;
        if (this.prefix != null) {
            stringBuffer.append("prefix=\"");
            stringBuffer.append(this.prefix);
            stringBuffer.append('\"');
            z = true;
        } else {
            z = false;
        }
        if (this.localpart != null) {
            if (z) {
                stringBuffer.append(',');
            }
            stringBuffer.append("localpart=\"");
            stringBuffer.append(this.localpart);
            stringBuffer.append('\"');
            z = true;
        }
        if (this.rawname != null) {
            if (z) {
                stringBuffer.append(',');
            }
            stringBuffer.append("rawname=\"");
            stringBuffer.append(this.rawname);
            stringBuffer.append('\"');
        } else {
            z2 = z;
        }
        if (this.uri != null) {
            if (z2) {
                stringBuffer.append(',');
            }
            stringBuffer.append("uri=\"");
            stringBuffer.append(this.uri);
            stringBuffer.append('\"');
        }
        return stringBuffer.toString();
    }

    public QName(String str, String str2, String str3, String str4) {
        setValues(str, str2, str3, str4);
    }

    public void setValues(QName qName) {
        this.prefix = qName.prefix;
        this.localpart = qName.localpart;
        this.rawname = qName.rawname;
        this.uri = qName.uri;
    }

    public QName(QName qName) {
        setValues(qName);
    }
}
