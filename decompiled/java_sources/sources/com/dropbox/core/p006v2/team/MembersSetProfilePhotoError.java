package com.dropbox.core.p006v2.team;

import com.dropbox.core.p006v2.account.SetProfilePhotoError;
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
public final class MembersSetProfilePhotoError {

    /* renamed from: a */
    public Tag f18404a;

    /* renamed from: b */
    public SetProfilePhotoError f18405b;
    public static final MembersSetProfilePhotoError USER_NOT_FOUND = new MembersSetProfilePhotoError().m12585b(Tag.USER_NOT_FOUND);
    public static final MembersSetProfilePhotoError USER_NOT_IN_TEAM = new MembersSetProfilePhotoError().m12585b(Tag.USER_NOT_IN_TEAM);
    public static final MembersSetProfilePhotoError SET_PROFILE_DISALLOWED = new MembersSetProfilePhotoError().m12585b(Tag.SET_PROFILE_DISALLOWED);
    public static final MembersSetProfilePhotoError OTHER = new MembersSetProfilePhotoError().m12585b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        USER_NOT_FOUND,
        USER_NOT_IN_TEAM,
        SET_PROFILE_DISALLOWED,
        PHOTO_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.MembersSetProfilePhotoError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3175a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18406a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18406a = iArr;
            try {
                iArr[Tag.USER_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18406a[Tag.USER_NOT_IN_TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18406a[Tag.SET_PROFILE_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18406a[Tag.PHOTO_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18406a[Tag.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.MembersSetProfilePhotoError$b */
    /* loaded from: classes4.dex */
    public static class C3176b extends UnionSerializer<MembersSetProfilePhotoError> {

        /* renamed from: b */
        public static final C3176b f18407b = new C3176b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MembersSetProfilePhotoError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            MembersSetProfilePhotoError membersSetProfilePhotoError;
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
            if ("user_not_found".equals(readTag)) {
                membersSetProfilePhotoError = MembersSetProfilePhotoError.USER_NOT_FOUND;
            } else if ("user_not_in_team".equals(readTag)) {
                membersSetProfilePhotoError = MembersSetProfilePhotoError.USER_NOT_IN_TEAM;
            } else if ("set_profile_disallowed".equals(readTag)) {
                membersSetProfilePhotoError = MembersSetProfilePhotoError.SET_PROFILE_DISALLOWED;
            } else if ("photo_error".equals(readTag)) {
                StoneSerializer.expectField("photo_error", jsonParser);
                membersSetProfilePhotoError = MembersSetProfilePhotoError.photoError(SetProfilePhotoError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                membersSetProfilePhotoError = MembersSetProfilePhotoError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return membersSetProfilePhotoError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MembersSetProfilePhotoError membersSetProfilePhotoError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3175a.f18406a[membersSetProfilePhotoError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("user_not_in_team");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("set_profile_disallowed");
                return;
            }
            if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("photo_error", jsonGenerator);
            jsonGenerator.writeFieldName("photo_error");
            SetProfilePhotoError.Serializer.INSTANCE.serialize(membersSetProfilePhotoError.f18405b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static MembersSetProfilePhotoError photoError(SetProfilePhotoError setProfilePhotoError) {
        if (setProfilePhotoError != null) {
            return new MembersSetProfilePhotoError().m12586c(Tag.PHOTO_ERROR, setProfilePhotoError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final MembersSetProfilePhotoError m12585b(Tag tag) {
        MembersSetProfilePhotoError membersSetProfilePhotoError = new MembersSetProfilePhotoError();
        membersSetProfilePhotoError.f18404a = tag;
        return membersSetProfilePhotoError;
    }

    /* renamed from: c */
    public final MembersSetProfilePhotoError m12586c(Tag tag, SetProfilePhotoError setProfilePhotoError) {
        MembersSetProfilePhotoError membersSetProfilePhotoError = new MembersSetProfilePhotoError();
        membersSetProfilePhotoError.f18404a = tag;
        membersSetProfilePhotoError.f18405b = setProfilePhotoError;
        return membersSetProfilePhotoError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof MembersSetProfilePhotoError)) {
            return false;
        }
        MembersSetProfilePhotoError membersSetProfilePhotoError = (MembersSetProfilePhotoError) obj;
        Tag tag = this.f18404a;
        if (tag != membersSetProfilePhotoError.f18404a) {
            return false;
        }
        int i = C3175a.f18406a[tag.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        if (i != 4) {
            return i == 5;
        }
        SetProfilePhotoError setProfilePhotoError = this.f18405b;
        SetProfilePhotoError setProfilePhotoError2 = membersSetProfilePhotoError.f18405b;
        return setProfilePhotoError == setProfilePhotoError2 || setProfilePhotoError.equals(setProfilePhotoError2);
    }

    public SetProfilePhotoError getPhotoErrorValue() {
        if (this.f18404a == Tag.PHOTO_ERROR) {
            return this.f18405b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PHOTO_ERROR, but was Tag." + this.f18404a.name());
    }

    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18404a, this.f18405b});
    }

    public boolean isOther() {
        return this.f18404a == Tag.OTHER;
    }

    public boolean isPhotoError() {
        return this.f18404a == Tag.PHOTO_ERROR;
    }

    public boolean isSetProfileDisallowed() {
        return this.f18404a == Tag.SET_PROFILE_DISALLOWED;
    }

    public boolean isUserNotFound() {
        return this.f18404a == Tag.USER_NOT_FOUND;
    }

    public boolean isUserNotInTeam() {
        return this.f18404a == Tag.USER_NOT_IN_TEAM;
    }

    public Tag tag() {
        return this.f18404a;
    }

    public String toString() {
        return C3176b.f18407b.serialize((C3176b) this, false);
    }

    public String toStringMultiline() {
        return C3176b.f18407b.serialize((C3176b) this, true);
    }
}
