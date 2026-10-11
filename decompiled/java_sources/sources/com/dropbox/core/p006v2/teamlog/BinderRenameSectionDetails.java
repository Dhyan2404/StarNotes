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
public class BinderRenameSectionDetails {
    protected final String binderItemName;
    protected final String docTitle;
    protected final String eventUuid;
    protected final String previousBinderItemName;

    /* renamed from: com.dropbox.core.v2.teamlog.BinderRenameSectionDetails$a */
    /* loaded from: classes4.dex */
    public static class C3380a extends StructSerializer<BinderRenameSectionDetails> {

        /* renamed from: b */
        public static final C3380a f18767b = new C3380a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public BinderRenameSectionDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            String str5 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("event_uuid".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("doc_title".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("binder_item_name".equals(currentName)) {
                    str4 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("previous_binder_item_name".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
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
            BinderRenameSectionDetails binderRenameSectionDetails = new BinderRenameSectionDetails(str2, str3, str4, str5);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(binderRenameSectionDetails, binderRenameSectionDetails.toStringMultiline());
            return binderRenameSectionDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(BinderRenameSectionDetails binderRenameSectionDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("event_uuid");
            StoneSerializers.string().serialize((StoneSerializer<String>) binderRenameSectionDetails.eventUuid, jsonGenerator);
            jsonGenerator.writeFieldName("doc_title");
            StoneSerializers.string().serialize((StoneSerializer<String>) binderRenameSectionDetails.docTitle, jsonGenerator);
            jsonGenerator.writeFieldName("binder_item_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) binderRenameSectionDetails.binderItemName, jsonGenerator);
            if (binderRenameSectionDetails.previousBinderItemName != null) {
                jsonGenerator.writeFieldName("previous_binder_item_name");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) binderRenameSectionDetails.previousBinderItemName, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public BinderRenameSectionDetails(String str, String str2, String str3, String str4) {
        if (str != null) {
            this.eventUuid = str;
            if (str2 != null) {
                this.docTitle = str2;
                if (str3 != null) {
                    this.binderItemName = str3;
                    this.previousBinderItemName = str4;
                    return;
                }
                throw new IllegalArgumentException("Required value for 'binderItemName' is null");
            }
            throw new IllegalArgumentException("Required value for 'docTitle' is null");
        }
        throw new IllegalArgumentException("Required value for 'eventUuid' is null");
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
        BinderRenameSectionDetails binderRenameSectionDetails = (BinderRenameSectionDetails) obj;
        String str5 = this.eventUuid;
        String str6 = binderRenameSectionDetails.eventUuid;
        if ((str5 == str6 || str5.equals(str6)) && (((str = this.docTitle) == (str2 = binderRenameSectionDetails.docTitle) || str.equals(str2)) && ((str3 = this.binderItemName) == (str4 = binderRenameSectionDetails.binderItemName) || str3.equals(str4)))) {
            String str7 = this.previousBinderItemName;
            String str8 = binderRenameSectionDetails.previousBinderItemName;
            if (str7 == str8) {
                return true;
            }
            if (str7 != null && str7.equals(str8)) {
                return true;
            }
        }
        return false;
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

    public String getPreviousBinderItemName() {
        return this.previousBinderItemName;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.eventUuid, this.docTitle, this.binderItemName, this.previousBinderItemName});
    }

    public String toString() {
        return C3380a.f18767b.serialize((C3380a) this, false);
    }

    public String toStringMultiline() {
        return C3380a.f18767b.serialize((C3380a) this, true);
    }

    public BinderRenameSectionDetails(String str, String str2, String str3) {
        this(str, str2, str3, null);
    }
}
