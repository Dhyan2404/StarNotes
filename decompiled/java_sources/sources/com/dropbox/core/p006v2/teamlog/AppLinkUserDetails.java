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
public class AppLinkUserDetails {
    protected final AppLogInfo appInfo;

    /* renamed from: com.dropbox.core.v2.teamlog.AppLinkUserDetails$a */
    /* loaded from: classes4.dex */
    public static class C3361a extends StructSerializer<AppLinkUserDetails> {

        /* renamed from: b */
        public static final C3361a f18742b = new C3361a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AppLinkUserDetails deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            AppLinkUserDetails appLinkUserDetails = new AppLinkUserDetails(appLogInfo);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(appLinkUserDetails, appLinkUserDetails.toStringMultiline());
            return appLinkUserDetails;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AppLinkUserDetails appLinkUserDetails, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("app_info");
            AppLogInfo.C3363a.f18744b.serialize((AppLogInfo.C3363a) appLinkUserDetails.appInfo, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public AppLinkUserDetails(AppLogInfo appLogInfo) {
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
        AppLogInfo appLogInfo2 = ((AppLinkUserDetails) obj).appInfo;
        return appLogInfo == appLogInfo2 || appLogInfo.equals(appLogInfo2);
    }

    public AppLogInfo getAppInfo() {
        return this.appInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appInfo});
    }

    public String toString() {
        return C3361a.f18742b.serialize((C3361a) this, false);
    }

    public String toStringMultiline() {
        return C3361a.f18742b.serialize((C3361a) this, true);
    }
}
