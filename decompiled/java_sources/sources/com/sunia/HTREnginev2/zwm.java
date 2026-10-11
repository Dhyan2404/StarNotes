package com.sunia.HTREnginev2;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

/* loaded from: classes6.dex */
public class zwm extends TypeAdapter<Timestamp> {

    /* renamed from: b */
    public static final TypeAdapterFactory f92273b = new C14784a();

    /* renamed from: a */
    public final TypeAdapter<Date> f92274a;

    /* renamed from: com.sunia.HTREnginev2.zwm$a */
    /* loaded from: classes6.dex */
    public class C14784a implements TypeAdapterFactory {
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            C14784a c14784a = null;
            if (typeToken.getRawType() == Timestamp.class) {
                return new zwm(gson.getAdapter(Date.class), c14784a);
            }
            return null;
        }
    }

    public /* synthetic */ zwm(TypeAdapter typeAdapter, C14784a c14784a) {
        this(typeAdapter);
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Timestamp read(JsonReader jsonReader) throws IOException {
        Date read = this.f92274a.read(jsonReader);
        if (read != null) {
            return new Timestamp(read.getTime());
        }
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void write(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
        this.f92274a.write(jsonWriter, timestamp);
    }

    public zwm(TypeAdapter<Date> typeAdapter) {
        this.f92274a = typeAdapter;
    }
}
