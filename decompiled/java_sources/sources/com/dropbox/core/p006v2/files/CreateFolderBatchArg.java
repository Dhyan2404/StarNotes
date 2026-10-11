package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class CreateFolderBatchArg {

    /* renamed from: a */
    public final List<String> f17052a;

    /* renamed from: b */
    public final boolean f17053b;

    /* renamed from: c */
    public final boolean f17054c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean autorename;
        protected boolean forceAsync;
        protected final List<String> paths;

        public Builder(List<String> list) {
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'paths' is null");
            }
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list 'paths' is null");
                }
                if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
                    throw new IllegalArgumentException("Stringan item in list 'paths' does not match pattern");
                }
            }
            this.paths = list;
            this.autorename = false;
            this.forceAsync = false;
        }

        public CreateFolderBatchArg build() {
            return new CreateFolderBatchArg(this.paths, this.autorename, this.forceAsync);
        }

        public Builder withAutorename(Boolean bool) {
            if (bool != null) {
                this.autorename = bool.booleanValue();
            } else {
                this.autorename = false;
            }
            return this;
        }

        public Builder withForceAsync(Boolean bool) {
            if (bool != null) {
                this.forceAsync = bool.booleanValue();
            } else {
                this.forceAsync = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderBatchArg$a */
    /* loaded from: classes4.dex */
    public static class C2497a extends StructSerializer<CreateFolderBatchArg> {

        /* renamed from: b */
        public static final C2497a f17055b = new C2497a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFolderBatchArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            List list = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Boolean bool = Boolean.FALSE;
            Boolean bool2 = bool;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("paths".equals(currentName)) {
                    list = (List) StoneSerializers.list(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("autorename".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("force_async".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"paths\" missing.");
            }
            CreateFolderBatchArg createFolderBatchArg = new CreateFolderBatchArg(list, bool.booleanValue(), bool2.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(createFolderBatchArg, createFolderBatchArg.m10581e());
            return createFolderBatchArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFolderBatchArg createFolderBatchArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("paths");
            StoneSerializers.list(StoneSerializers.string()).serialize((StoneSerializer) createFolderBatchArg.f17052a, jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(createFolderBatchArg.f17053b), jsonGenerator);
            jsonGenerator.writeFieldName("force_async");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(createFolderBatchArg.f17054c), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CreateFolderBatchArg(List<String> list, boolean z, boolean z2) {
        if (list != null) {
            for (String str : list) {
                if (str != null) {
                    if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)", str)) {
                        throw new IllegalArgumentException("Stringan item in list 'paths' does not match pattern");
                    }
                } else {
                    throw new IllegalArgumentException("An item in list 'paths' is null");
                }
            }
            this.f17052a = list;
            this.f17053b = z;
            this.f17054c = z2;
            return;
        }
        throw new IllegalArgumentException("Required value for 'paths' is null");
    }

    /* renamed from: d */
    public static Builder m10577d(List<String> list) {
        return new Builder(list);
    }

    /* renamed from: a */
    public boolean m10578a() {
        return this.f17053b;
    }

    /* renamed from: b */
    public boolean m10579b() {
        return this.f17054c;
    }

    /* renamed from: c */
    public List<String> m10580c() {
        return this.f17052a;
    }

    /* renamed from: e */
    public String m10581e() {
        return C2497a.f17055b.serialize((C2497a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CreateFolderBatchArg createFolderBatchArg = (CreateFolderBatchArg) obj;
        List<String> list = this.f17052a;
        List<String> list2 = createFolderBatchArg.f17052a;
        return (list == list2 || list.equals(list2)) && this.f17053b == createFolderBatchArg.f17053b && this.f17054c == createFolderBatchArg.f17054c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17052a, Boolean.valueOf(this.f17053b), Boolean.valueOf(this.f17054c)});
    }

    public String toString() {
        return C2497a.f17055b.serialize((C2497a) this, false);
    }

    public CreateFolderBatchArg(List<String> list) {
        this(list, false, false);
    }
}
