package com.dropbox.core.p006v2.teamlog;

import androidx.credentials.provider.utils.PrivilegedApp;
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
public enum EventCategory {
    APPS,
    COMMENTS,
    DEVICES,
    DOMAINS,
    FILE_OPERATIONS,
    FILE_REQUESTS,
    GROUPS,
    LEGAL_HOLDS,
    LOGINS,
    MEMBERS,
    PAPER,
    PASSWORDS,
    REPORTS,
    SHARING,
    SHOWCASE,
    SSO,
    TEAM_FOLDERS,
    TEAM_POLICIES,
    TEAM_PROFILE,
    TFA,
    TRUSTED_TEAMS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.EventCategory$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3504a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18897a;

        static {
            int[] iArr = new int[EventCategory.values().length];
            f18897a = iArr;
            try {
                iArr[EventCategory.APPS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18897a[EventCategory.COMMENTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18897a[EventCategory.DEVICES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18897a[EventCategory.DOMAINS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18897a[EventCategory.FILE_OPERATIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18897a[EventCategory.FILE_REQUESTS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18897a[EventCategory.GROUPS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f18897a[EventCategory.LEGAL_HOLDS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f18897a[EventCategory.LOGINS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f18897a[EventCategory.MEMBERS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f18897a[EventCategory.PAPER.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f18897a[EventCategory.PASSWORDS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f18897a[EventCategory.REPORTS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f18897a[EventCategory.SHARING.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f18897a[EventCategory.SHOWCASE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f18897a[EventCategory.SSO.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f18897a[EventCategory.TEAM_FOLDERS.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f18897a[EventCategory.TEAM_POLICIES.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f18897a[EventCategory.TEAM_PROFILE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f18897a[EventCategory.TFA.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f18897a[EventCategory.TRUSTED_TEAMS.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.EventCategory$b */
    /* loaded from: classes4.dex */
    public static class C3505b extends UnionSerializer<EventCategory> {

        /* renamed from: b */
        public static final C3505b f18898b = new C3505b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public EventCategory deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            EventCategory eventCategory = PrivilegedApp.f6535l.equals(readTag) ? EventCategory.APPS : "comments".equals(readTag) ? EventCategory.COMMENTS : "devices".equals(readTag) ? EventCategory.DEVICES : "domains".equals(readTag) ? EventCategory.DOMAINS : "file_operations".equals(readTag) ? EventCategory.FILE_OPERATIONS : "file_requests".equals(readTag) ? EventCategory.FILE_REQUESTS : "groups".equals(readTag) ? EventCategory.GROUPS : "legal_holds".equals(readTag) ? EventCategory.LEGAL_HOLDS : "logins".equals(readTag) ? EventCategory.LOGINS : "members".equals(readTag) ? EventCategory.MEMBERS : "paper".equals(readTag) ? EventCategory.PAPER : "passwords".equals(readTag) ? EventCategory.PASSWORDS : "reports".equals(readTag) ? EventCategory.REPORTS : "sharing".equals(readTag) ? EventCategory.SHARING : "showcase".equals(readTag) ? EventCategory.SHOWCASE : "sso".equals(readTag) ? EventCategory.SSO : "team_folders".equals(readTag) ? EventCategory.TEAM_FOLDERS : "team_policies".equals(readTag) ? EventCategory.TEAM_POLICIES : "team_profile".equals(readTag) ? EventCategory.TEAM_PROFILE : "tfa".equals(readTag) ? EventCategory.TFA : "trusted_teams".equals(readTag) ? EventCategory.TRUSTED_TEAMS : EventCategory.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return eventCategory;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(EventCategory eventCategory, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3504a.f18897a[eventCategory.ordinal()]) {
                case 1:
                    jsonGenerator.writeString(PrivilegedApp.f6535l);
                    return;
                case 2:
                    jsonGenerator.writeString("comments");
                    return;
                case 3:
                    jsonGenerator.writeString("devices");
                    return;
                case 4:
                    jsonGenerator.writeString("domains");
                    return;
                case 5:
                    jsonGenerator.writeString("file_operations");
                    return;
                case 6:
                    jsonGenerator.writeString("file_requests");
                    return;
                case 7:
                    jsonGenerator.writeString("groups");
                    return;
                case 8:
                    jsonGenerator.writeString("legal_holds");
                    return;
                case 9:
                    jsonGenerator.writeString("logins");
                    return;
                case 10:
                    jsonGenerator.writeString("members");
                    return;
                case 11:
                    jsonGenerator.writeString("paper");
                    return;
                case 12:
                    jsonGenerator.writeString("passwords");
                    return;
                case 13:
                    jsonGenerator.writeString("reports");
                    return;
                case 14:
                    jsonGenerator.writeString("sharing");
                    return;
                case 15:
                    jsonGenerator.writeString("showcase");
                    return;
                case 16:
                    jsonGenerator.writeString("sso");
                    return;
                case 17:
                    jsonGenerator.writeString("team_folders");
                    return;
                case 18:
                    jsonGenerator.writeString("team_policies");
                    return;
                case 19:
                    jsonGenerator.writeString("team_profile");
                    return;
                case 20:
                    jsonGenerator.writeString("tfa");
                    return;
                case 21:
                    jsonGenerator.writeString("trusted_teams");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
