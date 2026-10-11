package com.dropbox.core.p006v2.teamlog;

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

/* loaded from: classes4.dex */
public class NamespaceRelativePathLogInfo {
    protected final Boolean isSharedNamespace;
    protected final String nsId;
    protected final String relativePath;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected String nsId = null;
        protected String relativePath = null;
        protected Boolean isSharedNamespace = null;

        public NamespaceRelativePathLogInfo build() {
            return new NamespaceRelativePathLogInfo(this.nsId, this.relativePath, this.isSharedNamespace);
        }

        public Builder withIsSharedNamespace(Boolean bool) {
            this.isSharedNamespace = bool;
            return this;
        }

        public Builder withNsId(String str) {
            this.nsId = str;
            return this;
        }

        public Builder withRelativePath(String str) {
            this.relativePath = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.NamespaceRelativePathLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3796a extends StructSerializer<NamespaceRelativePathLogInfo> {

        /* renamed from: b */
        public static final C3796a f20069b = new C3796a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NamespaceRelativePathLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str3 = null;
            Boolean bool = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("ns_id".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("relative_path".equals(currentName)) {
                    str3 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("is_shared_namespace".equals(currentName)) {
                    bool = (Boolean) StoneSerializers.nullable(StoneSerializers.boolean_()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            NamespaceRelativePathLogInfo namespaceRelativePathLogInfo = new NamespaceRelativePathLogInfo(str2, str3, bool);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(namespaceRelativePathLogInfo, namespaceRelativePathLogInfo.toStringMultiline());
            return namespaceRelativePathLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NamespaceRelativePathLogInfo namespaceRelativePathLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (namespaceRelativePathLogInfo.nsId != null) {
                jsonGenerator.writeFieldName("ns_id");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) namespaceRelativePathLogInfo.nsId, jsonGenerator);
            }
            if (namespaceRelativePathLogInfo.relativePath != null) {
                jsonGenerator.writeFieldName("relative_path");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) namespaceRelativePathLogInfo.relativePath, jsonGenerator);
            }
            if (namespaceRelativePathLogInfo.isSharedNamespace != null) {
                jsonGenerator.writeFieldName("is_shared_namespace");
                StoneSerializers.nullable(StoneSerializers.boolean_()).serialize((StoneSerializer) namespaceRelativePathLogInfo.isSharedNamespace, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public NamespaceRelativePathLogInfo(String str, String str2, Boolean bool) {
        this.nsId = str;
        this.relativePath = str2;
        this.isSharedNamespace = bool;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        NamespaceRelativePathLogInfo namespaceRelativePathLogInfo = (NamespaceRelativePathLogInfo) obj;
        String str3 = this.nsId;
        String str4 = namespaceRelativePathLogInfo.nsId;
        if ((str3 == str4 || (str3 != null && str3.equals(str4))) && ((str = this.relativePath) == (str2 = namespaceRelativePathLogInfo.relativePath) || (str != null && str.equals(str2)))) {
            Boolean bool = this.isSharedNamespace;
            Boolean bool2 = namespaceRelativePathLogInfo.isSharedNamespace;
            if (bool == bool2) {
                return true;
            }
            if (bool != null && bool.equals(bool2)) {
                return true;
            }
        }
        return false;
    }

    public Boolean getIsSharedNamespace() {
        return this.isSharedNamespace;
    }

    public String getNsId() {
        return this.nsId;
    }

    public String getRelativePath() {
        return this.relativePath;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.nsId, this.relativePath, this.isSharedNamespace});
    }

    public String toString() {
        return C3796a.f20069b.serialize((C3796a) this, false);
    }

    public String toStringMultiline() {
        return C3796a.f20069b.serialize((C3796a) this, true);
    }

    public NamespaceRelativePathLogInfo() {
        this(null, null, null);
    }
}
