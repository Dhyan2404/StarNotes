package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.team.TeamReportFailureReason;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.exoplayer2.offline.DefaultDownloadIndex;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class OutdatedLinkViewReportFailedDetails {
    protected final TeamReportFailureReason failureReason;

    /* renamed from: com.dropbox.core.v2.teamlog.OutdatedLinkViewReportFailedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3832a extends StructSerializer<OutdatedLinkViewReportFailedDetails> {

        /* renamed from: b */
        public static final C3832a f20105b = new C3832a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public OutdatedLinkViewReportFailedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            TeamReportFailureReason teamReportFailureReason = null;
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
                if (DefaultDownloadIndex.f24944s.equals(currentName)) {
                    teamReportFailureReason = TeamReportFailureReason.Serializer.INSTANCE.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (teamReportFailureReason == null) {
                throw new JsonParseException(jsonParser, "Required field \"failure_reason\" missing.");
            }
            OutdatedLinkViewReportFailedDetails outdatedLinkViewReportFailedDetails = new OutdatedLinkViewReportFailedDetails(teamReportFailureReason);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(outdatedLinkViewReportFailedDetails, outdatedLinkViewReportFailedDetails.toStringMultiline());
            return outdatedLinkViewReportFailedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(OutdatedLinkViewReportFailedDetails outdatedLinkViewReportFailedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(DefaultDownloadIndex.f24944s);
            TeamReportFailureReason.Serializer.INSTANCE.serialize(outdatedLinkViewReportFailedDetails.failureReason, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public OutdatedLinkViewReportFailedDetails(TeamReportFailureReason teamReportFailureReason) {
        if (teamReportFailureReason == null) {
            throw new IllegalArgumentException("Required value for 'failureReason' is null");
        }
        this.failureReason = teamReportFailureReason;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        TeamReportFailureReason teamReportFailureReason = this.failureReason;
        TeamReportFailureReason teamReportFailureReason2 = ((OutdatedLinkViewReportFailedDetails) obj).failureReason;
        return teamReportFailureReason == teamReportFailureReason2 || teamReportFailureReason.equals(teamReportFailureReason2);
    }

    public TeamReportFailureReason getFailureReason() {
        return this.failureReason;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.failureReason});
    }

    public String toString() {
        return C3832a.f20105b.serialize((C3832a) this, false);
    }

    public String toStringMultiline() {
        return C3832a.f20105b.serialize((C3832a) this, true);
    }
}
