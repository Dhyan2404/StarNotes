package com.dropbox.core.p006v2.teamlog;

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
public enum SharedFolderMembersInheritancePolicy {
    INHERIT_MEMBERS,
    DONT_INHERIT_MEMBERS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderMembersInheritancePolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4088a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f20364a;

        static {
            int[] iArr = new int[SharedFolderMembersInheritancePolicy.values().length];
            f20364a = iArr;
            try {
                iArr[SharedFolderMembersInheritancePolicy.INHERIT_MEMBERS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f20364a[SharedFolderMembersInheritancePolicy.DONT_INHERIT_MEMBERS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.SharedFolderMembersInheritancePolicy$b */
    /* loaded from: classes4.dex */
    public static class C4089b extends UnionSerializer<SharedFolderMembersInheritancePolicy> {

        /* renamed from: b */
        public static final C4089b f20365b = new C4089b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SharedFolderMembersInheritancePolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy = "inherit_members".equals(readTag) ? SharedFolderMembersInheritancePolicy.INHERIT_MEMBERS : "dont_inherit_members".equals(readTag) ? SharedFolderMembersInheritancePolicy.DONT_INHERIT_MEMBERS : SharedFolderMembersInheritancePolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return sharedFolderMembersInheritancePolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SharedFolderMembersInheritancePolicy sharedFolderMembersInheritancePolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C4088a.f20364a[sharedFolderMembersInheritancePolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("inherit_members");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("dont_inherit_members");
            }
        }
    }
}
