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
public enum GroupsPollError {
    INVALID_ASYNC_JOB_ID,
    INTERNAL_ERROR,
    OTHER,
    ACCESS_DENIED;

    /* renamed from: com.dropbox.core.v2.team.GroupsPollError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3087a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18237a;

        static {
            int[] iArr = new int[GroupsPollError.values().length];
            f18237a = iArr;
            try {
                iArr[GroupsPollError.INVALID_ASYNC_JOB_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18237a[GroupsPollError.INTERNAL_ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18237a[GroupsPollError.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18237a[GroupsPollError.ACCESS_DENIED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupsPollError$b */
    /* loaded from: classes4.dex */
    public static class C3088b extends UnionSerializer<GroupsPollError> {

        /* renamed from: b */
        public static final C3088b f18238b = new C3088b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupsPollError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupsPollError groupsPollError;
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
            if ("invalid_async_job_id".equals(readTag)) {
                groupsPollError = GroupsPollError.INVALID_ASYNC_JOB_ID;
            } else if ("internal_error".equals(readTag)) {
                groupsPollError = GroupsPollError.INTERNAL_ERROR;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                groupsPollError = GroupsPollError.OTHER;
            } else {
                if (!"access_denied".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                groupsPollError = GroupsPollError.ACCESS_DENIED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupsPollError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupsPollError groupsPollError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3087a.f18237a[groupsPollError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_async_job_id");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("internal_error");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("access_denied");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + groupsPollError);
            }
        }
    }
}
