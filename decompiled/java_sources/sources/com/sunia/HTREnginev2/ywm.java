package com.sunia.HTREnginev2;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes6.dex */
public final class ywm extends TypeAdapter<Time> {

    /* renamed from: b */
    public static final TypeAdapterFactory f91140b = new C14730a();

    /* renamed from: a */
    public final DateFormat f91141a;

    /* renamed from: com.sunia.HTREnginev2.ywm$a */
    /* loaded from: classes6.dex */
    public class C14730a implements TypeAdapterFactory {
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            Class<? super T> rawType = typeToken.getRawType();
            C14730a c14730a = null;
            if (rawType == Time.class) {
                return new ywm(c14730a);
            }
            return null;
        }
    }

    public /* synthetic */ ywm(C14730a c14730a) {
        this();
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Time read(JsonReader jsonReader) throws IOException {
        Time time;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String nextString = jsonReader.nextString();
        synchronized (this) {
            TimeZone timeZone = this.f91141a.getTimeZone();
            try {
                try {
                    time = new Time(this.f91141a.parse(nextString).getTime());
                } catch (ParseException e) {
                    throw new JsonSyntaxException("Failed parsing '" + nextString + "' as SQL Time; at path " + jsonReader.getPreviousPath(), e);
                }
            } finally {
                this.f91141a.setTimeZone(timeZone);
            }
        }
        return time;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void write(JsonWriter jsonWriter, Time time) throws IOException {
        String format;
        if (time == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this) {
            format = this.f91141a.format((Date) time);
        }
        jsonWriter.value(format);
    }

    private ywm() {
        this.f91141a = new SimpleDateFormat("hh:mm:ss a");
    }
}
