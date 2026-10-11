package com.dropbox.core.p006v2.team;

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
public enum TeamReportFailureReason {
    TEMPORARY_ERROR,
    MANY_REPORTS_AT_ONCE,
    TOO_MUCH_DATA,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<TeamReportFailureReason> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamReportFailureReason deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamReportFailureReason teamReportFailureReason;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("temporary_error".equals(readTag)) {
                    teamReportFailureReason = TeamReportFailureReason.TEMPORARY_ERROR;
                } else if ("many_reports_at_once".equals(readTag)) {
                    teamReportFailureReason = TeamReportFailureReason.MANY_REPORTS_AT_ONCE;
                } else if ("too_much_data".equals(readTag)) {
                    teamReportFailureReason = TeamReportFailureReason.TOO_MUCH_DATA;
                } else {
                    teamReportFailureReason = TeamReportFailureReason.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return teamReportFailureReason;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamReportFailureReason teamReportFailureReason, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3256a.f18546a[teamReportFailureReason.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("temporary_error");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("many_reports_at_once");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_much_data");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamReportFailureReason$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3256a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18546a;

        static {
            int[] iArr = new int[TeamReportFailureReason.values().length];
            f18546a = iArr;
            try {
                iArr[TeamReportFailureReason.TEMPORARY_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18546a[TeamReportFailureReason.MANY_REPORTS_AT_ONCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18546a[TeamReportFailureReason.TOO_MUCH_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
