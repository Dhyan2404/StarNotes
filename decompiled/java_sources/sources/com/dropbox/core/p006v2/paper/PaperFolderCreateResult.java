package com.dropbox.core.p006v2.paper;

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
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PaperFolderCreateResult {
    protected final String folderId;

    /* renamed from: com.dropbox.core.v2.paper.PaperFolderCreateResult$a */
    /* loaded from: classes4.dex */
    public static class C2773a extends StructSerializer<PaperFolderCreateResult> {

        /* renamed from: b */
        public static final C2773a f17618b = new C2773a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperFolderCreateResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (OnyxStatisticConstant.KEY_FOLDER_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"folder_id\" missing.");
            }
            PaperFolderCreateResult paperFolderCreateResult = new PaperFolderCreateResult(str2);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperFolderCreateResult, paperFolderCreateResult.toStringMultiline());
            return paperFolderCreateResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperFolderCreateResult paperFolderCreateResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(OnyxStatisticConstant.KEY_FOLDER_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) paperFolderCreateResult.folderId, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperFolderCreateResult(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'folderId' is null");
        }
        this.folderId = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        String str = this.folderId;
        String str2 = ((PaperFolderCreateResult) obj).folderId;
        return str == str2 || str.equals(str2);
    }

    public String getFolderId() {
        return this.folderId;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.folderId});
    }

    public String toString() {
        return C2773a.f17618b.serialize((C2773a) this, false);
    }

    public String toStringMultiline() {
        return C2773a.f17618b.serialize((C2773a) this, true);
    }
}
