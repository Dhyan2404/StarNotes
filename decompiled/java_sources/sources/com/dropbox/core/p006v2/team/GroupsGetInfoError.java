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
public enum GroupsGetInfoError {
    GROUP_NOT_ON_TEAM,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.GroupsGetInfoError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3077a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18224a;

        static {
            int[] iArr = new int[GroupsGetInfoError.values().length];
            f18224a = iArr;
            try {
                iArr[GroupsGetInfoError.GROUP_NOT_ON_TEAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.GroupsGetInfoError$b */
    /* loaded from: classes4.dex */
    public static class C3078b extends UnionSerializer<GroupsGetInfoError> {

        /* renamed from: b */
        public static final C3078b f18225b = new C3078b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupsGetInfoError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GroupsGetInfoError groupsGetInfoError = "group_not_on_team".equals(readTag) ? GroupsGetInfoError.GROUP_NOT_ON_TEAM : GroupsGetInfoError.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupsGetInfoError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupsGetInfoError groupsGetInfoError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            if (C3077a.f18224a[groupsGetInfoError.ordinal()] != 1) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("group_not_on_team");
            }
        }
    }
}
