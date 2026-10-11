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
public enum TeamSelectiveSyncPolicy {
    DISABLED,
    ENABLED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.TeamSelectiveSyncPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4348a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20636a;

        static {
            int[] iArr = new int[TeamSelectiveSyncPolicy.values().length];
            f20636a = iArr;
            try {
                iArr[TeamSelectiveSyncPolicy.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20636a[TeamSelectiveSyncPolicy.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.TeamSelectiveSyncPolicy$b */
    /* loaded from: classes4.dex */
    public static class C4349b extends UnionSerializer<TeamSelectiveSyncPolicy> {

        /* renamed from: b */
        public static final C4349b f20637b = new C4349b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamSelectiveSyncPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamSelectiveSyncPolicy teamSelectiveSyncPolicy = "disabled".equals(readTag) ? TeamSelectiveSyncPolicy.DISABLED : "enabled".equals(readTag) ? TeamSelectiveSyncPolicy.ENABLED : TeamSelectiveSyncPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamSelectiveSyncPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamSelectiveSyncPolicy teamSelectiveSyncPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4348a.f20636a[teamSelectiveSyncPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("enabled");
            }
        }
    }
}
