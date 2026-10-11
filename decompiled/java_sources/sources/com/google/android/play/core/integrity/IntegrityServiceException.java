package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.integrity.model.C5528a;
import java.util.Locale;

/* loaded from: classes6.dex */
public class IntegrityServiceException extends ApiException {

    /* renamed from: a */
    private final Throwable f33363a;

    public IntegrityServiceException(int i, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Integrity API error (%d): %s.", Integer.valueOf(i), C5528a.m25692a(i))));
        if (i == 0) {
            throw new IllegalArgumentException("ErrorCode should not be 0.");
        }
        this.f33363a = th;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.f33363a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
