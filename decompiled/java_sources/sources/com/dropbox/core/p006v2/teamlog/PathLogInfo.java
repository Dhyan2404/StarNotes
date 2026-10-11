package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.NamespaceRelativePathLogInfo;
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
public class PathLogInfo {
    protected final String contextual;
    protected final NamespaceRelativePathLogInfo namespaceRelative;

    /* renamed from: com.dropbox.core.v2.teamlog.PathLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3958a extends StructSerializer<PathLogInfo> {

        /* renamed from: b */
        public static final C3958a f20234b = new C3958a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PathLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            NamespaceRelativePathLogInfo namespaceRelativePathLogInfo = null;
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("namespace_relative".equals(currentName)) {
                    namespaceRelativePathLogInfo = NamespaceRelativePathLogInfo.C3796a.f20069b.deserialize(jsonParser);
                } else if ("contextual".equals(currentName)) {
                    str2 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (namespaceRelativePathLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"namespace_relative\" missing.");
            }
            PathLogInfo pathLogInfo = new PathLogInfo(namespaceRelativePathLogInfo, str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(pathLogInfo, pathLogInfo.toStringMultiline());
            return pathLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PathLogInfo pathLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("namespace_relative");
            NamespaceRelativePathLogInfo.C3796a.f20069b.serialize((NamespaceRelativePathLogInfo.C3796a) pathLogInfo.namespaceRelative, jsonGenerator);
            if (pathLogInfo.contextual != null) {
                jsonGenerator.writeFieldName("contextual");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) pathLogInfo.contextual, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PathLogInfo(NamespaceRelativePathLogInfo namespaceRelativePathLogInfo, String str) {
        this.contextual = str;
        if (namespaceRelativePathLogInfo != null) {
            this.namespaceRelative = namespaceRelativePathLogInfo;
            return;
        }
        throw new IllegalArgumentException("Required value for 'namespaceRelative' is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        PathLogInfo pathLogInfo = (PathLogInfo) obj;
        NamespaceRelativePathLogInfo namespaceRelativePathLogInfo = this.namespaceRelative;
        NamespaceRelativePathLogInfo namespaceRelativePathLogInfo2 = pathLogInfo.namespaceRelative;
        if (namespaceRelativePathLogInfo == namespaceRelativePathLogInfo2 || namespaceRelativePathLogInfo.equals(namespaceRelativePathLogInfo2)) {
            String str = this.contextual;
            String str2 = pathLogInfo.contextual;
            if (str == str2) {
                return true;
            }
            if (str != null && str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public String getContextual() {
        return this.contextual;
    }

    public NamespaceRelativePathLogInfo getNamespaceRelative() {
        return this.namespaceRelative;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.contextual, this.namespaceRelative});
    }

    public String toString() {
        return C3958a.f20234b.serialize((C3958a) this, false);
    }

    public String toStringMultiline() {
        return C3958a.f20234b.serialize((C3958a) this, true);
    }

    public PathLogInfo(NamespaceRelativePathLogInfo namespaceRelativePathLogInfo) {
        this(namespaceRelativePathLogInfo, null);
    }
}
