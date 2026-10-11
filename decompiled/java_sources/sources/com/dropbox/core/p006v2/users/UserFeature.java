package com.dropbox.core.p006v2.users;

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
public enum UserFeature {
    PAPER_AS_FILES,
    FILE_LOCKING,
    OTHER;

    /* renamed from: com.dropbox.core.v2.users.UserFeature$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4446a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20752a;

        static {
            int[] iArr = new int[UserFeature.values().length];
            f20752a = iArr;
            try {
                iArr[UserFeature.PAPER_AS_FILES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20752a[UserFeature.FILE_LOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.users.UserFeature$b */
    /* loaded from: classes4.dex */
    public static class C4447b extends UnionSerializer<UserFeature> {

        /* renamed from: b */
        public static final C4447b f20753b = new C4447b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UserFeature deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            UserFeature userFeature = "paper_as_files".equals(readTag) ? UserFeature.PAPER_AS_FILES : "file_locking".equals(readTag) ? UserFeature.FILE_LOCKING : UserFeature.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return userFeature;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UserFeature userFeature, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4446a.f20752a[userFeature.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("paper_as_files");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("file_locking");
            }
        }
    }
}
