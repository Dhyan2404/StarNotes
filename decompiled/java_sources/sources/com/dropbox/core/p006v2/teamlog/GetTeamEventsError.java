package com.dropbox.core.p006v2.teamlog;

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

/* loaded from: classes4.dex */
public enum GetTeamEventsError {
    ACCOUNT_ID_NOT_FOUND,
    INVALID_TIME_RANGE,
    INVALID_FILTERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3635a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19903a;

        static {
            int[] iArr = new int[GetTeamEventsError.values().length];
            f19903a = iArr;
            try {
                iArr[GetTeamEventsError.ACCOUNT_ID_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19903a[GetTeamEventsError.INVALID_TIME_RANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19903a[GetTeamEventsError.INVALID_FILTERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsError$b */
    /* loaded from: classes4.dex */
    public static class C3636b extends UnionSerializer<GetTeamEventsError> {

        /* renamed from: b */
        public static final C3636b f19904b = new C3636b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTeamEventsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GetTeamEventsError getTeamEventsError = "account_id_not_found".equals(readTag) ? GetTeamEventsError.ACCOUNT_ID_NOT_FOUND : "invalid_time_range".equals(readTag) ? GetTeamEventsError.INVALID_TIME_RANGE : "invalid_filters".equals(readTag) ? GetTeamEventsError.INVALID_FILTERS : GetTeamEventsError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getTeamEventsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetTeamEventsError getTeamEventsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3635a.f19903a[getTeamEventsError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("account_id_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("invalid_time_range");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("invalid_filters");
            }
        }
    }
}
