package org.apache.http.config;

import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.http.Consts;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class ConnectionConfig implements Cloneable {
    public static final ConnectionConfig DEFAULT = new Builder().build();

    /* renamed from: e */
    public final int f110247e;

    /* renamed from: f */
    public final int f110248f;

    /* renamed from: g */
    public final Charset f110249g;

    /* renamed from: h */
    public final CodingErrorAction f110250h;

    /* renamed from: i */
    public final CodingErrorAction f110251i;

    /* renamed from: j */
    public final MessageConstraints f110252j;

    /* loaded from: classes12.dex */
    public static class Builder {

        /* renamed from: a */
        public int f110253a;

        /* renamed from: b */
        public int f110254b = -1;

        /* renamed from: c */
        public Charset f110255c;

        /* renamed from: d */
        public CodingErrorAction f110256d;

        /* renamed from: e */
        public CodingErrorAction f110257e;

        /* renamed from: f */
        public MessageConstraints f110258f;

        public ConnectionConfig build() {
            Charset charset = this.f110255c;
            if (charset == null && (this.f110256d != null || this.f110257e != null)) {
                charset = Consts.ASCII;
            }
            Charset charset2 = charset;
            int i = this.f110253a;
            if (i <= 0) {
                i = 8192;
            }
            int i2 = i;
            int i3 = this.f110254b;
            return new ConnectionConfig(i2, i3 >= 0 ? i3 : i2, charset2, this.f110256d, this.f110257e, this.f110258f);
        }

        public Builder setBufferSize(int i) {
            this.f110253a = i;
            return this;
        }

        public Builder setCharset(Charset charset) {
            this.f110255c = charset;
            return this;
        }

        public Builder setFragmentSizeHint(int i) {
            this.f110254b = i;
            return this;
        }

        public Builder setMalformedInputAction(CodingErrorAction codingErrorAction) {
            this.f110256d = codingErrorAction;
            if (codingErrorAction != null && this.f110255c == null) {
                this.f110255c = Consts.ASCII;
            }
            return this;
        }

        public Builder setMessageConstraints(MessageConstraints messageConstraints) {
            this.f110258f = messageConstraints;
            return this;
        }

        public Builder setUnmappableInputAction(CodingErrorAction codingErrorAction) {
            this.f110257e = codingErrorAction;
            if (codingErrorAction != null && this.f110255c == null) {
                this.f110255c = Consts.ASCII;
            }
            return this;
        }
    }

    public ConnectionConfig(int i, int i2, Charset charset, CodingErrorAction codingErrorAction, CodingErrorAction codingErrorAction2, MessageConstraints messageConstraints) {
        this.f110247e = i;
        this.f110248f = i2;
        this.f110249g = charset;
        this.f110250h = codingErrorAction;
        this.f110251i = codingErrorAction2;
        this.f110252j = messageConstraints;
    }

    public static Builder copy(ConnectionConfig connectionConfig) {
        Args.notNull(connectionConfig, "Connection config");
        return new Builder().setBufferSize(connectionConfig.getBufferSize()).setCharset(connectionConfig.getCharset()).setFragmentSizeHint(connectionConfig.getFragmentSizeHint()).setMalformedInputAction(connectionConfig.getMalformedInputAction()).setUnmappableInputAction(connectionConfig.getUnmappableInputAction()).setMessageConstraints(connectionConfig.getMessageConstraints());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getBufferSize() {
        return this.f110247e;
    }

    public Charset getCharset() {
        return this.f110249g;
    }

    public int getFragmentSizeHint() {
        return this.f110248f;
    }

    public CodingErrorAction getMalformedInputAction() {
        return this.f110250h;
    }

    public MessageConstraints getMessageConstraints() {
        return this.f110252j;
    }

    public CodingErrorAction getUnmappableInputAction() {
        return this.f110251i;
    }

    public String toString() {
        return "[bufferSize=" + this.f110247e + ", fragmentSizeHint=" + this.f110248f + ", charset=" + this.f110249g + ", malformedInputAction=" + this.f110250h + ", unmappableInputAction=" + this.f110251i + ", messageConstraints=" + this.f110252j + IteratorUtils.f104924b;
    }

    public ConnectionConfig clone() throws CloneNotSupportedException {
        return (ConnectionConfig) super.clone();
    }
}
