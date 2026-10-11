package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
import com.dropbox.core.p006v2.files.WriteError;
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
public final class RestoreError {
    public static final RestoreError INVALID_REVISION = new RestoreError().m11011c(Tag.INVALID_REVISION);
    public static final RestoreError OTHER = new RestoreError().m11011c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17351a;

    /* renamed from: b */
    public LookupError f17352b;

    /* renamed from: c */
    public WriteError f17353c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH_LOOKUP,
        PATH_WRITE,
        INVALID_REVISION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.RestoreError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2632a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17354a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17354a = iArr;
            try {
                iArr[Tag.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17354a[Tag.PATH_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17354a[Tag.INVALID_REVISION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17354a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.RestoreError$b */
    /* loaded from: classes4.dex */
    public static class C2633b extends UnionSerializer<RestoreError> {

        /* renamed from: b */
        public static final C2633b f17355b = new C2633b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RestoreError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RestoreError restoreError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("path_lookup".equals(readTag)) {
                StoneSerializer.expectField("path_lookup", jsonParser);
                restoreError = RestoreError.pathLookup(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("path_write".equals(readTag)) {
                StoneSerializer.expectField("path_write", jsonParser);
                restoreError = RestoreError.pathWrite(WriteError.C2702b.f17485b.deserialize(jsonParser));
            } else {
                restoreError = "invalid_revision".equals(readTag) ? RestoreError.INVALID_REVISION : RestoreError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return restoreError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RestoreError restoreError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2632a.f17354a[restoreError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path_lookup", jsonGenerator);
                jsonGenerator.writeFieldName("path_lookup");
                LookupError.Serializer.INSTANCE.serialize(restoreError.f17352b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("invalid_revision");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("path_write", jsonGenerator);
            jsonGenerator.writeFieldName("path_write");
            WriteError.C2702b.f17485b.serialize(restoreError.f17353c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static RestoreError pathLookup(LookupError lookupError) {
        if (lookupError != null) {
            return new RestoreError().m11012d(Tag.PATH_LOOKUP, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static RestoreError pathWrite(WriteError writeError) {
        if (writeError != null) {
            return new RestoreError().m11013e(Tag.PATH_WRITE, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final RestoreError m11011c(Tag tag) {
        RestoreError restoreError = new RestoreError();
        restoreError.f17351a = tag;
        return restoreError;
    }

    /* renamed from: d */
    public final RestoreError m11012d(Tag tag, LookupError lookupError) {
        RestoreError restoreError = new RestoreError();
        restoreError.f17351a = tag;
        restoreError.f17352b = lookupError;
        return restoreError;
    }

    /* renamed from: e */
    public final RestoreError m11013e(Tag tag, WriteError writeError) {
        RestoreError restoreError = new RestoreError();
        restoreError.f17351a = tag;
        restoreError.f17353c = writeError;
        return restoreError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RestoreError)) {
            return false;
        }
        RestoreError restoreError = (RestoreError) obj;
        Tag tag = this.f17351a;
        if (tag != restoreError.f17351a) {
            return false;
        }
        int i = C2632a.f17354a[tag.ordinal()];
        if (i == 1) {
            LookupError lookupError = this.f17352b;
            LookupError lookupError2 = restoreError.f17352b;
            return lookupError == lookupError2 || lookupError.equals(lookupError2);
        }
        if (i != 2) {
            return i == 3 || i == 4;
        }
        WriteError writeError = this.f17353c;
        WriteError writeError2 = restoreError.f17353c;
        return writeError == writeError2 || writeError.equals(writeError2);
    }

    public LookupError getPathLookupValue() {
        if (this.f17351a == Tag.PATH_LOOKUP) {
            return this.f17352b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH_LOOKUP, but was Tag." + this.f17351a.name());
    }

    public WriteError getPathWriteValue() {
        if (this.f17351a == Tag.PATH_WRITE) {
            return this.f17353c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH_WRITE, but was Tag." + this.f17351a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17351a, this.f17352b, this.f17353c});
    }

    public boolean isInvalidRevision() {
        return this.f17351a == Tag.INVALID_REVISION;
    }

    public boolean isOther() {
        return this.f17351a == Tag.OTHER;
    }

    public boolean isPathLookup() {
        return this.f17351a == Tag.PATH_LOOKUP;
    }

    public boolean isPathWrite() {
        return this.f17351a == Tag.PATH_WRITE;
    }

    public Tag tag() {
        return this.f17351a;
    }

    public String toString() {
        return C2633b.f17355b.serialize((C2633b) this, false);
    }

    public String toStringMultiline() {
        return C2633b.f17355b.serialize((C2633b) this, true);
    }
}
