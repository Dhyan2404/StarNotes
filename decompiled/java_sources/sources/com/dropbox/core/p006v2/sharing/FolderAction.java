package com.dropbox.core.p006v2.sharing;

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
public enum FolderAction {
    CHANGE_OPTIONS,
    DISABLE_VIEWER_INFO,
    EDIT_CONTENTS,
    ENABLE_VIEWER_INFO,
    INVITE_EDITOR,
    INVITE_VIEWER,
    INVITE_VIEWER_NO_COMMENT,
    RELINQUISH_MEMBERSHIP,
    UNMOUNT,
    UNSHARE,
    LEAVE_A_COPY,
    SHARE_LINK,
    CREATE_LINK,
    SET_ACCESS_INHERITANCE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.FolderAction$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2827a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17732a;

        static {
            int[] iArr = new int[FolderAction.values().length];
            f17732a = iArr;
            try {
                iArr[FolderAction.CHANGE_OPTIONS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17732a[FolderAction.DISABLE_VIEWER_INFO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17732a[FolderAction.EDIT_CONTENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17732a[FolderAction.ENABLE_VIEWER_INFO.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17732a[FolderAction.INVITE_EDITOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17732a[FolderAction.INVITE_VIEWER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17732a[FolderAction.INVITE_VIEWER_NO_COMMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17732a[FolderAction.RELINQUISH_MEMBERSHIP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17732a[FolderAction.UNMOUNT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17732a[FolderAction.UNSHARE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17732a[FolderAction.LEAVE_A_COPY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17732a[FolderAction.SHARE_LINK.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f17732a[FolderAction.CREATE_LINK.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f17732a[FolderAction.SET_ACCESS_INHERITANCE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.FolderAction$b */
    /* loaded from: classes4.dex */
    public static class C2828b extends UnionSerializer<FolderAction> {

        /* renamed from: b */
        public static final C2828b f17733b = new C2828b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FolderAction deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FolderAction folderAction = "change_options".equals(readTag) ? FolderAction.CHANGE_OPTIONS : "disable_viewer_info".equals(readTag) ? FolderAction.DISABLE_VIEWER_INFO : "edit_contents".equals(readTag) ? FolderAction.EDIT_CONTENTS : "enable_viewer_info".equals(readTag) ? FolderAction.ENABLE_VIEWER_INFO : "invite_editor".equals(readTag) ? FolderAction.INVITE_EDITOR : "invite_viewer".equals(readTag) ? FolderAction.INVITE_VIEWER : "invite_viewer_no_comment".equals(readTag) ? FolderAction.INVITE_VIEWER_NO_COMMENT : "relinquish_membership".equals(readTag) ? FolderAction.RELINQUISH_MEMBERSHIP : "unmount".equals(readTag) ? FolderAction.UNMOUNT : "unshare".equals(readTag) ? FolderAction.UNSHARE : "leave_a_copy".equals(readTag) ? FolderAction.LEAVE_A_COPY : "share_link".equals(readTag) ? FolderAction.SHARE_LINK : "create_link".equals(readTag) ? FolderAction.CREATE_LINK : "set_access_inheritance".equals(readTag) ? FolderAction.SET_ACCESS_INHERITANCE : FolderAction.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return folderAction;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FolderAction folderAction, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2827a.f17732a[folderAction.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("change_options");
                    return;
                case 2:
                    jsonGenerator.writeString("disable_viewer_info");
                    return;
                case 3:
                    jsonGenerator.writeString("edit_contents");
                    return;
                case 4:
                    jsonGenerator.writeString("enable_viewer_info");
                    return;
                case 5:
                    jsonGenerator.writeString("invite_editor");
                    return;
                case 6:
                    jsonGenerator.writeString("invite_viewer");
                    return;
                case 7:
                    jsonGenerator.writeString("invite_viewer_no_comment");
                    return;
                case 8:
                    jsonGenerator.writeString("relinquish_membership");
                    return;
                case 9:
                    jsonGenerator.writeString("unmount");
                    return;
                case 10:
                    jsonGenerator.writeString("unshare");
                    return;
                case 11:
                    jsonGenerator.writeString("leave_a_copy");
                    return;
                case 12:
                    jsonGenerator.writeString("share_link");
                    return;
                case 13:
                    jsonGenerator.writeString("create_link");
                    return;
                case 14:
                    jsonGenerator.writeString("set_access_inheritance");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
