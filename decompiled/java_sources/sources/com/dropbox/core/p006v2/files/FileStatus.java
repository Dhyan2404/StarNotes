package com.dropbox.core.p006v2.files;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum FileStatus {
    ACTIVE,
    DELETED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.files.FileStatus$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2546a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17154a;

        static {
            int[] iArr = new int[FileStatus.values().length];
            f17154a = iArr;
            try {
                iArr[FileStatus.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17154a[FileStatus.DELETED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.FileStatus$b */
    /* loaded from: classes4.dex */
    public static class C2547b extends UnionSerializer<FileStatus> {

        /* renamed from: b */
        public static final C2547b f17155b = new C2547b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileStatus deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FileStatus fileStatus = AppMeasurementSdk.ConditionalUserProperty.ACTIVE.equals(readTag) ? FileStatus.ACTIVE : "deleted".equals(readTag) ? FileStatus.DELETED : FileStatus.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fileStatus;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileStatus fileStatus, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2546a.f17154a[fileStatus.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString(AppMeasurementSdk.ConditionalUserProperty.ACTIVE);
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("deleted");
            }
        }
    }
}
