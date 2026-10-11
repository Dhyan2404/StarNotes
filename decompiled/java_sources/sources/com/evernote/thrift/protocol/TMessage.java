package com.evernote.thrift.protocol;

/* loaded from: classes4.dex */
public final class TMessage {
    public final String name;
    public final int seqid;
    public final byte type;

    public TMessage() {
        this("", (byte) 0, 0);
    }

    public boolean equals(Object obj) {
        if (obj instanceof TMessage) {
            return equals((TMessage) obj);
        }
        return false;
    }

    public String toString() {
        return "<TMessage name:'" + this.name + "' type: " + ((int) this.type) + " seqid:" + this.seqid + ">";
    }

    public TMessage(String str, byte b, int i) {
        this.name = str;
        this.type = b;
        this.seqid = i;
    }

    public boolean equals(TMessage tMessage) {
        return this.name.equals(tMessage.name) && this.type == tMessage.type && this.seqid == tMessage.seqid;
    }
}
