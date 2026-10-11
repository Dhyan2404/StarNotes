package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum TeamFolderInvalidStatusError {
    ACTIVE,
    ARCHIVED,
    ARCHIVE_IN_PROGRESS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.TeamFolderInvalidStatusError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3227a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18498a;

        static {
            int[] iArr = new int[TeamFolderInvalidStatusError.values().length];
            f18498a = iArr;
            try {
                iArr[TeamFolderInvalidStatusError.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18498a[TeamFolderInvalidStatusError.ARCHIVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18498a[TeamFolderInvalidStatusError.ARCHIVE_IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.TeamFolderInvalidStatusError$b */
    /* loaded from: classes4.dex */
    public static class C3228b extends UnionSerializer<TeamFolderInvalidStatusError> {

        /* renamed from: b */
        public static final C3228b f18499b = new C3228b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public TeamFolderInvalidStatusError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            TeamFolderInvalidStatusError teamFolderInvalidStatusError = AppMeasurementSdk.ConditionalUserProperty.ACTIVE.equals(readTag) ? TeamFolderInvalidStatusError.ACTIVE : "archived".equals(readTag) ? TeamFolderInvalidStatusError.ARCHIVED : "archive_in_progress".equals(readTag) ? TeamFolderInvalidStatusError.ARCHIVE_IN_PROGRESS : TeamFolderInvalidStatusError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return teamFolderInvalidStatusError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(TeamFolderInvalidStatusError teamFolderInvalidStatusError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3227a.f18498a[teamFolderInvalidStatusError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("archived");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("archive_in_progress");
            }
        }
    }
}
