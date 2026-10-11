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
public enum GroupJoinPolicy {
    OPEN,
    REQUEST_TO_JOIN,
    OTHER;

    /* renamed from: com.dropbox.core.v2.teamlog.GroupJoinPolicy$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3658a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19926a;

        static {
            int[] iArr = new int[GroupJoinPolicy.values().length];
            f19926a = iArr;
            try {
                iArr[GroupJoinPolicy.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19926a[GroupJoinPolicy.REQUEST_TO_JOIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GroupJoinPolicy$b */
    /* loaded from: classes4.dex */
    public static class C3659b extends UnionSerializer<GroupJoinPolicy> {

        /* renamed from: b */
        public static final C3659b f19927b = new C3659b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GroupJoinPolicy deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            GroupJoinPolicy groupJoinPolicy = "open".equals(readTag) ? GroupJoinPolicy.OPEN : "request_to_join".equals(readTag) ? GroupJoinPolicy.REQUEST_TO_JOIN : GroupJoinPolicy.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return groupJoinPolicy;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GroupJoinPolicy groupJoinPolicy, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3658a.f19926a[groupJoinPolicy.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("open");
            } else if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("request_to_join");
            }
        }
    }
}
