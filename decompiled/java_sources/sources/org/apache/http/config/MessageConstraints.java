package org.apache.http.config;

import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.util.Args;

/* loaded from: classes12.dex */
public class MessageConstraints implements Cloneable {
    public static final MessageConstraints DEFAULT = new Builder().build();

    /* renamed from: e */
    public final int f110259e;

    /* renamed from: f */
    public final int f110260f;

    /* loaded from: classes12.dex */
    public static class Builder {

        /* renamed from: a */
        public int f110261a = -1;

        /* renamed from: b */
        public int f110262b = -1;

        public MessageConstraints build() {
            return new MessageConstraints(this.f110261a, this.f110262b);
        }

        public Builder setMaxHeaderCount(int i) {
            this.f110262b = i;
            return this;
        }

        public Builder setMaxLineLength(int i) {
            this.f110261a = i;
            return this;
        }
    }

    public MessageConstraints(int i, int i2) {
        this.f110259e = i;
        this.f110260f = i2;
    }

    public static Builder copy(MessageConstraints messageConstraints) {
        Args.notNull(messageConstraints, "Message constraints");
        return new Builder().setMaxHeaderCount(messageConstraints.getMaxHeaderCount()).setMaxLineLength(messageConstraints.getMaxLineLength());
    }

    public static Builder custom() {
        return new Builder();
    }

    public static MessageConstraints lineLen(int i) {
        return new MessageConstraints(Args.notNegative(i, "Max line length"), -1);
    }

    public int getMaxHeaderCount() {
        return this.f110260f;
    }

    public int getMaxLineLength() {
        return this.f110259e;
    }

    public String toString() {
        return "[maxLineLength=" + this.f110259e + ", maxHeaderCount=" + this.f110260f + IteratorUtils.f104924b;
    }

    public MessageConstraints clone() throws CloneNotSupportedException {
        return (MessageConstraints) super.clone();
    }
}
