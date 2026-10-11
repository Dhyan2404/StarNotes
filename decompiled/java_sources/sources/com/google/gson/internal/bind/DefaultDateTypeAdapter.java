package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.PreJava9DateFormatProvider;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;

/* loaded from: classes6.dex */
public final class DefaultDateTypeAdapter<T extends Date> extends TypeAdapter<T> {
    public static final TypeAdapterFactory DEFAULT_STYLE_FACTORY = new C6543a();

    /* renamed from: c */
    public static final String f36189c = "DefaultDateTypeAdapter";

    /* renamed from: a */
    public final DateType<T> f36190a;

    /* renamed from: b */
    public final List<DateFormat> f36191b;

    /* loaded from: classes6.dex */
    public static abstract class DateType<T extends Date> {
        public static final DateType<Date> DATE = new C6542a(Date.class);

        /* renamed from: a */
        public final Class<T> f36192a;

        /* renamed from: com.google.gson.internal.bind.DefaultDateTypeAdapter$DateType$a */
        /* loaded from: classes6.dex */
        public class C6542a extends DateType<Date> {
            public C6542a(Class cls) {
                super(cls);
            }

            @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType
            public Date deserialize(Date date) {
                return date;
            }
        }

        public DateType(Class<T> cls) {
            this.f36192a = cls;
        }

        /* renamed from: a */
        public final TypeAdapterFactory m28265a(DefaultDateTypeAdapter<T> defaultDateTypeAdapter) {
            return TypeAdapters.newFactory(this.f36192a, defaultDateTypeAdapter);
        }

        public final TypeAdapterFactory createAdapterFactory(String str) {
            return m28265a(new DefaultDateTypeAdapter<>(this, str, (C6543a) null));
        }

        public abstract T deserialize(Date date);

        public final TypeAdapterFactory createAdapterFactory(int i, int i2) {
            return m28265a(new DefaultDateTypeAdapter<>(this, i, i2, null));
        }
    }

    /* renamed from: com.google.gson.internal.bind.DefaultDateTypeAdapter$a */
    /* loaded from: classes6.dex */
    public class C6543a implements TypeAdapterFactory {
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            Class<? super T> rawType = typeToken.getRawType();
            C6543a c6543a = null;
            if (rawType != Date.class) {
                return null;
            }
            int i = 2;
            return new DefaultDateTypeAdapter(DateType.DATE, i, i, c6543a);
        }

        public String toString() {
            return "DefaultDateTypeAdapter#DEFAULT_STYLE_FACTORY";
        }
    }

    public /* synthetic */ DefaultDateTypeAdapter(DateType dateType, int i, int i2, C6543a c6543a) {
        this(dateType, i, i2);
    }

    /* renamed from: a */
    public final Date m28264a(JsonReader jsonReader) throws IOException {
        String nextString = jsonReader.nextString();
        synchronized (this.f36191b) {
            Iterator<DateFormat> it2 = this.f36191b.iterator();
            while (it2.hasNext()) {
                DateFormat next = it2.next();
                TimeZone timeZone = next.getTimeZone();
                try {
                    Date parse = next.parse(nextString);
                    next.setTimeZone(timeZone);
                    return parse;
                } catch (ParseException unused) {
                    next.setTimeZone(timeZone);
                } catch (Throwable th) {
                    next.setTimeZone(timeZone);
                    throw th;
                }
            }
            try {
                return ISO8601Utils.parse(nextString, new ParsePosition(0));
            } catch (ParseException e) {
                throw new JsonSyntaxException("Failed parsing '" + nextString + "' as Date; at path " + jsonReader.getPreviousPath(), e);
            }
        }
    }

    public String toString() {
        DateFormat dateFormat = this.f36191b.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return "DefaultDateTypeAdapter(" + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return "DefaultDateTypeAdapter(" + dateFormat.getClass().getSimpleName() + ')';
    }

    public /* synthetic */ DefaultDateTypeAdapter(DateType dateType, String str, C6543a c6543a) {
        this(dateType, str);
    }

    @Override // com.google.gson.TypeAdapter
    public T read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return this.f36190a.deserialize(m28264a(jsonReader));
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        String format;
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        DateFormat dateFormat = this.f36191b.get(0);
        synchronized (this.f36191b) {
            format = dateFormat.format(date);
        }
        jsonWriter.value(format);
    }

    public DefaultDateTypeAdapter(DateType<T> dateType, String str) {
        ArrayList arrayList = new ArrayList();
        this.f36191b = arrayList;
        Objects.requireNonNull(dateType);
        this.f36190a = dateType;
        Locale locale = Locale.US;
        arrayList.add(new SimpleDateFormat(str, locale));
        if (Locale.getDefault().equals(locale)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    public DefaultDateTypeAdapter(DateType<T> dateType, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.f36191b = arrayList;
        Objects.requireNonNull(dateType);
        this.f36190a = dateType;
        Locale locale = Locale.US;
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, locale));
        if (!Locale.getDefault().equals(locale)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (JavaVersion.isJava9OrLater()) {
            arrayList.add(PreJava9DateFormatProvider.getUsDateTimeFormat(i, i2));
        }
    }
}
