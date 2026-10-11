package com.dropbox.core.p006v2.clouddocs;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum GenericErrorTag {
    INVALID_ARGUMENT,
    UNAUTHENTICATED,
    PERMISSION_DENIED,
    DOC_NOT_FOUND,
    OTHER;

    /* renamed from: com.dropbox.core.v2.clouddocs.GenericErrorTag$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2390a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16834a;

        static {
            int[] iArr = new int[GenericErrorTag.values().length];
            f16834a = iArr;
            try {
                iArr[GenericErrorTag.INVALID_ARGUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16834a[GenericErrorTag.UNAUTHENTICATED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16834a[GenericErrorTag.PERMISSION_DENIED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f16834a[GenericErrorTag.DOC_NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.clouddocs.GenericErrorTag$b */
    /* loaded from: classes4.dex */
    public static class C2391b extends UnionSerializer<GenericErrorTag> {

        /* renamed from: b */
        public static final C2391b f16835b = new C2391b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GenericErrorTag deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GenericErrorTag genericErrorTag = "invalid_argument".equals(readTag) ? GenericErrorTag.INVALID_ARGUMENT : DavPrincipal.KEY_UNAUTHENTICATED.equals(readTag) ? GenericErrorTag.UNAUTHENTICATED : "permission_denied".equals(readTag) ? GenericErrorTag.PERMISSION_DENIED : "doc_not_found".equals(readTag) ? GenericErrorTag.DOC_NOT_FOUND : GenericErrorTag.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return genericErrorTag;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GenericErrorTag genericErrorTag, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2390a.f16834a[genericErrorTag.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_argument");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(DavPrincipal.KEY_UNAUTHENTICATED);
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("permission_denied");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("doc_not_found");
            }
        }
    }
}
