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
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class RelocationArg extends RelocationPath {

    /* renamed from: a */
    public final boolean f17295a;

    /* renamed from: b */
    public final boolean f17296b;

    /* renamed from: c */
    public final boolean f17297c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean allowOwnershipTransfer;
        protected boolean allowSharedFolder;
        protected boolean autorename;
        protected final String fromPath;
        protected final String toPath;

        public Builder(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'fromPath' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str)) {
                throw new IllegalArgumentException("String 'fromPath' does not match pattern");
            }
            this.fromPath = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'toPath' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)|(id:.*)", str2)) {
                throw new IllegalArgumentException("String 'toPath' does not match pattern");
            }
            this.toPath = str2;
            this.allowSharedFolder = false;
            this.autorename = false;
            this.allowOwnershipTransfer = false;
        }

        public RelocationArg build() {
            return new RelocationArg(this.fromPath, this.toPath, this.allowSharedFolder, this.autorename, this.allowOwnershipTransfer);
        }

        public Builder withAllowOwnershipTransfer(Boolean bool) {
            if (bool != null) {
                this.allowOwnershipTransfer = bool.booleanValue();
            } else {
                this.allowOwnershipTransfer = false;
            }
            return this;
        }

        public Builder withAllowSharedFolder(Boolean bool) {
            if (bool != null) {
                this.allowSharedFolder = bool.booleanValue();
            } else {
                this.allowSharedFolder = false;
            }
            return this;
        }

        public Builder withAutorename(Boolean bool) {
            if (bool != null) {
                this.autorename = bool.booleanValue();
            } else {
                this.autorename = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RelocationArg$a */
    /* loaded from: classes4.dex */
    public static class C2609a extends StructSerializer<RelocationArg> {

        /* renamed from: b */
        public static final C2609a f17298b = new C2609a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelocationArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            String str2 = null;
            String str3 = null;
            Boolean bool2 = bool;
            Boolean bool3 = bool2;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("from_path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("to_path".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("allow_shared_folder".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("autorename".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("allow_ownership_transfer".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"from_path\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"to_path\" missing.");
            }
            RelocationArg relocationArg = new RelocationArg(str2, str3, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(relocationArg, relocationArg.toStringMultiline());
            return relocationArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelocationArg relocationArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("from_path");
            StoneSerializers.string().serialize((StoneSerializer<String>) relocationArg.fromPath, jsonGenerator);
            jsonGenerator.writeFieldName("to_path");
            StoneSerializers.string().serialize((StoneSerializer<String>) relocationArg.toPath, jsonGenerator);
            jsonGenerator.writeFieldName("allow_shared_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(relocationArg.f17295a), jsonGenerator);
            jsonGenerator.writeFieldName("autorename");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(relocationArg.f17296b), jsonGenerator);
            jsonGenerator.writeFieldName("allow_ownership_transfer");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(relocationArg.f17297c), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public RelocationArg(String str, String str2, boolean z, boolean z2, boolean z3) {
        super(str, str2);
        this.f17295a = z;
        this.f17296b = z2;
        this.f17297c = z3;
    }

    /* renamed from: d */
    public static Builder m10926d(String str, String str2) {
        return new Builder(str, str2);
    }

    /* renamed from: a */
    public boolean m10927a() {
        return this.f17297c;
    }

    /* renamed from: b */
    public boolean m10928b() {
        return this.f17295a;
    }

    /* renamed from: c */
    public boolean m10929c() {
        return this.f17296b;
    }

    @Override // com.dropbox.core.p006v2.files.RelocationPath
    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        RelocationArg relocationArg = (RelocationArg) obj;
        String str3 = this.fromPath;
        String str4 = relocationArg.fromPath;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.toPath) == (str2 = relocationArg.toPath) || str.equals(str2)) && this.f17295a == relocationArg.f17295a && this.f17296b == relocationArg.f17296b && this.f17297c == relocationArg.f17297c;
    }

    @Override // com.dropbox.core.p006v2.files.RelocationPath
    public String getFromPath() {
        return this.fromPath;
    }

    @Override // com.dropbox.core.p006v2.files.RelocationPath
    public String getToPath() {
        return this.toPath;
    }

    @Override // com.dropbox.core.p006v2.files.RelocationPath
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Boolean.valueOf(this.f17295a), Boolean.valueOf(this.f17296b), Boolean.valueOf(this.f17297c)});
    }

    @Override // com.dropbox.core.p006v2.files.RelocationPath
    public String toString() {
        return C2609a.f17298b.serialize((C2609a) this, false);
    }

    @Override // com.dropbox.core.p006v2.files.RelocationPath
    public String toStringMultiline() {
        return C2609a.f17298b.serialize((C2609a) this, true);
    }

    public RelocationArg(String str, String str2) {
        this(str, str2, false, false, false);
    }
}
