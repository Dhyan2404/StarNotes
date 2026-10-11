package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.SharedLinkFileInfo;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
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
public final class PathOrLink {
    public static final PathOrLink OTHER = new PathOrLink().m10912c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17284a;

    /* renamed from: b */
    public String f17285b;

    /* renamed from: c */
    public SharedLinkFileInfo f17286c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        LINK,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.PathOrLink$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2603a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17287a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17287a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17287a[Tag.LINK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17287a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.PathOrLink$b */
    /* loaded from: classes4.dex */
    public static class C2604b extends UnionSerializer<PathOrLink> {

        /* renamed from: b */
        public static final C2604b f17288b = new C2604b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PathOrLink deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            PathOrLink link;
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
            if ("path".equals(readTag)) {
                StoneSerializer.expectField("path", jsonParser);
                link = PathOrLink.path(StoneSerializers.string().deserialize(jsonParser));
            } else {
                link = "link".equals(readTag) ? PathOrLink.link(SharedLinkFileInfo.C2658a.f17406b.deserialize(jsonParser, true)) : PathOrLink.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return link;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(PathOrLink pathOrLink, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2603a.f17287a[pathOrLink.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                StoneSerializers.string().serialize((StoneSerializer<String>) pathOrLink.f17285b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("link", jsonGenerator);
            SharedLinkFileInfo.C2658a.f17406b.serialize(pathOrLink.f17286c, jsonGenerator, true);
            jsonGenerator.writeEndObject();
        }
    }

    public static PathOrLink link(SharedLinkFileInfo sharedLinkFileInfo) {
        if (sharedLinkFileInfo != null) {
            return new PathOrLink().m10913d(Tag.LINK, sharedLinkFileInfo);
        }
        throw new IllegalArgumentException("Value is null");
    }

    public static PathOrLink path(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        }
        if (Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", str)) {
            return new PathOrLink().m10914e(Tag.PATH, str);
        }
        throw new IllegalArgumentException("String does not match pattern");
    }

    /* renamed from: c */
    public final PathOrLink m10912c(Tag tag) {
        PathOrLink pathOrLink = new PathOrLink();
        pathOrLink.f17284a = tag;
        return pathOrLink;
    }

    /* renamed from: d */
    public final PathOrLink m10913d(Tag tag, SharedLinkFileInfo sharedLinkFileInfo) {
        PathOrLink pathOrLink = new PathOrLink();
        pathOrLink.f17284a = tag;
        pathOrLink.f17286c = sharedLinkFileInfo;
        return pathOrLink;
    }

    /* renamed from: e */
    public final PathOrLink m10914e(Tag tag, String str) {
        PathOrLink pathOrLink = new PathOrLink();
        pathOrLink.f17284a = tag;
        pathOrLink.f17285b = str;
        return pathOrLink;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof PathOrLink)) {
            return false;
        }
        PathOrLink pathOrLink = (PathOrLink) obj;
        Tag tag = this.f17284a;
        if (tag != pathOrLink.f17284a) {
            return false;
        }
        int i = C2603a.f17287a[tag.ordinal()];
        if (i == 1) {
            String str = this.f17285b;
            String str2 = pathOrLink.f17285b;
            return str == str2 || str.equals(str2);
        }
        if (i != 2) {
            return i == 3;
        }
        SharedLinkFileInfo sharedLinkFileInfo = this.f17286c;
        SharedLinkFileInfo sharedLinkFileInfo2 = pathOrLink.f17286c;
        return sharedLinkFileInfo == sharedLinkFileInfo2 || sharedLinkFileInfo.equals(sharedLinkFileInfo2);
    }

    public SharedLinkFileInfo getLinkValue() {
        if (this.f17284a == Tag.LINK) {
            return this.f17286c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.LINK, but was Tag." + this.f17284a.name());
    }

    public String getPathValue() {
        if (this.f17284a == Tag.PATH) {
            return this.f17285b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17284a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17284a, this.f17285b, this.f17286c});
    }

    public boolean isLink() {
        return this.f17284a == Tag.LINK;
    }

    public boolean isOther() {
        return this.f17284a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17284a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17284a;
    }

    public String toString() {
        return C2604b.f17288b.serialize((C2604b) this, false);
    }

    public String toStringMultiline() {
        return C2604b.f17288b.serialize((C2604b) this, true);
    }
}
