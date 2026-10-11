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
public enum GroupUpdateError {
    GROUP_NOT_FOUND,
    OTHER,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    GROUP_NAME_ALREADY_USED,
    GROUP_NAME_INVALID,
    EXTERNAL_ID_ALREADY_IN_USE;

    /* renamed from: com.dropbox.core.v2.team.GroupUpdateError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3075a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18220a;

        static {
            int[] iArr = new int[GroupUpdateError.values().length];
            f18220a = iArr;
            try {
                iArr[GroupUpdateError.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18220a[GroupUpdateError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18220a[GroupUpdateError.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18220a[GroupUpdateError.GROUP_NAME_ALREADY_USED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18220a[GroupUpdateError.GROUP_NAME_INVALID.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f18220a[GroupUpdateError.EXTERNAL_ID_ALREADY_IN_USE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupUpdateError$b */
    /* loaded from: classes4.dex */
    public static class C3076b extends UnionSerializer<GroupUpdateError> {

        /* renamed from: b */
        public static final C3076b f18221b = new C3076b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupUpdateError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupUpdateError groupUpdateError;
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
            if ("group_not_found".equals(readTag)) {
                groupUpdateError = GroupUpdateError.GROUP_NOT_FOUND;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                groupUpdateError = GroupUpdateError.OTHER;
            } else if ("system_managed_group_disallowed".equals(readTag)) {
                groupUpdateError = GroupUpdateError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("group_name_already_used".equals(readTag)) {
                groupUpdateError = GroupUpdateError.GROUP_NAME_ALREADY_USED;
            } else if ("group_name_invalid".equals(readTag)) {
                groupUpdateError = GroupUpdateError.GROUP_NAME_INVALID;
            } else {
                if (!"external_id_already_in_use".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                groupUpdateError = GroupUpdateError.EXTERNAL_ID_ALREADY_IN_USE;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupUpdateError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupUpdateError groupUpdateError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C3075a.f18220a[groupUpdateError.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("group_not_found");
                    return;
                case 2:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                case 3:
                    jsonGenerator.writeString("system_managed_group_disallowed");
                    return;
                case 4:
                    jsonGenerator.writeString("group_name_already_used");
                    return;
                case 5:
                    jsonGenerator.writeString("group_name_invalid");
                    return;
                case 6:
                    jsonGenerator.writeString("external_id_already_in_use");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + groupUpdateError);
            }
        }
    }
}
