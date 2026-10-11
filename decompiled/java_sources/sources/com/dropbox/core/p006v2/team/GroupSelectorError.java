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
public enum GroupSelectorError {
    GROUP_NOT_FOUND,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.GroupSelectorError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3072a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18213a;

        static {
            int[] iArr = new int[GroupSelectorError.values().length];
            f18213a = iArr;
            try {
                iArr[GroupSelectorError.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupSelectorError$b */
    /* loaded from: classes4.dex */
    public static class C3073b extends UnionSerializer<GroupSelectorError> {

        /* renamed from: b */
        public static final C3073b f18214b = new C3073b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupSelectorError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GroupSelectorError groupSelectorError = "group_not_found".equals(readTag) ? GroupSelectorError.GROUP_NOT_FOUND : GroupSelectorError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupSelectorError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupSelectorError groupSelectorError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3072a.f18213a[groupSelectorError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("group_not_found");
            }
        }
    }
}
