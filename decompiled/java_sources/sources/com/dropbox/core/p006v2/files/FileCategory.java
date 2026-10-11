package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum FileCategory {
    IMAGE,
    DOCUMENT,
    PDF,
    SPREADSHEET,
    PRESENTATION,
    AUDIO,
    VIDEO,
    FOLDER,
    PAPER,
    OTHERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.FileCategory$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2537a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17141a;

        static {
            int[] iArr = new int[FileCategory.values().length];
            f17141a = iArr;
            try {
                iArr[FileCategory.IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17141a[FileCategory.DOCUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17141a[FileCategory.PDF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17141a[FileCategory.SPREADSHEET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17141a[FileCategory.PRESENTATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17141a[FileCategory.AUDIO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17141a[FileCategory.VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17141a[FileCategory.FOLDER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17141a[FileCategory.PAPER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17141a[FileCategory.OTHERS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.FileCategory$b */
    /* loaded from: classes4.dex */
    public static class C2538b extends UnionSerializer<FileCategory> {

        /* renamed from: b */
        public static final C2538b f17142b = new C2538b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileCategory deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FileCategory fileCategory = "image".equals(readTag) ? FileCategory.IMAGE : "document".equals(readTag) ? FileCategory.DOCUMENT : "pdf".equals(readTag) ? FileCategory.PDF : "spreadsheet".equals(readTag) ? FileCategory.SPREADSHEET : "presentation".equals(readTag) ? FileCategory.PRESENTATION : "audio".equals(readTag) ? FileCategory.AUDIO : "video".equals(readTag) ? FileCategory.VIDEO : Constant.FOLDER.equals(readTag) ? FileCategory.FOLDER : "paper".equals(readTag) ? FileCategory.PAPER : "others".equals(readTag) ? FileCategory.OTHERS : FileCategory.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fileCategory;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileCategory fileCategory, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2537a.f17141a[fileCategory.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("image");
                    return;
                case 2:
                    jsonGenerator.writeString("document");
                    return;
                case 3:
                    jsonGenerator.writeString("pdf");
                    return;
                case 4:
                    jsonGenerator.writeString("spreadsheet");
                    return;
                case 5:
                    jsonGenerator.writeString("presentation");
                    return;
                case 6:
                    jsonGenerator.writeString("audio");
                    return;
                case 7:
                    jsonGenerator.writeString("video");
                    return;
                case 8:
                    jsonGenerator.writeString(Constant.FOLDER);
                    return;
                case 9:
                    jsonGenerator.writeString("paper");
                    return;
                case 10:
                    jsonGenerator.writeString("others");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
