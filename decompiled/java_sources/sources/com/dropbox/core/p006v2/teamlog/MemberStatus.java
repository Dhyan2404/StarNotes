package com.dropbox.core.p006v2.teamlog;

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
public enum MemberStatus {
    NOT_JOINED,
    INVITED,
    ACTIVE,
    SUSPENDED,
    REMOVED,
    MOVED_TO_ANOTHER_TEAM,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.MemberStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3779a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20052a;

        static {
            int[] iArr = new int[MemberStatus.values().length];
            f20052a = iArr;
            try {
                iArr[MemberStatus.NOT_JOINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20052a[MemberStatus.INVITED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f20052a[MemberStatus.ACTIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f20052a[MemberStatus.SUSPENDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f20052a[MemberStatus.REMOVED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f20052a[MemberStatus.MOVED_TO_ANOTHER_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.MemberStatus$b */
    /* loaded from: classes4.dex */
    public static class C3780b extends UnionSerializer<MemberStatus> {

        /* renamed from: b */
        public static final C3780b f20053b = new C3780b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MemberStatus memberStatus = "not_joined".equals(readTag) ? MemberStatus.NOT_JOINED : "invited".equals(readTag) ? MemberStatus.INVITED : AppMeasurementSdk.ConditionalUserProperty.ACTIVE.equals(readTag) ? MemberStatus.ACTIVE : "suspended".equals(readTag) ? MemberStatus.SUSPENDED : "removed".equals(readTag) ? MemberStatus.REMOVED : "moved_to_another_team".equals(readTag) ? MemberStatus.MOVED_TO_ANOTHER_TEAM : MemberStatus.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberStatus memberStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3779a.f20052a[memberStatus.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("not_joined");
                    return;
                case 2:
                    jsonGenerator.writeString("invited");
                    return;
                case 3:
                    jsonGenerator.writeString(AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
                    return;
                case 4:
                    jsonGenerator.writeString("suspended");
                    return;
                case 5:
                    jsonGenerator.writeString("removed");
                    return;
                case 6:
                    jsonGenerator.writeString("moved_to_another_team");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
