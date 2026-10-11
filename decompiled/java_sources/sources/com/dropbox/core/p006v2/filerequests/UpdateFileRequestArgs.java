package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.p006v2.filerequests.UpdateFileRequestDeadline;
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
public class UpdateFileRequestArgs {

    /* renamed from: a */
    public final String f17010a;

    /* renamed from: b */
    public final String f17011b;

    /* renamed from: c */
    public final String f17012c;

    /* renamed from: d */
    public final UpdateFileRequestDeadline f17013d;

    /* renamed from: e */
    public final Boolean f17014e;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected UpdateFileRequestDeadline deadline;
        protected String destination;

        /* renamed from: id */
        protected final String f17015id;
        protected Boolean open;
        protected String title;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (str.length() < 1) {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            this.f17015id = str;
            this.title = null;
            this.destination = null;
            this.deadline = UpdateFileRequestDeadline.NO_UPDATE;
            this.open = null;
        }

        public UpdateFileRequestArgs build() {
            return new UpdateFileRequestArgs(this.f17015id, this.title, this.destination, this.deadline, this.open);
        }

        public Builder withDeadline(UpdateFileRequestDeadline updateFileRequestDeadline) {
            if (updateFileRequestDeadline != null) {
                this.deadline = updateFileRequestDeadline;
            } else {
                this.deadline = UpdateFileRequestDeadline.NO_UPDATE;
            }
            return this;
        }

        public Builder withDestination(String str) {
            if (str != null && !Pattern.matches("/(.|[\\r\\n])*", str)) {
                throw new IllegalArgumentException("String 'destination' does not match pattern");
            }
            this.destination = str;
            return this;
        }

        public Builder withOpen(Boolean bool) {
            this.open = bool;
            return this;
        }

        public Builder withTitle(String str) {
            if (str != null && str.length() < 1) {
                throw new IllegalArgumentException("String 'title' is shorter than 1");
            }
            this.title = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.UpdateFileRequestArgs$a */
    /* loaded from: classes4.dex */
    public static class C2483a extends StructSerializer<UpdateFileRequestArgs> {

        /* renamed from: b */
        public static final C2483a f17016b = new C2483a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UpdateFileRequestArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Boolean bool = null;
            UpdateFileRequestDeadline updateFileRequestDeadline = UpdateFileRequestDeadline.NO_UPDATE;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("title".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if (FirebaseAnalytics.Param.DESTINATION.equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("deadline".equals(currentName)) {
                    updateFileRequestDeadline = UpdateFileRequestDeadline.C2485b.f17020b.deserialize(jsonParser);
                } else if ("open".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
            }
            UpdateFileRequestArgs updateFileRequestArgs = new UpdateFileRequestArgs(str2, str3, str4, updateFileRequestDeadline, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(updateFileRequestArgs, updateFileRequestArgs.m10529g());
            return updateFileRequestArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UpdateFileRequestArgs updateFileRequestArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("id");
            StoneSerializers.string().serialize((StoneSerializer<String>) updateFileRequestArgs.f17010a, jsonGenerator);
            if (updateFileRequestArgs.f17011b != null) {
                jsonGenerator.writeFieldName("title");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) updateFileRequestArgs.f17011b, jsonGenerator);
            }
            if (updateFileRequestArgs.f17012c != null) {
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.DESTINATION);
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) updateFileRequestArgs.f17012c, jsonGenerator);
            }
            jsonGenerator.writeFieldName("deadline");
            UpdateFileRequestDeadline.C2485b.f17020b.serialize(updateFileRequestArgs.f17013d, jsonGenerator);
            if (updateFileRequestArgs.f17014e != null) {
                jsonGenerator.writeFieldName("open");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) updateFileRequestArgs.f17014e, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public UpdateFileRequestArgs(String str, String str2, String str3, UpdateFileRequestDeadline updateFileRequestDeadline, Boolean bool) {
        if (str != null) {
            if (str.length() >= 1) {
                if (Pattern.matches("[-_0-9a-zA-Z]+", str)) {
                    this.f17010a = str;
                    if (str2 != null && str2.length() < 1) {
                        throw new IllegalArgumentException("String 'title' is shorter than 1");
                    }
                    this.f17011b = str2;
                    if (str3 != null && !Pattern.matches("/(.|[\\r\\n])*", str3)) {
                        throw new IllegalArgumentException("String 'destination' does not match pattern");
                    }
                    this.f17012c = str3;
                    if (updateFileRequestDeadline != null) {
                        this.f17013d = updateFileRequestDeadline;
                        this.f17014e = bool;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'deadline' is null");
                }
                throw new IllegalArgumentException("String 'id' does not match pattern");
            }
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        }
        throw new IllegalArgumentException("Required value for 'id' is null");
    }

    /* renamed from: f */
    public static Builder m10523f(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public UpdateFileRequestDeadline m10524a() {
        return this.f17013d;
    }

    /* renamed from: b */
    public String m10525b() {
        return this.f17012c;
    }

    /* renamed from: c */
    public String m10526c() {
        return this.f17010a;
    }

    /* renamed from: d */
    public Boolean m10527d() {
        return this.f17014e;
    }

    /* renamed from: e */
    public String m10528e() {
        return this.f17011b;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        UpdateFileRequestDeadline updateFileRequestDeadline;
        UpdateFileRequestDeadline updateFileRequestDeadline2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        UpdateFileRequestArgs updateFileRequestArgs = (UpdateFileRequestArgs) obj;
        String str5 = this.f17010a;
        String str6 = updateFileRequestArgs.f17010a;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.f17011b) == (str2 = updateFileRequestArgs.f17011b) || (str != null && str.equals(str2))) && (((str3 = this.f17012c) == (str4 = updateFileRequestArgs.f17012c) || (str3 != null && str3.equals(str4))) && ((updateFileRequestDeadline = this.f17013d) == (updateFileRequestDeadline2 = updateFileRequestArgs.f17013d) || updateFileRequestDeadline.equals(updateFileRequestDeadline2))))) {
            Boolean bool = this.f17014e;
            Boolean bool2 = updateFileRequestArgs.f17014e;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public String m10529g() {
        return C2483a.f17016b.serialize((C2483a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17010a, this.f17011b, this.f17012c, this.f17013d, this.f17014e});
    }

    public String toString() {
        return C2483a.f17016b.serialize((C2483a) this, false);
    }

    public UpdateFileRequestArgs(String str) {
        this(str, null, null, UpdateFileRequestDeadline.NO_UPDATE, null);
    }
}
