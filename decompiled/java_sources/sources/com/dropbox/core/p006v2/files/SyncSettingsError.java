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
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class SyncSettingsError {

    /* renamed from: a */
    public Tag f17412a;

    /* renamed from: b */
    public LookupError f17413b;
    public static final SyncSettingsError UNSUPPORTED_COMBINATION = new SyncSettingsError().m11093b(Tag.UNSUPPORTED_COMBINATION);
    public static final SyncSettingsError UNSUPPORTED_CONFIGURATION = new SyncSettingsError().m11093b(Tag.UNSUPPORTED_CONFIGURATION);
    public static final SyncSettingsError OTHER = new SyncSettingsError().m11093b(Tag.OTHER);

    /* loaded from: classes4.dex */
    public static class Serializer extends UnionSerializer<SyncSettingsError> {
        public static final Serializer INSTANCE = new Serializer();

        @Override // com.dropbox.core.stone.StoneSerializer
        public SyncSettingsError deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String readTag;
            boolean z;
            SyncSettingsError syncSettingsError;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                readTag = StoneSerializer.getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                StoneSerializer.expectStartObject(jsonParser);
                readTag = CompositeSerializer.readTag(jsonParser);
                z = false;
            }
            if (readTag != null) {
                if ("path".equals(readTag)) {
                    StoneSerializer.expectField("path", jsonParser);
                    syncSettingsError = SyncSettingsError.path(LookupError.Serializer.INSTANCE.deserialize(jsonParser));
                } else if ("unsupported_combination".equals(readTag)) {
                    syncSettingsError = SyncSettingsError.UNSUPPORTED_COMBINATION;
                } else if ("unsupported_configuration".equals(readTag)) {
                    syncSettingsError = SyncSettingsError.UNSUPPORTED_CONFIGURATION;
                } else {
                    syncSettingsError = SyncSettingsError.OTHER;
                }
                if (!z) {
                    StoneSerializer.skipFields(jsonParser);
                    StoneSerializer.expectEndObject(jsonParser);
                }
                return syncSettingsError;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.stone.StoneSerializer
        public void serialize(SyncSettingsError syncSettingsError, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C2664a.f17414a[syncSettingsError.tag().ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                LookupError.Serializer.INSTANCE.serialize(syncSettingsError.f17413b, jsonGenerator);
                jsonGenerator.writeEndObject();
                return;
            }
            if (i == 2) {
                jsonGenerator.writeString("unsupported_combination");
            } else if (i != 3) {
                jsonGenerator.writeString(Constants.ATTRVAL_OTHER);
            } else {
                jsonGenerator.writeString("unsupported_configuration");
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum Tag {
        PATH,
        UNSUPPORTED_COMBINATION,
        UNSUPPORTED_CONFIGURATION,
        OTHER
    }

    /* renamed from: com.dropbox.core.v2.files.SyncSettingsError$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C2664a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f17414a;

        static {
            int[] iArr = new int[Tag.values().length];
            f17414a = iArr;
            try {
                iArr[Tag.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17414a[Tag.UNSUPPORTED_COMBINATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17414a[Tag.UNSUPPORTED_CONFIGURATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f17414a[Tag.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static SyncSettingsError path(LookupError lookupError) {
        if (lookupError != null) {
            return new SyncSettingsError().m11094c(Tag.PATH, lookupError);
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public final SyncSettingsError m11093b(Tag tag) {
        SyncSettingsError syncSettingsError = new SyncSettingsError();
        syncSettingsError.f17412a = tag;
        return syncSettingsError;
    }

    /* renamed from: c */
    public final SyncSettingsError m11094c(Tag tag, LookupError lookupError) {
        SyncSettingsError syncSettingsError = new SyncSettingsError();
        syncSettingsError.f17412a = tag;
        syncSettingsError.f17413b = lookupError;
        return syncSettingsError;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof SyncSettingsError)) {
            return false;
        }
        SyncSettingsError syncSettingsError = (SyncSettingsError) obj;
        Tag tag = this.f17412a;
        if (tag != syncSettingsError.f17412a) {
            return false;
        }
        int i = C2664a.f17414a[tag.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4;
        }
        LookupError lookupError = this.f17413b;
        LookupError lookupError2 = syncSettingsError.f17413b;
        return lookupError == lookupError2 || lookupError.equals(lookupError2);
    }

    public LookupError getPathValue() {
        if (this.f17412a == Tag.PATH) {
            return this.f17413b;
        }
        throw new IllegalStateException("Invalid tag: required Tag.PATH, but was Tag." + this.f17412a.name());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17412a, this.f17413b});
    }

    public boolean isOther() {
        return this.f17412a == Tag.OTHER;
    }

    public boolean isPath() {
        return this.f17412a == Tag.PATH;
    }

    public boolean isUnsupportedCombination() {
        return this.f17412a == Tag.UNSUPPORTED_COMBINATION;
    }

    public boolean isUnsupportedConfiguration() {
        return this.f17412a == Tag.UNSUPPORTED_CONFIGURATION;
    }

    public Tag tag() {
        return this.f17412a;
    }

    public String toString() {
        return Serializer.INSTANCE.serialize((Serializer) this, false);
    }

    public String toStringMultiline() {
        return Serializer.INSTANCE.serialize((Serializer) this, true);
    }
}
