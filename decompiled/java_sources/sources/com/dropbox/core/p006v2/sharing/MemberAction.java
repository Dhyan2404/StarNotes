package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;

/* loaded from: classes4.dex */
public enum MemberAction {
    LEAVE_A_COPY,
    MAKE_EDITOR,
    MAKE_OWNER,
    MAKE_VIEWER,
    MAKE_VIEWER_NO_COMMENT,
    REMOVE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.MemberAction$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2892a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17865a;

        static {
            int[] iArr = new int[MemberAction.values().length];
            f17865a = iArr;
            try {
                iArr[MemberAction.LEAVE_A_COPY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17865a[MemberAction.MAKE_EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17865a[MemberAction.MAKE_OWNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17865a[MemberAction.MAKE_VIEWER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17865a[MemberAction.MAKE_VIEWER_NO_COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17865a[MemberAction.REMOVE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.MemberAction$b */
    /* loaded from: classes4.dex */
    public static class C2893b extends UnionSerializer<MemberAction> {

        /* renamed from: b */
        public static final C2893b f17866b = new C2893b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberAction deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            MemberAction memberAction = "leave_a_copy".equals(readTag) ? MemberAction.LEAVE_A_COPY : "make_editor".equals(readTag) ? MemberAction.MAKE_EDITOR : "make_owner".equals(readTag) ? MemberAction.MAKE_OWNER : "make_viewer".equals(readTag) ? MemberAction.MAKE_VIEWER : "make_viewer_no_comment".equals(readTag) ? MemberAction.MAKE_VIEWER_NO_COMMENT : SyncConstant.SYNC_ACTION_REMOVE.equals(readTag) ? MemberAction.REMOVE : MemberAction.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return memberAction;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(MemberAction memberAction, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2892a.f17865a[memberAction.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("leave_a_copy");
                    return;
                case 2:
                    jsonGenerator.writeString("make_editor");
                    return;
                case 3:
                    jsonGenerator.writeString("make_owner");
                    return;
                case 4:
                    jsonGenerator.writeString("make_viewer");
                    return;
                case 5:
                    jsonGenerator.writeString("make_viewer_no_comment");
                    return;
                case 6:
                    jsonGenerator.writeString(SyncConstant.SYNC_ACTION_REMOVE);
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
