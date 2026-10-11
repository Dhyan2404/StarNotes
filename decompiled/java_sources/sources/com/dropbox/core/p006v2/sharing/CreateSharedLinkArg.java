package com.dropbox.core.p006v2.sharing;

import com.dropbox.core.p006v2.sharing.PendingUploadMode;
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

/* loaded from: classes4.dex */
public class CreateSharedLinkArg {

    /* renamed from: a */
    public final String f17694a;

    /* renamed from: b */
    public final boolean f17695b;

    /* renamed from: c */
    public final PendingUploadMode f17696c;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected final String path;
        protected PendingUploadMode pendingUpload;
        protected boolean shortUrl;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            this.path = str;
            this.shortUrl = false;
            this.pendingUpload = null;
        }

        public CreateSharedLinkArg build() {
            return new CreateSharedLinkArg(this.path, this.shortUrl, this.pendingUpload);
        }

        public Builder withPendingUpload(PendingUploadMode pendingUploadMode) {
            this.pendingUpload = pendingUploadMode;
            return this;
        }

        public Builder withShortUrl(Boolean bool) {
            if (bool != null) {
                this.shortUrl = bool.booleanValue();
            } else {
                this.shortUrl = false;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.CreateSharedLinkArg$a */
    /* loaded from: classes4.dex */
    public static class C2810a extends StructSerializer<CreateSharedLinkArg> {

        /* renamed from: b */
        public static final C2810a f17697b = new C2810a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public CreateSharedLinkArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            Boolean bool = Boolean.FALSE;
            PendingUploadMode pendingUploadMode = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
                } else if ("short_url".equals(currentName)) {
                    bool = StoneSerializers.boolean_().deserialize(jsonParser);
                } else if ("pending_upload".equals(currentName)) {
                    pendingUploadMode = (PendingUploadMode) StoneSerializers.nullable(PendingUploadMode.C2905b.f17886b).deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            CreateSharedLinkArg createSharedLinkArg = new CreateSharedLinkArg(str2, bool.booleanValue(), pendingUploadMode);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(createSharedLinkArg, createSharedLinkArg.m11501e());
            return createSharedLinkArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(CreateSharedLinkArg createSharedLinkArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) createSharedLinkArg.f17694a, jsonGenerator);
            jsonGenerator.writeFieldName("short_url");
            StoneSerializers.boolean_().serialize((StoneSerializer<Boolean>) Boolean.valueOf(createSharedLinkArg.f17695b), jsonGenerator);
            if (createSharedLinkArg.f17696c != null) {
                jsonGenerator.writeFieldName("pending_upload");
                StoneSerializers.nullable(PendingUploadMode.C2905b.f17886b).serialize((StoneSerializer) createSharedLinkArg.f17696c, jsonGenerator);
            }
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public CreateSharedLinkArg(String str, boolean z, PendingUploadMode pendingUploadMode) {
        if (str != null) {
            this.f17694a = str;
            this.f17695b = z;
            this.f17696c = pendingUploadMode;
            return;
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    /* renamed from: d */
    public static Builder m11497d(String str) {
        return new Builder(str);
    }

    /* renamed from: a */
    public String m11498a() {
        return this.f17694a;
    }

    /* renamed from: b */
    public PendingUploadMode m11499b() {
        return this.f17696c;
    }

    /* renamed from: c */
    public boolean m11500c() {
        return this.f17695b;
    }

    /* renamed from: e */
    public String m11501e() {
        return C2810a.f17697b.serialize((C2810a) this, true);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        CreateSharedLinkArg createSharedLinkArg = (CreateSharedLinkArg) obj;
        String str = this.f17694a;
        String str2 = createSharedLinkArg.f17694a;
        if ((str == str2 || str.equals(str2)) && this.f17695b == createSharedLinkArg.f17695b) {
            PendingUploadMode pendingUploadMode = this.f17696c;
            PendingUploadMode pendingUploadMode2 = createSharedLinkArg.f17696c;
            if (pendingUploadMode == pendingUploadMode2) {
                return true;
            }
            if (pendingUploadMode != null && pendingUploadMode.equals(pendingUploadMode2)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17694a, Boolean.valueOf(this.f17695b), this.f17696c});
    }

    public String toString() {
        return C2810a.f17697b.serialize((C2810a) this, false);
    }

    public CreateSharedLinkArg(String str) {
        this(str, false, null);
    }
}
