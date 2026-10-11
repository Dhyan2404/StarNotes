package com.sunia.HTREnginev2;

import androidx.annotation.NonNull;
import com.google.android.datatransport.cct.internal.BatchedLogRequest;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.nj */
/* loaded from: classes4.dex */
public final class C14140nj extends BatchedLogRequest {

    /* renamed from: a */
    public final List<LogRequest> f78693a;

    public C14140nj(List<LogRequest> list) {
        if (list == null) {
            throw new NullPointerException("Null logRequests");
        }
        this.f78693a = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BatchedLogRequest) {
            return this.f78693a.equals(((BatchedLogRequest) obj).getLogRequests());
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.BatchedLogRequest
    @NonNull
    @Encodable.Field(name = "logRequest")
    public List<LogRequest> getLogRequests() {
        return this.f78693a;
    }

    public int hashCode() {
        return this.f78693a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f78693a + "}";
    }
}
