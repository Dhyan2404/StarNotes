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
public enum GroupDeleteError {
    GROUP_NOT_FOUND,
    OTHER,
    SYSTEM_MANAGED_GROUP_DISALLOWED,
    GROUP_ALREADY_DELETED;

    /* renamed from: com.dropbox.core.v2.team.GroupDeleteError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3059a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18190a;

        static {
            int[] iArr = new int[GroupDeleteError.values().length];
            f18190a = iArr;
            try {
                iArr[GroupDeleteError.GROUP_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18190a[GroupDeleteError.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18190a[GroupDeleteError.SYSTEM_MANAGED_GROUP_DISALLOWED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f18190a[GroupDeleteError.GROUP_ALREADY_DELETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupDeleteError$b */
    /* loaded from: classes4.dex */
    public static class C3060b extends UnionSerializer<GroupDeleteError> {

        /* renamed from: b */
        public static final C3060b f18191b = new C3060b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupDeleteError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GroupDeleteError groupDeleteError;
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
                groupDeleteError = GroupDeleteError.GROUP_NOT_FOUND;
            } else if (Constants.ATTRVAL_OTHER.equals(readTag)) {
                groupDeleteError = GroupDeleteError.OTHER;
            } else if ("system_managed_group_disallowed".equals(readTag)) {
                groupDeleteError = GroupDeleteError.SYSTEM_MANAGED_GROUP_DISALLOWED;
            } else {
                if (!"group_already_deleted".equals(readTag)) {
                    throw new JsonParseException(jsonParser, "Unknown tag: " + readTag);
                }
                groupDeleteError = GroupDeleteError.GROUP_ALREADY_DELETED;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupDeleteError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupDeleteError groupDeleteError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3059a.f18190a[groupDeleteError.ordinal()];
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
            } else {
                if (i == 4) {
                    jsonGenerator.writeString("group_already_deleted");
                    return;
                }
                throw new IllegalArgumentException("Unrecognized tag: " + groupDeleteError);
            }
        }
    }
}
