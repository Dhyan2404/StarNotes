package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.ListFileMembersCountResult;
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
public final class ListFileMembersIndividualResult {
    public static final ListFileMembersIndividualResult OTHER = new ListFileMembersIndividualResult().m11716c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17817a;

    /* renamed from: b */
    public ListFileMembersCountResult f17818b;

    /* renamed from: c */
    public SharingFileAccessError f17819c;

    /* loaded from: classes4.dex */
    public enum Tag {
        RESULT,
        ACCESS_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersIndividualResult$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2873a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17820a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17820a = iArr;
            try {
                iArr[Tag.RESULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17820a[Tag.ACCESS_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17820a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFileMembersIndividualResult$b */
    /* loaded from: classes4.dex */
    public static class C2874b extends UnionSerializer<ListFileMembersIndividualResult> {

        /* renamed from: b */
        public static final C2874b f17821b = new C2874b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFileMembersIndividualResult deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFileMembersIndividualResult listFileMembersIndividualResult;
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
            if (Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING.equals(readTag)) {
                listFileMembersIndividualResult = ListFileMembersIndividualResult.result(ListFileMembersCountResult.C2870a.f17811b.deserialize(jsonParser, true));
            } else if ("access_error".equals(readTag)) {
                StoneSerializer.expectField("access_error", jsonParser);
                listFileMembersIndividualResult = ListFileMembersIndividualResult.accessError(SharingFileAccessError.C2961b.f17989b.deserialize(jsonParser));
            } else {
                listFileMembersIndividualResult = ListFileMembersIndividualResult.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFileMembersIndividualResult;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFileMembersIndividualResult listFileMembersIndividualResult, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2873a.f17820a[listFileMembersIndividualResult.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag(Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, jsonGenerator);
                ListFileMembersCountResult.C2870a.f17811b.serialize(listFileMembersIndividualResult.f17818b, jsonGenerator, true);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("access_error", jsonGenerator);
            jsonGenerator.writeFieldName("access_error");
            SharingFileAccessError.C2961b.f17989b.serialize(listFileMembersIndividualResult.f17819c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListFileMembersIndividualResult accessError(SharingFileAccessError sharingFileAccessError) {
        if (sharingFileAccessError != null) {
            return new ListFileMembersIndividualResult().m11717d(Tag.ACCESS_ERROR, sharingFileAccessError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static ListFileMembersIndividualResult result(ListFileMembersCountResult listFileMembersCountResult) {
        if (listFileMembersCountResult != null) {
            return new ListFileMembersIndividualResult().m11718e(Tag.RESULT, listFileMembersCountResult);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final ListFileMembersIndividualResult m11716c(Tag tag) {
        ListFileMembersIndividualResult listFileMembersIndividualResult = new ListFileMembersIndividualResult();
        listFileMembersIndividualResult.f17817a = tag;
        return listFileMembersIndividualResult;
    }

    /* renamed from: d */
    public final ListFileMembersIndividualResult m11717d(Tag tag, SharingFileAccessError sharingFileAccessError) {
        ListFileMembersIndividualResult listFileMembersIndividualResult = new ListFileMembersIndividualResult();
        listFileMembersIndividualResult.f17817a = tag;
        listFileMembersIndividualResult.f17819c = sharingFileAccessError;
        return listFileMembersIndividualResult;
    }

    /* renamed from: e */
    public final ListFileMembersIndividualResult m11718e(Tag tag, ListFileMembersCountResult listFileMembersCountResult) {
        ListFileMembersIndividualResult listFileMembersIndividualResult = new ListFileMembersIndividualResult();
        listFileMembersIndividualResult.f17817a = tag;
        listFileMembersIndividualResult.f17818b = listFileMembersCountResult;
        return listFileMembersIndividualResult;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFileMembersIndividualResult)) {
            return false;
        }
        ListFileMembersIndividualResult listFileMembersIndividualResult = (ListFileMembersIndividualResult) obj;
        Tag tag = this.f17817a;
        if (tag != listFileMembersIndividualResult.f17817a) {
            return false;
        }
        int i = C2873a.f17820a[tag.ordinal()];
        if (i == 1) {
            ListFileMembersCountResult listFileMembersCountResult = this.f17818b;
            ListFileMembersCountResult listFileMembersCountResult2 = listFileMembersIndividualResult.f17818b;
            return listFileMembersCountResult == listFileMembersCountResult2 || listFileMembersCountResult.equals(listFileMembersCountResult2);
        }
        if (i != 2) {
            return i == 3;
        }
        SharingFileAccessError sharingFileAccessError = this.f17819c;
        SharingFileAccessError sharingFileAccessError2 = listFileMembersIndividualResult.f17819c;
        return sharingFileAccessError == sharingFileAccessError2 || sharingFileAccessError.equals(sharingFileAccessError2);
    }

    public SharingFileAccessError getAccessErrorValue() {
        if (this.f17817a == Tag.ACCESS_ERROR) {
            return this.f17819c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.ACCESS_ERROR, but was Tag." + this.f17817a.name());
    }

    public ListFileMembersCountResult getResultValue() {
        if (this.f17817a == Tag.RESULT) {
            return this.f17818b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RESULT, but was Tag." + this.f17817a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17817a, this.f17818b, this.f17819c});
    }

    public boolean isAccessError() {
        return this.f17817a == Tag.ACCESS_ERROR;
    }

    public boolean isOther() {
        return this.f17817a == Tag.OTHER;
    }

    public boolean isResult() {
        return this.f17817a == Tag.RESULT;
    }

    public Tag tag() {
        return this.f17817a;
    }

    public String toString() {
        return C2874b.f17821b.serialize((C2874b) this, false);
    }

    public String toStringMultiline() {
        return C2874b.f17821b.serialize((C2874b) this, true);
    }
}
