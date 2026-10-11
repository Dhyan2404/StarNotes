package com.dropbox.core.p006v2.team;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class DeleteSecondaryEmailResult {
    public static final DeleteSecondaryEmailResult OTHER = new DeleteSecondaryEmailResult().m12231d(Tag.OTHER);

    /* renamed from: a */
    public Tag f18137a;

    /* renamed from: b */
    public String f18138b;

    /* renamed from: c */
    public String f18139c;

    /* renamed from: d */
    public String f18140d;

    /* loaded from: classes4.dex */
    public enum Tag {
        SUCCESS,
        NOT_FOUND,
        CANNOT_REMOVE_PRIMARY,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.team.DeleteSecondaryEmailResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3025a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18141a;

        static {
            int[] iArr = new int[Tag.values().length];
            f18141a = iArr;
            try {
                iArr[Tag.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18141a[Tag.NOT_FOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18141a[Tag.CANNOT_REMOVE_PRIMARY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18141a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.DeleteSecondaryEmailResult$b */
    /* loaded from: classes4.dex */
    public static class C3026b extends UnionSerializer<DeleteSecondaryEmailResult> {

        /* renamed from: b */
        public static final C3026b f18142b = new C3026b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DeleteSecondaryEmailResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            DeleteSecondaryEmailResult deleteSecondaryEmailResult;
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
            if (FirebaseAnalytics.Param.SUCCESS.equals(readTag)) {
                StoneSerializer.expectField(FirebaseAnalytics.Param.SUCCESS, jsonParser);
                deleteSecondaryEmailResult = DeleteSecondaryEmailResult.success(StoneSerializers.string().deserialize(jsonParser));
            } else if ("not_found".equals(readTag)) {
                StoneSerializer.expectField("not_found", jsonParser);
                deleteSecondaryEmailResult = DeleteSecondaryEmailResult.notFound(StoneSerializers.string().deserialize(jsonParser));
            } else if ("cannot_remove_primary".equals(readTag)) {
                StoneSerializer.expectField("cannot_remove_primary", jsonParser);
                deleteSecondaryEmailResult = DeleteSecondaryEmailResult.cannotRemovePrimary(StoneSerializers.string().deserialize(jsonParser));
            } else {
                deleteSecondaryEmailResult = DeleteSecondaryEmailResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return deleteSecondaryEmailResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(DeleteSecondaryEmailResult deleteSecondaryEmailResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3025a.f18141a[deleteSecondaryEmailResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(FirebaseAnalytics.Param.SUCCESS, jsonGenerator);
                jsonGenerator.writeFieldName(FirebaseAnalytics.Param.SUCCESS);
                StoneSerializers.string().serialize((StoneSerializer<String>) deleteSecondaryEmailResult.f18138b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeStartObject();
                writeTag("not_found", jsonGenerator);
                jsonGenerator.writeFieldName("not_found");
                StoneSerializers.string().serialize((StoneSerializer<String>) deleteSecondaryEmailResult.f18139c, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("cannot_remove_primary", jsonGenerator);
            jsonGenerator.writeFieldName("cannot_remove_primary");
            StoneSerializers.string().serialize((StoneSerializer<String>) deleteSecondaryEmailResult.f18140d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static DeleteSecondaryEmailResult cannotRemovePrimary(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new DeleteSecondaryEmailResult().m12232e(Tag.CANNOT_REMOVE_PRIMARY, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static DeleteSecondaryEmailResult notFound(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new DeleteSecondaryEmailResult().m12233f(Tag.NOT_FOUND, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    public static DeleteSecondaryEmailResult success(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (str.length() > 255) {
            throw new IllegalArgumentException("String is longer than 255");
        }
        if (Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
            return new DeleteSecondaryEmailResult().m12234g(Tag.SUCCESS, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: d */
    public final DeleteSecondaryEmailResult m12231d(Tag tag) {
        DeleteSecondaryEmailResult deleteSecondaryEmailResult = new DeleteSecondaryEmailResult();
        deleteSecondaryEmailResult.f18137a = tag;
        return deleteSecondaryEmailResult;
    }

    /* renamed from: e */
    public final DeleteSecondaryEmailResult m12232e(Tag tag, String str) {
        DeleteSecondaryEmailResult deleteSecondaryEmailResult = new DeleteSecondaryEmailResult();
        deleteSecondaryEmailResult.f18137a = tag;
        deleteSecondaryEmailResult.f18140d = str;
        return deleteSecondaryEmailResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteSecondaryEmailResult)) {
            return false;
        }
        DeleteSecondaryEmailResult deleteSecondaryEmailResult = (DeleteSecondaryEmailResult) obj;
        Tag tag = this.f18137a;
        if (tag != deleteSecondaryEmailResult.f18137a) {
            return false;
        }
        int i = C3025a.f18141a[tag.ordinal()];
        if (i == 1) {
            String str = this.f18138b;
            String str2 = deleteSecondaryEmailResult.f18138b;
            return str == str2 || str.equals(str2);
        }
        if (i == 2) {
            String str3 = this.f18139c;
            String str4 = deleteSecondaryEmailResult.f18139c;
            return str3 == str4 || str3.equals(str4);
        }
        if (i != 3) {
            return i == 4;
        }
        String str5 = this.f18140d;
        String str6 = deleteSecondaryEmailResult.f18140d;
        return str5 == str6 || str5.equals(str6);
    }

    /* renamed from: f */
    public final DeleteSecondaryEmailResult m12233f(Tag tag, String str) {
        DeleteSecondaryEmailResult deleteSecondaryEmailResult = new DeleteSecondaryEmailResult();
        deleteSecondaryEmailResult.f18137a = tag;
        deleteSecondaryEmailResult.f18139c = str;
        return deleteSecondaryEmailResult;
    }

    /* renamed from: g */
    public final DeleteSecondaryEmailResult m12234g(Tag tag, String str) {
        DeleteSecondaryEmailResult deleteSecondaryEmailResult = new DeleteSecondaryEmailResult();
        deleteSecondaryEmailResult.f18137a = tag;
        deleteSecondaryEmailResult.f18138b = str;
        return deleteSecondaryEmailResult;
    }

    public String getCannotRemovePrimaryValue() {
        if (this.f18137a == Tag.CANNOT_REMOVE_PRIMARY) {
            return this.f18140d;
        }
        throw new IllegalStateException("Invalid tag: required Tag.CANNOT_REMOVE_PRIMARY, but was Tag." + this.f18137a.name());
    }

    public String getNotFoundValue() {
        if (this.f18137a == Tag.NOT_FOUND) {
            return this.f18139c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.NOT_FOUND, but was Tag." + this.f18137a.name());
    }

    public String getSuccessValue() {
        if (this.f18137a == Tag.SUCCESS) {
            return this.f18138b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.SUCCESS, but was Tag." + this.f18137a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18137a, this.f18138b, this.f18139c, this.f18140d});
    }

    public boolean isCannotRemovePrimary() {
        return this.f18137a == Tag.CANNOT_REMOVE_PRIMARY;
    }

    public boolean isNotFound() {
        return this.f18137a == Tag.NOT_FOUND;
    }

    public boolean isOther() {
        return this.f18137a == Tag.OTHER;
    }

    public boolean isSuccess() {
        return this.f18137a == Tag.SUCCESS;
    }

    public Tag tag() {
        return this.f18137a;
    }

    public String toString() {
        return C3026b.f18142b.serialize((C3026b) this, false);
    }

    public String toStringMultiline() {
        return C3026b.f18142b.serialize((C3026b) this, true);
    }
}
