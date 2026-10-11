package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.p006v2.filerequests.FileRequestDeadline;
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
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class CreateFileRequestArgs {

    /* renamed from: a */
    public final String f16980a;

    /* renamed from: b */
    public final String f16981b;

    /* renamed from: c */
    public final FileRequestDeadline f16982c;

    /* renamed from: d */
    public final boolean f16983d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected FileRequestDeadline deadline;
        protected final String destination;
        protected boolean open;
        protected final String title;

        public Builder(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'title' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'title' is shorter than 1");
            }
            this.title = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'destination' is null");
            }
            if (!Pattern.matches("/(.|[\\r\\n])*", str2)) {
                throw new IllegalArgumentException("String 'destination' does not match pattern");
            }
            this.destination = str2;
            this.deadline = null;
            this.open = true;
        }

        public CreateFileRequestArgs build() {
            return new CreateFileRequestArgs(this.title, this.destination, this.deadline, this.open);
        }

        public Builder withDeadline(FileRequestDeadline fileRequestDeadline) {
            this.deadline = fileRequestDeadline;
            return this;
        }

        public Builder withOpen(Boolean bool) {
            if (bool != null) {
                this.open = bool.booleanValue();
            } else {
                this.open = true;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.CreateFileRequestArgs$a */
    /* loaded from: classes4.dex */
    public static class C2462a extends StructSerializer<CreateFileRequestArgs> {

        /* renamed from: b */
        public static final C2462a f16984b = new C2462a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFileRequestArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            FileRequestDeadline fileRequestDeadline = null;
            Boolean bool = Boolean.TRUE;
            String str3 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("title".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.DESTINATION.equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("deadline".equals(currentName)) {
                    fileRequestDeadline = (FileRequestDeadline) StoneSerializers.nullableStruct(FileRequestDeadline.C2472a.f16997b).deserialize(jsonParser);
                } else if ("open".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"title\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"destination\" missing.");
            }
            CreateFileRequestArgs createFileRequestArgs = new CreateFileRequestArgs(str2, str3, fileRequestDeadline, bool.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(createFileRequestArgs, createFileRequestArgs.m10488f());
            return createFileRequestArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFileRequestArgs createFileRequestArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("title");
            StoneSerializers.string().serialize((StoneSerializer<String>) createFileRequestArgs.f16980a, jsonGenerator);
            jsonGenerator.writeFieldName(FirebaseAnalytics.Param.DESTINATION);
            StoneSerializers.string().serialize((StoneSerializer<String>) createFileRequestArgs.f16981b, jsonGenerator);
            if (createFileRequestArgs.f16982c != null) {
                jsonGenerator.writeFieldName("deadline");
                StoneSerializers.nullableStruct(FileRequestDeadline.C2472a.f16997b).serialize((StructSerializer) createFileRequestArgs.f16982c, jsonGenerator);
            }
            jsonGenerator.writeFieldName("open");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(createFileRequestArgs.f16983d), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CreateFileRequestArgs(String str, String str2, FileRequestDeadline fileRequestDeadline, boolean z) {
        if (str != null) {
            if (str.length() >= 1) {
                this.f16980a = str;
                if (str2 != null) {
                    if (Pattern.matches("/(.|[\\r\\n])*", str2)) {
                        this.f16981b = str2;
                        this.f16982c = fileRequestDeadline;
                        this.f16983d = z;
                        return;
                    }
                    throw new IllegalArgumentException("String 'destination' does not match pattern");
                }
                throw new IllegalArgumentException("Required value for 'destination' is null");
            }
            throw new IllegalArgumentException("String 'title' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'title' is null");
    }

    /* renamed from: e */
    public static Builder m10483e(String str, String str2) {
        return new Builder(str, str2);
    }

    /* renamed from: a */
    public FileRequestDeadline m10484a() {
        return this.f16982c;
    }

    /* renamed from: b */
    public String m10485b() {
        return this.f16981b;
    }

    /* renamed from: c */
    public boolean m10486c() {
        return this.f16983d;
    }

    /* renamed from: d */
    public String m10487d() {
        return this.f16980a;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        FileRequestDeadline fileRequestDeadline;
        FileRequestDeadline fileRequestDeadline2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CreateFileRequestArgs createFileRequestArgs = (CreateFileRequestArgs) obj;
        String str3 = this.f16980a;
        String str4 = createFileRequestArgs.f16980a;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.f16981b) == (str2 = createFileRequestArgs.f16981b) || str.equals(str2)) && (((fileRequestDeadline = this.f16982c) == (fileRequestDeadline2 = createFileRequestArgs.f16982c) || (fileRequestDeadline != null && fileRequestDeadline.equals(fileRequestDeadline2))) && this.f16983d == createFileRequestArgs.f16983d);
    }

    /* renamed from: f */
    public String m10488f() {
        return C2462a.f16984b.serialize((C2462a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16980a, this.f16981b, this.f16982c, Boolean.valueOf(this.f16983d)});
    }

    public String toString() {
        return C2462a.f16984b.serialize((C2462a) this, false);
    }

    public CreateFileRequestArgs(String str, String str2) {
        this(str, str2, null, true);
    }
}
