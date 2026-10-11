package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.C5529b;
import java.util.Locale;

/* loaded from: classes6.dex */
public class StandardIntegrityException extends ApiException {

    /* renamed from: a */
    private final Throwable f33364a;

    public StandardIntegrityException(int i, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Standard Integrity API error (%d): %s.", Integer.valueOf(i), C5529b.m25693a(i))));
        if (i == 0) {
            throw new IllegalArgumentException("ErrorCode should not be 0.");
        }
        this.f33364a = th;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f33364a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
