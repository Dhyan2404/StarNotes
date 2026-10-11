package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;

/* loaded from: classes4.dex */
public class Message {
    private final byte[] data;

    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public Message(@NonNull byte[] bArr) {
        this.data = bArr;
    }

    @NonNull
    public static Message fromData(@NonNull byte[] bArr) {
        Preconditions.assertNotNull(bArr, "data");
        return new Message(bArr);
    }

    @NonNull
    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public byte[] toData() {
        return this.data;
    }
}
