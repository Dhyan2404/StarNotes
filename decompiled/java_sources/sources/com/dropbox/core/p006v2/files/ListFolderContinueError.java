package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class ListFolderContinueError {

    /* renamed from: a */
    public Tag f17212a;

    /* renamed from: b */
    public LookupError f17213b;
    public static final ListFolderContinueError RESET = new ListFolderContinueError().m10825b(Tag.RESET);
    public static final ListFolderContinueError OTHER = new ListFolderContinueError().m10825b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        RESET,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.ListFolderContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2569a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17214a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17214a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17214a[Tag.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17214a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ListFolderContinueError$b */
    /* loaded from: classes4.dex */
    public static class C2570b extends UnionSerializer<ListFolderContinueError> {

        /* renamed from: b */
        public static final C2570b f17215b = new C2570b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ListFolderContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            ListFolderContinueError listFolderContinueError;
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
                listFolderContinueError = ListFolderContinueError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else {
                listFolderContinueError = Constants.RESET.equals(readTag) ? ListFolderContinueError.RESET : ListFolderContinueError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return listFolderContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(ListFolderContinueError listFolderContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2569a.f17214a[listFolderContinueError.tag().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString(Constants.RESET);
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            LookupError.Serializer.INSTANCE.serialize(listFolderContinueError.f17213b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static ListFolderContinueError path(LookupError lookupError) {
        if (lookupError != null) {
            return new ListFolderContinueError().m10826c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final ListFolderContinueError m10825b(Tag tag) {
        ListFolderContinueError listFolderContinueError = new ListFolderContinueError();
        listFolderContinueError.f17212a = tag;
        return listFolderContinueError;
    }

    /* renamed from: c */
    public final ListFolderContinueError m10826c(Tag tag, LookupError lookupError) {
        ListFolderContinueError listFolderContinueError = new ListFolderContinueError();
        listFolderContinueError.f17212a = tag;
        listFolderContinueError.f17213b = lookupError;
        return listFolderContinueError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ListFolderContinueError)) {
            return false;
        }
        ListFolderContinueError listFolderContinueError = (ListFolderContinueError) obj;
        Tag tag = this.f17212a;
        if (tag != listFolderContinueError.f17212a) {
            return false;
        }
        int i = C2569a.f17214a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        LookupError lookupError = this.f17213b;
        LookupError lookupError2 = listFolderContinueError.f17213b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17212a == Tag.PATH) {
            return this.f17213b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17212a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17212a, this.f17213b});
    }

    public boolean isOther() {
        return this.f17212a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17212a == Tag.PATH;
    }

    public boolean isReset() {
        return this.f17212a == Tag.RESET;
    }

    public Tag tag() {
        return this.f17212a;
    }

    public String toString() {
        return C2570b.f17215b.serialize((C2570b) this, false);
    }

    public String toStringMultiline() {
        return C2570b.f17215b.serialize((C2570b) this, true);
    }
}
