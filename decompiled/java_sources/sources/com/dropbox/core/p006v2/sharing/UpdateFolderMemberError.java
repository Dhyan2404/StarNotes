package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.AddFolderMemberError;
import com.dropbox.core.p006v2.sharing.SharedFolderAccessError;
import com.dropbox.core.p006v2.sharing.SharedFolderMemberError;
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
public final class UpdateFolderMemberError {
    public static final UpdateFolderMemberError INSUFFICIENT_PLAN = new UpdateFolderMemberError().m11962d(Tag.INSUFFICIENT_PLAN);
    public static final UpdateFolderMemberError NO_PERMISSION = new UpdateFolderMemberError().m11962d(Tag.NO_PERMISSION);
    public static final UpdateFolderMemberError OTHER = new UpdateFolderMemberError().m11962d(Tag.OTHER);

    /* renamed from: a */
    public Tag f18010a;

    /* renamed from: b */
    public SharedFolderAccessError f18011b;

    /* renamed from: c */
    public SharedFolderMemberError f18012c;

    /* renamed from: d */
    public AddFolderMemberError f18013d;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        MEMBER_ERROR,
        NO_EXPLICIT_ACCESS,
        INSUFFICIENT_PLAN,
        NO_PERMISSION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.UpdateFolderMemberError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2973a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18014a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18014a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18014a[Tag.MEMBER_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18014a[Tag.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18014a[Tag.INSUFFICIENT_PLAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18014a[Tag.NO_PERMISSION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18014a[Tag.OTHER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.UpdateFolderMemberError$b */
    /* loaded from: classes4.dex */
    public static class C2974b extends UnionSerializer<UpdateFolderMemberError> {

        /* renamed from: b */
        public static final C2974b f18015b = new C2974b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UpdateFolderMemberError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UpdateFolderMemberError updateFolderMemberError;
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
            if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                updateFolderMemberError = UpdateFolderMemberError.accessError(SharedFolderAccessError.C2943b.f17965b.deserialize(jsonParser));
            } else if ("member_error".equals(readTag)) {
                StoneSerializer.expectField("member_error", jsonParser);
                updateFolderMemberError = UpdateFolderMemberError.memberError(SharedFolderMemberError.C2945b.f17969b.deserialize(jsonParser));
            } else if ("no_explicit_access".equals(readTag)) {
                StoneSerializer.expectField("no_explicit_access", jsonParser);
                updateFolderMemberError = UpdateFolderMemberError.noExplicitAccess(AddFolderMemberError.C2802b.f17682b.deserialize(jsonParser));
            } else {
                updateFolderMemberError = "insufficient_plan".equals(readTag) ? UpdateFolderMemberError.INSUFFICIENT_PLAN : "no_permission".equals(readTag) ? UpdateFolderMemberError.NO_PERMISSION : UpdateFolderMemberError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return updateFolderMemberError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UpdateFolderMemberError updateFolderMemberError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2973a.f18014a[updateFolderMemberError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                SharedFolderAccessError.C2943b.f17965b.serialize(updateFolderMemberError.f18011b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("member_error", jsonGenerator);
                jsonGenerator.writeFieldName("member_error");
                SharedFolderMemberError.C2945b.f17969b.serialize(updateFolderMemberError.f18012c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 3) {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                jsonGenerator.writeFieldName("no_explicit_access");
                AddFolderMemberError.C2802b.f17682b.serialize(updateFolderMemberError.f18013d, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("insufficient_plan");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    public static UpdateFolderMemberError accessError(SharedFolderAccessError sharedFolderAccessError) {
        if (sharedFolderAccessError != null) {
            return new UpdateFolderMemberError().m11963e(Tag.ACCESS_ERROR, sharedFolderAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UpdateFolderMemberError memberError(SharedFolderMemberError sharedFolderMemberError) {
        if (sharedFolderMemberError != null) {
            return new UpdateFolderMemberError().m11964f(Tag.MEMBER_ERROR, sharedFolderMemberError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static UpdateFolderMemberError noExplicitAccess(AddFolderMemberError addFolderMemberError) {
        if (addFolderMemberError != null) {
            return new UpdateFolderMemberError().m11965g(Tag.NO_EXPLICIT_ACCESS, addFolderMemberError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: d */
    public final UpdateFolderMemberError m11962d(Tag tag) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError.f18010a = tag;
        return updateFolderMemberError;
    }

    /* renamed from: e */
    public final UpdateFolderMemberError m11963e(Tag tag, SharedFolderAccessError sharedFolderAccessError) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError.f18010a = tag;
        updateFolderMemberError.f18011b = sharedFolderAccessError;
        return updateFolderMemberError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateFolderMemberError)) {
            return false;
        }
        UpdateFolderMemberError updateFolderMemberError = (UpdateFolderMemberError) obj;
        Tag tag = this.f18010a;
        if (tag != updateFolderMemberError.f18010a) {
            return false;
        }
        switch (C2973a.f18014a[tag.ordinal()]) {
            case 1:
                SharedFolderAccessError sharedFolderAccessError = this.f18011b;
                SharedFolderAccessError sharedFolderAccessError2 = updateFolderMemberError.f18011b;
                return sharedFolderAccessError == sharedFolderAccessError2 || sharedFolderAccessError.equals(sharedFolderAccessError2);
            case 2:
                SharedFolderMemberError sharedFolderMemberError = this.f18012c;
                SharedFolderMemberError sharedFolderMemberError2 = updateFolderMemberError.f18012c;
                return sharedFolderMemberError == sharedFolderMemberError2 || sharedFolderMemberError.equals(sharedFolderMemberError2);
            case 3:
                AddFolderMemberError addFolderMemberError = this.f18013d;
                AddFolderMemberError addFolderMemberError2 = updateFolderMemberError.f18013d;
                return addFolderMemberError == addFolderMemberError2 || addFolderMemberError.equals(addFolderMemberError2);
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: f */
    public final UpdateFolderMemberError m11964f(Tag tag, SharedFolderMemberError sharedFolderMemberError) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError.f18010a = tag;
        updateFolderMemberError.f18012c = sharedFolderMemberError;
        return updateFolderMemberError;
    }

    /* renamed from: g */
    public final UpdateFolderMemberError m11965g(Tag tag, AddFolderMemberError addFolderMemberError) {
        UpdateFolderMemberError updateFolderMemberError = new UpdateFolderMemberError();
        updateFolderMemberError.f18010a = tag;
        updateFolderMemberError.f18013d = addFolderMemberError;
        return updateFolderMemberError;
    }

    public SharedFolderAccessError getAccessErrorValue() {
        if (this.f18010a == Tag.ACCESS_ERROR) {
            return this.f18011b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f18010a.name());
    }

    public SharedFolderMemberError getMemberErrorValue() {
        if (this.f18010a == Tag.MEMBER_ERROR) {
            return this.f18012c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.MEMBER_ERROR, but was Tag." + this.f18010a.name());
    }

    public AddFolderMemberError getNoExplicitAccessValue() {
        if (this.f18010a == Tag.NO_EXPLICIT_ACCESS) {
            return this.f18013d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NO_EXPLICIT_ACCESS, but was Tag." + this.f18010a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18010a, this.f18011b, this.f18012c, this.f18013d});
    }

    public boolean isAccessError() {
        return this.f18010a == Tag.ACCESS_ERROR;
    }

    public boolean isInsufficientPlan() {
        return this.f18010a == Tag.INSUFFICIENT_PLAN;
    }

    public boolean isMemberError() {
        return this.f18010a == Tag.MEMBER_ERROR;
    }

    public boolean isNoExplicitAccess() {
        return this.f18010a == Tag.NO_EXPLICIT_ACCESS;
    }

    public boolean isNoPermission() {
        return this.f18010a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f18010a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f18010a;
    }

    public String toString() {
        return C2974b.f18015b.serialize((C2974b) this, false);
    }

    public String toStringMultiline() {
        return C2974b.f18015b.serialize((C2974b) this, true);
    }
}
