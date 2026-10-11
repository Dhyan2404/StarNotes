package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.fileproperties.TemplateFilterBase;
import com.dropbox.core.p006v2.files.SharedLink;
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
public class ListFolderArg {

    /* renamed from: a */
    public final String f17199a;

    /* renamed from: b */
    public final boolean f17200b;

    /* renamed from: c */
    public final boolean f17201c;

    /* renamed from: d */
    public final boolean f17202d;

    /* renamed from: e */
    public final boolean f17203e;

    /* renamed from: f */
    public final boolean f17204f;

    /* renamed from: g */
    public final Long f17205g;

    /* renamed from: h */
    public final SharedLink f17206h;

    /* renamed from: i */
    public final TemplateFilterBase f17207i;

    /* renamed from: j */
    public final boolean f17208j;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected boolean includeDeleted;
        protected boolean includeHasExplicitSharedMembers;
        protected boolean includeMediaInfo;
        protected boolean includeMountedFolders;
        protected boolean includeNonDownloadableFiles;
        protected TemplateFilterBase includePropertyGroups;
        protected Long limit;
        protected final String path;
        protected boolean recursive;
        protected SharedLink sharedLink;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.recursive = false;
            this.includeMediaInfo = false;
            this.includeDeleted = false;
            this.includeHasExplicitSharedMembers = false;
            this.includeMountedFolders = true;
            this.limit = null;
            this.sharedLink = null;
            this.includePropertyGroups = null;
            this.includeNonDownloadableFiles = true;
        }

        public ListFolderArg build() {
            return new ListFolderArg(this.path, this.recursive, this.includeMediaInfo, this.includeDeleted, this.includeHasExplicitSharedMembers, this.includeMountedFolders, this.limit, this.sharedLink, this.includePropertyGroups, this.includeNonDownloadableFiles);
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

        public Builder withIncludeMountedFolders(Boolean bool) {
            if (bool != null) {
                this.includeMountedFolders = bool.booleanValue();
            } else {
                this.includeMountedFolders = true;
            }
            return this;
        }

        public Builder withIncludeNonDownloadableFiles(Boolean bool) {
            if (bool != null) {
                this.includeNonDownloadableFiles = bool.booleanValue();
            } else {
                this.includeNonDownloadableFiles = true;
            }
            return this;
        }

        public Builder withIncludePropertyGroups(TemplateFilterBase templateFilterBase) {
            this.includePropertyGroups = templateFilterBase;
            return this;
        }

        public Builder withLimit(Long l) {
            if (l != null) {
                if (l.longValue() < 1) {
                    throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
                }
                if (l.longValue() > 2000) {
                    throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
                }
            }
            this.limit = l;
            return this;
        }

        public Builder withRecursive(Boolean bool) {
            if (bool != null) {
                this.recursive = bool.booleanValue();
            } else {
                this.recursive = false;
            }
            return this;
        }

        public Builder withSharedLink(SharedLink sharedLink) {
            this.sharedLink = sharedLink;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ListFolderArg$a */
    /* loaded from: classes4.dex */
    public static class C2568a extends StructSerializer<ListFolderArg> {

        /* renamed from: b */
        public static final C2568a f17209b = new C2568a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Long l = null;
            SharedLink sharedLink = null;
            TemplateFilterBase templateFilterBase = null;
            Boolean bool2 = bool;
            Boolean bool3 = bool2;
            Boolean bool4 = Boolean.TRUE;
            Boolean bool5 = bool4;
            Boolean bool6 = bool3;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("recursive".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_media_info".equals(currentName)) {
                    bool2 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_deleted".equals(currentName)) {
                    bool6 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_has_explicit_shared_members".equals(currentName)) {
                    bool3 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("include_mounted_folders".equals(currentName)) {
                    bool4 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = (Long) StoneSerializers.nullable(StoneSerializers.uInt32()).deserialize(jsonParser);
                } else if ("shared_link".equals(currentName)) {
                    sharedLink = (SharedLink) StoneSerializers.nullableStruct(SharedLink.C2657a.f17405b).deserialize(jsonParser);
                } else if ("include_property_groups".equals(currentName)) {
                    templateFilterBase = (TemplateFilterBase) StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).deserialize(jsonParser);
                } else if ("include_non_downloadable_files".equals(currentName)) {
                    bool5 = StoneSerializers.boolean_().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            ListFolderArg listFolderArg = new ListFolderArg(str2, bool.booleanValue(), bool2.booleanValue(), bool6.booleanValue(), bool3.booleanValue(), bool4.booleanValue(), l, sharedLink, templateFilterBase, bool5.booleanValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFolderArg, listFolderArg.m10821l());
            return listFolderArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderArg listFolderArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) listFolderArg.f17199a, jsonGenerator);
            jsonGenerator.writeFieldName("recursive");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderArg.f17200b), jsonGenerator);
            jsonGenerator.writeFieldName("include_media_info");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderArg.f17201c), jsonGenerator);
            jsonGenerator.writeFieldName("include_deleted");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderArg.f17202d), jsonGenerator);
            jsonGenerator.writeFieldName("include_has_explicit_shared_members");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderArg.f17203e), jsonGenerator);
            jsonGenerator.writeFieldName("include_mounted_folders");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderArg.f17204f), jsonGenerator);
            if (listFolderArg.f17205g != null) {
                jsonGenerator.writeFieldName("limit");
                StoneSerializers.nullable(StoneSerializers.uInt32()).serialize((StoneSerializer) listFolderArg.f17205g, jsonGenerator);
            }
            if (listFolderArg.f17206h != null) {
                jsonGenerator.writeFieldName("shared_link");
                StoneSerializers.nullableStruct(SharedLink.C2657a.f17405b).serialize((StructSerializer) listFolderArg.f17206h, jsonGenerator);
            }
            if (listFolderArg.f17207i != null) {
                jsonGenerator.writeFieldName("include_property_groups");
                StoneSerializers.nullable(TemplateFilterBase.Serializer.INSTANCE).serialize((StoneSerializer) listFolderArg.f17207i, jsonGenerator);
            }
            jsonGenerator.writeFieldName("include_non_downloadable_files");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(listFolderArg.f17208j), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFolderArg(String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, Long l, SharedLink sharedLink, TemplateFilterBase templateFilterBase, boolean z6) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*)?|id:.*|(ns:[0-9]+(/.*)?)", str)) {
                this.f17199a = str;
                this.f17200b = z;
                this.f17201c = z2;
                this.f17202d = z3;
                this.f17203e = z4;
                this.f17204f = z5;
                if (l != null) {
                    if (l.longValue() < 1) {
                        throw new IllegalArgumentException("Number 'limit' is smaller than 1L");
                    }
                    if (l.longValue() > 2000) {
                        throw new IllegalArgumentException("Number 'limit' is larger than 2000L");
                    }
                }
                this.f17205g = l;
                this.f17206h = sharedLink;
                this.f17207i = templateFilterBase;
                this.f17208j = z6;
                return;
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: k */
    public static Builder m10810k(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public boolean m10811a() {
        return this.f17202d;
    }

    /* renamed from: b */
    public boolean m10812b() {
        return this.f17203e;
    }

    /* renamed from: c */
    public boolean m10813c() {
        return this.f17201c;
    }

    /* renamed from: d */
    public boolean m10814d() {
        return this.f17204f;
    }

    /* renamed from: e */
    public boolean m10815e() {
        return this.f17208j;
    }

    public boolean equals(Object obj) {
        Long l;
        Long l2;
        SharedLink sharedLink;
        SharedLink sharedLink2;
        TemplateFilterBase templateFilterBase;
        TemplateFilterBase templateFilterBase2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFolderArg listFolderArg = (ListFolderArg) obj;
        String str = this.f17199a;
        String str2 = listFolderArg.f17199a;
        return (str == str2 || str.equals(str2)) && this.f17200b == listFolderArg.f17200b && this.f17201c == listFolderArg.f17201c && this.f17202d == listFolderArg.f17202d && this.f17203e == listFolderArg.f17203e && this.f17204f == listFolderArg.f17204f && ((l = this.f17205g) == (l2 = listFolderArg.f17205g) || (l != null && l.equals(l2))) && (((sharedLink = this.f17206h) == (sharedLink2 = listFolderArg.f17206h) || (sharedLink != null && sharedLink.equals(sharedLink2))) && (((templateFilterBase = this.f17207i) == (templateFilterBase2 = listFolderArg.f17207i) || (templateFilterBase != null && templateFilterBase.equals(templateFilterBase2))) && this.f17208j == listFolderArg.f17208j));
    }

    /* renamed from: f */
    public TemplateFilterBase m10816f() {
        return this.f17207i;
    }

    /* renamed from: g */
    public Long m10817g() {
        return this.f17205g;
    }

    /* renamed from: h */
    public String m10818h() {
        return this.f17199a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17199a, Boolean.valueOf(this.f17200b), Boolean.valueOf(this.f17201c), Boolean.valueOf(this.f17202d), Boolean.valueOf(this.f17203e), Boolean.valueOf(this.f17204f), this.f17205g, this.f17206h, this.f17207i, Boolean.valueOf(this.f17208j)});
    }

    /* renamed from: i */
    public boolean m10819i() {
        return this.f17200b;
    }

    /* renamed from: j */
    public SharedLink m10820j() {
        return this.f17206h;
    }

    /* renamed from: l */
    public String m10821l() {
        return C2568a.f17209b.serialize((C2568a) this, true);
    }

    public String toString() {
        return C2568a.f17209b.serialize((C2568a) this, false);
    }

    public ListFolderArg(String str) {
        this(str, false, false, false, false, true, null, null, null, true);
    }
}
