package com.dropbox.core.p006v2.sharing;

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
public enum SharedFolderAccessError {
    INVALID_ID,
    NOT_A_MEMBER,
    EMAIL_UNVERIFIED,
    UNMOUNTED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.SharedFolderAccessError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2942a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17964a;

        static {
            int[] iArr = new int[SharedFolderAccessError.values().length];
            f17964a = iArr;
            try {
                iArr[SharedFolderAccessError.INVALID_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17964a[SharedFolderAccessError.NOT_A_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17964a[SharedFolderAccessError.EMAIL_UNVERIFIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17964a[SharedFolderAccessError.UNMOUNTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedFolderAccessError$b */
    /* loaded from: classes4.dex */
    public static class C2943b extends UnionSerializer<SharedFolderAccessError> {

        /* renamed from: b */
        public static final C2943b f17965b = new C2943b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderAccessError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedFolderAccessError sharedFolderAccessError = "invalid_id".equals(readTag) ? SharedFolderAccessError.INVALID_ID : "not_a_member".equals(readTag) ? SharedFolderAccessError.NOT_A_MEMBER : "email_unverified".equals(readTag) ? SharedFolderAccessError.EMAIL_UNVERIFIED : "unmounted".equals(readTag) ? SharedFolderAccessError.UNMOUNTED : SharedFolderAccessError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedFolderAccessError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderAccessError sharedFolderAccessError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2942a.f17964a[sharedFolderAccessError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_id");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("not_a_member");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("email_unverified");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("unmounted");
            }
        }
    }
}
