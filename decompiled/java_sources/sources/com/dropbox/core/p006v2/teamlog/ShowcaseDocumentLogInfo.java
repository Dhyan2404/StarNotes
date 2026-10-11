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
public class ShowcaseDocumentLogInfo {
    protected final String showcaseId;
    protected final String showcaseTitle;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseDocumentLogInfo$a */
    /* loaded from: classes4.dex */
    public static class C4172a extends StructSerializer<ShowcaseDocumentLogInfo> {

        /* renamed from: b */
        public static final C4172a f20448b = new C4172a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseDocumentLogInfo deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("showcase_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("showcase_title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"showcase_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"showcase_title\" missing.");
            }
            ShowcaseDocumentLogInfo showcaseDocumentLogInfo = new ShowcaseDocumentLogInfo(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(showcaseDocumentLogInfo, showcaseDocumentLogInfo.toStringMultiline());
            return showcaseDocumentLogInfo;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseDocumentLogInfo showcaseDocumentLogInfo, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("showcase_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) showcaseDocumentLogInfo.showcaseId, jsonGenerator);
            jsonGenerator.writeFieldName("showcase_title");
            StoneSerializers.string().serialize((StoneSerializer<String>) showcaseDocumentLogInfo.showcaseTitle, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShowcaseDocumentLogInfo(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'showcaseId' is null");
        }
        this.showcaseId = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'showcaseTitle' is null");
        }
        this.showcaseTitle = str2;
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
        ShowcaseDocumentLogInfo showcaseDocumentLogInfo = (ShowcaseDocumentLogInfo) obj;
        String str3 = this.showcaseId;
        String str4 = showcaseDocumentLogInfo.showcaseId;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.showcaseTitle) == (str2 = showcaseDocumentLogInfo.showcaseTitle) || str.equals(str2));
    }

    public String getShowcaseId() {
        return this.showcaseId;
    }

    public String getShowcaseTitle() {
        return this.showcaseTitle;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.showcaseId, this.showcaseTitle});
    }

    public String toString() {
        return C4172a.f20448b.serialize((C4172a) this, false);
    }

    public String toStringMultiline() {
        return C4172a.f20448b.serialize((C4172a) this, true);
    }
}
