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
public enum RevokeSharedLinkError {
    SHARED_LINK_NOT_FOUND,
    SHARED_LINK_ACCESS_DENIED,
    UNSUPPORTED_LINK_TYPE,
    OTHER,
    SHARED_LINK_MALFORMED;

    /* renamed from: com.dropbox.core.v2.sharing.RevokeSharedLinkError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2924a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17921a;

        static {
            int[] iArr = new int[RevokeSharedLinkError.values().length];
            f17921a = iArr;
            try {
                iArr[RevokeSharedLinkError.SHARED_LINK_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17921a[RevokeSharedLinkError.SHARED_LINK_ACCESS_DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17921a[RevokeSharedLinkError.UNSUPPORTED_LINK_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17921a[RevokeSharedLinkError.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17921a[RevokeSharedLinkError.SHARED_LINK_MALFORMED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.RevokeSharedLinkError$b */
    /* loaded from: classes4.dex */
    public static class C2925b extends UnionSerializer<RevokeSharedLinkError> {

        /* renamed from: b */
        public static final C2925b f17922b = new C2925b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public RevokeSharedLinkError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            RevokeSharedLinkError revokeSharedLinkError;
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
            if ("shared_link_not_found".equals(readTag)) {
                revokeSharedLinkError = RevokeSharedLinkError.SHARED_LINK_NOT_FOUND;
            } else if ("shared_link_access_denied".equals(readTag)) {
                revokeSharedLinkError = RevokeSharedLinkError.SHARED_LINK_ACCESS_DENIED;
            } else if ("unsupported_link_type".equals(readTag)) {
                revokeSharedLinkError = RevokeSharedLinkError.UNSUPPORTED_LINK_TYPE;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                revokeSharedLinkError = RevokeSharedLinkError.OTHER;
            } else {
                if (!"shared_link_malformed".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                revokeSharedLinkError = RevokeSharedLinkError.SHARED_LINK_MALFORMED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return revokeSharedLinkError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(RevokeSharedLinkError revokeSharedLinkError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2924a.f17921a[revokeSharedLinkError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("shared_link_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("shared_link_access_denied");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("unsupported_link_type");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 5) {
                    jsonGenerator.writeString("shared_link_malformed");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + revokeSharedLinkError);
            }
        }
    }
}
