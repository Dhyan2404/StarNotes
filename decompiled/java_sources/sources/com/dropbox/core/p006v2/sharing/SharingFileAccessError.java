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
public enum SharingFileAccessError {
    NO_PERMISSION,
    INVALID_FILE,
    IS_FOLDER,
    INSIDE_PUBLIC_FOLDER,
    INSIDE_OSX_PACKAGE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.SharingFileAccessError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2960a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17988a;

        static {
            int[] iArr = new int[SharingFileAccessError.values().length];
            f17988a = iArr;
            try {
                iArr[SharingFileAccessError.NO_PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17988a[SharingFileAccessError.INVALID_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17988a[SharingFileAccessError.IS_FOLDER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17988a[SharingFileAccessError.INSIDE_PUBLIC_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17988a[SharingFileAccessError.INSIDE_OSX_PACKAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.SharingFileAccessError$b */
    /* loaded from: classes4.dex */
    public static class C2961b extends UnionSerializer<SharingFileAccessError> {

        /* renamed from: b */
        public static final C2961b f17989b = new C2961b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharingFileAccessError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharingFileAccessError sharingFileAccessError = "no_permission".equals(readTag) ? SharingFileAccessError.NO_PERMISSION : "invalid_file".equals(readTag) ? SharingFileAccessError.INVALID_FILE : "is_folder".equals(readTag) ? SharingFileAccessError.IS_FOLDER : "inside_public_folder".equals(readTag) ? SharingFileAccessError.INSIDE_PUBLIC_FOLDER : "inside_osx_package".equals(readTag) ? SharingFileAccessError.INSIDE_OSX_PACKAGE : SharingFileAccessError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharingFileAccessError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharingFileAccessError sharingFileAccessError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2960a.f17988a[sharingFileAccessError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("no_permission");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("invalid_file");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("is_folder");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("inside_public_folder");
            } else if (i != 5) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("inside_osx_package");
            }
        }
    }
}
