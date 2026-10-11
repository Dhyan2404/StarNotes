package com.dropbox.core.p006v2.common;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class PathRoot {
    public static final PathRoot HOME = new PathRoot().m10359c(Tag.HOME);
    public static final PathRoot OTHER = new PathRoot().m10359c(Tag.OTHER);

    /* renamed from: a */
    public Tag f16888a;

    /* renamed from: b */
    public String f16889b;

    /* renamed from: c */
    public String f16890c;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PathRoot> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PathRoot deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PathRoot pathRoot;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("home".equals(readTag)) {
                    pathRoot = PathRoot.HOME;
                } else if ("root".equals(readTag)) {
                    StoneSerializer.expectField("root", jsonParser);
                    pathRoot = PathRoot.root(StoneSerializers.string().deserialize(jsonParser));
                } else if ("namespace_id".equals(readTag)) {
                    StoneSerializer.expectField("namespace_id", jsonParser);
                    pathRoot = PathRoot.namespaceId(StoneSerializers.string().deserialize(jsonParser));
                } else {
                    pathRoot = PathRoot.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return pathRoot;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PathRoot pathRoot, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2420a.f16891a[pathRoot.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("home");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("root", jsonGenerator);
                jsonGenerator.writeFieldName("root");
                StoneSerializers.string().serialize((StoneSerializer<String>) pathRoot.f16889b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("namespace_id", jsonGenerator);
            jsonGenerator.writeFieldName("namespace_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) pathRoot.f16890c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        HOME,
        ROOT,
        NAMESPACE_ID,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.common.PathRoot$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2420a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16891a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16891a = iArr;
            try {
                iArr[Tag.HOME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16891a[Tag.ROOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16891a[Tag.NAMESPACE_ID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16891a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static PathRoot namespaceId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            return new PathRoot().m10360d(Tag.NAMESPACE_ID, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static PathRoot root(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            return new PathRoot().m10361e(Tag.ROOT, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: c */
    public final PathRoot m10359c(Tag tag) {
        PathRoot pathRoot = new PathRoot();
        pathRoot.f16888a = tag;
        return pathRoot;
    }

    /* renamed from: d */
    public final PathRoot m10360d(Tag tag, String str) {
        PathRoot pathRoot = new PathRoot();
        pathRoot.f16888a = tag;
        pathRoot.f16890c = str;
        return pathRoot;
    }

    /* renamed from: e */
    public final PathRoot m10361e(Tag tag, String str) {
        PathRoot pathRoot = new PathRoot();
        pathRoot.f16888a = tag;
        pathRoot.f16889b = str;
        return pathRoot;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PathRoot)) {
            return false;
        }
        PathRoot pathRoot = (PathRoot) obj;
        Tag tag = this.f16888a;
        if (tag != pathRoot.f16888a) {
            return false;
        }
        int i = C2420a.f16891a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            String str = this.f16889b;
            String str2 = pathRoot.f16889b;
            return str == str2 || str.equals(str2);
        }
        if (i != 3) {
            return i == 4;
        }
        String str3 = this.f16890c;
        String str4 = pathRoot.f16890c;
        return str3 == str4 || str3.equals(str4);
    }

    public String getNamespaceIdValue() {
        if (this.f16888a == Tag.NAMESPACE_ID) {
            return this.f16890c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NAMESPACE_ID, but was Tag." + this.f16888a.name());
    }

    public String getRootValue() {
        if (this.f16888a == Tag.ROOT) {
            return this.f16889b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ROOT, but was Tag." + this.f16888a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16888a, this.f16889b, this.f16890c});
    }

    public boolean isHome() {
        return this.f16888a == Tag.HOME;
    }

    public boolean isNamespaceId() {
        return this.f16888a == Tag.NAMESPACE_ID;
    }

    public boolean isOther() {
        return this.f16888a == Tag.OTHER;
    }

    public boolean isRoot() {
        return this.f16888a == Tag.ROOT;
    }

    public Tag tag() {
        return this.f16888a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
