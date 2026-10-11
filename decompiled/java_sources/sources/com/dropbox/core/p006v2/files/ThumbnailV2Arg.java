package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.PathOrLink;
import com.dropbox.core.p006v2.files.ThumbnailFormat;
import com.dropbox.core.p006v2.files.ThumbnailMode;
import com.dropbox.core.p006v2.files.ThumbnailSize;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneDeserializerLogger;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StructSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class ThumbnailV2Arg {

    /* renamed from: a */
    public final PathOrLink f17426a;

    /* renamed from: b */
    public final ThumbnailFormat f17427b;

    /* renamed from: c */
    public final ThumbnailSize f17428c;

    /* renamed from: d */
    public final ThumbnailMode f17429d;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected ThumbnailFormat format;
        protected ThumbnailMode mode;
        protected final PathOrLink resource;
        protected ThumbnailSize size;

        public Builder(PathOrLink pathOrLink) {
            if (pathOrLink == null) {
                throw new IllegalArgumentException("Required value for 'resource' is null");
            }
            this.resource = pathOrLink;
            this.format = ThumbnailFormat.JPEG;
            this.size = ThumbnailSize.W64H64;
            this.mode = ThumbnailMode.STRICT;
        }

        public ThumbnailV2Arg build() {
            return new ThumbnailV2Arg(this.resource, this.format, this.size, this.mode);
        }

        public Builder withFormat(ThumbnailFormat thumbnailFormat) {
            if (thumbnailFormat != null) {
                this.format = thumbnailFormat;
            } else {
                this.format = ThumbnailFormat.JPEG;
            }
            return this;
        }

        public Builder withMode(ThumbnailMode thumbnailMode) {
            if (thumbnailMode != null) {
                this.mode = thumbnailMode;
            } else {
                this.mode = ThumbnailMode.STRICT;
            }
            return this;
        }

        public Builder withSize(ThumbnailSize thumbnailSize) {
            if (thumbnailSize != null) {
                this.size = thumbnailSize;
            } else {
                this.size = ThumbnailSize.W64H64;
            }
            return this;
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ThumbnailV2Arg$a */
    /* loaded from: classes4.dex */
    public static class C2674a extends StructSerializer<ThumbnailV2Arg> {

        /* renamed from: b */
        public static final C2674a f17430b = new C2674a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ThumbnailV2Arg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            PathOrLink pathOrLink = null;
            if (z) {
                str = null;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                str = CompositeSerializer.readTag(jsonParser);
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            ThumbnailFormat thumbnailFormat = ThumbnailFormat.JPEG;
            ThumbnailSize thumbnailSize = ThumbnailSize.W64H64;
            ThumbnailMode thumbnailMode = ThumbnailMode.STRICT;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("resource".equals(currentName)) {
                    pathOrLink = PathOrLink.C2604b.f17288b.deserialize(jsonParser);
                } else if (Constants.ATTRNAME_FORMAT.equals(currentName)) {
                    thumbnailFormat = ThumbnailFormat.C2669b.f17421b.deserialize(jsonParser);
                } else if ("size".equals(currentName)) {
                    thumbnailSize = ThumbnailSize.C2673b.f17425b.deserialize(jsonParser);
                } else if (Constants.ATTRNAME_MODE.equals(currentName)) {
                    thumbnailMode = ThumbnailMode.C2671b.f17423b.deserialize(jsonParser);
                } else {
                    StoneSerializer.skipValue(jsonParser);
                }
            }
            if (pathOrLink == null) {
                throw new JsonParseException(jsonParser, "Required field \"resource\" missing.");
            }
            ThumbnailV2Arg thumbnailV2Arg = new ThumbnailV2Arg(pathOrLink, thumbnailFormat, thumbnailSize, thumbnailMode);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(thumbnailV2Arg, thumbnailV2Arg.m11113f());
            return thumbnailV2Arg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ThumbnailV2Arg thumbnailV2Arg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("resource");
            PathOrLink.C2604b.f17288b.serialize(thumbnailV2Arg.f17426a, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_FORMAT);
            ThumbnailFormat.C2669b.f17421b.serialize(thumbnailV2Arg.f17427b, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            ThumbnailSize.C2673b.f17425b.serialize(thumbnailV2Arg.f17428c, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_MODE);
            ThumbnailMode.C2671b.f17423b.serialize(thumbnailV2Arg.f17429d, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ThumbnailV2Arg(PathOrLink pathOrLink, ThumbnailFormat thumbnailFormat, ThumbnailSize thumbnailSize, ThumbnailMode thumbnailMode) {
        if (pathOrLink != null) {
            this.f17426a = pathOrLink;
            if (thumbnailFormat != null) {
                this.f17427b = thumbnailFormat;
                if (thumbnailSize != null) {
                    this.f17428c = thumbnailSize;
                    if (thumbnailMode != null) {
                        this.f17429d = thumbnailMode;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'mode' is null");
                }
                throw new IllegalArgumentException("Required value for 'size' is null");
            }
            throw new IllegalArgumentException("Required value for 'format' is null");
        }
        throw new IllegalArgumentException("Required value for 'resource' is null");
    }

    /* renamed from: e */
    public static Builder m11108e(PathOrLink pathOrLink) {
        return new Builder(pathOrLink);
    }

    /* renamed from: a */
    public ThumbnailFormat m11109a() {
        return this.f17427b;
    }

    /* renamed from: b */
    public ThumbnailMode m11110b() {
        return this.f17429d;
    }

    /* renamed from: c */
    public PathOrLink m11111c() {
        return this.f17426a;
    }

    /* renamed from: d */
    public ThumbnailSize m11112d() {
        return this.f17428c;
    }

    public boolean equals(Object obj) {
        ThumbnailFormat thumbnailFormat;
        ThumbnailFormat thumbnailFormat2;
        ThumbnailSize thumbnailSize;
        ThumbnailSize thumbnailSize2;
        ThumbnailMode thumbnailMode;
        ThumbnailMode thumbnailMode2;
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ThumbnailV2Arg thumbnailV2Arg = (ThumbnailV2Arg) obj;
        PathOrLink pathOrLink = this.f17426a;
        PathOrLink pathOrLink2 = thumbnailV2Arg.f17426a;
        return (pathOrLink == pathOrLink2 || pathOrLink.equals(pathOrLink2)) && ((thumbnailFormat = this.f17427b) == (thumbnailFormat2 = thumbnailV2Arg.f17427b) || thumbnailFormat.equals(thumbnailFormat2)) && (((thumbnailSize = this.f17428c) == (thumbnailSize2 = thumbnailV2Arg.f17428c) || thumbnailSize.equals(thumbnailSize2)) && ((thumbnailMode = this.f17429d) == (thumbnailMode2 = thumbnailV2Arg.f17429d) || thumbnailMode.equals(thumbnailMode2)));
    }

    /* renamed from: f */
    public String m11113f() {
        return C2674a.f17430b.serialize((C2674a) this, true);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17426a, this.f17427b, this.f17428c, this.f17429d});
    }

    public String toString() {
        return C2674a.f17430b.serialize((C2674a) this, false);
    }

    public ThumbnailV2Arg(PathOrLink pathOrLink) {
        this(pathOrLink, ThumbnailFormat.JPEG, ThumbnailSize.W64H64, ThumbnailMode.STRICT);
    }
}
