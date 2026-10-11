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
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;

/* loaded from: classes6.dex */
public final class xwm extends TypeAdapter<Date> {

    /* renamed from: b */
    public static final TypeAdapterFactory f90141b = new C14677a();

    /* renamed from: a */
    public final DateFormat f90142a;

    /* renamed from: com.sunia.HTREnginev2.xwm$a */
    /* loaded from: classes6.dex */
    public class C14677a implements TypeAdapterFactory {
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            Class<? super T> rawType = typeToken.getRawType();
            C14677a c14677a = null;
            if (rawType == Date.class) {
                return new xwm(c14677a);
            }
            return null;
        }
    }

    public /* synthetic */ xwm(C14677a c14677a) {
        this();
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Date read(JsonReader jsonReader) throws IOException {
        Date date;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String nextString = jsonReader.nextString();
        synchronized (this) {
            TimeZone timeZone = this.f90142a.getTimeZone();
            try {
                try {
                    date = new Date(this.f90142a.parse(nextString).getTime());
                } catch (ParseException e) {
                    throw new JsonSyntaxException("Failed parsing '" + nextString + "' as SQL Date; at path " + jsonReader.getPreviousPath(), e);
                }
            } finally {
                this.f90142a.setTimeZone(timeZone);
            }
        }
        return date;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        String format;
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this) {
            format = this.f90142a.format((java.util.Date) date);
        }
        jsonWriter.value(format);
    }

    private xwm() {
        this.f90142a = new SimpleDateFormat("MMM d, yyyy");
    }
}
