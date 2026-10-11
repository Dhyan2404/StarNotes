package com.dropbox.core.p006v2.paper;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum AddPaperDocUserResult {
    SUCCESS,
    UNKNOWN_ERROR,
    SHARING_OUTSIDE_TEAM_DISABLED,
    DAILY_LIMIT_REACHED,
    USER_IS_OWNER,
    FAILED_USER_DATA_RETRIEVAL,
    PERMISSION_ALREADY_GRANTED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.paper.AddPaperDocUserResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2729a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17548a;

        static {
            int[] iArr = new int[AddPaperDocUserResult.values().length];
            f17548a = iArr;
            try {
                iArr[AddPaperDocUserResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17548a[AddPaperDocUserResult.UNKNOWN_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17548a[AddPaperDocUserResult.SHARING_OUTSIDE_TEAM_DISABLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17548a[AddPaperDocUserResult.DAILY_LIMIT_REACHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17548a[AddPaperDocUserResult.USER_IS_OWNER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17548a[AddPaperDocUserResult.FAILED_USER_DATA_RETRIEVAL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17548a[AddPaperDocUserResult.PERMISSION_ALREADY_GRANTED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.AddPaperDocUserResult$b */
    /* loaded from: classes4.dex */
    public static class C2730b extends UnionSerializer<AddPaperDocUserResult> {

        /* renamed from: b */
        public static final C2730b f17549b = new C2730b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddPaperDocUserResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AddPaperDocUserResult addPaperDocUserResult = FirebaseAnalytics.Param.SUCCESS.equals(readTag) ? AddPaperDocUserResult.SUCCESS : "unknown_error".equals(readTag) ? AddPaperDocUserResult.UNKNOWN_ERROR : "sharing_outside_team_disabled".equals(readTag) ? AddPaperDocUserResult.SHARING_OUTSIDE_TEAM_DISABLED : "daily_limit_reached".equals(readTag) ? AddPaperDocUserResult.DAILY_LIMIT_REACHED : "user_is_owner".equals(readTag) ? AddPaperDocUserResult.USER_IS_OWNER : "failed_user_data_retrieval".equals(readTag) ? AddPaperDocUserResult.FAILED_USER_DATA_RETRIEVAL : "permission_already_granted".equals(readTag) ? AddPaperDocUserResult.PERMISSION_ALREADY_GRANTED : AddPaperDocUserResult.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return addPaperDocUserResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddPaperDocUserResult addPaperDocUserResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2729a.f17548a[addPaperDocUserResult.ordinal()]) {
                case 1:
                    jsonGenerator.writeString(FirebaseAnalytics.Param.SUCCESS);
                    return;
                case 2:
                    jsonGenerator.writeString("unknown_error");
                    return;
                case 3:
                    jsonGenerator.writeString("sharing_outside_team_disabled");
                    return;
                case 4:
                    jsonGenerator.writeString("daily_limit_reached");
                    return;
                case 5:
                    jsonGenerator.writeString("user_is_owner");
                    return;
                case 6:
                    jsonGenerator.writeString("failed_user_data_retrieval");
                    return;
                case 7:
                    jsonGenerator.writeString("permission_already_granted");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
