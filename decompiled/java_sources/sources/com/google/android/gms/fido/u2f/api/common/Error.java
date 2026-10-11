package com.google.android.gms.fido.u2f.api.common;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
/* loaded from: classes5.dex */
public class Error {

    @NonNull
    @VisibleForTesting
    public static final String JSON_ERROR_CODE = "errorCode";

    @NonNull
    @VisibleForTesting
    public static final String JSON_ERROR_MESSAGE = "errorMessage";

    /* renamed from: a */
    public final ErrorCode f29600a;

    /* renamed from: b */
    public final String f29601b;

    public Error(@NonNull ErrorCode errorCode) {
        this.f29600a = errorCode;
        this.f29601b = null;
    }

    @NonNull
    public ErrorCode getErrorCode() {
        return this.f29600a;
    }

    @NonNull
    public String getErrorMessage() {
        return this.f29601b;
    }

    @NonNull
    public JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", this.f29600a.getCode());
            String str = this.f29601b;
            if (str != null) {
                jSONObject.put("errorMessage", str);
            }
            return jSONObject;
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @NonNull
    public String toString() {
        return this.f29601b == null ? String.format(Locale.ENGLISH, "{errorCode: %d}", Integer.valueOf(this.f29600a.getCode())) : String.format(Locale.ENGLISH, "{errorCode: %d, errorMessage: %s}", Integer.valueOf(this.f29600a.getCode()), this.f29601b);
    }

    public Error(@NonNull ErrorCode errorCode, @NonNull String str) {
        this.f29600a = errorCode;
        this.f29601b = str;
    }
}
