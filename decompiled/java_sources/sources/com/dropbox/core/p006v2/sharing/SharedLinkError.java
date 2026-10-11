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
public enum SharedLinkError {
    SHARED_LINK_NOT_FOUND,
    SHARED_LINK_ACCESS_DENIED,
    UNSUPPORTED_LINK_TYPE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2953a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17979a;

        static {
            int[] iArr = new int[SharedLinkError.values().length];
            f17979a = iArr;
            try {
                iArr[SharedLinkError.SHARED_LINK_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17979a[SharedLinkError.SHARED_LINK_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17979a[SharedLinkError.UNSUPPORTED_LINK_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharedLinkError$b */
    /* loaded from: classes4.dex */
    public static class C2954b extends UnionSerializer<SharedLinkError> {

        /* renamed from: b */
        public static final C2954b f17980b = new C2954b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedLinkError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedLinkError sharedLinkError = "shared_link_not_found".equals(readTag) ? SharedLinkError.SHARED_LINK_NOT_FOUND : "shared_link_access_denied".equals(readTag) ? SharedLinkError.SHARED_LINK_ACCESS_DENIED : "unsupported_link_type".equals(readTag) ? SharedLinkError.UNSUPPORTED_LINK_TYPE : SharedLinkError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedLinkError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedLinkError sharedLinkError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2953a.f17979a[sharedLinkError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("shared_link_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("shared_link_access_denied");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("unsupported_link_type");
            }
        }
    }
}
