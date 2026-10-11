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
public class NoPasswordLinkGenReportFailedDetails {
    protected final TeamReportFailureReason failureReason;

    /* renamed from: com.dropbox.core.v2.teamlog.NoPasswordLinkGenReportFailedDetails$a */
    /* loaded from: classes4.dex */
    public static class C3807a extends StructSerializer<NoPasswordLinkGenReportFailedDetails> {

        /* renamed from: b */
        public static final C3807a f20080b = new C3807a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public NoPasswordLinkGenReportFailedDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            NoPasswordLinkGenReportFailedDetails noPasswordLinkGenReportFailedDetails = new NoPasswordLinkGenReportFailedDetails(teamReportFailureReason);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(noPasswordLinkGenReportFailedDetails, noPasswordLinkGenReportFailedDetails.toStringMultiline());
            return noPasswordLinkGenReportFailedDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(NoPasswordLinkGenReportFailedDetails noPasswordLinkGenReportFailedDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(DefaultDownloadIndex.f24944s);
            TeamReportFailureReason.Serializer.INSTANCE.serialize(noPasswordLinkGenReportFailedDetails.failureReason, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public NoPasswordLinkGenReportFailedDetails(TeamReportFailureReason teamReportFailureReason) {
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
        TeamReportFailureReason teamReportFailureReason2 = ((NoPasswordLinkGenReportFailedDetails) obj).failureReason;
        return teamReportFailureReason == teamReportFailureReason2 || teamReportFailureReason.equals(teamReportFailureReason2);
    }

    public TeamReportFailureReason getFailureReason() {
        return this.failureReason;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.failureReason});
    }

    public String toString() {
        return C3807a.f20080b.serialize((C3807a) this, false);
    }

    public String toStringMultiline() {
        return C3807a.f20080b.serialize((C3807a) this, true);
    }
}
