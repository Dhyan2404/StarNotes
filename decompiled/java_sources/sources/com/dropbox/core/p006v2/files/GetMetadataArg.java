package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.TemplateFilterBase;
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
public class GetMetadataArg {

    /* renamed from: a */
    public final String f17165a;

    /* renamed from: b */
    public final boolean f17166b;

    /* renamed from: c */
    public final boolean f17167c;

    /* renamed from: d */
    public final boolean f17168d;

    /* renamed from: e */
    public final TemplateFilterBase f17169e;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean includeDeleted;
        protected boolean includeHasExplicitSharedMembers;
        protected boolean includeMediaInfo;
        protected TemplateFilterBase includePropertyGroups;
        protected final String path;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.includeMediaInfo = false;
            this.includeDeleted = false;
            this.includeHasExplicitSharedMembers = false;
            this.includePropertyGroups = null;
        }

        public GetMetadataArg build() {
            return new GetMetadataArg(this.path, this.includeMediaInfo, this.includeDeleted, this.includeHasExplicitSharedMembers, this.includePropertyGroups);
        }

        public Builder withIncludeDeleted(Boolean bool) {
            if (bool != null) {
                this.includeDeleted = bool.booleanValue();
            } else {
                this.includeDeleted = false;
            }
            return this;
        }

        public Builder withIncludeHasExplicitSharedMembers(Boolean bool) {
            if (bool != null) {
                this.includeHasExplicitSharedMembers = bool.booleanValue();
            } else {
                this.includeHasExplicitSharedMembers = false;
            }
            return this;
        }

        public Builder withIncludeMediaInfo(Boolean bool) {
            if (bool != null) {
                this.includeMediaInfo = bool.booleanValue();
            } else {
                this.includeMediaInfo = false;
            }
            return this;
        }

        public Builder withIncludePropertyGroups(TemplateFilterBase templateFilterBase) {
            this.includePropertyGroups = templateFilterBase;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.GetMetadataArg$a */
    /* loaded from: classes4.dex */
    public static class C2553a extends StructSerializer<GetMetadataArg> {

        /* renamed from: b */
        public static final C2553a f17170b = new C2553a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetMetadataArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            TemplateFilterBase templateFilterBase = null;
            Boolean bool2 = bool;
            Boolean bool3 = bool2;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("include_media_info".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_deleted".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_has_explicit_shared_members".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_property_groups".equals(currentName)) {
                    templateFilterBase = (TemplateFilterBase) StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            GetMetadataArg getMetadataArg = new GetMetadataArg(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), templateFilterBase);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(getMetadataArg, getMetadataArg.mo10561g());
            return getMetadataArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetMetadataArg getMetadataArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) getMetadataArg.f17165a, jsonGenerator);
            jsonGenerator.writeFieldName("include_media_info");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(getMetadataArg.f17166b), jsonGenerator);
            jsonGenerator.writeFieldName("include_deleted");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(getMetadataArg.f17167c), jsonGenerator);
            jsonGenerator.writeFieldName("include_has_explicit_shared_members");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(getMetadataArg.f17168d), jsonGenerator);
            if (getMetadataArg.f17169e != null) {
                jsonGenerator.writeFieldName("include_property_groups");
                StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).serialize((StoneSerializer) getMetadataArg.f17169e, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public GetMetadataArg(String str, boolean z, boolean z2, boolean z3, TemplateFilterBase templateFilterBase) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                this.f17165a = str;
                this.f17166b = z;
                this.f17167c = z2;
                this.f17168d = z3;
                this.f17169e = templateFilterBase;
                return;
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: f */
    public static Builder m10776f(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public boolean mo10556a() {
        return this.f17167c;
    }

    /* renamed from: b */
    public boolean mo10557b() {
        return this.f17168d;
    }

    /* renamed from: c */
    public boolean mo10558c() {
        return this.f17166b;
    }

    /* renamed from: d */
    public TemplateFilterBase mo10559d() {
        return this.f17169e;
    }

    /* renamed from: e */
    public String mo10560e() {
        return this.f17165a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        GetMetadataArg getMetadataArg = (GetMetadataArg) obj;
        String str = this.f17165a;
        String str2 = getMetadataArg.f17165a;
        if ((str == str2 || str.equals(str2)) && this.f17166b == getMetadataArg.f17166b && this.f17167c == getMetadataArg.f17167c && this.f17168d == getMetadataArg.f17168d) {
            TemplateFilterBase templateFilterBase = this.f17169e;
            TemplateFilterBase templateFilterBase2 = getMetadataArg.f17169e;
            if (templateFilterBase == templateFilterBase2) {
                return true;
            }
            if (templateFilterBase != null && templateFilterBase.equals(templateFilterBase2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: g */
    public String mo10561g() {
        return C2553a.f17170b.serialize((C2553a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17165a, Boolean.valueOf(this.f17166b), Boolean.valueOf(this.f17167c), Boolean.valueOf(this.f17168d), this.f17169e});
    }

    public String toString() {
        return C2553a.f17170b.serialize((C2553a) this, false);
    }

    public GetMetadataArg(String str) {
        this(str, false, false, false, null);
    }
}
