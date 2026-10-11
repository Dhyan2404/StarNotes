package com.dropbox.core.p006v2.paper;

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
public enum PaperFolderCreateError {
    INSUFFICIENT_PERMISSIONS,
    OTHER,
    FOLDER_NOT_FOUND,
    INVALID_FOLDER_ID;

    /* renamed from: com.dropbox.core.v2.paper.PaperFolderCreateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2771a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17616a;

        static {
            int[] iArr = new int[PaperFolderCreateError.values().length];
            f17616a = iArr;
            try {
                iArr[PaperFolderCreateError.INSUFFICIENT_PERMISSIONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17616a[PaperFolderCreateError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17616a[PaperFolderCreateError.FOLDER_NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17616a[PaperFolderCreateError.INVALID_FOLDER_ID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.PaperFolderCreateError$b */
    /* loaded from: classes4.dex */
    public static class C2772b extends UnionSerializer<PaperFolderCreateError> {

        /* renamed from: b */
        public static final C2772b f17617b = new C2772b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PaperFolderCreateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PaperFolderCreateError paperFolderCreateError;
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
            if ("insufficient_permissions".equals(readTag)) {
                paperFolderCreateError = PaperFolderCreateError.INSUFFICIENT_PERMISSIONS;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                paperFolderCreateError = PaperFolderCreateError.OTHER;
            } else if ("folder_not_found".equals(readTag)) {
                paperFolderCreateError = PaperFolderCreateError.FOLDER_NOT_FOUND;
            } else {
                if (!"invalid_folder_id".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                paperFolderCreateError = PaperFolderCreateError.INVALID_FOLDER_ID;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return paperFolderCreateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PaperFolderCreateError paperFolderCreateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2771a.f17616a[paperFolderCreateError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("insufficient_permissions");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("folder_not_found");
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("invalid_folder_id");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + paperFolderCreateError);
            }
        }
    }
}
