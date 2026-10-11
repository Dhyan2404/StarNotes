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
public enum Feature {
    UPLOAD_API_RATE_LIMIT,
    HAS_TEAM_SHARED_DROPBOX,
    HAS_TEAM_FILE_EVENTS,
    HAS_TEAM_SELECTIVE_SYNC,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.Feature$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3043a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18165a;

        static {
            int[] iArr = new int[Feature.values().length];
            f18165a = iArr;
            try {
                iArr[Feature.UPLOAD_API_RATE_LIMIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18165a[Feature.HAS_TEAM_SHARED_DROPBOX.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18165a[Feature.HAS_TEAM_FILE_EVENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18165a[Feature.HAS_TEAM_SELECTIVE_SYNC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.Feature$b */
    /* loaded from: classes4.dex */
    public static class C3044b extends UnionSerializer<Feature> {

        /* renamed from: b */
        public static final C3044b f18166b = new C3044b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Feature deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            Feature feature = "upload_api_rate_limit".equals(readTag) ? Feature.UPLOAD_API_RATE_LIMIT : "has_team_shared_dropbox".equals(readTag) ? Feature.HAS_TEAM_SHARED_DROPBOX : "has_team_file_events".equals(readTag) ? Feature.HAS_TEAM_FILE_EVENTS : "has_team_selective_sync".equals(readTag) ? Feature.HAS_TEAM_SELECTIVE_SYNC : Feature.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return feature;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(Feature feature, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3043a.f18165a[feature.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("upload_api_rate_limit");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("has_team_shared_dropbox");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("has_team_file_events");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("has_team_selective_sync");
            }
        }
    }
}
