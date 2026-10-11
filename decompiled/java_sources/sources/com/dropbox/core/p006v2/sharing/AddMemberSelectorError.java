package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class AddMemberSelectorError {
    public static final AddMemberSelectorError AUTOMATIC_GROUP = new AddMemberSelectorError().m11483d(Tag.AUTOMATIC_GROUP);
    public static final AddMemberSelectorError GROUP_DELETED = new AddMemberSelectorError().m11483d(Tag.GROUP_DELETED);
    public static final AddMemberSelectorError GROUP_NOT_ON_TEAM = new AddMemberSelectorError().m11483d(Tag.GROUP_NOT_ON_TEAM);
    public static final AddMemberSelectorError OTHER = new AddMemberSelectorError().m11483d(Tag.OTHER);

    /* renamed from: a */
    public Tag f17684a;

    /* renamed from: b */
    public String f17685b;

    /* renamed from: c */
    public String f17686c;

    /* renamed from: d */
    public String f17687d;

    /* loaded from: classes4.dex */
    public enum Tag {
        AUTOMATIC_GROUP,
        INVALID_DROPBOX_ID,
        INVALID_EMAIL,
        UNVERIFIED_DROPBOX_ID,
        GROUP_DELETED,
        GROUP_NOT_ON_TEAM,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.AddMemberSelectorError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2804a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17688a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17688a = iArr;
            try {
                iArr[Tag.AUTOMATIC_GROUP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17688a[Tag.INVALID_DROPBOX_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17688a[Tag.INVALID_EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17688a[Tag.UNVERIFIED_DROPBOX_ID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17688a[Tag.GROUP_DELETED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17688a[Tag.GROUP_NOT_ON_TEAM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17688a[Tag.OTHER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.AddMemberSelectorError$b */
    /* loaded from: classes4.dex */
    public static class C2805b extends UnionSerializer<AddMemberSelectorError> {

        /* renamed from: b */
        public static final C2805b f17689b = new C2805b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddMemberSelectorError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            AddMemberSelectorError addMemberSelectorError;
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
            if ("automatic_group".equals(readTag)) {
                addMemberSelectorError = AddMemberSelectorError.AUTOMATIC_GROUP;
            } else if ("invalid_dropbox_id".equals(readTag)) {
                StoneSerializer.expectField("invalid_dropbox_id", jsonParser);
                addMemberSelectorError = AddMemberSelectorError.invalidDropboxId(StoneSerializers.string().deserialize(jsonParser));
            } else if ("invalid_email".equals(readTag)) {
                StoneSerializer.expectField("invalid_email", jsonParser);
                addMemberSelectorError = AddMemberSelectorError.invalidEmail(StoneSerializers.string().deserialize(jsonParser));
            } else if ("unverified_dropbox_id".equals(readTag)) {
                StoneSerializer.expectField("unverified_dropbox_id", jsonParser);
                addMemberSelectorError = AddMemberSelectorError.unverifiedDropboxId(StoneSerializers.string().deserialize(jsonParser));
            } else {
                addMemberSelectorError = "group_deleted".equals(readTag) ? AddMemberSelectorError.GROUP_DELETED : "group_not_on_team".equals(readTag) ? AddMemberSelectorError.GROUP_NOT_ON_TEAM : AddMemberSelectorError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return addMemberSelectorError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddMemberSelectorError addMemberSelectorError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2804a.f17688a[addMemberSelectorError.tag().ordinal()]) {
                case 1:
                    jsonGenerator.writeString("automatic_group");
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("invalid_dropbox_id", jsonGenerator);
                    jsonGenerator.writeFieldName("invalid_dropbox_id");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addMemberSelectorError.f17685b, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("invalid_email", jsonGenerator);
                    jsonGenerator.writeFieldName("invalid_email");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addMemberSelectorError.f17686c, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeStartObject();
                    writeTag("unverified_dropbox_id", jsonGenerator);
                    jsonGenerator.writeFieldName("unverified_dropbox_id");
                    StoneSerializers.string().serialize((StoneSerializer<String>) addMemberSelectorError.f17687d, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 5:
                    jsonGenerator.writeString("group_deleted");
                    return;
                case 6:
                    jsonGenerator.writeString("group_not_on_team");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }

    public static AddMemberSelectorError invalidDropboxId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new AddMemberSelectorError().m11484e(Tag.INVALID_DROPBOX_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    public static AddMemberSelectorError invalidEmail(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new AddMemberSelectorError().m11485f(Tag.INVALID_EMAIL, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static AddMemberSelectorError unverifiedDropboxId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() >= 1) {
            return new AddMemberSelectorError().m11486g(Tag.UNVERIFIED_DROPBOX_ID, str);
        }
        throw new IllegalArgumentException("String is shorter than 1");
    }

    /* renamed from: d */
    public final AddMemberSelectorError m11483d(Tag tag) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError.f17684a = tag;
        return addMemberSelectorError;
    }

    /* renamed from: e */
    public final AddMemberSelectorError m11484e(Tag tag, String str) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError.f17684a = tag;
        addMemberSelectorError.f17685b = str;
        return addMemberSelectorError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AddMemberSelectorError)) {
            return false;
        }
        AddMemberSelectorError addMemberSelectorError = (AddMemberSelectorError) obj;
        Tag tag = this.f17684a;
        if (tag != addMemberSelectorError.f17684a) {
            return false;
        }
        switch (C2804a.f17688a[tag.ordinal()]) {
            case 1:
                return true;
            case 2:
                String str = this.f17685b;
                String str2 = addMemberSelectorError.f17685b;
                return str == str2 || str.equals(str2);
            case 3:
                String str3 = this.f17686c;
                String str4 = addMemberSelectorError.f17686c;
                return str3 == str4 || str3.equals(str4);
            case 4:
                String str5 = this.f17687d;
                String str6 = addMemberSelectorError.f17687d;
                return str5 == str6 || str5.equals(str6);
            case 5:
            case 6:
            case 7:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final AddMemberSelectorError m11485f(Tag tag, String str) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError.f17684a = tag;
        addMemberSelectorError.f17686c = str;
        return addMemberSelectorError;
    }

    /* renamed from: g */
    public final AddMemberSelectorError m11486g(Tag tag, String str) {
        AddMemberSelectorError addMemberSelectorError = new AddMemberSelectorError();
        addMemberSelectorError.f17684a = tag;
        addMemberSelectorError.f17687d = str;
        return addMemberSelectorError;
    }

    public String getInvalidDropboxIdValue() {
        if (this.f17684a == Tag.INVALID_DROPBOX_ID) {
            return this.f17685b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_DROPBOX_ID, but was Tag." + this.f17684a.name());
    }

    public String getInvalidEmailValue() {
        if (this.f17684a == Tag.INVALID_EMAIL) {
            return this.f17686c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_EMAIL, but was Tag." + this.f17684a.name());
    }

    public String getUnverifiedDropboxIdValue() {
        if (this.f17684a == Tag.UNVERIFIED_DROPBOX_ID) {
            return this.f17687d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UNVERIFIED_DROPBOX_ID, but was Tag." + this.f17684a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17684a, this.f17685b, this.f17686c, this.f17687d});
    }

    public boolean isAutomaticGroup() {
        return this.f17684a == Tag.AUTOMATIC_GROUP;
    }

    public boolean isGroupDeleted() {
        return this.f17684a == Tag.GROUP_DELETED;
    }

    public boolean isGroupNotOnTeam() {
        return this.f17684a == Tag.GROUP_NOT_ON_TEAM;
    }

    public boolean isInvalidDropboxId() {
        return this.f17684a == Tag.INVALID_DROPBOX_ID;
    }

    public boolean isInvalidEmail() {
        return this.f17684a == Tag.INVALID_EMAIL;
    }

    public boolean isOther() {
        return this.f17684a == Tag.OTHER;
    }

    public boolean isUnverifiedDropboxId() {
        return this.f17684a == Tag.UNVERIFIED_DROPBOX_ID;
    }

    public Tag tag() {
        return this.f17684a;
    }

    public String toString() {
        return C2805b.f17689b.serialize((C2805b) this, false);
    }

    public String toStringMultiline() {
        return C2805b.f17689b.serialize((C2805b) this, true);
    }
}
