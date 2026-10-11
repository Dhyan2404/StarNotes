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
public enum TeamFolderStatus {
    ACTIVE,
    ARCHIVED,
    ARCHIVE_IN_PROGRESS,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<TeamFolderStatus> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public TeamFolderStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            TeamFolderStatus teamFolderStatus;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if (AppMeasurementSdk.ConditionalUserProperty.ACTIVE.equals(readTag)) {
                    teamFolderStatus = TeamFolderStatus.ACTIVE;
                } else if ("archived".equals(readTag)) {
                    teamFolderStatus = TeamFolderStatus.ARCHIVED;
                } else if ("archive_in_progress".equals(readTag)) {
                    teamFolderStatus = TeamFolderStatus.ARCHIVE_IN_PROGRESS;
                } else {
                    teamFolderStatus = TeamFolderStatus.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return teamFolderStatus;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(TeamFolderStatus teamFolderStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3238a.f18517a[teamFolderStatus.ordinal()];
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

    /* renamed from: com.dropbox.core.v2.team.TeamFolderStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3238a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18517a;

        static {
            int[] iArr = new int[TeamFolderStatus.values().length];
            f18517a = iArr;
            try {
                iArr[TeamFolderStatus.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18517a[TeamFolderStatus.ARCHIVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18517a[TeamFolderStatus.ARCHIVE_IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
