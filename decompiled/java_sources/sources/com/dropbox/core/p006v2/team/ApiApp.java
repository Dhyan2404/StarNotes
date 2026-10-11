package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.util.LangUtil;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public class ApiApp {
    protected final String appId;
    protected final String appName;
    protected final boolean isAppFolder;
    protected final Date linked;
    protected final String publisher;
    protected final String publisherUrl;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String appId;
        protected final String appName;
        protected final boolean isAppFolder;
        protected Date linked;
        protected String publisher;
        protected String publisherUrl;

        public Builder(String str, String str2, boolean z) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'appId' is null");
            }
            this.appId = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'appName' is null");
            }
            this.appName = str2;
            this.isAppFolder = z;
            this.publisher = null;
            this.publisherUrl = null;
            this.linked = null;
        }

        public ApiApp build() {
            return new ApiApp(this.appId, this.appName, this.isAppFolder, this.publisher, this.publisherUrl, this.linked);
        }

        public Builder withLinked(Date date) {
            this.linked = LangUtil.truncateMillis(date);
            return this;
        }

        public Builder withPublisher(String str) {
            this.publisher = str;
            return this;
        }

        public Builder withPublisherUrl(String str) {
            this.publisherUrl = str;
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ApiApp$a */
    /* loaded from: classes4.dex */
    public static class C3016a extends StructSerializer<ApiApp> {

        /* renamed from: b */
        public static final C3016a f18122b = new C3016a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ApiApp deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str2 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            Date date = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("app_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("app_name".equals(currentName)) {
                    str3 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("is_app_folder".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("publisher".equals(currentName)) {
                    str4 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("publisher_url".equals(currentName)) {
                    str5 = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else if ("linked".equals(currentName)) {
                    date = (Date) StoneSerializers.nullable(StoneSerializers.timestamp()).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"app_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"app_name\" missing.");
            }
            if (bool == null) {
                throw new JsonParseException(jsonParser, "Required field \"is_app_folder\" missing.");
            }
            ApiApp apiApp = new ApiApp(str2, str3, bool.booleanValue(), str4, str5, date);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(apiApp, apiApp.toStringMultiline());
            return apiApp;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ApiApp apiApp, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("app_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) apiApp.appId, jsonGenerator);
            jsonGenerator.writeFieldName("app_name");
            StoneSerializers.string().serialize((StoneSerializer<String>) apiApp.appName, jsonGenerator);
            jsonGenerator.writeFieldName("is_app_folder");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(apiApp.isAppFolder), jsonGenerator);
            if (apiApp.publisher != null) {
                jsonGenerator.writeFieldName("publisher");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) apiApp.publisher, jsonGenerator);
            }
            if (apiApp.publisherUrl != null) {
                jsonGenerator.writeFieldName("publisher_url");
                StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) apiApp.publisherUrl, jsonGenerator);
            }
            if (apiApp.linked != null) {
                jsonGenerator.writeFieldName("linked");
                StoneSerializers.nullable(StoneSerializers.timestamp()).serialize((StoneSerializer) apiApp.linked, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ApiApp(String str, String str2, boolean z, String str3, String str4, Date date) {
        if (str != null) {
            this.appId = str;
            if (str2 != null) {
                this.appName = str2;
                this.publisher = str3;
                this.publisherUrl = str4;
                this.linked = LangUtil.truncateMillis(date);
                this.isAppFolder = z;
                return;
            }
            throw new IllegalArgumentException("Required value for 'appName' is null");
        }
        throw new IllegalArgumentException("Required value for 'appId' is null");
    }

    public static Builder newBuilder(String str, String str2, boolean z) {
        return new Builder(str, str2, z);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ApiApp apiApp = (ApiApp) obj;
        String str7 = this.appId;
        String str8 = apiApp.appId;
        if ((str7 == str8 || str7.equals(str8)) && (((str = this.appName) == (str2 = apiApp.appName) || str.equals(str2)) && this.isAppFolder == apiApp.isAppFolder && (((str3 = this.publisher) == (str4 = apiApp.publisher) || (str3 != null && str3.equals(str4))) && ((str5 = this.publisherUrl) == (str6 = apiApp.publisherUrl) || (str5 != null && str5.equals(str6)))))) {
            Date date = this.linked;
            Date date2 = apiApp.linked;
            if (date == date2) {
                return true;
            }
            if (date != null && date.equals(date2)) {
                return true;
            }
        }
        return false;
    }

    public String getAppId() {
        return this.appId;
    }

    public String getAppName() {
        return this.appName;
    }

    public boolean getIsAppFolder() {
        return this.isAppFolder;
    }

    public Date getLinked() {
        return this.linked;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public String getPublisherUrl() {
        return this.publisherUrl;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.appId, this.appName, this.publisher, this.publisherUrl, this.linked, Boolean.valueOf(this.isAppFolder)});
    }

    public String toString() {
        return C3016a.f18122b.serialize((C3016a) this, false);
    }

    public String toStringMultiline() {
        return C3016a.f18122b.serialize((C3016a) this, true);
    }

    public ApiApp(String str, String str2, boolean z) {
        this(str, str2, z, null, null, null);
    }
}
