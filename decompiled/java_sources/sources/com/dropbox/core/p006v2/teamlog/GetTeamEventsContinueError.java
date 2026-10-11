package com.dropbox.core.p006v2.teamlog;

import com.dropbox.core.stone.CompositeSerializer;
import com.dropbox.core.stone.StoneSerializer;
import com.dropbox.core.stone.StoneSerializers;
import com.dropbox.core.stone.UnionSerializer;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

/* loaded from: classes4.dex */
public final class GetTeamEventsContinueError {
    public static final GetTeamEventsContinueError BAD_CURSOR = new GetTeamEventsContinueError().m15352b(Tag.BAD_CURSOR);
    public static final GetTeamEventsContinueError OTHER = new GetTeamEventsContinueError().m15352b(Tag.OTHER);

    /* renamed from: a */
    public Tag f19899a;

    /* renamed from: b */
    public Date f19900b;

    /* loaded from: classes4.dex */
    public enum Tag {
        BAD_CURSOR,
        RESET,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsContinueError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C3633a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f19901a;

        static {
            int[] iArr = new int[Tag.values().length];
            f19901a = iArr;
            try {
                iArr[Tag.BAD_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19901a[Tag.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19901a[Tag.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.GetTeamEventsContinueError$b */
    /* loaded from: classes4.dex */
    public static class C3634b extends UnionSerializer<GetTeamEventsContinueError> {

        /* renamed from: b */
        public static final C3634b f19902b = new C3634b();

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public GetTeamEventsContinueError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            GetTeamEventsContinueError getTeamEventsContinueError;
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
            if ("bad_cursor".equals(readTag)) {
                getTeamEventsContinueError = GetTeamEventsContinueError.BAD_CURSOR;
            } else if (Constants.RESET.equals(readTag)) {
                StoneSerializer.expectField(Constants.RESET, jsonParser);
                getTeamEventsContinueError = GetTeamEventsContinueError.reset(StoneSerializers.timestamp().deserialize(jsonParser));
            } else {
                getTeamEventsContinueError = GetTeamEventsContinueError.OTHER;
            }
            if (!z) {
                StoneSerializer.skipFields(jsonParser);
                StoneSerializer.expectEndObject(jsonParser);
            }
            return getTeamEventsContinueError;
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void serialize(GetTeamEventsContinueError getTeamEventsContinueError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C3633a.f19901a[getTeamEventsContinueError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("bad_cursor");
                return;
            }
            if (i != 2) {
                jsonGenerator.writeString(com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER);
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag(Constants.RESET, jsonGenerator);
            jsonGenerator.writeFieldName(Constants.RESET);
            StoneSerializers.timestamp().serialize((StoneSerializer<Date>) getTeamEventsContinueError.f19900b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    public static GetTeamEventsContinueError reset(Date date) {
        if (date != null) {
            return new GetTeamEventsContinueError().m15353c(Tag.RESET, date);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final GetTeamEventsContinueError m15352b(Tag tag) {
        GetTeamEventsContinueError getTeamEventsContinueError = new GetTeamEventsContinueError();
        getTeamEventsContinueError.f19899a = tag;
        return getTeamEventsContinueError;
    }

    /* renamed from: c */
    public final GetTeamEventsContinueError m15353c(Tag tag, Date date) {
        GetTeamEventsContinueError getTeamEventsContinueError = new GetTeamEventsContinueError();
        getTeamEventsContinueError.f19899a = tag;
        getTeamEventsContinueError.f19900b = date;
        return getTeamEventsContinueError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof GetTeamEventsContinueError)) {
            return false;
        }
        GetTeamEventsContinueError getTeamEventsContinueError = (GetTeamEventsContinueError) obj;
        Tag tag = this.f19899a;
        if (tag != getTeamEventsContinueError.f19899a) {
            return false;
        }
        int i = C3633a.f19901a[tag.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        Date date = this.f19900b;
        Date date2 = getTeamEventsContinueError.f19900b;
        return date == date2 || date.equals(date2);
    }

    public Date getResetValue() {
        if (this.f19899a == Tag.RESET) {
            return this.f19900b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.RESET, but was Tag." + this.f19899a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19899a, this.f19900b});
    }

    public boolean isBadCursor() {
        return this.f19899a == Tag.BAD_CURSOR;
    }

    public boolean isOther() {
        return this.f19899a == Tag.OTHER;
    }

    public boolean isReset() {
        return this.f19899a == Tag.RESET;
    }

    public Tag tag() {
        return this.f19899a;
    }

    public String toString() {
        return C3634b.f19902b.serialize((C3634b) this, false);
    }

    public String toStringMultiline() {
        return C3634b.f19902b.serialize((C3634b) this, true);
    }
}
