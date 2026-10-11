package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.team.ExcludedUsersUpdateStatus;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class ExcludedUsersUpdateResult {
    protected final ExcludedUsersUpdateStatus status;

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersUpdateResult$a */
    /* loaded from: classes4.dex */
    public static class C3040a extends StructSerializer<ExcludedUsersUpdateResult> {

        /* renamed from: b */
        public static final C3040a f18162b = new C3040a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExcludedUsersUpdateResult deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            ExcludedUsersUpdateStatus excludedUsersUpdateStatus = null;
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
                if ("status".equals(currentName)) {
                    excludedUsersUpdateStatus = ExcludedUsersUpdateStatus.C3042b.f18164b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (excludedUsersUpdateStatus == null) {
                throw new JsonParseException(jsonParser, "Required field \"status\" missing.");
            }
            ExcludedUsersUpdateResult excludedUsersUpdateResult = new ExcludedUsersUpdateResult(excludedUsersUpdateStatus);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(excludedUsersUpdateResult, excludedUsersUpdateResult.toStringMultiline());
            return excludedUsersUpdateResult;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExcludedUsersUpdateResult excludedUsersUpdateResult, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("status");
            ExcludedUsersUpdateStatus.C3042b.f18164b.serialize(excludedUsersUpdateResult.status, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ExcludedUsersUpdateResult(ExcludedUsersUpdateStatus excludedUsersUpdateStatus) {
        if (excludedUsersUpdateStatus == null) {
            throw new IllegalArgumentException("Required value for 'status' is null");
        }
        this.status = excludedUsersUpdateStatus;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ExcludedUsersUpdateStatus excludedUsersUpdateStatus = this.status;
        ExcludedUsersUpdateStatus excludedUsersUpdateStatus2 = ((ExcludedUsersUpdateResult) obj).status;
        return excludedUsersUpdateStatus == excludedUsersUpdateStatus2 || excludedUsersUpdateStatus.equals(excludedUsersUpdateStatus2);
    }

    public ExcludedUsersUpdateStatus getStatus() {
        return this.status;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.status});
    }

    public String toString() {
        return C3040a.f18162b.serialize((C3040a) this, false);
    }

    public String toStringMultiline() {
        return C3040a.f18162b.serialize((C3040a) this, true);
    }
}
