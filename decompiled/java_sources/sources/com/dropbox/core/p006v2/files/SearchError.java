package com.dropbox.core.p006v2.files;

import com.dropbox.core.p006v2.files.LookupError;
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

/* loaded from: classes4.dex */
public final class SearchError {
    public static final SearchError INTERNAL_ERROR = new SearchError().m11053c(Tag.INTERNAL_ERROR);
    public static final SearchError OTHER = new SearchError().m11053c(Tag.OTHER);

    /* renamed from: a */
    public Tag f17383a;

    /* renamed from: b */
    public LookupError f17384b;

    /* renamed from: c */
    public String f17385c;

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        INVALID_ARGUMENT,
        INTERNAL_ERROR,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.SearchError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2644a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17386a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17386a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17386a[Tag.INVALID_ARGUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17386a[Tag.INTERNAL_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17386a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.SearchError$b */
    /* loaded from: classes4.dex */
    public static class C2645b extends UnionSerializer<SearchError> {

        /* renamed from: b */
        public static final C2645b f17387b = new C2645b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public SearchError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SearchError searchError;
            String str;
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
                searchError = SearchError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
            } else if ("invalid_argument".equals(readTag)) {
                if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                    StoneSerializer.expectField("invalid_argument", jsonParser);
                    str = (String) StoneSerializers.nullable(StoneSerializers.string()).deserialize(jsonParser);
                } else {
                    str = null;
                }
                searchError = str == null ? SearchError.invalidArgument() : SearchError.invalidArgument(str);
            } else {
                searchError = "internal_error".equals(readTag) ? SearchError.INTERNAL_ERROR : SearchError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return searchError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(SearchError searchError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2644a.f17386a[searchError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(searchError.f17384b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i != 2) {
                if (i != 3) {
                    jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
                    return;
                } else {
                    jsonGenerator.writeString("internal_error");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("invalid_argument", jsonGenerator);
            jsonGenerator.writeFieldName("invalid_argument");
            StoneSerializers.nullable(StoneSerializers.string()).serialize((StoneSerializer) searchError.f17385c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static SearchError invalidArgument(String str) {
        return new SearchError().m11054d(Tag.INVALID_ARGUMENT, str);
    }

    public static SearchError path(LookupError lookupError) {
        if (lookupError != null) {
            return new SearchError().m11055e(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: c */
    public final SearchError m11053c(Tag tag) {
        SearchError searchError = new SearchError();
        searchError.f17383a = tag;
        return searchError;
    }

    /* renamed from: d */
    public final SearchError m11054d(Tag tag, String str) {
        SearchError searchError = new SearchError();
        searchError.f17383a = tag;
        searchError.f17385c = str;
        return searchError;
    }

    /* renamed from: e */
    public final SearchError m11055e(Tag tag, LookupError lookupError) {
        SearchError searchError = new SearchError();
        searchError.f17383a = tag;
        searchError.f17384b = lookupError;
        return searchError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SearchError)) {
            return false;
        }
        SearchError searchError = (SearchError) obj;
        Tag tag = this.f17383a;
        if (tag != searchError.f17383a) {
            return false;
        }
        int i = C2644a.f17386a[tag.ordinal()];
        if (i == 1) {
            LookupError lookupError = this.f17384b;
            LookupError lookupError2 = searchError.f17384b;
            return lookupError == lookupError2 || lookupError.equals(lookupError2);
        }
        if (i != 2) {
            return i == 3 || i == 4;
        }
        String str = this.f17385c;
        String str2 = searchError.f17385c;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public String getInvalidArgumentValue() {
        if (this.f17383a == Tag.INVALID_ARGUMENT) {
            return this.f17385c;
        }
        throw new IllegalStateException("Invalid tag: required Tag.INVALID_ARGUMENT, but was Tag." + this.f17383a.name());
    }

    public LookupError getPathValue() {
        if (this.f17383a == Tag.PATH) {
            return this.f17384b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17383a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17383a, this.f17384b, this.f17385c});
    }

    public boolean isInternalError() {
        return this.f17383a == Tag.INTERNAL_ERROR;
    }

    public boolean isInvalidArgument() {
        return this.f17383a == Tag.INVALID_ARGUMENT;
    }

    public boolean isOther() {
        return this.f17383a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17383a == Tag.PATH;
    }

    public Tag tag() {
        return this.f17383a;
    }

    public String toString() {
        return C2645b.f17387b.serialize((C2645b) this, false);
    }

    public String toStringMultiline() {
        return C2645b.f17387b.serialize((C2645b) this, true);
    }

    public static SearchError invalidArgument() {
        return invalidArgument(null);
    }
}
