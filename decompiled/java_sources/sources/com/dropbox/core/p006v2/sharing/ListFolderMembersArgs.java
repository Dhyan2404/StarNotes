package com.dropbox.core.p006v2.sharing;

import androidx.core.app.NotificationCompat;
import com.dropbox.core.p006v2.sharing.ListFolderMembersCursorArg;
import com.dropbox.core.p006v2.sharing.MemberAction;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class ListFolderMembersArgs extends ListFolderMembersCursorArg {

    /* renamed from: c */
    public final String f17830c;

    /* loaded from: classes4.dex */
    public static class Builder extends ListFolderMembersCursorArg.Builder {
        protected final String sharedFolderId;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.sharedFolderId = str;
        }

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public /* bridge */ /* synthetic */ ListFolderMembersCursorArg.Builder withActions(List list) {
            return withActions((List<MemberAction>) list);
        }

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public ListFolderMembersArgs build() {
            return new ListFolderMembersArgs(this.sharedFolderId, this.actions, this.limit);
        }

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public Builder withActions(List<MemberAction> list) {
            super.withActions(list);
            return this;
        }

        @Override // com.dropbox.core.v2.sharing.ListFolderMembersCursorArg.Builder
        public Builder withLimit(Long l) {
            super.withLimit(l);
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ListFolderMembersArgs$a */
    /* loaded from: classes4.dex */
    public static class C2879a extends StructSerializer<ListFolderMembersArgs> {

        /* renamed from: b */
        public static final C2879a f17831b = new C2879a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderMembersArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            Long l = 1000L;
            List list = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if (NotificationCompat.WearableExtender.f5050p.equals(currentName)) {
                    list = (List) StoneSerializers.nullable(StoneSerializers.list(MemberAction.C2893b.f17866b)).deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    l = StoneSerializers.uInt32().deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            ListFolderMembersArgs listFolderMembersArgs = new ListFolderMembersArgs(str2, list, l.longValue());
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listFolderMembersArgs, listFolderMembersArgs.mo11737d());
            return listFolderMembersArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderMembersArgs listFolderMembersArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            StoneSerializers.string().serialize((StoneSerializer<String>) listFolderMembersArgs.f17830c, jsonGenerator);
            if (listFolderMembersArgs.f17838a != null) {
                jsonGenerator.writeFieldName(NotificationCompat.WearableExtender.f5050p);
                StoneSerializers.nullable(StoneSerializers.list(MemberAction.C2893b.f17866b)).serialize((StoneSerializer) listFolderMembersArgs.f17838a, jsonGenerator);
            }
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.uInt32().serialize((StoneSerializer<Long>) Long.valueOf(listFolderMembersArgs.f17839b), jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListFolderMembersArgs(String str, List<MemberAction> list, long j) {
        super(list, j);
        if (str != null) {
            if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                this.f17830c = str;
                return;
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }

    /* renamed from: f */
    public static Builder m11734f(String str) {
        return new Builder(str);
    }

    @Override // com.dropbox.core.p006v2.sharing.ListFolderMembersCursorArg
    /* renamed from: a */
    public List<MemberAction> mo11735a() {
        return this.f17838a;
    }

    @Override // com.dropbox.core.p006v2.sharing.ListFolderMembersCursorArg
    /* renamed from: b */
    public long mo11736b() {
        return this.f17839b;
    }

    @Override // com.dropbox.core.p006v2.sharing.ListFolderMembersCursorArg
    /* renamed from: d */
    public String mo11737d() {
        return C2879a.f17831b.serialize((C2879a) this, true);
    }

    /* renamed from: e */
    public String m11738e() {
        return this.f17830c;
    }

    @Override // com.dropbox.core.p006v2.sharing.ListFolderMembersCursorArg
    public boolean equals(Object obj) {
        List<MemberAction> list;
        List<MemberAction> list2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListFolderMembersArgs listFolderMembersArgs = (ListFolderMembersArgs) obj;
        String str = this.f17830c;
        String str2 = listFolderMembersArgs.f17830c;
        return (str == str2 || str.equals(str2)) && ((list = this.f17838a) == (list2 = listFolderMembersArgs.f17838a) || (list != null && list.equals(list2))) && this.f17839b == listFolderMembersArgs.f17839b;
    }

    @Override // com.dropbox.core.p006v2.sharing.ListFolderMembersCursorArg
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f17830c});
    }

    @Override // com.dropbox.core.p006v2.sharing.ListFolderMembersCursorArg
    public String toString() {
        return C2879a.f17831b.serialize((C2879a) this, false);
    }

    public ListFolderMembersArgs(String str) {
        this(str, null, 1000L);
    }
}
