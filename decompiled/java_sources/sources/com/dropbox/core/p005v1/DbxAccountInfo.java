package com.dropbox.core.p005v1;

import androidx.core.content.FileProvider;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sunia.HTREnginev2.sod;
import java.io.IOException;

/* loaded from: classes4.dex */
public class DbxAccountInfo extends Dumpable {
    public static final JsonReader<DbxAccountInfo> Reader = new C2316a();

    /* renamed from: e */
    public static final int f16640e = 0;

    /* renamed from: f */
    public static final int f16641f = 1;

    /* renamed from: g */
    public static final int f16642g = 2;

    /* renamed from: h */
    public static final int f16643h = 3;

    /* renamed from: i */
    public static final int f16644i = 4;

    /* renamed from: j */
    public static final int f16645j = 5;

    /* renamed from: k */
    public static final int f16646k = 6;

    /* renamed from: l */
    public static final int f16647l = 7;

    /* renamed from: m */
    public static final JsonReader.FieldMapping f16648m;
    public final String country;
    public final String displayName;
    public final String email;
    public final boolean emailVerified;
    public final NameDetails nameDetails;
    public final Quota quota;
    public final String referralLink;
    public final long userId;

    /* loaded from: classes4.dex */
    public static final class NameDetails extends Dumpable {
        public static final JsonReader<NameDetails> Reader = new C2314a();

        /* renamed from: e */
        public static final int f16649e = 0;

        /* renamed from: f */
        public static final int f16650f = 1;

        /* renamed from: g */
        public static final int f16651g = 2;

        /* renamed from: h */
        public static final JsonReader.FieldMapping f16652h;
        public final String familiarName;
        public final String givenName;
        public final String surname;

