package com.google.android.datatransport.cct.internal;

import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;
import com.sunia.HTREnginev2.C14716yj;
import java.io.IOException;
import java.io.Reader;

@AutoValue
/* loaded from: classes4.dex */
public abstract class LogResponse {

    /* renamed from: a */
    public static final String f21826a = "LogResponseInternal";

    /* renamed from: a */
    public static LogResponse m17409a(long j) {
        return new C14716yj(j);
    }

    @NonNull
    public static LogResponse fromJson(@NonNull Reader reader) throws IOException {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    return jsonReader.peek() == JsonToken.STRING ? m17409a(Long.parseLong(jsonReader.nextString())) : m17409a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }

    public abstract long getNextRequestWaitMillis();
}
