package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.p006v2.teamlog.AppLogInfo;
import com.dropbox.core.p006v2.teamlog.ResellerLogInfo;
import com.dropbox.core.p006v2.teamlog.UserLogInfo;
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
public final class ActorLogInfo {

    /* renamed from: a */
    public Tag f18726a;

    /* renamed from: b */
    public UserLogInfo f18727b;

    /* renamed from: c */
    public UserLogInfo f18728c;

    /* renamed from: d */
    public AppLogInfo f18729d;

    /* renamed from: e */
    public ResellerLogInfo f18730e;
    public static final ActorLogInfo DROPBOX = new ActorLogInfo().m13069e(Tag.DROPBOX);
    public static final ActorLogInfo ANONYMOUS = new ActorLogInfo().m13069e(Tag.ANONYMOUS);
    public static final ActorLogInfo OTHER = new ActorLogInfo().m13069e(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        USER,
        ADMIN,
        APP,
        RESELLER,
        DROPBOX,
        ANONYMOUS,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ActorLogInfo$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3350a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18731a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18731a = iArr;
            try {
                iArr[Tag.USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18731a[Tag.ADMIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18731a[Tag.APP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18731a[Tag.RESELLER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18731a[Tag.DROPBOX.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18731a[Tag.ANONYMOUS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f18731a[Tag.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.ActorLogInfo$b */
    /* loaded from: classes4.dex */
    public static class C3351b extends UnionSerializer<ActorLogInfo> {

        /* renamed from: b */
        public static final C3351b f18732b = new C3351b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActorLogInfo deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ActorLogInfo reseller;
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
            if ("user".equals(readTag)) {
                StoneSerializer.expectField("user", jsonParser);
                reseller = ActorLogInfo.user(UserLogInfo.C4392a.f20680b.deserialize(jsonParser));
            } else if ("admin".equals(readTag)) {
                StoneSerializer.expectField("admin", jsonParser);
                reseller = ActorLogInfo.admin(UserLogInfo.C4392a.f20680b.deserialize(jsonParser));
            } else if ("app".equals(readTag)) {
                StoneSerializer.expectField("app", jsonParser);
                reseller = ActorLogInfo.app(AppLogInfo.C3363a.f18744b.deserialize(jsonParser));
            } else {
                reseller = "reseller".equals(readTag) ? ActorLogInfo.reseller(ResellerLogInfo.C3970a.f20246b.deserialize(jsonParser, true)) : "dropbox".equals(readTag) ? ActorLogInfo.DROPBOX : "anonymous".equals(readTag) ? ActorLogInfo.ANONYMOUS : ActorLogInfo.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return reseller;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ActorLogInfo actorLogInfo, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3350a.f18731a[actorLogInfo.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("user", jsonGenerator);
                    jsonGenerator.writeFieldName("user");
                    UserLogInfo.C4392a.f20680b.serialize((UserLogInfo.C4392a) actorLogInfo.f18727b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("admin", jsonGenerator);
                    jsonGenerator.writeFieldName("admin");
                    UserLogInfo.C4392a.f20680b.serialize((UserLogInfo.C4392a) actorLogInfo.f18728c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("app", jsonGenerator);
                    jsonGenerator.writeFieldName("app");
                    AppLogInfo.C3363a.f18744b.serialize((AppLogInfo.C3363a) actorLogInfo.f18729d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("reseller", jsonGenerator);
                    ResellerLogInfo.C3970a.f20246b.serialize(actorLogInfo.f18730e, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("dropbox");
                    return;
                case 6:
                    jsonGenerator.writeString("anonymous");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static ActorLogInfo admin(UserLogInfo userLogInfo) {
        if (userLogInfo != null) {
            return new ActorLogInfo().m13070f(Tag.ADMIN, userLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ActorLogInfo app(AppLogInfo appLogInfo) {
        if (appLogInfo != null) {
            return new ActorLogInfo().m13071g(Tag.APP, appLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ActorLogInfo reseller(ResellerLogInfo resellerLogInfo) {
        if (resellerLogInfo != null) {
            return new ActorLogInfo().m13072h(Tag.RESELLER, resellerLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ActorLogInfo user(UserLogInfo userLogInfo) {
        if (userLogInfo != null) {
            return new ActorLogInfo().m13073i(Tag.USER, userLogInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: e */
    public final ActorLogInfo m13069e(Tag tag) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo.f18726a = tag;
        return actorLogInfo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ActorLogInfo)) {
            return false;
        }
        ActorLogInfo actorLogInfo = (ActorLogInfo) obj;
        Tag tag = this.f18726a;
        if (tag != actorLogInfo.f18726a) {
            return false;
        }
        switch (C3350a.f18731a[tag.ordinal()]) {
            case 1:
                UserLogInfo userLogInfo = this.f18727b;
                UserLogInfo userLogInfo2 = actorLogInfo.f18727b;
                return userLogInfo == userLogInfo2 || userLogInfo.equals(userLogInfo2);
            case 2:
                UserLogInfo userLogInfo3 = this.f18728c;
                UserLogInfo userLogInfo4 = actorLogInfo.f18728c;
                return userLogInfo3 == userLogInfo4 || userLogInfo3.equals(userLogInfo4);
            case 3:
                AppLogInfo appLogInfo = this.f18729d;
                AppLogInfo appLogInfo2 = actorLogInfo.f18729d;
                return appLogInfo == appLogInfo2 || appLogInfo.equals(appLogInfo2);
            case 4:
                ResellerLogInfo resellerLogInfo = this.f18730e;
                ResellerLogInfo resellerLogInfo2 = actorLogInfo.f18730e;
                return resellerLogInfo == resellerLogInfo2 || resellerLogInfo.equals(resellerLogInfo2);
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final ActorLogInfo m13070f(Tag tag, UserLogInfo userLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo.f18726a = tag;
        actorLogInfo.f18728c = userLogInfo;
        return actorLogInfo;
    }

    /* renamed from: g */
    public final ActorLogInfo m13071g(Tag tag, AppLogInfo appLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo.f18726a = tag;
        actorLogInfo.f18729d = appLogInfo;
        return actorLogInfo;
    }

    public UserLogInfo getAdminValue() {
        if (this.f18726a == Tag.ADMIN) {
            return this.f18728c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ADMIN, but was Tag." + this.f18726a.name());
    }

    public AppLogInfo getAppValue() {
        if (this.f18726a == Tag.APP) {
            return this.f18729d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.APP, but was Tag." + this.f18726a.name());
    }

    public ResellerLogInfo getResellerValue() {
        if (this.f18726a == Tag.RESELLER) {
            return this.f18730e;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RESELLER, but was Tag." + this.f18726a.name());
    }

    public UserLogInfo getUserValue() {
        if (this.f18726a == Tag.USER) {
            return this.f18727b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.USER, but was Tag." + this.f18726a.name());
    }

    /* renamed from: h */
    public final ActorLogInfo m13072h(Tag tag, ResellerLogInfo resellerLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo.f18726a = tag;
        actorLogInfo.f18730e = resellerLogInfo;
        return actorLogInfo;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18726a, this.f18727b, this.f18728c, this.f18729d, this.f18730e});
    }

    /* renamed from: i */
    public final ActorLogInfo m13073i(Tag tag, UserLogInfo userLogInfo) {
        ActorLogInfo actorLogInfo = new ActorLogInfo();
        actorLogInfo.f18726a = tag;
        actorLogInfo.f18727b = userLogInfo;
        return actorLogInfo;
    }

    public boolean isAdmin() {
        return this.f18726a == Tag.ADMIN;
    }

    public boolean isAnonymous() {
        return this.f18726a == Tag.ANONYMOUS;
    }

    public boolean isApp() {
        return this.f18726a == Tag.APP;
    }

    public boolean isDropbox() {
        return this.f18726a == Tag.DROPBOX;
    }

    public boolean isOther() {
        return this.f18726a == Tag.OTHER;
    }

    public boolean isReseller() {
        return this.f18726a == Tag.RESELLER;
    }

    public boolean isUser() {
        return this.f18726a == Tag.USER;
    }

    public Tag tag() {
        return this.f18726a;
    }

    public String toString() {
        return C3351b.f18732b.serialize((C3351b) this, false);
    }

    public String toStringMultiline() {
        return C3351b.f18732b.serialize((C3351b) this, true);
    }
}
