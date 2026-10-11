package com.dropbox.core.p006v2.team;

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
public enum AddSecondaryEmailsError {
    SECONDARY_EMAILS_DISABLED,
    TOO_MANY_EMAILS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.AddSecondaryEmailsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3011a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18117a;

        static {
            int[] iArr = new int[AddSecondaryEmailsError.values().length];
            f18117a = iArr;
            try {
                iArr[AddSecondaryEmailsError.SECONDARY_EMAILS_DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18117a[AddSecondaryEmailsError.TOO_MANY_EMAILS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.AddSecondaryEmailsError$b */
    /* loaded from: classes4.dex */
    public static class C3012b extends UnionSerializer<AddSecondaryEmailsError> {

        /* renamed from: b */
        public static final C3012b f18118b = new C3012b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public AddSecondaryEmailsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            AddSecondaryEmailsError addSecondaryEmailsError = "secondary_emails_disabled".equals(readTag) ? AddSecondaryEmailsError.SECONDARY_EMAILS_DISABLED : "too_many_emails".equals(readTag) ? AddSecondaryEmailsError.TOO_MANY_EMAILS : AddSecondaryEmailsError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return addSecondaryEmailsError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(AddSecondaryEmailsError addSecondaryEmailsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3011a.f18117a[addSecondaryEmailsError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("secondary_emails_disabled");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("too_many_emails");
            }
        }
    }
}
