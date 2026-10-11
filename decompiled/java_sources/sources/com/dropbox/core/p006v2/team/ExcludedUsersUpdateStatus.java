package com.dropbox.core.p006v2.team;

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
public enum ExcludedUsersUpdateStatus {
    SUCCESS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersUpdateStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3041a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18163a;

        static {
            int[] iArr = new int[ExcludedUsersUpdateStatus.values().length];
            f18163a = iArr;
            try {
                iArr[ExcludedUsersUpdateStatus.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ExcludedUsersUpdateStatus$b */
    /* loaded from: classes4.dex */
    public static class C3042b extends UnionSerializer<ExcludedUsersUpdateStatus> {

        /* renamed from: b */
        public static final C3042b f18164b = new C3042b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ExcludedUsersUpdateStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            ExcludedUsersUpdateStatus excludedUsersUpdateStatus = FirebaseAnalytics.Param.SUCCESS.equals(readTag) ? ExcludedUsersUpdateStatus.SUCCESS : ExcludedUsersUpdateStatus.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return excludedUsersUpdateStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ExcludedUsersUpdateStatus excludedUsersUpdateStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3041a.f18163a[excludedUsersUpdateStatus.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString(FirebaseAnalytics.Param.SUCCESS);
            }
        }
    }
}
