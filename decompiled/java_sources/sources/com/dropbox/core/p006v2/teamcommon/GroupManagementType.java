package com.dropbox.core.p006v2.teamcommon;

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
public enum GroupManagementType {
    USER_MANAGED,
    COMPANY_MANAGED,
    SYSTEM_MANAGED,
    OTHER;

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<GroupManagementType> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public GroupManagementType deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupManagementType groupManagementType;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("user_managed".equals(readTag)) {
                    groupManagementType = GroupManagementType.USER_MANAGED;
                } else if ("company_managed".equals(readTag)) {
                    groupManagementType = GroupManagementType.COMPANY_MANAGED;
                } else if ("system_managed".equals(readTag)) {
                    groupManagementType = GroupManagementType.SYSTEM_MANAGED;
                } else {
                    groupManagementType = GroupManagementType.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return groupManagementType;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(GroupManagementType groupManagementType, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3323a.f18688a[groupManagementType.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("user_managed");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("company_managed");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("system_managed");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamcommon.GroupManagementType$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3323a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18688a;

        static {
            int[] iArr = new int[GroupManagementType.values().length];
            f18688a = iArr;
            try {
                iArr[GroupManagementType.USER_MANAGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18688a[GroupManagementType.COMPANY_MANAGED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18688a[GroupManagementType.SYSTEM_MANAGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
