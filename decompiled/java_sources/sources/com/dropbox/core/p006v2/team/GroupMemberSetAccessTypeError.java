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
public enum GroupMemberSetAccessTypeError {
    GROUP_NOT_FOUND,
    OTHER,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    MEMBER_NOT_IN_GROUP,
    USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;

    /* renamed from: com.dropbox.core.v2.team.GroupMemberSetAccessTypeError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3063a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18194a;

        static {
            int[] iArr = new int[GroupMemberSetAccessTypeError.values().length];
            f18194a = iArr;
            try {
                iArr[GroupMemberSetAccessTypeError.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18194a[GroupMemberSetAccessTypeError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18194a[GroupMemberSetAccessTypeError.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18194a[GroupMemberSetAccessTypeError.MEMBER_NOT_IN_GROUP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f18194a[GroupMemberSetAccessTypeError.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupMemberSetAccessTypeError$b */
    /* loaded from: classes4.dex */
    public static class C3064b extends UnionSerializer<GroupMemberSetAccessTypeError> {

        /* renamed from: b */
        public static final C3064b f18195b = new C3064b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupMemberSetAccessTypeError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupMemberSetAccessTypeError groupMemberSetAccessTypeError;
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
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.GROUP_NOT_FOUND;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.OTHER;
            } else if ("system_managed_group_disallowed".equals(readTag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else if ("member_not_in_group".equals(readTag)) {
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.MEMBER_NOT_IN_GROUP;
            } else {
                if (!"user_cannot_be_manager_of_company_managed_group".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                groupMemberSetAccessTypeError = GroupMemberSetAccessTypeError.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupMemberSetAccessTypeError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupMemberSetAccessTypeError groupMemberSetAccessTypeError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3063a.f18194a[groupMemberSetAccessTypeError.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("group_not_found");
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            if (i == 3) {
                jsonGenerator.writeString("system_managed_group_disallowed");
                return;
            }
            if (i == 4) {
                jsonGenerator.writeString("member_not_in_group");
            } else {
                if (i == 5) {
                    jsonGenerator.writeString("user_cannot_be_manager_of_company_managed_group");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + groupMemberSetAccessTypeError);
            }
        }
    }
}
