package com.dropbox.core.p006v2.paper;

import com.dropbox.core.p006v2.paper.UserOnPaperDocFilter;
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
import com.onyx.android.sdk.universal.editor.data.ExcerptConstants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class ListUsersOnPaperDocArgs extends C2790i {

    /* renamed from: b */
    public final int f17596b;

    /* renamed from: c */
    public final UserOnPaperDocFilter f17597c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String docId;
        protected UserOnPaperDocFilter filterBy;
        protected int limit;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'docId' is null");
            }
            this.docId = str;
            this.limit = 1000;
            this.filterBy = UserOnPaperDocFilter.SHARED;
        }

        public ListUsersOnPaperDocArgs build() {
            return new ListUsersOnPaperDocArgs(this.docId, this.limit, this.filterBy);
        }

        public Builder withFilterBy(UserOnPaperDocFilter userOnPaperDocFilter) {
            if (userOnPaperDocFilter != null) {
                this.filterBy = userOnPaperDocFilter;
            } else {
                this.filterBy = UserOnPaperDocFilter.SHARED;
            }
            return this;
        }

        public Builder withLimit(Integer num) {
            if (num.intValue() < 1) {
                throw new IllegalArgumentException("Number 'limit' is smaller than 1");
            }
            if (num.intValue() > 1000) {
                throw new IllegalArgumentException("Number 'limit' is larger than 1000");
            }
            this.limit = num.intValue();
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.paper.ListUsersOnPaperDocArgs$a */
    /* loaded from: classes4.dex */
    public static class C2756a extends StructSerializer<ListUsersOnPaperDocArgs> {

        /* renamed from: b */
        public static final C2756a f17598b = new C2756a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListUsersOnPaperDocArgs deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Integer num = 1000;
            UserOnPaperDocFilter userOnPaperDocFilter = UserOnPaperDocFilter.SHARED;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if (ExcerptConstants.ARGS_DOC_ID.equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("limit".equals(currentName)) {
                    num = StoneSerializers.int32().deserialize(jsonParser);
                } else if ("filter_by".equals(currentName)) {
                    userOnPaperDocFilter = UserOnPaperDocFilter.C2781b.f17626b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"doc_id\" missing.");
            }
            ListUsersOnPaperDocArgs listUsersOnPaperDocArgs = new ListUsersOnPaperDocArgs(str2, num.intValue(), userOnPaperDocFilter);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(listUsersOnPaperDocArgs, listUsersOnPaperDocArgs.mo11293b());
            return listUsersOnPaperDocArgs;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListUsersOnPaperDocArgs listUsersOnPaperDocArgs, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName(ExcerptConstants.ARGS_DOC_ID);
            StoneSerializers.string().serialize((StoneSerializer<String>) listUsersOnPaperDocArgs.f17646a, jsonGenerator);
            jsonGenerator.writeFieldName("limit");
            StoneSerializers.int32().serialize((StoneSerializer<Integer>) Integer.valueOf(listUsersOnPaperDocArgs.f17596b), jsonGenerator);
            jsonGenerator.writeFieldName("filter_by");
            UserOnPaperDocFilter.C2781b.f17626b.serialize(listUsersOnPaperDocArgs.f17597c, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ListUsersOnPaperDocArgs(String str, int i, UserOnPaperDocFilter userOnPaperDocFilter) {
        super(str);
        if (i < 1) {
            throw new IllegalArgumentException("Number 'limit' is smaller than 1");
        }
        if (i <= 1000) {
            this.f17596b = i;
            if (userOnPaperDocFilter != null) {
                this.f17597c = userOnPaperDocFilter;
                return;
            }
            throw new IllegalArgumentException("Required value for 'filterBy' is null");
        }
        throw new IllegalArgumentException("Number 'limit' is larger than 1000");
    }

    /* renamed from: e */
    public static Builder m11364e(String str) {
        return new Builder(str);
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: a */
    public String mo11292a() {
        return this.f17646a;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    /* renamed from: b */
    public String mo11293b() {
        return C2756a.f17598b.serialize((C2756a) this, true);
    }

    /* renamed from: c */
    public UserOnPaperDocFilter m11365c() {
        return this.f17597c;
    }

    /* renamed from: d */
    public int m11366d() {
        return this.f17596b;
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public boolean equals(Object obj) {
        UserOnPaperDocFilter userOnPaperDocFilter;
        UserOnPaperDocFilter userOnPaperDocFilter2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ListUsersOnPaperDocArgs listUsersOnPaperDocArgs = (ListUsersOnPaperDocArgs) obj;
        String str = this.f17646a;
        String str2 = listUsersOnPaperDocArgs.f17646a;
        return (str == str2 || str.equals(str2)) && this.f17596b == listUsersOnPaperDocArgs.f17596b && ((userOnPaperDocFilter = this.f17597c) == (userOnPaperDocFilter2 = listUsersOnPaperDocArgs.f17597c) || userOnPaperDocFilter.equals(userOnPaperDocFilter2));
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{Integer.valueOf(this.f17596b), this.f17597c});
    }

    @Override // com.dropbox.core.p006v2.paper.C2790i
    public String toString() {
        return C2756a.f17598b.serialize((C2756a) this, false);
    }

    public ListUsersOnPaperDocArgs(String str) {
        this(str, 1000, UserOnPaperDocFilter.SHARED);
    }
}
