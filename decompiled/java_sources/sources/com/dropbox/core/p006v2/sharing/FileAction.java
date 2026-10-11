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
public enum FileAction {
    DISABLE_VIEWER_INFO,
    EDIT_CONTENTS,
    ENABLE_VIEWER_INFO,
    INVITE_VIEWER,
    INVITE_VIEWER_NO_COMMENT,
    INVITE_EDITOR,
    UNSHARE,
    RELINQUISH_MEMBERSHIP,
    SHARE_LINK,
    CREATE_LINK,
    CREATE_VIEW_LINK,
    CREATE_EDIT_LINK,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.FileAction$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2816a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17712a;

        static {
            int[] iArr = new int[FileAction.values().length];
            f17712a = iArr;
            try {
                iArr[FileAction.DISABLE_VIEWER_INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17712a[FileAction.EDIT_CONTENTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17712a[FileAction.ENABLE_VIEWER_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17712a[FileAction.INVITE_VIEWER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17712a[FileAction.INVITE_VIEWER_NO_COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17712a[FileAction.INVITE_EDITOR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f17712a[FileAction.UNSHARE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f17712a[FileAction.RELINQUISH_MEMBERSHIP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f17712a[FileAction.SHARE_LINK.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f17712a[FileAction.CREATE_LINK.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f17712a[FileAction.CREATE_VIEW_LINK.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f17712a[FileAction.CREATE_EDIT_LINK.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.FileAction$b */
    /* loaded from: classes4.dex */
    public static class C2817b extends UnionSerializer<FileAction> {

        /* renamed from: b */
        public static final C2817b f17713b = new C2817b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileAction deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
            FileAction fileAction = "disable_viewer_info".equals(readTag) ? FileAction.DISABLE_VIEWER_INFO : "edit_contents".equals(readTag) ? FileAction.EDIT_CONTENTS : "enable_viewer_info".equals(readTag) ? FileAction.ENABLE_VIEWER_INFO : "invite_viewer".equals(readTag) ? FileAction.INVITE_VIEWER : "invite_viewer_no_comment".equals(readTag) ? FileAction.INVITE_VIEWER_NO_COMMENT : "invite_editor".equals(readTag) ? FileAction.INVITE_EDITOR : "unshare".equals(readTag) ? FileAction.UNSHARE : "relinquish_membership".equals(readTag) ? FileAction.RELINQUISH_MEMBERSHIP : "share_link".equals(readTag) ? FileAction.SHARE_LINK : "create_link".equals(readTag) ? FileAction.CREATE_LINK : "create_view_link".equals(readTag) ? FileAction.CREATE_VIEW_LINK : "create_edit_link".equals(readTag) ? FileAction.CREATE_EDIT_LINK : FileAction.OTHER;
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return fileAction;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(FileAction fileAction, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C2816a.f17712a[fileAction.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("disable_viewer_info");
                    return;
                case 2:
                    jsonGenerator.writeString("edit_contents");
                    return;
                case 3:
                    jsonGenerator.writeString("enable_viewer_info");
                    return;
                case 4:
                    jsonGenerator.writeString("invite_viewer");
                    return;
                case 5:
                    jsonGenerator.writeString("invite_viewer_no_comment");
                    return;
                case 6:
                    jsonGenerator.writeString("invite_editor");
                    return;
                case 7:
                    jsonGenerator.writeString("unshare");
                    return;
                case 8:
                    jsonGenerator.writeString("relinquish_membership");
                    return;
                case 9:
                    jsonGenerator.writeString("share_link");
                    return;
                case 10:
                    jsonGenerator.writeString("create_link");
                    return;
                case 11:
                    jsonGenerator.writeString("create_view_link");
                    return;
                case 12:
                    jsonGenerator.writeString("create_edit_link");
                    return;
                default:
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
            }
        }
    }
}
