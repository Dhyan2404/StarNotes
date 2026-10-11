package com.dropbox.core.p006v2.common;

import com.dropbox.core.p006v2.common.RootInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class PathRootError {
    public static final PathRootError NO_PERMISSION = new PathRootError().m10363b(Tag.NO_PERMISSION);
    public static final PathRootError OTHER = new PathRootError().m10363b(Tag.OTHER);

    /* renamed from: a */
    public Tag f16892a;

    /* renamed from: b */
    public RootInfo f16893b;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<PathRootError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public PathRootError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PathRootError pathRootError;
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
                if ("invalid_root".equals(readTag)) {
                    StoneSerializer.expectField("invalid_root", jsonParser);
                    pathRootError = PathRootError.invalidRoot(RootInfo.Serializer.INSTANCE.deserialize(jsonParser));
                } else if ("no_permission".equals(readTag)) {
                    pathRootError = PathRootError.NO_PERMISSION;
                } else {
                    pathRootError = PathRootError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return pathRootError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(PathRootError pathRootError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2421a.f16894a[pathRootError.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("no_permission");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("invalid_root", jsonGenerator);
            jsonGenerator.writeFieldName("invalid_root");
            RootInfo.Serializer.INSTANCE.serialize((RootInfo.Serializer) pathRootError.f16893b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        INVALID_ROOT,
        NO_PERMISSION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.common.PathRootError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2421a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16894a;

        static {
            int[] iArr = new int[Tag.values().length];
            f16894a = iArr;
            try {
                iArr[Tag.INVALID_ROOT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16894a[Tag.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16894a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static PathRootError invalidRoot(RootInfo rootInfo) {
        if (rootInfo != null) {
            return new PathRootError().m10364c(Tag.INVALID_ROOT, rootInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final PathRootError m10363b(Tag tag) {
        PathRootError pathRootError = new PathRootError();
        pathRootError.f16892a = tag;
        return pathRootError;
    }

    /* renamed from: c */
    public final PathRootError m10364c(Tag tag, RootInfo rootInfo) {
        PathRootError pathRootError = new PathRootError();
        pathRootError.f16892a = tag;
        pathRootError.f16893b = rootInfo;
        return pathRootError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PathRootError)) {
            return false;
        }
        PathRootError pathRootError = (PathRootError) obj;
        Tag tag = this.f16892a;
        if (tag != pathRootError.f16892a) {
            return false;
        }
        int i = C2421a.f16894a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        RootInfo rootInfo = this.f16893b;
        RootInfo rootInfo2 = pathRootError.f16893b;
        return rootInfo == rootInfo2 || rootInfo.equals(rootInfo2);
    }

    public RootInfo getInvalidRootValue() {
        if (this.f16892a == Tag.INVALID_ROOT) {
            return this.f16893b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_ROOT, but was Tag." + this.f16892a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f16892a, this.f16893b});
    }

    public boolean isInvalidRoot() {
        return this.f16892a == Tag.INVALID_ROOT;
    }

    public boolean isNoPermission() {
        return this.f16892a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f16892a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f16892a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
