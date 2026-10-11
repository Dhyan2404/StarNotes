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
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class PaperFolderLogInfo {
    protected final String folderId;
    protected final String folderName;

    /* renamed from: com.dropbox.core.v2.teamlog.PaperFolderLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C3933a extends StructSerializer<PaperFolderLogInfo> {

        /* renamed from: b */
        public static final C3933a f20206b = new C3933a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperFolderLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (OnyxStatisticConstant.KEY_FOLDER_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("folder_name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"folder_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"folder_name\" missing.");
            }
            PaperFolderLogInfo paperFolderLogInfo = new PaperFolderLogInfo(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(paperFolderLogInfo, paperFolderLogInfo.toStringMultiline());
            return paperFolderLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperFolderLogInfo paperFolderLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(OnyxStatisticConstant.KEY_FOLDER_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) paperFolderLogInfo.folderId, jsonGenerator);
            jsonGenerator.writeFieldName("folder_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) paperFolderLogInfo.folderName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public PaperFolderLogInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'folderId' is null");
        }
        this.folderId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'folderName' is null");
        }
        this.folderName = str2;
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
        PaperFolderLogInfo paperFolderLogInfo = (PaperFolderLogInfo) obj;
        String str3 = this.folderId;
        String str4 = paperFolderLogInfo.folderId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.folderName) == (str2 = paperFolderLogInfo.folderName) || str.equals(str2));
    }

    public String getFolderId() {
        return this.folderId;
    }

    public String getFolderName() {
        return this.folderName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.folderId, this.folderName});
    }

    public String toString() {
        return C3933a.f20206b.serialize((C3933a) this, false);
    }

    public String toStringMultiline() {
        return C3933a.f20206b.serialize((C3933a) this, true);
    }
}
