package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.TemplateFilterBase;
import com.dropbox.core.p006v2.files.GetMetadataArg;
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
public class AlphaGetMetadataArg extends GetMetadataArg {

    /* renamed from: f */
    public final List<String> f17031f;

    /* loaded from: classes4.dex */
    public static class Builder extends GetMetadataArg.Builder {
        protected List<String> includePropertyTemplates;

        public Builder(String str) {
            super(str);
            this.includePropertyTemplates = null;
        }

        public Builder withIncludePropertyTemplates(List<String> list) {
            if (list != null) {
                for (String str : list) {
                    if (str == null) {
                        throw new IllegalArgumentException("An item in list 'includePropertyTemplates' is null");
                    }
                    if (str.length() < 1) {
                        throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' is shorter than 1");
                    }
                    if (!Pattern.matches("(/|ptid:).*", str)) {
                        throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' does not match pattern");
                    }
                }
            }
            this.includePropertyTemplates = list;
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public AlphaGetMetadataArg build() {
            return new AlphaGetMetadataArg(this.path, this.includeMediaInfo, this.includeDeleted, this.includeHasExplicitSharedMembers, this.includePropertyGroups, this.includePropertyTemplates);
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public Builder withIncludeDeleted(Boolean bool) {
            super.withIncludeDeleted(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public Builder withIncludeHasExplicitSharedMembers(Boolean bool) {
            super.withIncludeHasExplicitSharedMembers(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public Builder withIncludeMediaInfo(Boolean bool) {
            super.withIncludeMediaInfo(bool);
            return this;
        }

        @Override // com.dropbox.core.v2.files.GetMetadataArg.Builder
        public Builder withIncludePropertyGroups(TemplateFilterBase templateFilterBase) {
            super.withIncludePropertyGroups(templateFilterBase);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.AlphaGetMetadataArg$a */
    /* loaded from: classes4.dex */
    public static class C2492a extends StructSerializer<AlphaGetMetadataArg> {

        /* renamed from: b */
        public static final C2492a f17032b = new C2492a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AlphaGetMetadataArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
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
                } else if ("include_property_templates".equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            AlphaGetMetadataArg alphaGetMetadataArg = new AlphaGetMetadataArg(str2, bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), templateFilterBase, list);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(alphaGetMetadataArg, alphaGetMetadataArg.mo10561g());
            return alphaGetMetadataArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AlphaGetMetadataArg alphaGetMetadataArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) alphaGetMetadataArg.f17165a, jsonGenerator);
            jsonGenerator.writeFieldName("include_media_info");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(alphaGetMetadataArg.f17166b), jsonGenerator);
            jsonGenerator.writeFieldName("include_deleted");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(alphaGetMetadataArg.f17167c), jsonGenerator);
            jsonGenerator.writeFieldName("include_has_explicit_shared_members");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(alphaGetMetadataArg.f17168d), jsonGenerator);
            if (alphaGetMetadataArg.f17169e != null) {
                jsonGenerator.writeFieldName("include_property_groups");
                StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).serialize((StoneSerializer) alphaGetMetadataArg.f17169e, jsonGenerator);
            }
            if (alphaGetMetadataArg.f17031f != null) {
                jsonGenerator.writeFieldName("include_property_templates");
                StoneSerializers.nullable(StoneSerializers.list(StoneSerializers.string())).serialize((StoneSerializer) alphaGetMetadataArg.f17031f, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AlphaGetMetadataArg(String str, boolean z, boolean z2, boolean z3, TemplateFilterBase templateFilterBase, List<String> list) {
        super(str, z, z2, z3, templateFilterBase);
        if (list != null) {
            for (String str2 : list) {
                if (str2 != null) {
                    if (str2.length() >= 1) {
                        if (!Pattern.matches("(/|ptid:).*", str2)) {
                            throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' does not match pattern");
                        }
                    } else {
                        throw new IllegalArgumentException("Stringan item in list 'includePropertyTemplates' is shorter than 1");
                    }
                } else {
                    throw new IllegalArgumentException("An item in list 'includePropertyTemplates' is null");
                }
            }
        }
        this.f17031f = list;
    }

    /* renamed from: i */
    public static Builder m10555i(String str) {
        return new Builder(str);
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    /* renamed from: a */
    public boolean mo10556a() {
        return this.f17167c;
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    /* renamed from: b */
    public boolean mo10557b() {
        return this.f17168d;
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    /* renamed from: c */
    public boolean mo10558c() {
        return this.f17166b;
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    /* renamed from: d */
    public TemplateFilterBase mo10559d() {
        return this.f17169e;
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    /* renamed from: e */
    public String mo10560e() {
        return this.f17165a;
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    public boolean equals(Object obj) {
        TemplateFilterBase templateFilterBase;
        TemplateFilterBase templateFilterBase2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AlphaGetMetadataArg alphaGetMetadataArg = (AlphaGetMetadataArg) obj;
        String str = this.f17165a;
        String str2 = alphaGetMetadataArg.f17165a;
        if ((str == str2 || str.equals(str2)) && this.f17166b == alphaGetMetadataArg.f17166b && this.f17167c == alphaGetMetadataArg.f17167c && this.f17168d == alphaGetMetadataArg.f17168d && ((templateFilterBase = this.f17169e) == (templateFilterBase2 = alphaGetMetadataArg.f17169e) || (templateFilterBase != null && templateFilterBase.equals(templateFilterBase2)))) {
            List<String> list = this.f17031f;
            List<String> list2 = alphaGetMetadataArg.f17031f;
            if (list == list2) {
                return true;
            }
            if (list != null && list.equals(list2)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    /* renamed from: g */
    public String mo10561g() {
        return C2492a.f17032b.serialize((C2492a) this, true);
    }

    /* renamed from: h */
    public List<String> m10562h() {
        return this.f17031f;
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17031f});
    }

    @Override // com.dropbox.core.p006v2.files.GetMetadataArg
    public String toString() {
        return C2492a.f17032b.serialize((C2492a) this, false);
    }

    public AlphaGetMetadataArg(String str) {
        this(str, false, false, false, null, null);
    }
}