        /* renamed from: com.dropbox.core.v1.DbxAccountInfo$NameDetails$a */
        /* loaded from: classes4.dex */
        public static class C2314a extends JsonReader<NameDetails> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final NameDetails read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                String str = null;
                String str2 = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    int i = NameDetails.f16652h.get(currentName);
                    if (i == -1) {
                        JsonReader.skipValue(jsonParser);
                    } else if (i == 0) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else {
                        if (i != 1) {
                            if (i != 2) {
                                throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                            }
                            try {
                                str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                            } catch (JsonReadException e) {
                                throw e.addFieldContext(currentName);
                            }
                            throw e.addFieldContext(currentName);
                        }
                        str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"familiarName\"", expectObjectStart);
                }
                if (str2 == null) {
                    throw new JsonReadException("missing field \"surname\"", expectObjectStart);
                }
                if (str3 != null) {
                    return new NameDetails(str, str3, str2);
                }
                throw new JsonReadException("missing field \"givenName\"", expectObjectStart);
            }
        }

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("familiar_name", 0);
            builder.add("given_name", 1);
            builder.add("surname", 2);
            f16652h = builder.build();
        }

        public NameDetails(String str, String str2, String str3) {
            this.familiarName = str;
            this.givenName = str2;
            this.surname = str3;
        }

        @Override // com.dropbox.core.util.Dumpable
        public void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.mo10123f("familiarName").m10131v(this.familiarName);
            dumpWriter.mo10123f("givenName").m10131v(this.givenName);
            dumpWriter.mo10123f("surname").m10131v(this.surname);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Quota extends Dumpable {
        public static final JsonReader<Quota> Reader = new C2315a();

        /* renamed from: e */
        public static final int f16653e = 0;

        /* renamed from: f */
        public static final int f16654f = 1;

        /* renamed from: g */
        public static final int f16655g = 2;

        /* renamed from: h */
        public static final JsonReader.FieldMapping f16656h;
        public final long normal;
        public final long shared;
        public final long total;

        /* renamed from: com.dropbox.core.v1.DbxAccountInfo$Quota$a */
        /* loaded from: classes4.dex */
        public static class C2315a extends JsonReader<Quota> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Quota read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                long j = -1;
                long j2 = -1;
                long j3 = -1;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    int i = Quota.f16656h.get(currentName);
                    if (i == -1) {
                        JsonReader.skipValue(jsonParser);
                    } else if (i == 0) {
                        j = JsonReader.readUnsignedLongField(jsonParser, currentName, j);
                    } else {
                        if (i != 1) {
                            if (i != 2) {
                                throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                            }
                            try {
                                j3 = JsonReader.readUnsignedLongField(jsonParser, currentName, j3);
                            } catch (JsonReadException e) {
                                throw e.addFieldContext(currentName);
                            }
                            throw e.addFieldContext(currentName);
                        }
                        j2 = JsonReader.readUnsignedLongField(jsonParser, currentName, j2);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (j < 0) {
                    throw new JsonReadException("missing field \"quota\"", expectObjectStart);
                }
                if (j2 < 0) {
                    throw new JsonReadException("missing field \"normal\"", expectObjectStart);
                }
                if (j3 >= 0) {
                    return new Quota(j, j2, j3);
                }
                throw new JsonReadException("missing field \"shared\"", expectObjectStart);
            }
        }

        static {
            JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
            builder.add("quota", 0);
            builder.add("normal", 1);
            builder.add("shared", 2);
            f16656h = builder.build();
        }

        public Quota(long j, long j2, long j3) {
            this.total = j;
            this.normal = j2;
            this.shared = j3;
        }

        @Override // com.dropbox.core.util.Dumpable
        public void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.mo10123f("total").m10127v(this.total);
            dumpWriter.mo10123f("normal").m10127v(this.normal);
            dumpWriter.mo10123f("shared").m10127v(this.shared);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxAccountInfo$a */
    /* loaded from: classes4.dex */
    public static class C2316a extends JsonReader<DbxAccountInfo> {
        /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0025. Please report as an issue. */
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DbxAccountInfo read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            Boolean bool = null;
            long j = -1;
            String str = null;
            String str2 = null;
            String str3 = null;
            Quota quota = null;
            String str4 = null;
            NameDetails nameDetails = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    int i = DbxAccountInfo.f16648m.get(currentName);
                    switch (i) {
                        case -1:
                            JsonReader.skipValue(jsonParser);
                        case 0:
                            j = JsonReader.readUnsignedLongField(jsonParser, currentName, j);
                        case 1:
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        case 2:
                            str2 = JsonReader.StringReader.readField(jsonParser, currentName, str2);
                        case 3:
                            str3 = JsonReader.StringReader.readField(jsonParser, currentName, str3);
                        case 4:
                            quota = Quota.Reader.readField(jsonParser, currentName, quota);
                        case 5:
                            nameDetails = NameDetails.Reader.readField(jsonParser, currentName, nameDetails);
                        case 6:
                            str4 = JsonReader.StringReader.readField(jsonParser, currentName, str4);
                        case 7:
                            bool = JsonReader.BooleanReader.readField(jsonParser, currentName, bool);
                        default:
                            throw new AssertionError("bad index: " + i + ", field = \"" + currentName + "\"");
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (j < 0) {
                throw new JsonReadException("missing field \"uid\"", expectObjectStart);
            }
            if (str == null) {
                throw new JsonReadException("missing field \"display_name\"", expectObjectStart);
            }
            if (str2 == null) {
                throw new JsonReadException("missing field \"country\"", expectObjectStart);
            }
            if (str3 == null) {
                throw new JsonReadException("missing field \"referral_link\"", expectObjectStart);
            }
            if (quota == null) {
                throw new JsonReadException("missing field \"quota_info\"", expectObjectStart);
            }
            if (str4 == null) {
                throw new JsonReadException("missing field \"email\"", expectObjectStart);
            }
            if (nameDetails == null) {
                throw new JsonReadException("missing field \"nameDetails\"", expectObjectStart);
            }
            if (bool != null) {
                return new DbxAccountInfo(j, str, str2, str3, quota, str4, nameDetails, bool.booleanValue());
            }
            throw new JsonReadException("missing field \"emailVerified\"", expectObjectStart);
        }
    }

    static {
        JsonReader.FieldMapping.Builder builder = new JsonReader.FieldMapping.Builder();
        builder.add(CouchFieldKey.KEY_UID, 0);
        builder.add("display_name", 1);
        builder.add(sod.f84350C, 2);
        builder.add("referral_link", 3);
        builder.add("quota_info", 4);
        builder.add("name_details", 5);
        builder.add("email", 6);
        builder.add("email_verified", 7);
        f16648m = builder.build();
    }

    public DbxAccountInfo(long j, String str, String str2, String str3, Quota quota, String str4, NameDetails nameDetails, boolean z) {
        this.userId = j;
        this.displayName = str;
        this.country = str2;
        this.referralLink = str3;
        this.quota = quota;
        this.email = str4;
        this.nameDetails = nameDetails;
        this.emailVerified = z;
    }

    @Override // com.dropbox.core.util.Dumpable
    public void dumpFields(DumpWriter dumpWriter) {
        dumpWriter.mo10123f(Constant.TAG_USER_ID).m10127v(this.userId);
        dumpWriter.mo10123f(FileProvider.f5230t).m10131v(this.displayName);
        dumpWriter.mo10123f(sod.f84350C).m10131v(this.country);
        dumpWriter.mo10123f("referralLink").m10131v(this.referralLink);
        dumpWriter.mo10123f("quota").m10128v(this.quota);
        dumpWriter.mo10123f("nameDetails").m10128v(this.nameDetails);
        dumpWriter.mo10123f("email").m10131v(this.email);
        dumpWriter.mo10123f("emailVerified").m10133v(this.emailVerified);
    }
}
