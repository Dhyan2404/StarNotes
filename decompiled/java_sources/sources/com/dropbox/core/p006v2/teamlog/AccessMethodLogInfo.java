package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.ApiSessionLogInfo;
import com.dropbox.core.p006v2.teamlog.SessionLogInfo;
import com.dropbox.core.p006v2.teamlog.WebSessionLogInfo;
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
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class AccessMethodLogInfo {
    public static final AccessMethodLogInfo OTHER = new AccessMethodLogInfo().m13015g(Tag.OTHER);

    /* renamed from: a */
    public Tag f18691a;

    /* renamed from: b */
    public SessionLogInfo f18692b;

    /* renamed from: c */
    public WebSessionLogInfo f18693c;

    /* renamed from: d */
    public WebSessionLogInfo f18694d;

    /* renamed from: e */
    public WebSessionLogInfo f18695e;

    /* renamed from: f */
    public WebSessionLogInfo f18696f;

    /* renamed from: g */
    public ApiSessionLogInfo f18697g;

    /* loaded from: classes4.dex */
    public enum Tag {
        END_USER,
        SIGN_IN_AS,
        CONTENT_MANAGER,
        ADMIN_CONSOLE,
        ENTERPRISE_CONSOLE,
        API,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AccessMethodLogInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3326a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18698a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18698a = iArr;
            try {
                iArr[Tag.END_USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18698a[Tag.SIGN_IN_AS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18698a[Tag.CONTENT_MANAGER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18698a[Tag.ADMIN_CONSOLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18698a[Tag.ENTERPRISE_CONSOLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18698a[Tag.API.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18698a[Tag.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.AccessMethodLogInfo$b */
    /* loaded from: classes4.dex */
    public static class C3327b extends UnionSerializer<AccessMethodLogInfo> {

        /* renamed from: b */
        public static final C3327b f18699b = new C3327b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AccessMethodLogInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AccessMethodLogInfo signInAs;
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
            if ("end_user".equals(readTag)) {
                StoneSerializer.expectField("end_user", jsonParser);
                signInAs = AccessMethodLogInfo.endUser(SessionLogInfo.C4001a.f20277b.deserialize(jsonParser));
            } else {
                signInAs = "sign_in_as".equals(readTag) ? AccessMethodLogInfo.signInAs(WebSessionLogInfo.C4402a.f20692b.deserialize(jsonParser, true)) : "content_manager".equals(readTag) ? AccessMethodLogInfo.contentManager(WebSessionLogInfo.C4402a.f20692b.deserialize(jsonParser, true)) : "admin_console".equals(readTag) ? AccessMethodLogInfo.adminConsole(WebSessionLogInfo.C4402a.f20692b.deserialize(jsonParser, true)) : "enterprise_console".equals(readTag) ? AccessMethodLogInfo.enterpriseConsole(WebSessionLogInfo.C4402a.f20692b.deserialize(jsonParser, true)) : "api".equals(readTag) ? AccessMethodLogInfo.api(ApiSessionLogInfo.C3358a.f18739b.deserialize(jsonParser, true)) : AccessMethodLogInfo.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return signInAs;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AccessMethodLogInfo accessMethodLogInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3326a.f18698a[accessMethodLogInfo.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("end_user", jsonGenerator);
                    jsonGenerator.writeFieldName("end_user");
                    SessionLogInfo.C4001a.f20277b.serialize((SessionLogInfo.C4001a) accessMethodLogInfo.f18692b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("sign_in_as", jsonGenerator);
                    WebSessionLogInfo.C4402a.f20692b.serialize(accessMethodLogInfo.f18693c, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("content_manager", jsonGenerator);
                    WebSessionLogInfo.C4402a.f20692b.serialize(accessMethodLogInfo.f18694d, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("admin_console", jsonGenerator);
                    WebSessionLogInfo.C4402a.f20692b.serialize(accessMethodLogInfo.f18695e, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeStartObject();
                    writeTag("enterprise_console", jsonGenerator);
                    WebSessionLogInfo.C4402a.f20692b.serialize(accessMethodLogInfo.f18696f, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 6:
                    jsonGenerator.writeStartObject();
                    writeTag("api", jsonGenerator);
                    ApiSessionLogInfo.C3358a.f18739b.serialize(accessMethodLogInfo.f18697g, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static AccessMethodLogInfo adminConsole(WebSessionLogInfo webSessionLogInfo) {
        if (webSessionLogInfo != null) {
            return new AccessMethodLogInfo().m13016h(Tag.ADMIN_CONSOLE, webSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AccessMethodLogInfo api(ApiSessionLogInfo apiSessionLogInfo) {
        if (apiSessionLogInfo != null) {
            return new AccessMethodLogInfo().m13017i(Tag.API, apiSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AccessMethodLogInfo contentManager(WebSessionLogInfo webSessionLogInfo) {
        if (webSessionLogInfo != null) {
            return new AccessMethodLogInfo().m13018j(Tag.CONTENT_MANAGER, webSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AccessMethodLogInfo endUser(SessionLogInfo sessionLogInfo) {
        if (sessionLogInfo != null) {
            return new AccessMethodLogInfo().m13019k(Tag.END_USER, sessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AccessMethodLogInfo enterpriseConsole(WebSessionLogInfo webSessionLogInfo) {
        if (webSessionLogInfo != null) {
            return new AccessMethodLogInfo().m13020l(Tag.ENTERPRISE_CONSOLE, webSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static AccessMethodLogInfo signInAs(WebSessionLogInfo webSessionLogInfo) {
        if (webSessionLogInfo != null) {
            return new AccessMethodLogInfo().m13021m(Tag.SIGN_IN_AS, webSessionLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessMethodLogInfo)) {
            return false;
        }
        AccessMethodLogInfo accessMethodLogInfo = (AccessMethodLogInfo) obj;
        Tag tag = this.f18691a;
        if (tag != accessMethodLogInfo.f18691a) {
            return false;
        }
        switch (C3326a.f18698a[tag.ordinal()]) {
            case 1:
                SessionLogInfo sessionLogInfo = this.f18692b;
                SessionLogInfo sessionLogInfo2 = accessMethodLogInfo.f18692b;
                return sessionLogInfo == sessionLogInfo2 || sessionLogInfo.equals(sessionLogInfo2);
            case 2:
                WebSessionLogInfo webSessionLogInfo = this.f18693c;
                WebSessionLogInfo webSessionLogInfo2 = accessMethodLogInfo.f18693c;
                return webSessionLogInfo == webSessionLogInfo2 || webSessionLogInfo.equals(webSessionLogInfo2);
            case 3:
                WebSessionLogInfo webSessionLogInfo3 = this.f18694d;
                WebSessionLogInfo webSessionLogInfo4 = accessMethodLogInfo.f18694d;
                return webSessionLogInfo3 == webSessionLogInfo4 || webSessionLogInfo3.equals(webSessionLogInfo4);
            case 4:
                WebSessionLogInfo webSessionLogInfo5 = this.f18695e;
                WebSessionLogInfo webSessionLogInfo6 = accessMethodLogInfo.f18695e;
                return webSessionLogInfo5 == webSessionLogInfo6 || webSessionLogInfo5.equals(webSessionLogInfo6);
            case 5:
                WebSessionLogInfo webSessionLogInfo7 = this.f18696f;
                WebSessionLogInfo webSessionLogInfo8 = accessMethodLogInfo.f18696f;
                return webSessionLogInfo7 == webSessionLogInfo8 || webSessionLogInfo7.equals(webSessionLogInfo8);
            case 6:
                ApiSessionLogInfo apiSessionLogInfo = this.f18697g;
                ApiSessionLogInfo apiSessionLogInfo2 = accessMethodLogInfo.f18697g;
                return apiSessionLogInfo == apiSessionLogInfo2 || apiSessionLogInfo.equals(apiSessionLogInfo2);
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: g */
    public final AccessMethodLogInfo m13015g(Tag tag) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo.f18691a = tag;
        return accessMethodLogInfo;
    }

    public WebSessionLogInfo getAdminConsoleValue() {
        if (this.f18691a == Tag.ADMIN_CONSOLE) {
            return this.f18695e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ADMIN_CONSOLE, but was Tag." + this.f18691a.name());
    }

    public ApiSessionLogInfo getApiValue() {
        if (this.f18691a == Tag.API) {
            return this.f18697g;
        }
        throw new IllegalStateException("Invalid tag: required Tag.API, but was Tag." + this.f18691a.name());
    }

    public WebSessionLogInfo getContentManagerValue() {
        if (this.f18691a == Tag.CONTENT_MANAGER) {
            return this.f18694d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CONTENT_MANAGER, but was Tag." + this.f18691a.name());
    }

    public SessionLogInfo getEndUserValue() {
        if (this.f18691a == Tag.END_USER) {
            return this.f18692b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.END_USER, but was Tag." + this.f18691a.name());
    }

    public WebSessionLogInfo getEnterpriseConsoleValue() {
        if (this.f18691a == Tag.ENTERPRISE_CONSOLE) {
            return this.f18696f;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ENTERPRISE_CONSOLE, but was Tag." + this.f18691a.name());
    }

    public WebSessionLogInfo getSignInAsValue() {
        if (this.f18691a == Tag.SIGN_IN_AS) {
            return this.f18693c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SIGN_IN_AS, but was Tag." + this.f18691a.name());
    }

    /* renamed from: h */
    public final AccessMethodLogInfo m13016h(Tag tag, WebSessionLogInfo webSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo.f18691a = tag;
        accessMethodLogInfo.f18695e = webSessionLogInfo;
        return accessMethodLogInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18691a, this.f18692b, this.f18693c, this.f18694d, this.f18695e, this.f18696f, this.f18697g});
    }

    /* renamed from: i */
    public final AccessMethodLogInfo m13017i(Tag tag, ApiSessionLogInfo apiSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo.f18691a = tag;
        accessMethodLogInfo.f18697g = apiSessionLogInfo;
        return accessMethodLogInfo;
    }

    public boolean isAdminConsole() {
        return this.f18691a == Tag.ADMIN_CONSOLE;
    }

    public boolean isApi() {
        return this.f18691a == Tag.API;
    }

    public boolean isContentManager() {
        return this.f18691a == Tag.CONTENT_MANAGER;
    }

    public boolean isEndUser() {
        return this.f18691a == Tag.END_USER;
    }

    public boolean isEnterpriseConsole() {
        return this.f18691a == Tag.ENTERPRISE_CONSOLE;
    }

    public boolean isOther() {
        return this.f18691a == Tag.OTHER;
    }

    public boolean isSignInAs() {
        return this.f18691a == Tag.SIGN_IN_AS;
    }

    /* renamed from: j */
    public final AccessMethodLogInfo m13018j(Tag tag, WebSessionLogInfo webSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo.f18691a = tag;
        accessMethodLogInfo.f18694d = webSessionLogInfo;
        return accessMethodLogInfo;
    }

    /* renamed from: k */
    public final AccessMethodLogInfo m13019k(Tag tag, SessionLogInfo sessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo.f18691a = tag;
        accessMethodLogInfo.f18692b = sessionLogInfo;
        return accessMethodLogInfo;
    }

    /* renamed from: l */
    public final AccessMethodLogInfo m13020l(Tag tag, WebSessionLogInfo webSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo.f18691a = tag;
        accessMethodLogInfo.f18696f = webSessionLogInfo;
        return accessMethodLogInfo;
    }

    /* renamed from: m */
    public final AccessMethodLogInfo m13021m(Tag tag, WebSessionLogInfo webSessionLogInfo) {
        AccessMethodLogInfo accessMethodLogInfo = new AccessMethodLogInfo();
        accessMethodLogInfo.f18691a = tag;
        accessMethodLogInfo.f18693c = webSessionLogInfo;
        return accessMethodLogInfo;
    }

    public Tag tag() {
        return this.f18691a;
    }

    public String toString() {
        return C3327b.f18699b.serialize((C3327b) this, false);
    }

    public String toStringMultiline() {
        return C3327b.f18699b.serialize((C3327b) this, true);
    }
}
