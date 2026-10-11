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
public enum GroupCreateError {
    GROUP_NAME_ALREADY_USED,
    GROUP_NAME_INVALID,
    EXTERNAL_ID_ALREADY_IN_USE,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.GroupCreateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3057a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18188a;

        static {
            int[] iArr = new int[GroupCreateError.values().length];
            f18188a = iArr;
            try {
                iArr[GroupCreateError.GROUP_NAME_ALREADY_USED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18188a[GroupCreateError.GROUP_NAME_INVALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18188a[GroupCreateError.EXTERNAL_ID_ALREADY_IN_USE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18188a[GroupCreateError.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupCreateError$b */
    /* loaded from: classes4.dex */
    public static class C3058b extends UnionSerializer<GroupCreateError> {

        /* renamed from: b */
        public static final C3058b f18189b = new C3058b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupCreateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GroupCreateError groupCreateError = "group_name_already_used".equals(readTag) ? GroupCreateError.GROUP_NAME_ALREADY_USED : "group_name_invalid".equals(readTag) ? GroupCreateError.GROUP_NAME_INVALID : "external_id_already_in_use".equals(readTag) ? GroupCreateError.EXTERNAL_ID_ALREADY_IN_USE : "system_managed_group_disallowed".equals(readTag) ? GroupCreateError.SYSTEM_MANAGED_GROUP_DISALLOWED : GroupCreateError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupCreateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupCreateError groupCreateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3057a.f18188a[groupCreateError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("group_name_already_used");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("group_name_invalid");
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("external_id_already_in_use");
            } else if (i != 4) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("system_managed_group_disallowed");
            }
        }
    }
}
