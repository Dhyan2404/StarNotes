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
public class BinderAddPageDetails {
    protected final String binderItemName;
    protected final String docTitle;
    protected final String eventUuid;

    /* renamed from: com.dropbox.core.v2.teamlog.BinderAddPageDetails$a */
    /* loaded from: classes4.dex */
    public static class C3370a extends StructSerializer<BinderAddPageDetails> {

        /* renamed from: b */
        public static final C3370a f18757b = new C3370a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BinderAddPageDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("doc_title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("binder_item_name".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"event_uuid\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_title\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"binder_item_name\" missing.");
            }
            BinderAddPageDetails binderAddPageDetails = new BinderAddPageDetails(str2, str3, str4);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(binderAddPageDetails, binderAddPageDetails.toStringMultiline());
            return binderAddPageDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(BinderAddPageDetails binderAddPageDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) binderAddPageDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("doc_title");
            StoneSerializers.string().serialize((StoneSerializer<String>) binderAddPageDetails.docTitle, jsonGenerator);
            jsonGenerator.writeFieldName("binder_item_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) binderAddPageDetails.binderItemName, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public BinderAddPageDetails(String str, String str2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'eventUuid' is null");
        }
        this.eventUuid = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'docTitle' is null");
        }
        this.docTitle = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'binderItemName' is null");
        }
        this.binderItemName = str3;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        BinderAddPageDetails binderAddPageDetails = (BinderAddPageDetails) obj;
        String str5 = this.eventUuid;
        String str6 = binderAddPageDetails.eventUuid;
        return (str5 == str6 || str5.equals(str6)) && ((str = this.docTitle) == (str2 = binderAddPageDetails.docTitle) || str.equals(str2)) && ((str3 = this.binderItemName) == (str4 = binderAddPageDetails.binderItemName) || str3.equals(str4));
    }

    public String getBinderItemName() {
        return this.binderItemName;
    }

    public String getDocTitle() {
        return this.docTitle;
    }

    public String getEventUuid() {
        return this.eventUuid;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.docTitle, this.binderItemName});
    }

    public String toString() {
        return C3370a.f18757b.serialize((C3370a) this, false);
    }

    public String toStringMultiline() {
        return C3370a.f18757b.serialize((C3370a) this, true);
    }
}
