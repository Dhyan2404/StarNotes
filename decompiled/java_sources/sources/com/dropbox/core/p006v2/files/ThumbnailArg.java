package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.ThumbnailFormat;
import com.dropbox.core.p006v2.files.ThumbnailMode;
import com.dropbox.core.p006v2.files.ThumbnailSize;
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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class ThumbnailArg {
    protected final ThumbnailFormat format;
    protected final ThumbnailMode mode;
    protected final String path;
    protected final ThumbnailSize size;

    /* loaded from: classes4.dex */
    public static class Builder {
        protected ThumbnailFormat format;
        protected ThumbnailMode mode;
        protected final String path;
        protected ThumbnailSize size;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                throw new IllegalArgumentException("String 'path' does not match pattern");
            }
            this.path = str;
            this.format = ThumbnailFormat.JPEG;
            this.size = ThumbnailSize.W64H64;
            this.mode = ThumbnailMode.STRICT;
        }

        public ThumbnailArg build() {
            return new ThumbnailArg(this.path, this.format, this.size, this.mode);
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

    /* renamed from: com.dropbox.core.v2.files.ThumbnailArg$a */
    /* loaded from: classes4.dex */
    public static class C2665a extends StructSerializer<ThumbnailArg> {

        /* renamed from: b */
        public static final C2665a f17415b = new C2665a();

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ThumbnailArg deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            ThumbnailFormat thumbnailFormat = ThumbnailFormat.JPEG;
            ThumbnailSize thumbnailSize = ThumbnailSize.W64H64;
            ThumbnailMode thumbnailMode = ThumbnailMode.STRICT;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("path".equals(currentName)) {
                    str2 = StoneSerializers.string().deserialize(jsonParser);
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
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            ThumbnailArg thumbnailArg = new ThumbnailArg(str2, thumbnailFormat, thumbnailSize, thumbnailMode);
            if (!z) {
                StoneSerializer.expectEndObject(jsonParser);
            }
            StoneDeserializerLogger.log(thumbnailArg, thumbnailArg.toStringMultiline());
            return thumbnailArg;
        }

        @Override // com.dropbox.core.stone.StructSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ThumbnailArg thumbnailArg, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("path");
            StoneSerializers.string().serialize((StoneSerializer<String>) thumbnailArg.path, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_FORMAT);
            ThumbnailFormat.C2669b.f17421b.serialize(thumbnailArg.format, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            ThumbnailSize.C2673b.f17425b.serialize(thumbnailArg.size, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.ATTRNAME_MODE);
            ThumbnailMode.C2671b.f17423b.serialize(thumbnailArg.mode, jsonGenerator);
            if (z) {
                return;
            }
            jsonGenerator.writeEndObject();
        }
    }

    public ThumbnailArg(String str, ThumbnailFormat thumbnailFormat, ThumbnailSize thumbnailSize, ThumbnailMode thumbnailMode) {
        if (str != null) {
            if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
                this.path = str;
                if (thumbnailFormat != null) {
                    this.format = thumbnailFormat;
                    if (thumbnailSize != null) {
                        this.size = thumbnailSize;
                        if (thumbnailMode != null) {
                            this.mode = thumbnailMode;
                            return;
                        }
                        throw new IllegalArgumentException("Required value for 'mode' is null");
                    }
                    throw new IllegalArgumentException("Required value for 'size' is null");
                }
                throw new IllegalArgumentException("Required value for 'format' is null");
            }
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        throw new IllegalArgumentException("Required value for 'path' is null");
    }

    public static Builder newBuilder(String str) {
        return new Builder(str);
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
        ThumbnailArg thumbnailArg = (ThumbnailArg) obj;
        String str = this.path;
        String str2 = thumbnailArg.path;
        return (str == str2 || str.equals(str2)) && ((thumbnailFormat = this.format) == (thumbnailFormat2 = thumbnailArg.format) || thumbnailFormat.equals(thumbnailFormat2)) && (((thumbnailSize = this.size) == (thumbnailSize2 = thumbnailArg.size) || thumbnailSize.equals(thumbnailSize2)) && ((thumbnailMode = this.mode) == (thumbnailMode2 = thumbnailArg.mode) || thumbnailMode.equals(thumbnailMode2)));
    }

    public ThumbnailFormat getFormat() {
        return this.format;
    }

    public ThumbnailMode getMode() {
        return this.mode;
    }

    public String getPath() {
        return this.path;
    }

    public ThumbnailSize getSize() {
        return this.size;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.path, this.format, this.size, this.mode});
    }

    public String toString() {
        return C2665a.f17415b.serialize((C2665a) this, false);
    }

    public String toStringMultiline() {
        return C2665a.f17415b.serialize((C2665a) this, true);
    }

    public ThumbnailArg(String str) {
        this(str, ThumbnailFormat.JPEG, ThumbnailSize.W64H64, ThumbnailMode.STRICT);
    }
}
