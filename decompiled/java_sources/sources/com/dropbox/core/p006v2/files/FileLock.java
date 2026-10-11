package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.FileLockContent;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class FileLock {
    protected final FileLockContent content;

    /* renamed from: com.dropbox.core.v2.files.FileLock$a */
    /* loaded from: classes4.dex */
    public static class C2539a extends StructSerializer<FileLock> {

        /* renamed from: b */
        public static final C2539a f17143b = new C2539a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileLock deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            FileLockContent fileLockContent = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("content".equals(currentName)) {
                    fileLockContent = FileLockContent.C2541b.f17147b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (fileLockContent == null) {
                throw new JsonParseException(jsonParser, "Required field \"content\" missing.");
            }
            FileLock fileLock = new FileLock(fileLockContent);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(fileLock, fileLock.toStringMultiline());
            return fileLock;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileLock fileLock, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("content");
            FileLockContent.C2541b.f17147b.serialize(fileLock.content, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public FileLock(FileLockContent fileLockContent) {
        if (fileLockContent == null) {
            throw new IllegalArgumentException("Required value for 'content' is null");
        }
        this.content = fileLockContent;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        FileLockContent fileLockContent = this.content;
        FileLockContent fileLockContent2 = ((FileLock) obj).content;
        return fileLockContent == fileLockContent2 || fileLockContent.equals(fileLockContent2);
    }

    public FileLockContent getContent() {
        return this.content;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.content});
    }

    public String toString() {
        return C2539a.f17143b.serialize((C2539a) this, false);
    }

    public String toStringMultiline() {
        return C2539a.f17143b.serialize((C2539a) this, true);
    }
}
