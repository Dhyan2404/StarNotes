package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AppLogInfo;
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
public class AppUnlinkTeamDetails {
    protected final AppLogInfo appInfo;

    /* renamed from: com.dropbox.core.v2.teamlog.AppUnlinkTeamDetails$a */
    /* loaded from: classes4.dex */
    public static class C3364a extends StructSerializer<AppUnlinkTeamDetails> {

        /* renamed from: b */
        public static final C3364a f18745b = new C3364a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AppUnlinkTeamDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            AppLogInfo appLogInfo = null;
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
                if ("app_info".equals(currentName)) {
                    appLogInfo = AppLogInfo.C3363a.f18744b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (appLogInfo == null) {
                throw new JsonParseException(jsonParser, "Required field \"app_info\" missing.");
            }
            AppUnlinkTeamDetails appUnlinkTeamDetails = new AppUnlinkTeamDetails(appLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(appUnlinkTeamDetails, appUnlinkTeamDetails.toStringMultiline());
            return appUnlinkTeamDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AppUnlinkTeamDetails appUnlinkTeamDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("app_info");
            AppLogInfo.C3363a.f18744b.serialize((AppLogInfo.C3363a) appUnlinkTeamDetails.appInfo, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AppUnlinkTeamDetails(AppLogInfo appLogInfo) {
        if (appLogInfo == null) {
            throw new IllegalArgumentException("Required value for 'appInfo' is null");
        }
        this.appInfo = appLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        AppLogInfo appLogInfo = this.appInfo;
        AppLogInfo appLogInfo2 = ((AppUnlinkTeamDetails) obj).appInfo;
        return appLogInfo == appLogInfo2 || appLogInfo.equals(appLogInfo2);
    }

    public AppLogInfo getAppInfo() {
        return this.appInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appInfo});
    }

    public String toString() {
        return C3364a.f18745b.serialize((C3364a) this, false);
    }

    public String toStringMultiline() {
        return C3364a.f18745b.serialize((C3364a) this, true);
    }
}
