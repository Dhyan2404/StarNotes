package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.WriteError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class CreateFolderError {

    /* renamed from: a */
    public Tag f17081a;

    /* renamed from: b */
    public WriteError f17082b;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2510a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17083a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17083a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.CreateFolderError$b */
    /* loaded from: classes4.dex */
    public static class C2511b extends UnionSerializer<CreateFolderError> {

        /* renamed from: b */
        public static final C2511b f17084b = new C2511b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateFolderError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
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
            if (!"path".equals(readTag)) {
                throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
            }
            StoneSerializer.expectField("path", jsonParser);
            CreateFolderError path = CreateFolderError.path(WriteError.C2702b.f17485b.deserialize(jsonParser));
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return path;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateFolderError createFolderError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C2510a.f17083a[createFolderError.tag().ordinal()] != 1) {
                throw new IllegalArgumentException("Unrecognized tag: " + createFolderError.tag());
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            WriteError.C2702b.f17485b.serialize(createFolderError.f17082b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static CreateFolderError path(WriteError writeError) {
        if (writeError != null) {
            return new CreateFolderError().m10618c(Tag.PATH, writeError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final CreateFolderError m10617b(Tag tag) {
        CreateFolderError createFolderError = new CreateFolderError();
        createFolderError.f17081a = tag;
        return createFolderError;
    }

    /* renamed from: c */
    public final CreateFolderError m10618c(Tag tag, WriteError writeError) {
        CreateFolderError createFolderError = new CreateFolderError();
        createFolderError.f17081a = tag;
        createFolderError.f17082b = writeError;
        return createFolderError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateFolderError)) {
            return false;
        }
        CreateFolderError createFolderError = (CreateFolderError) obj;
        Tag tag = this.f17081a;
        if (tag != createFolderError.f17081a || C2510a.f17083a[tag.ordinal()] != 1) {
            return false;
        }
        WriteError writeError = this.f17082b;
        WriteError writeError2 = createFolderError.f17082b;
        return writeError == writeError2 || writeError.equals(writeError2);
    }

    public WriteError getPathValue() {
        if (this.f17081a == Tag.PATH) {
            return this.f17082b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17081a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17081a, this.f17082b});
    }

    public boolean isPath() {
        return this.f17081a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17081a;
    }

    public String toString() {
        return C2511b.f17084b.serialize((C2511b) this, false);
    }

    public String toStringMultiline() {
        return C2511b.f17084b.serialize((C2511b) this, true);
    }
}
