package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.SharingFileAccessError;
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
public final class RelinquishFileMembershipError {
    public static final RelinquishFileMembershipError GROUP_ACCESS = new RelinquishFileMembershipError().m11810b(Tag.GROUP_ACCESS);
    public static final RelinquishFileMembershipError NO_PERMISSION = new RelinquishFileMembershipError().m11810b(Tag.NO_PERMISSION);
    public static final RelinquishFileMembershipError OTHER = new RelinquishFileMembershipError().m11810b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17891a;

    /* renamed from: b */
    public SharingFileAccessError f17892b;

    /* loaded from: classes4.dex */
    public enum Tag {
        ACCESS_ERROR,
        GROUP_ACCESS,
        NO_PERMISSION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.RelinquishFileMembershipError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2908a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17893a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17893a = iArr;
            try {
                iArr[Tag.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17893a[Tag.GROUP_ACCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17893a[Tag.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17893a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RelinquishFileMembershipError$b */
    /* loaded from: classes4.dex */
    public static class C2909b extends UnionSerializer<RelinquishFileMembershipError> {

        /* renamed from: b */
        public static final C2909b f17894b = new C2909b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RelinquishFileMembershipError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RelinquishFileMembershipError relinquishFileMembershipError;
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
                relinquishFileMembershipError = RelinquishFileMembershipError.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                relinquishFileMembershipError = "group_access".equals(readTag) ? RelinquishFileMembershipError.GROUP_ACCESS : "no_permission".equals(readTag) ? RelinquishFileMembershipError.NO_PERMISSION : RelinquishFileMembershipError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return relinquishFileMembershipError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RelinquishFileMembershipError relinquishFileMembershipError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2908a.f17893a[relinquishFileMembershipError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                SharingFileAccessError.C2961b.f17989b.serialize(relinquishFileMembershipError.f17892b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("group_access");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    public static RelinquishFileMembershipError accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new RelinquishFileMembershipError().m11811c(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final RelinquishFileMembershipError m11810b(Tag tag) {
        RelinquishFileMembershipError relinquishFileMembershipError = new RelinquishFileMembershipError();
        relinquishFileMembershipError.f17891a = tag;
        return relinquishFileMembershipError;
    }

    /* renamed from: c */
    public final RelinquishFileMembershipError m11811c(Tag tag, SharingFileAccessError sharingFileAccessError) {
        RelinquishFileMembershipError relinquishFileMembershipError = new RelinquishFileMembershipError();
        relinquishFileMembershipError.f17891a = tag;
        relinquishFileMembershipError.f17892b = sharingFileAccessError;
        return relinquishFileMembershipError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof RelinquishFileMembershipError)) {
            return false;
        }
        RelinquishFileMembershipError relinquishFileMembershipError = (RelinquishFileMembershipError) obj;
        Tag tag = this.f17891a;
        if (tag != relinquishFileMembershipError.f17891a) {
            return false;
        }
        int i = C2908a.f17893a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        SharingFileAccessError sharingFileAccessError = this.f17892b;
        SharingFileAccessError sharingFileAccessError2 = relinquishFileMembershipError.f17892b;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17891a == Tag.ACCESS_ERROR) {
            return this.f17892b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17891a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17891a, this.f17892b});
    }

    public boolean isAccessError() {
        return this.f17891a == Tag.ACCESS_ERROR;
    }

    public boolean isGroupAccess() {
        return this.f17891a == Tag.GROUP_ACCESS;
    }

    public boolean isNoPermission() {
        return this.f17891a == Tag.NO_PERMISSION;
    }

    public boolean isOther() {
        return this.f17891a == Tag.OTHER;
    }

    public Tag tag() {
        return this.f17891a;
    }

    public String toString() {
        return C2909b.f17894b.serialize((C2909b) this, false);
    }

    public String toStringMultiline() {
        return C2909b.f17894b.serialize((C2909b) this, true);
    }
}
