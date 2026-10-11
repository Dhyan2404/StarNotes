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
public class ShowcaseFileDownloadDetails {
    protected final String downloadType;
    protected final String eventUuid;

    /* renamed from: com.dropbox.core.v2.teamlog.ShowcaseFileDownloadDetails$a */
    /* loaded from: classes4.dex */
    public static class C4185a extends StructSerializer<ShowcaseFileDownloadDetails> {

        /* renamed from: b */
        public static final C4185a f20461b = new C4185a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShowcaseFileDownloadDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("download_type".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"download_type\" missing.");
            }
            ShowcaseFileDownloadDetails showcaseFileDownloadDetails = new ShowcaseFileDownloadDetails(str2, str3);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(showcaseFileDownloadDetails, showcaseFileDownloadDetails.toStringMultiline());
            return showcaseFileDownloadDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShowcaseFileDownloadDetails showcaseFileDownloadDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) showcaseFileDownloadDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("download_type");
            StoneSerializers.string().serialize((StoneSerializer<String>) showcaseFileDownloadDetails.downloadType, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ShowcaseFileDownloadDetails(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'downloadType' is null");
        }
        this.downloadType = str2;
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
        ShowcaseFileDownloadDetails showcaseFileDownloadDetails = (ShowcaseFileDownloadDetails) obj;
        String str3 = this.eventUuid;
        String str4 = showcaseFileDownloadDetails.eventUuid;
        return (str3 == str4 || str3.equals(str4)) && ((str = this.downloadType) == (str2 = showcaseFileDownloadDetails.downloadType) || str.equals(str2));
    }

    public String getDownloadType() {
        return this.downloadType;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.downloadType});
    }

    public String toString() {
        return C4185a.f20461b.serialize((C4185a) this, false);
    }

    public String toStringMultiline() {
        return C4185a.f20461b.serialize((C4185a) this, true);
    }
}
