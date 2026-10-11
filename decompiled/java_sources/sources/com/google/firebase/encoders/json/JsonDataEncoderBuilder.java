package com.google.firebase.encoders.json;

import androidx.annotation.NonNull;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.ValueEncoder;
import com.google.firebase.encoders.ValueEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.sunia.HTREnginev2.xri;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes6.dex */
public final class JsonDataEncoderBuilder implements EncoderConfig<JsonDataEncoderBuilder> {

    /* renamed from: e */
    public static final ObjectEncoder<Object> f35855e = new ObjectEncoder() { // from class: com.sunia.HTREnginev2.qri
        @Override // com.sunia.HTREnginev2.gpf
        public final void encode(Object obj, ObjectEncoderContext objectEncoderContext) {
            JsonDataEncoderBuilder.m28087h(obj, objectEncoderContext);
        }
    };

    /* renamed from: f */
    public static final ValueEncoder<String> f35856f = new ValueEncoder() { // from class: com.sunia.HTREnginev2.rri
        @Override // com.sunia.HTREnginev2.gpf
        public final void encode(Object obj, ValueEncoderContext valueEncoderContext) {
            valueEncoderContext.add((String) obj);
        }
    };

    /* renamed from: g */
    public static final ValueEncoder<Boolean> f35857g = new ValueEncoder() { // from class: com.sunia.HTREnginev2.sri
        @Override // com.sunia.HTREnginev2.gpf
        public final void encode(Object obj, ValueEncoderContext valueEncoderContext) {
            JsonDataEncoderBuilder.m28089j((Boolean) obj, valueEncoderContext);
        }
    };

    /* renamed from: h */
    public static final C6459b f35858h = new C6459b(null);

    /* renamed from: a */
    public final Map<Class<?>, ObjectEncoder<?>> f35859a = new HashMap();

    /* renamed from: b */
    public final Map<Class<?>, ValueEncoder<?>> f35860b = new HashMap();

    /* renamed from: c */
    public ObjectEncoder<Object> f35861c = f35855e;

    /* renamed from: d */
    public boolean f35862d = false;

    /* renamed from: com.google.firebase.encoders.json.JsonDataEncoderBuilder$b */
    /* loaded from: classes6.dex */
    public static final class C6459b implements ValueEncoder<Date> {

        /* renamed from: a */
        public static final DateFormat f35864a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f35864a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public C6459b() {
        }

        @Override // com.sunia.HTREnginev2.gpf
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void encode(@NonNull Date date, @NonNull ValueEncoderContext valueEncoderContext) throws IOException {
            valueEncoderContext.add(f35864a.format(date));
        }

        public /* synthetic */ C6459b(C6458a c6458a) {
            this();
        }
    }

    public JsonDataEncoderBuilder() {
        registerEncoder(String.class, (ValueEncoder) f35856f);
        registerEncoder(Boolean.class, (ValueEncoder) f35857g);
        registerEncoder(Date.class, (ValueEncoder) f35858h);
    }

    /* renamed from: h */
    public static /* synthetic */ void m28087h(Object obj, ObjectEncoderContext objectEncoderContext) throws IOException {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* renamed from: j */
    public static /* synthetic */ void m28089j(Boolean bool, ValueEncoderContext valueEncoderContext) throws IOException {
        valueEncoderContext.add(bool.booleanValue());
    }

    @NonNull
    public DataEncoder build() {
        return new C6458a();
    }

    @NonNull
    public JsonDataEncoderBuilder configureWith(@NonNull Configurator configurator) {
        configurator.configure(this);
        return this;
    }

    @NonNull
    public JsonDataEncoderBuilder ignoreNullValues(boolean z) {
        this.f35862d = z;
        return this;
    }

    @NonNull
    public JsonDataEncoderBuilder registerFallbackEncoder(@NonNull ObjectEncoder<Object> objectEncoder) {
        this.f35861c = objectEncoder;
        return this;
    }

    @Override // com.google.firebase.encoders.config.EncoderConfig
    @NonNull
    public <T> JsonDataEncoderBuilder registerEncoder(@NonNull Class<T> cls, @NonNull ObjectEncoder<? super T> objectEncoder) {
        this.f35859a.put(cls, objectEncoder);
        this.f35860b.remove(cls);
        return this;
    }

    /* renamed from: com.google.firebase.encoders.json.JsonDataEncoderBuilder$a */
    /* loaded from: classes6.dex */
    public class C6458a implements DataEncoder {
        public C6458a() {
        }

        @Override // com.google.firebase.encoders.DataEncoder
        public void encode(@NonNull Object obj, @NonNull Writer writer) throws IOException {
            xri xriVar = new xri(writer, JsonDataEncoderBuilder.this.f35859a, JsonDataEncoderBuilder.this.f35860b, JsonDataEncoderBuilder.this.f35861c, JsonDataEncoderBuilder.this.f35862d);
            xriVar.m58310e(obj, false);
            xriVar.m58320o();
        }

        @Override // com.google.firebase.encoders.DataEncoder
        public String encode(@NonNull Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                encode(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    @Override // com.google.firebase.encoders.config.EncoderConfig
    @NonNull
    public <T> JsonDataEncoderBuilder registerEncoder(@NonNull Class<T> cls, @NonNull ValueEncoder<? super T> valueEncoder) {
        this.f35860b.put(cls, valueEncoder);
        this.f35859a.remove(cls);
        return this;
    }
}
