package com.dropbox.core.p006v2.filerequests;

import com.dropbox.core.p006v2.filerequests.FileRequestDeadline;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.StructSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class UpdateFileRequestDeadline {
    public static final UpdateFileRequestDeadline NO_UPDATE = new UpdateFileRequestDeadline().m10533b(Tag.NO_UPDATE);
    public static final UpdateFileRequestDeadline OTHER = new UpdateFileRequestDeadline().m10533b(Tag.OTHER);

    /* renamed from: a */
    public Tag f17017a;

    /* renamed from: b */
    public FileRequestDeadline f17018b;

    /* loaded from: classes4.dex */
    public enum Tag {
        NO_UPDATE,
        UPDATE,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.filerequests.UpdateFileRequestDeadline$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2484a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17019a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17019a = iArr;
            try {
                iArr[Tag.NO_UPDATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17019a[Tag.UPDATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17019a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.filerequests.UpdateFileRequestDeadline$b */
    /* loaded from: classes4.dex */
    public static class C2485b extends UnionSerializer<UpdateFileRequestDeadline> {

        /* renamed from: b */
        public static final C2485b f17020b = new C2485b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UpdateFileRequestDeadline deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            UpdateFileRequestDeadline updateFileRequestDeadline;
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
            if ("no_update".equals(readTag)) {
                updateFileRequestDeadline = UpdateFileRequestDeadline.NO_UPDATE;
            } else if ("update".equals(readTag)) {
                FileRequestDeadline fileRequestDeadline = jsonParser.getCurrentToken() != JsonToken.END_OBJECT ? (FileRequestDeadline) StoneSerializers.nullableStruct(FileRequestDeadline.C2472a.f16997b).deserialize(jsonParser, true) : null;
                updateFileRequestDeadline = fileRequestDeadline == null ? UpdateFileRequestDeadline.update() : UpdateFileRequestDeadline.update(fileRequestDeadline);
            } else {
                updateFileRequestDeadline = UpdateFileRequestDeadline.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return updateFileRequestDeadline;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(UpdateFileRequestDeadline updateFileRequestDeadline, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2484a.f17019a[updateFileRequestDeadline.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("no_update");
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("update", jsonGenerator);
            StoneSerializers.nullableStruct(FileRequestDeadline.C2472a.f16997b).serialize((StructSerializer) updateFileRequestDeadline.f17018b, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static UpdateFileRequestDeadline update(FileRequestDeadline fileRequestDeadline) {
        return new UpdateFileRequestDeadline().m10534c(Tag.UPDATE, fileRequestDeadline);
    }

    /* renamed from: b */
    public final UpdateFileRequestDeadline m10533b(Tag tag) {
        UpdateFileRequestDeadline updateFileRequestDeadline = new UpdateFileRequestDeadline();
        updateFileRequestDeadline.f17017a = tag;
        return updateFileRequestDeadline;
    }

    /* renamed from: c */
    public final UpdateFileRequestDeadline m10534c(Tag tag, FileRequestDeadline fileRequestDeadline) {
        UpdateFileRequestDeadline updateFileRequestDeadline = new UpdateFileRequestDeadline();
        updateFileRequestDeadline.f17017a = tag;
        updateFileRequestDeadline.f17018b = fileRequestDeadline;
        return updateFileRequestDeadline;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateFileRequestDeadline)) {
            return false;
        }
        UpdateFileRequestDeadline updateFileRequestDeadline = (UpdateFileRequestDeadline) obj;
        Tag tag = this.f17017a;
        if (tag != updateFileRequestDeadline.f17017a) {
            return false;
        }
        int i = C2484a.f17019a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        FileRequestDeadline fileRequestDeadline = this.f17018b;
        FileRequestDeadline fileRequestDeadline2 = updateFileRequestDeadline.f17018b;
        if (fileRequestDeadline != fileRequestDeadline2) {
            return fileRequestDeadline != null && fileRequestDeadline.equals(fileRequestDeadline2);
        }
        return true;
    }

    public FileRequestDeadline getUpdateValue() {
        if (this.f17017a == Tag.UPDATE) {
            return this.f17018b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.UPDATE, but was Tag." + this.f17017a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17017a, this.f17018b});
    }

    public boolean isNoUpdate() {
        return this.f17017a == Tag.NO_UPDATE;
    }

    public boolean isOther() {
        return this.f17017a == Tag.OTHER;
    }

    public boolean isUpdate() {
        return this.f17017a == Tag.UPDATE;
    }

    public Tag tag() {
        return this.f17017a;
    }

    public String toString() {
        return C2485b.f17020b.serialize((C2485b) this, false);
    }

    public String toStringMultiline() {
        return C2485b.f17020b.serialize((C2485b) this, true);
    }

    public static UpdateFileRequestDeadline update() {
        return update(null);
    }
}
