package com.evernote.thrift.protocol;

/* loaded from: classes4.dex */
public class TField {

    /* renamed from: id */
    public final short f21203id;
    public final String name;
    public final byte type;

    public TField() {
        this("", (byte) 0, (short) 0);
    }

    public boolean equals(TField tField) {
        return this.type == tField.type && this.f21203id == tField.f21203id;
    }

    public String toString() {
        return "<TField name:'" + this.name + "' type:" + ((int) this.type) + " field-id:" + ((int) this.f21203id) + ">";
    }

    public TField(String str, byte b, short s) {
        this.name = str;
        this.type = b;
        this.f21203id = s;
    }
}
