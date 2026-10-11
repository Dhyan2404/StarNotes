package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharePathError;
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
public final class ShareFolderError {

    /* renamed from: a */
    public Tag f17940a;

    /* renamed from: b */
    public SharePathError f17941b;
    public static final ShareFolderError EMAIL_UNVERIFIED = new ShareFolderError().m11872b(Tag.EMAIL_UNVERIFIED);
    public static final ShareFolderError TEAM_POLICY_DISALLOWS_MEMBER_POLICY = new ShareFolderError().m11872b(Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY);
    public static final ShareFolderError DISALLOWED_SHARED_LINK_POLICY = new ShareFolderError().m11872b(Tag.DISALLOWED_SHARED_LINK_POLICY);
    public static final ShareFolderError OTHER = new ShareFolderError().m11872b(Tag.OTHER);
    public static final ShareFolderError NO_PERMISSION = new ShareFolderError().m11872b(Tag.NO_PERMISSION);

    /* loaded from: classes4.dex */
    public enum Tag {
        EMAIL_UNVERIFIED,
        BAD_PATH,
        TEAM_POLICY_DISALLOWS_MEMBER_POLICY,
        DISALLOWED_SHARED_LINK_POLICY,
        OTHER,
        NO_PERMISSION
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2930a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17942a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17942a = iArr;
            try {
                iArr[Tag.EMAIL_UNVERIFIED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17942a[Tag.BAD_PATH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17942a[Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17942a[Tag.DISALLOWED_SHARED_LINK_POLICY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17942a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17942a[Tag.NO_PERMISSION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ShareFolderError$b */
    /* loaded from: classes4.dex */
    public static class C2931b extends UnionSerializer<ShareFolderError> {

        /* renamed from: b */
        public static final C2931b f17943b = new C2931b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ShareFolderError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ShareFolderError shareFolderError;
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
            if ("email_unverified".equals(readTag)) {
                shareFolderError = ShareFolderError.EMAIL_UNVERIFIED;
            } else if ("bad_path".equals(readTag)) {
                StoneSerializer.expectField("bad_path", jsonParser);
                shareFolderError = ShareFolderError.badPath(SharePathError.C2937b.f17957b.deserialize(jsonParser));
            } else if ("team_policy_disallows_member_policy".equals(readTag)) {
                shareFolderError = ShareFolderError.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
            } else if ("disallowed_shared_link_policy".equals(readTag)) {
                shareFolderError = ShareFolderError.DISALLOWED_SHARED_LINK_POLICY;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                shareFolderError = ShareFolderError.OTHER;
            } else {
                if (!"no_permission".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                shareFolderError = ShareFolderError.NO_PERMISSION;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return shareFolderError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ShareFolderError shareFolderError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2930a.f17942a[shareFolderError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeString("email_unverified");
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("bad_path", jsonGenerator);
                    jsonGenerator.writeFieldName("bad_path");
                    SharePathError.C2937b.f17957b.serialize(shareFolderError.f17941b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeString("team_policy_disallows_member_policy");
                    return;
                case 4:
                    jsonGenerator.writeString("disallowed_shared_link_policy");
                    return;
                case 5:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 6:
                    jsonGenerator.writeString("no_permission");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + shareFolderError.tag());
            }
        }
    }

    public static ShareFolderError badPath(SharePathError sharePathError) {
        if (sharePathError != null) {
            return new ShareFolderError().m11873c(Tag.BAD_PATH, sharePathError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ShareFolderError m11872b(Tag tag) {
        ShareFolderError shareFolderError = new ShareFolderError();
        shareFolderError.f17940a = tag;
        return shareFolderError;
    }

    /* renamed from: c */
    public final ShareFolderError m11873c(Tag tag, SharePathError sharePathError) {
        ShareFolderError shareFolderError = new ShareFolderError();
        shareFolderError.f17940a = tag;
        shareFolderError.f17941b = sharePathError;
        return shareFolderError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ShareFolderError)) {
            return false;
        }
        ShareFolderError shareFolderError = (ShareFolderError) obj;
        Tag tag = this.f17940a;
        if (tag != shareFolderError.f17940a) {
            return false;
        }
        switch (C2930a.f17942a[tag.ordinal()]) {
            case 1:
                return true;
            case 2:
                SharePathError sharePathError = this.f17941b;
                SharePathError sharePathError2 = shareFolderError.f17941b;
                return sharePathError == sharePathError2 || sharePathError.equals(sharePathError2);
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    public SharePathError getBadPathValue() {
        if (this.f17940a == Tag.BAD_PATH) {
            return this.f17941b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.BAD_PATH, but was Tag." + this.f17940a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17940a, this.f17941b});
    }

    public boolean isBadPath() {
        return this.f17940a == Tag.BAD_PATH;
    }

    public boolean isDisallowedSharedLinkPolicy() {
        return this.f17940a == Tag.DISALLOWED_SHARED_LINK_POLICY;
    }

    public boolean isEmailUnverified() {
        return this.f17940a == Tag.EMAIL_UNVERIFIED;
    }

    public boolean isNoPermission() {
        return this.f17940a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17940a == Tag.OTHER;
    }

    public boolean isTeamPolicyDisallowsMemberPolicy() {
        return this.f17940a == Tag.TEAM_POLICY_DISALLOWS_MEMBER_POLICY;
    }

    public Tag tag() {
        return this.f17940a;
    }

    public String toString() {
        return C2931b.f17943b.serialize((C2931b) this, false);
    }

    public String toStringMultiline() {
        return C2931b.f17943b.serialize((C2931b) this, true);
    }
}
