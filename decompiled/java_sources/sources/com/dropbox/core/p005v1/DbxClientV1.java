package com.dropbox.core.p005v1;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.dropbox.core.BadRequestException;
import com.dropbox.core.BadResponseException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxHost;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.DbxStreamWriter;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.NoThrowOutputStream;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.json.JsonArrayReader;
import com.dropbox.core.json.JsonDateReader;
import com.dropbox.core.json.JsonReadException;
import com.dropbox.core.json.JsonReader;
import com.dropbox.core.p005v1.DbxDelta;
import com.dropbox.core.p005v1.DbxDeltaC;
import com.dropbox.core.p005v1.DbxEntry;
import com.dropbox.core.util.Collector;
import com.dropbox.core.util.CountingOutputStream;
import com.dropbox.core.util.DumpWriter;
import com.dropbox.core.util.Dumpable;
import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.util.Maybe;
import com.dropbox.core.util.StringUtil;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.google.android.gms.actions.SearchIntents;
import com.onyx.android.sdk.cloudstorage.constans.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes4.dex */
public final class DbxClientV1 {
    public static final String USER_AGENT_ID = "Dropbox-Java-SDK";

    /* renamed from: d */
    public static final long f16657d = 8388608;

    /* renamed from: e */
    public static final int f16658e = 4194304;

    /* renamed from: f */
    public static JsonReader<String> f16659f = new C2319b();

    /* renamed from: g */
    public static final /* synthetic */ boolean f16660g = false;

    /* renamed from: a */
    public final DbxRequestConfig f16661a;

    /* renamed from: b */
    public final String f16662b;

    /* renamed from: c */
    public final DbxHost f16663c;

    /* loaded from: classes4.dex */
    public static final class Downloader {
        public final InputStream body;
        public final DbxEntry.File metadata;

        public Downloader(DbxEntry.File file, InputStream inputStream) {
            this.metadata = file;
            this.body = inputStream;
        }

        /* renamed from: a */
        public DbxEntry.File m10161a(OutputStream outputStream) throws DbxException, IOException {
            try {
                try {
                    IOUtil.copyStreamToStream(this.body, outputStream);
                    close();
                    return this.metadata;
                } catch (IOUtil.ReadException e) {
                    throw new NetworkIOException(e.getCause());
                } catch (IOUtil.WriteException e2) {
                    throw e2.getCause();
                }
            } catch (Throwable th) {
                close();
                throw th;
            }
        }

        public void close() {
            IOUtil.closeInput(this.body);
        }
    }

    /* loaded from: classes4.dex */
    public static final class IODbxException extends IOException {
        private static final long serialVersionUID = 0;
        public final DbxException underlying;

        public IODbxException(DbxException dbxException) {
            super(dbxException);
            this.underlying = dbxException;
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class Uploader {
        public abstract void abort();

        public abstract void close();

        public abstract DbxEntry.File finish() throws DbxException;

        public abstract OutputStream getBody();
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$a */
    /* loaded from: classes4.dex */
    public class C2317a extends DbxRequestUtil.ResponseHandler<String> {
        public C2317a() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (String) DbxRequestUtil.readJsonFromResponse(DbxClientV1.f16659f, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$a0 */
    /* loaded from: classes4.dex */
    public static final class C2318a0 {

        /* renamed from: c */
        public static final JsonReader<C2318a0> f16665c = new a();

        /* renamed from: a */
        public final String f16666a;

        /* renamed from: b */
        public final Date f16667b;

        /* renamed from: com.dropbox.core.v1.DbxClientV1$a0$a */
        /* loaded from: classes4.dex */
        public static class a extends JsonReader<C2318a0> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C2318a0 read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                C2329k c2329k = null;
                String str = null;
                Date date = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    try {
                        if (currentName.equals("copy_ref")) {
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        } else if (currentName.equals(ClientCookie.EXPIRES_ATTR)) {
                            date = JsonDateReader.Dropbox.readField(jsonParser, currentName, date);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"copy_ref\"", expectObjectStart);
                }
                if (date != null) {
                    return new C2318a0(str, date, c2329k);
                }
                throw new JsonReadException("missing field \"expires\"", expectObjectStart);
            }
        }

        public /* synthetic */ C2318a0(String str, Date date, C2329k c2329k) {
            this(str, date);
        }

        public C2318a0(String str, Date date) {
            this.f16666a = str;
            this.f16667b = date;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$b */
    /* loaded from: classes4.dex */
    public static class C2319b extends JsonReader<String> {
        @Override // com.dropbox.core.json.JsonReader
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(JsonParser jsonParser) throws IOException, JsonReadException {
            JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
            String str = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                try {
                    if (currentName.equals("cursor")) {
                        str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                    } else {
                        JsonReader.skipValue(jsonParser);
                    }
                } catch (JsonReadException e) {
                    throw e.addFieldContext(currentName);
                }
            }
            JsonReader.expectObjectEnd(jsonParser);
            if (str != null) {
                return str;
            }
            throw new JsonReadException("missing field \"cursor\"", expectObjectStart);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$b0 */
    /* loaded from: classes4.dex */
    public static final class C2320b0 extends Uploader {

        /* renamed from: a */
        public HttpRequestor.Uploader f16668a;

        /* renamed from: b */
        public final long f16669b;

        /* renamed from: c */
        public final CountingOutputStream f16670c;

        /* renamed from: com.dropbox.core.v1.DbxClientV1$b0$a */
        /* loaded from: classes4.dex */
        public class a extends DbxRequestUtil.ResponseHandler<DbxEntry.File> {

            /* renamed from: a */
            public final /* synthetic */ long f16671a;

            public a(long j) {
                this.f16671a = j;
            }

            @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public DbxEntry.File handle(HttpRequestor.Response response) throws DbxException {
                if (response.getStatusCode() != 200) {
                    throw DbxRequestUtil.unexpectedStatus(response);
                }
                DbxEntry.File file = (DbxEntry.File) DbxRequestUtil.readJsonFromResponse(DbxEntry.File.Reader, response);
                if (file.numBytes == this.f16671a) {
                    return file;
                }
                throw new BadResponseException(DbxRequestUtil.getRequestId(response), "we uploaded " + this.f16671a + ", but server returned metadata entry with file size " + file.numBytes);
            }
        }

        public C2320b0(HttpRequestor.Uploader uploader, long j) {
            if (j < 0) {
                throw new IllegalArgumentException("'numBytes' must be greater than or equal to 0");
            }
            this.f16668a = uploader;
            this.f16669b = j;
            this.f16670c = new CountingOutputStream(uploader.getBody());
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public void abort() {
            HttpRequestor.Uploader uploader = this.f16668a;
            if (uploader == null) {
                throw new IllegalStateException("already called 'finish', 'abort', or 'close'");
            }
            this.f16668a = null;
            uploader.abort();
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public void close() {
            if (this.f16668a == null) {
                return;
            }
            abort();
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public DbxEntry.File finish() throws DbxException {
            HttpRequestor.Uploader uploader = this.f16668a;
            if (uploader == null) {
                throw new IllegalStateException("already called 'finish', 'abort', or 'close'");
            }
            this.f16668a = null;
            try {
                try {
                    long bytesWritten = this.f16670c.getBytesWritten();
                    if (this.f16669b == bytesWritten) {
                        HttpRequestor.Response finish = uploader.finish();
                        uploader.close();
                        return (DbxEntry.File) DbxRequestUtil.finishResponse(finish, new a(bytesWritten));
                    }
                    uploader.abort();
                    throw new IllegalStateException("You said you were going to upload " + this.f16669b + " bytes, but you wrote " + bytesWritten + " bytes to the Uploader's 'body' stream.");
                } catch (IOException e) {
                    throw new NetworkIOException(e);
                }
            } catch (Throwable th) {
                uploader.close();
                throw th;
            }
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public OutputStream getBody() {
            return this.f16670c;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$c */
    /* loaded from: classes4.dex */
    public class C2321c extends DbxRequestUtil.ResponseHandler<DbxLongpollDeltaResult> {
        public C2321c() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxLongpollDeltaResult handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (DbxLongpollDeltaResult) DbxRequestUtil.readJsonFromResponse(DbxLongpollDeltaResult.Reader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$d */
    /* loaded from: classes4.dex */
    public class C2322d extends DbxRequestUtil.ResponseHandler<List<DbxEntry.File>> {
        public C2322d() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<DbxEntry.File> handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() != 200) {
                throw DbxRequestUtil.unexpectedStatus(response);
            }
            return (List) DbxRequestUtil.readJsonFromResponse(JsonArrayReader.m10073mk(DbxEntry.File.ReaderMaybeDeleted, Collector.NullSkipper.m10121mk(new Collector.ArrayListCollector())), response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$e */
    /* loaded from: classes4.dex */
    public class C2323e extends DbxRequestUtil.ResponseHandler<DbxEntry.File> {
        public C2323e() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxEntry.File handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 404) {
                return null;
            }
            if (response.getStatusCode() == 200) {
                return (DbxEntry.File) DbxRequestUtil.readJsonFromResponse(DbxEntry.File.Reader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$f */
    /* loaded from: classes4.dex */
    public class C2324f extends DbxRequestUtil.ResponseHandler<List<DbxEntry>> {
        public C2324f() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<DbxEntry> handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (List) DbxRequestUtil.readJsonFromResponse(JsonArrayReader.m10072mk(DbxEntry.Reader), response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$g */
    /* loaded from: classes4.dex */
    public class C2325g extends DbxRequestUtil.ResponseHandler<String> {
        public C2325g() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 404) {
                return null;
            }
            if (response.getStatusCode() == 200) {
                return ((DbxUrlWithExpiration) DbxRequestUtil.readJsonFromResponse(DbxUrlWithExpiration.Reader, response)).url;
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$h */
    /* loaded from: classes4.dex */
    public class C2326h extends DbxRequestUtil.ResponseHandler<DbxUrlWithExpiration> {
        public C2326h() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxUrlWithExpiration handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 404) {
                return null;
            }
            if (response.getStatusCode() == 200) {
                return (DbxUrlWithExpiration) DbxRequestUtil.readJsonFromResponse(DbxUrlWithExpiration.Reader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$i */
    /* loaded from: classes4.dex */
    public class C2327i extends DbxRequestUtil.ResponseHandler<String> {
        public C2327i() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 404) {
                return null;
            }
            if (response.getStatusCode() == 200) {
                return ((C2318a0) DbxRequestUtil.readJsonFromResponse(C2318a0.f16665c, response)).f16666a;
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$j */
    /* loaded from: classes4.dex */
    public class C2328j extends DbxRequestUtil.ResponseHandler<DbxEntry> {
        public C2328j() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxEntry handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 403) {
                return null;
            }
            if (response.getStatusCode() != 200) {
                throw DbxRequestUtil.unexpectedStatus(response);
            }
            DbxEntry.WithChildren withChildren = (DbxEntry.WithChildren) DbxRequestUtil.readJsonFromResponse(DbxEntry.WithChildren.Reader, response);
            if (withChildren == null) {
                return null;
            }
            return withChildren.entry;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$k */
    /* loaded from: classes4.dex */
    public class C2329k extends DbxRequestUtil.ResponseHandler<DbxEntry> {
        public C2329k() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxEntry handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 404) {
                return null;
            }
            if (response.getStatusCode() == 200) {
                return (DbxEntry) DbxRequestUtil.readJsonFromResponse(DbxEntry.ReaderMaybeDeleted, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$l */
    /* loaded from: classes4.dex */
    public class C2330l extends DbxRequestUtil.ResponseHandler<DbxEntry> {
        public C2330l() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxEntry handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() != 200) {
                throw DbxRequestUtil.unexpectedStatus(response);
            }
            DbxEntry.WithChildren withChildren = (DbxEntry.WithChildren) DbxRequestUtil.readJsonFromResponse(DbxEntry.WithChildren.Reader, response);
            if (withChildren == null) {
                return null;
            }
            return withChildren.entry;
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$m */
    /* loaded from: classes4.dex */
    public class C2331m extends DbxRequestUtil.ResponseHandler<DbxEntry.Folder> {
        public C2331m() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxEntry.Folder handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 403) {
                return null;
            }
            if (response.getStatusCode() == 200) {
                return (DbxEntry.Folder) DbxRequestUtil.readJsonFromResponse(DbxEntry.Folder.Reader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$n */
    /* loaded from: classes4.dex */
    public class C2332n extends DbxRequestUtil.ResponseHandler<Void> {
        public C2332n() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return null;
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$o */
    /* loaded from: classes4.dex */
    public class C2333o extends DbxRequestUtil.ResponseHandler<DbxEntry> {
        public C2333o() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxEntry handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 403) {
                return null;
            }
            if (response.getStatusCode() != 200) {
                throw DbxRequestUtil.unexpectedStatus(response);
            }
            DbxEntry.WithChildren withChildren = (DbxEntry.WithChildren) DbxRequestUtil.readJsonFromResponse(DbxEntry.WithChildren.Reader, response);
            if (withChildren == null) {
                return null;
            }
            return withChildren.entry;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.dropbox.core.v1.DbxClientV1$p */
    /* loaded from: classes4.dex */
    public class C2334p<T> extends DbxRequestUtil.ResponseHandler<T> {

        /* renamed from: a */
        public final /* synthetic */ JsonReader f16686a;

        public C2334p(JsonReader jsonReader) {
            this.f16686a = jsonReader;
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        public T handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 404) {
                return null;
            }
            if (response.getStatusCode() == 200) {
                return (T) DbxRequestUtil.readJsonFromResponse(this.f16686a, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.dropbox.core.v1.DbxClientV1$q */
    /* loaded from: classes4.dex */
    public class C2335q<T> extends DbxRequestUtil.ResponseHandler<Maybe<T>> {

        /* renamed from: a */
        public final /* synthetic */ JsonReader f16688a;

        public C2335q(JsonReader jsonReader) {
            this.f16688a = jsonReader;
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Maybe<T> handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 404) {
                return Maybe.Just(null);
            }
            if (response.getStatusCode() == 304) {
                return Maybe.Nothing();
            }
            if (response.getStatusCode() == 200) {
                return Maybe.Just(DbxRequestUtil.readJsonFromResponse(this.f16688a, response));
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$r */
    /* loaded from: classes4.dex */
    public class C2336r extends DbxRequestUtil.ResponseHandler<DbxAccountInfo> {
        public C2336r() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxAccountInfo handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (DbxAccountInfo) DbxRequestUtil.readJsonFromResponse(DbxAccountInfo.Reader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$s */
    /* loaded from: classes4.dex */
    public class C2337s extends DbxRequestUtil.ResponseHandler<Void> {
        public C2337s() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return null;
            }
            throw new BadResponseException(DbxRequestUtil.getRequestId(response), "unexpected response code: " + response.getStatusCode());
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$t */
    /* loaded from: classes4.dex */
    public class C2338t extends DbxRequestUtil.RequestMaker<Downloader, DbxException> {

        /* renamed from: a */
        public final /* synthetic */ String f16692a;

        /* renamed from: b */
        public final /* synthetic */ String f16693b;

        /* renamed from: c */
        public final /* synthetic */ String[] f16694c;

        public C2338t(String str, String str2, String[] strArr) {
            this.f16692a = str;
            this.f16693b = str2;
            this.f16694c = strArr;
        }

        @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Downloader run() throws DbxException {
            HttpRequestor.Response startGet = DbxRequestUtil.startGet(DbxClientV1.this.f16661a, DbxClientV1.this.f16662b, DbxClientV1.USER_AGENT_ID, this.f16692a, this.f16693b, this.f16694c, null);
            try {
                if (startGet.getStatusCode() == 404) {
                    try {
                        return null;
                    } catch (IOException unused) {
                        return null;
                    }
                }
                if (startGet.getStatusCode() != 200) {
                    throw DbxRequestUtil.unexpectedStatus(startGet);
                }
                try {
                    return new Downloader(DbxEntry.File.Reader.readFully(DbxRequestUtil.getFirstHeader(startGet, "x-dropbox-metadata")), startGet.getBody());
                } catch (JsonReadException e) {
                    throw new BadResponseException(DbxRequestUtil.getRequestId(startGet), "Bad JSON in X-Dropbox-Metadata header: " + e.getMessage(), e);
                }
            } finally {
                try {
                    startGet.getBody().close();
                } catch (IOException unused2) {
                }
            }
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$u */
    /* loaded from: classes4.dex */
    public class C2339u extends DbxRequestUtil.ResponseHandler<DbxEntry.File> {
        public C2339u() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxEntry.File handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (DbxEntry.File) DbxRequestUtil.readJsonFromResponse(DbxEntry.File.Reader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$v */
    /* loaded from: classes4.dex */
    public class C2340v extends DbxRequestUtil.ResponseHandler<DbxDelta<DbxEntry>> {
        public C2340v() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxDelta<DbxEntry> handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (DbxDelta) DbxRequestUtil.readJsonFromResponse(new DbxDelta.Reader(DbxEntry.Reader), response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [C] */
    /* renamed from: com.dropbox.core.v1.DbxClientV1$w */
    /* loaded from: classes4.dex */
    public class C2341w<C> extends DbxRequestUtil.ResponseHandler<DbxDeltaC<C>> {

        /* renamed from: a */
        public final /* synthetic */ Collector f16698a;

        public C2341w(Collector collector) {
            this.f16698a = collector;
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxDeltaC<C> handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (DbxDeltaC) DbxRequestUtil.readJsonFromResponse(new DbxDeltaC.Reader(DbxEntry.Reader, this.f16698a), response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$x */
    /* loaded from: classes4.dex */
    public final class C2342x extends OutputStream {

        /* renamed from: j */
        public static final /* synthetic */ boolean f16700j = false;

        /* renamed from: e */
        public final byte[] f16701e;

        /* renamed from: f */
        public int f16702f;

        /* renamed from: g */
        public String f16703g;

        /* renamed from: h */
        public long f16704h;

        /* renamed from: com.dropbox.core.v1.DbxClientV1$x$a */
        /* loaded from: classes4.dex */
        public class a extends DbxRequestUtil.RequestMaker<String, RuntimeException> {
            public a() {
            }

            @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public String run() throws DbxException {
                C2342x c2342x = C2342x.this;
                return DbxClientV1.this.chunkedUploadFirst(c2342x.f16701e, 0, C2342x.this.f16702f);
            }
        }

        /* renamed from: com.dropbox.core.v1.DbxClientV1$x$b */
        /* loaded from: classes4.dex */
        public class b extends DbxRequestUtil.RequestMaker<Long, RuntimeException> {

            /* renamed from: a */
            public final /* synthetic */ String f16707a;

            /* renamed from: b */
            public final /* synthetic */ int f16708b;

            public b(String str, int i) {
                this.f16707a = str;
                this.f16708b = i;
            }

            @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Long run() throws DbxException {
                C2342x c2342x = C2342x.this;
                return Long.valueOf(DbxClientV1.this.chunkedUploadAppend(this.f16707a, c2342x.f16704h, C2342x.this.f16701e, this.f16708b, C2342x.this.f16702f - this.f16708b));
            }
        }

        public /* synthetic */ C2342x(DbxClientV1 dbxClientV1, int i, C2329k c2329k) {
            this(i);
        }

        /* renamed from: M */
        public final void m10191M() throws DbxException {
            long j;
            if (this.f16702f == 0) {
                return;
            }
            String str = this.f16703g;
            if (str == null) {
                this.f16703g = (String) DbxRequestUtil.runAndRetry(3, new a());
                this.f16704h = this.f16702f;
            } else {
                int i = 0;
                while (true) {
                    long longValue = ((Long) DbxRequestUtil.runAndRetry(3, new b(str, i))).longValue();
                    long j2 = this.f16704h;
                    j = this.f16702f + j2;
                    if (longValue == -1) {
                        break;
                    } else {
                        i += (int) (longValue - j2);
                    }
                }
                this.f16704h = j;
            }
            this.f16702f = 0;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        /* renamed from: e0 */
        public final void m10192e0() throws DbxException {
            if (this.f16702f == this.f16701e.length) {
                m10191M();
            }
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            byte[] bArr = this.f16701e;
            int i2 = this.f16702f;
            this.f16702f = i2 + 1;
            bArr[i2] = (byte) i;
            try {
                m10192e0();
            } catch (DbxException e) {
                throw new IODbxException(e);
            }
        }

        public C2342x(int i) {
            this.f16702f = 0;
            this.f16701e = new byte[i];
            this.f16702f = 0;
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            int i3 = i2 + i;
            while (i < i3) {
                int min = Math.min(i3 - i, this.f16701e.length - this.f16702f);
                System.arraycopy(bArr, i, this.f16701e, this.f16702f, min);
                this.f16702f += min;
                i += min;
                try {
                    m10192e0();
                } catch (DbxException e) {
                    throw new IODbxException(e);
                }
            }
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$y */
    /* loaded from: classes4.dex */
    public static final class C2343y extends Dumpable {

        /* renamed from: g */
        public static final JsonReader<C2343y> f16710g = new a();

        /* renamed from: e */
        public final String f16711e;

        /* renamed from: f */
        public final long f16712f;

        /* renamed from: com.dropbox.core.v1.DbxClientV1$y$a */
        /* loaded from: classes4.dex */
        public static class a extends JsonReader<C2343y> {
            @Override // com.dropbox.core.json.JsonReader
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public C2343y read(JsonParser jsonParser) throws IOException, JsonReadException {
                JsonLocation expectObjectStart = JsonReader.expectObjectStart(jsonParser);
                String str = null;
                long j = -1;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    try {
                        if (currentName.equals(Constants.ALI_YUN_UPLOAD_ID)) {
                            str = JsonReader.StringReader.readField(jsonParser, currentName, str);
                        } else if (currentName.equals(TypedValues.CycleType.S_WAVE_OFFSET)) {
                            j = JsonReader.readUnsignedLongField(jsonParser, currentName, j);
                        } else {
                            JsonReader.skipValue(jsonParser);
                        }
                    } catch (JsonReadException e) {
                        throw e.addFieldContext(currentName);
                    }
                }
                JsonReader.expectObjectEnd(jsonParser);
                if (str == null) {
                    throw new JsonReadException("missing field \"upload_id\"", expectObjectStart);
                }
                if (j != -1) {
                    return new C2343y(str, j);
                }
                throw new JsonReadException("missing field \"offset\"", expectObjectStart);
            }
        }

        public C2343y(String str, long j) {
            if (str == null) {
                throw new IllegalArgumentException("'uploadId' can't be null");
            }
            if (str.length() == 0) {
                throw new IllegalArgumentException("'uploadId' can't be empty");
            }
            if (j < 0) {
                throw new IllegalArgumentException("'offset' can't be negative");
            }
            this.f16711e = str;
            this.f16712f = j;
        }

        @Override // com.dropbox.core.util.Dumpable
        public void dumpFields(DumpWriter dumpWriter) {
            dumpWriter.mo10123f(RequestParameters.UPLOAD_ID).m10131v(this.f16711e);
            dumpWriter.mo10123f(TypedValues.CycleType.S_WAVE_OFFSET).m10127v(this.f16712f);
        }
    }

    /* renamed from: com.dropbox.core.v1.DbxClientV1$z */
    /* loaded from: classes4.dex */
    public final class C2344z extends Uploader {

        /* renamed from: a */
        public final String f16713a;

        /* renamed from: b */
        public final DbxWriteMode f16714b;

        /* renamed from: c */
        public final long f16715c;

        /* renamed from: d */
        public final C2342x f16716d;

        /* renamed from: com.dropbox.core.v1.DbxClientV1$z$a */
        /* loaded from: classes4.dex */
        public class a extends DbxRequestUtil.RequestMaker<DbxEntry.File, RuntimeException> {

            /* renamed from: a */
            public final /* synthetic */ String f16718a;

            public a(String str) {
                this.f16718a = str;
            }

            @Override // com.dropbox.core.DbxRequestUtil.RequestMaker
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public DbxEntry.File run() throws DbxException {
                C2344z c2344z = C2344z.this;
                return DbxClientV1.this.chunkedUploadFinish(c2344z.f16713a, C2344z.this.f16714b, this.f16718a);
            }
        }

        public /* synthetic */ C2344z(DbxClientV1 dbxClientV1, String str, DbxWriteMode dbxWriteMode, long j, C2342x c2342x, C2329k c2329k) {
            this(str, dbxWriteMode, j, c2342x);
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public void abort() {
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public void close() {
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public DbxEntry.File finish() throws DbxException {
            if (this.f16716d.f16703g == null) {
                return DbxClientV1.this.uploadFileSingle(this.f16713a, this.f16714b, this.f16716d.f16702f, new DbxStreamWriter.ByteArrayCopier(this.f16716d.f16701e, 0, this.f16716d.f16702f));
            }
            String str = this.f16716d.f16703g;
            this.f16716d.m10191M();
            long j = this.f16715c;
            if (j == -1 || j == this.f16716d.f16704h) {
                return (DbxEntry.File) DbxRequestUtil.runAndRetry(3, new a(str));
            }
            throw new IllegalStateException("'numBytes' is " + this.f16715c + " but you wrote " + this.f16716d.f16704h + " bytes");
        }

        @Override // com.dropbox.core.v1.DbxClientV1.Uploader
        public OutputStream getBody() {
            return this.f16716d;
        }

        public C2344z(String str, DbxWriteMode dbxWriteMode, long j, C2342x c2342x) {
            this.f16713a = str;
            this.f16714b = dbxWriteMode;
            this.f16715c = j;
            this.f16716d = c2342x;
        }
    }

    public DbxClientV1(DbxRequestConfig dbxRequestConfig, String str) {
        this(dbxRequestConfig, str, DbxHost.DEFAULT);
    }

    /* renamed from: a */
    public final DbxDelta<DbxEntry> m10151a(String str, String str2, boolean z) throws DbxException {
        String api = this.f16663c.getApi();
        String[] strArr = new String[6];
        strArr[0] = "cursor";
        strArr[1] = str;
        strArr[2] = "path_prefix";
        strArr[3] = str2;
        strArr[4] = "include_media_info";
        strArr[5] = z ? "true" : null;
        return (DbxDelta) doPost(api, "1/delta", strArr, null, new C2340v());
    }

    /* renamed from: b */
    public final <C> DbxDeltaC<C> m10152b(Collector<DbxDeltaC.Entry<DbxEntry>, C> collector, String str, String str2, boolean z) throws DbxException {
        String api = this.f16663c.getApi();
        String[] strArr = new String[6];
        strArr[0] = "cursor";
        strArr[1] = str;
        strArr[2] = "path_prefix";
        strArr[3] = str2;
        strArr[4] = "include_media_info";
        strArr[5] = z ? "true" : null;
        return (DbxDeltaC) doPost(api, "1/delta", strArr, null, new C2341w(collector));
    }

    /* renamed from: c */
    public final String m10153c(String str, boolean z) throws DbxException {
        String api = this.f16663c.getApi();
        String[] strArr = new String[4];
        strArr[0] = "path_prefix";
        strArr[1] = str;
        strArr[2] = "include_media_info";
        strArr[3] = z ? "true" : null;
        return (String) doPost(api, "1/delta/latest_cursor", strArr, null, new C2317a());
    }

    public long chunkedUploadAppend(String str, long j, byte[] bArr) throws DbxException {
        return chunkedUploadAppend(str, j, bArr, 0, bArr.length);
    }

    public DbxEntry.File chunkedUploadFinish(String str, DbxWriteMode dbxWriteMode, String str2) throws DbxException {
        DbxPathV1.checkArgNonRoot("targetPath", str);
        return (DbxEntry.File) doPost(this.f16663c.getContent(), "1/commit_chunked_upload/auto" + str, (String[]) LangUtil.arrayConcat(new String[]{Constants.ALI_YUN_UPLOAD_ID, str2}, dbxWriteMode.f16737a), null, new C2339u());
    }

    public String chunkedUploadFirst(byte[] bArr) throws DbxException {
        return chunkedUploadFirst(bArr, 0, bArr.length);
    }

    public DbxEntry copy(String str, String str2) throws DbxException {
        DbxPathV1.checkArg("fromPath", str);
        DbxPathV1.checkArgNonRoot("toPath", str2);
        return (DbxEntry) doPost(this.f16663c.getApi(), "1/fileops/copy", new String[]{"root", "auto", "from_path", str, "to_path", str2}, null, new C2328j());
    }

    public DbxEntry copyFromCopyRef(String str, String str2) throws DbxException {
        if (str == null) {
            throw new IllegalArgumentException("'copyRef' can't be null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("'copyRef' can't be empty");
        }
        DbxPathV1.checkArgNonRoot("toPath", str2);
        return (DbxEntry) doPost(this.f16663c.getApi(), "1/fileops/copy", new String[]{"root", "auto", "from_copy_ref", str, "to_path", str2}, null, new C2330l());
    }

    public String createCopyRef(String str) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        return (String) doPost(this.f16663c.getApi(), "1/copy_ref/auto" + str, null, null, new C2327i());
    }

    public DbxEntry.Folder createFolder(String str) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        return (DbxEntry.Folder) doPost(this.f16663c.getApi(), "1/fileops/create_folder", new String[]{"root", "auto", "path", str}, null, new C2331m());
    }

    public String createShareableUrl(String str) throws DbxException {
        DbxPathV1.checkArg("path", str);
        return (String) doPost(this.f16663c.getApi(), "1/shares/auto" + str, new String[]{"short_url", "false"}, null, new C2325g());
    }

    public DbxUrlWithExpiration createTemporaryDirectUrl(String str) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        return (DbxUrlWithExpiration) doPost(this.f16663c.getApi(), "1/media/auto" + str, null, null, new C2326h());
    }

    public void delete(String str) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        doPost(this.f16663c.getApi(), "1/fileops/delete", new String[]{"root", "auto", "path", str}, null, new C2332n());
    }

    public void disableAccessToken() throws DbxException {
        doPost(this.f16663c.getApi(), "1/disable_access_token", null, null, new C2337s());
    }

    public <T> T doPost(String str, String str2, String[] strArr, ArrayList<HttpRequestor.Header> arrayList, DbxRequestUtil.ResponseHandler<T> responseHandler) throws DbxException {
        return (T) DbxRequestUtil.doPost(this.f16661a, this.f16662b, USER_AGENT_ID, str, str2, strArr, arrayList, responseHandler);
    }

    public <E extends Throwable> DbxEntry.File finishUploadFile(Uploader uploader, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        NoThrowOutputStream noThrowOutputStream = new NoThrowOutputStream(uploader.getBody());
        try {
            try {
                dbxStreamWriter.write(noThrowOutputStream);
                return uploader.finish();
            } catch (NoThrowOutputStream.HiddenException e) {
                if (e.owner == noThrowOutputStream) {
                    throw new NetworkIOException(e.getCause());
                }
                throw e;
            }
        } finally {
            uploader.close();
        }
    }

    /* renamed from: g */
    public final C2343y m10154g(HttpRequestor.Response response) throws DbxException {
        if (response.getStatusCode() != 400) {
            return null;
        }
        byte[] loadErrorBody = DbxRequestUtil.loadErrorBody(response);
        try {
            return C2343y.f16710g.readFully(loadErrorBody);
        } catch (JsonReadException unused) {
            String requestId = DbxRequestUtil.getRequestId(response);
            throw new BadRequestException(requestId, DbxRequestUtil.parseErrorBody(requestId, 400, loadErrorBody));
        }
    }

    public String getAccessToken() {
        return this.f16662b;
    }

    public DbxAccountInfo getAccountInfo() throws DbxException {
        return (DbxAccountInfo) m10157j(this.f16663c.getApi(), "1/account/info", null, null, new C2336r());
    }

    public DbxDelta<DbxEntry> getDelta(String str, boolean z) throws DbxException {
        return m10151a(str, null, z);
    }

    public <C> DbxDeltaC<C> getDeltaC(Collector<DbxDeltaC.Entry<DbxEntry>, C> collector, String str, boolean z) throws DbxException {
        return m10152b(collector, str, null, z);
    }

    public <C> DbxDeltaC<C> getDeltaCWithPathPrefix(Collector<DbxDeltaC.Entry<DbxEntry>, C> collector, String str, String str2, boolean z) throws DbxException {
        DbxPathV1.checkArg("path", str2);
        return m10152b(collector, str, str2, z);
    }

    public String getDeltaLatestCursor(boolean z) throws DbxException {
        return m10153c(null, z);
    }

    public String getDeltaLatestCursorWithPathPrefix(String str, boolean z) throws DbxException {
        DbxPathV1.checkArg("path", str);
        return m10153c(str, z);
    }

    public DbxDelta<DbxEntry> getDeltaWithPathPrefix(String str, String str2, boolean z) throws DbxException {
        DbxPathV1.checkArg("path", str2);
        return m10151a(str, str2, z);
    }

    public DbxEntry.File getFile(String str, String str2, OutputStream outputStream) throws DbxException, IOException {
        Downloader startGetFile = startGetFile(str, str2);
        if (startGetFile == null) {
            return null;
        }
        return startGetFile.m10161a(outputStream);
    }

    public DbxHost getHost() {
        return this.f16663c;
    }

    public DbxLongpollDeltaResult getLongpollDelta(String str, int i) throws DbxException {
        if (str == null) {
            throw new IllegalArgumentException("'cursor' can't be null");
        }
        if (i < 30 || i > 480) {
            throw new IllegalArgumentException("'timeout' must be >=30 and <= 480");
        }
        return (DbxLongpollDeltaResult) DbxRequestUtil.doGet(getRequestConfig(), getAccessToken(), USER_AGENT_ID, this.f16663c.getNotify(), "1/longpoll_delta", new String[]{"cursor", str, "timeout", Integer.toString(i)}, null, new C2321c());
    }

    public DbxEntry getMetadata(String str, boolean z) throws DbxException {
        DbxPathV1.checkArg("path", str);
        String api = this.f16663c.getApi();
        String str2 = "1/metadata/auto" + str;
        String[] strArr = new String[4];
        strArr[0] = "list";
        strArr[1] = "false";
        strArr[2] = "include_media_info";
        strArr[3] = z ? "true" : null;
        return (DbxEntry) m10157j(api, str2, strArr, null, new C2329k());
    }

    public DbxEntry.WithChildren getMetadataWithChildren(String str, boolean z) throws DbxException {
        return (DbxEntry.WithChildren) m10158k(str, z, DbxEntry.WithChildren.ReaderMaybeDeleted);
    }

    public <C> DbxEntry.WithChildrenC<C> getMetadataWithChildrenC(String str, boolean z, Collector<DbxEntry, ? extends C> collector) throws DbxException {
        return (DbxEntry.WithChildrenC) m10158k(str, z, new DbxEntry.WithChildrenC.ReaderMaybeDeleted(collector));
    }

    public Maybe<DbxEntry.WithChildren> getMetadataWithChildrenIfChanged(String str, boolean z, String str2) throws DbxException {
        return m10159l(str, z, str2, DbxEntry.WithChildren.ReaderMaybeDeleted);
    }

    public <C> Maybe<DbxEntry.WithChildrenC<C>> getMetadataWithChildrenIfChangedC(String str, boolean z, String str2, Collector<DbxEntry, ? extends C> collector) throws DbxException {
        return m10159l(str, z, str2, new DbxEntry.WithChildrenC.ReaderMaybeDeleted(collector));
    }

    public DbxRequestConfig getRequestConfig() {
        return this.f16661a;
    }

    public List<DbxEntry.File> getRevisions(String str) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        return (List) m10157j(this.f16663c.getApi(), "1/revisions/auto" + str, null, null, new C2322d());
    }

    public DbxEntry.File getThumbnail(DbxThumbnailSize dbxThumbnailSize, DbxThumbnailFormat dbxThumbnailFormat, String str, String str2, OutputStream outputStream) throws DbxException, IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("'target' can't be null");
        }
        Downloader startGetThumbnail = startGetThumbnail(dbxThumbnailSize, dbxThumbnailFormat, str, str2);
        if (startGetThumbnail == null) {
            return null;
        }
        return startGetThumbnail.m10161a(outputStream);
    }

    /* renamed from: h */
    public final <E extends Throwable> HttpRequestor.Response m10155h(String[] strArr, long j, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HttpRequestor.Header("Content-Type", "application/octet-stream"));
        arrayList.add(new HttpRequestor.Header("Content-Length", Long.toString(j)));
        HttpRequestor.Uploader startPut = DbxRequestUtil.startPut(this.f16661a, this.f16662b, USER_AGENT_ID, this.f16663c.getContent(), "1/chunked_upload", strArr, arrayList);
        try {
            NoThrowOutputStream noThrowOutputStream = new NoThrowOutputStream(startPut.getBody());
            try {
                dbxStreamWriter.write(noThrowOutputStream);
                long bytesWritten = noThrowOutputStream.getBytesWritten();
                if (bytesWritten == j) {
                    try {
                        return startPut.finish();
                    } catch (IOException e) {
                        throw new NetworkIOException(e);
                    }
                }
                throw new IllegalStateException("'chunkSize' is " + j + ", but 'writer' only wrote " + bytesWritten + " bytes");
            } catch (NoThrowOutputStream.HiddenException e2) {
                if (e2.owner == noThrowOutputStream) {
                    throw new NetworkIOException(e2.getCause());
                }
                throw e2;
            }
        } finally {
            startPut.close();
        }
    }

    /* renamed from: i */
    public final C2343y m10156i(HttpRequestor.Response response) throws BadResponseException, NetworkIOException {
        return (C2343y) DbxRequestUtil.readJsonFromResponse(C2343y.f16710g, response);
    }

    /* renamed from: j */
    public final <T> T m10157j(String str, String str2, String[] strArr, ArrayList<HttpRequestor.Header> arrayList, DbxRequestUtil.ResponseHandler<T> responseHandler) throws DbxException {
        return (T) DbxRequestUtil.doGet(this.f16661a, this.f16662b, USER_AGENT_ID, str, str2, strArr, arrayList, responseHandler);
    }

    /* renamed from: k */
    public final <T> T m10158k(String str, boolean z, JsonReader<? extends T> jsonReader) throws DbxException {
        DbxPathV1.checkArg("path", str);
        String api = this.f16663c.getApi();
        String str2 = "1/metadata/auto" + str;
        String[] strArr = new String[6];
        strArr[0] = "list";
        strArr[1] = "true";
        strArr[2] = "file_limit";
        strArr[3] = "25000";
        strArr[4] = "include_media_info";
        strArr[5] = z ? "true" : null;
        return (T) m10157j(api, str2, strArr, null, new C2334p(jsonReader));
    }

    /* renamed from: l */
    public final <T> Maybe<T> m10159l(String str, boolean z, String str2, JsonReader<T> jsonReader) throws DbxException {
        if (str2 == null) {
            throw new IllegalArgumentException("'previousFolderHash' must not be null");
        }
        if (str2.length() == 0) {
            throw new IllegalArgumentException("'previousFolderHash' must not be empty");
        }
        DbxPathV1.checkArg("path", str);
        String api = this.f16663c.getApi();
        String str3 = "1/metadata/auto" + str;
        String[] strArr = new String[8];
        strArr[0] = "list";
        strArr[1] = "true";
        strArr[2] = "file_limit";
        strArr[3] = "25000";
        strArr[4] = "hash";
        strArr[5] = str2;
        strArr[6] = "include_media_info";
        strArr[7] = z ? "true" : null;
        return (Maybe) m10157j(api, str3, strArr, null, new C2335q(jsonReader));
    }

    /* renamed from: m */
    public final Downloader m10160m(String str, String[] strArr) throws DbxException {
        return (Downloader) DbxRequestUtil.runAndRetry(this.f16661a.getMaxRetries(), new C2338t(this.f16663c.getContent(), str, strArr));
    }

    public DbxEntry move(String str, String str2) throws DbxException {
        DbxPathV1.checkArgNonRoot("fromPath", str);
        DbxPathV1.checkArgNonRoot("toPath", str2);
        return (DbxEntry) doPost(this.f16663c.getApi(), "1/fileops/move", new String[]{"root", "auto", "from_path", str, "to_path", str2}, null, new C2333o());
    }

    public DbxEntry.File restoreFile(String str, String str2) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        if (str2 == null) {
            throw new IllegalArgumentException("'rev' can't be null");
        }
        if (str2.length() == 0) {
            throw new IllegalArgumentException("'rev' can't be empty");
        }
        return (DbxEntry.File) m10157j(this.f16663c.getApi(), "1/restore/auto" + str, new String[]{"rev", str2}, null, new C2323e());
    }

    public List<DbxEntry> searchFileAndFolderNames(String str, String str2) throws DbxException {
        DbxPathV1.checkArg("basePath", str);
        if (str2 == null) {
            throw new IllegalArgumentException("'query' can't be null");
        }
        if (str2.length() == 0) {
            throw new IllegalArgumentException("'query' can't be empty");
        }
        return (List) doPost(this.f16663c.getApi(), "1/search/auto" + str, new String[]{SearchIntents.EXTRA_QUERY, str2}, null, new C2324f());
    }

    public Downloader startGetFile(String str, String str2) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        return m10160m("1/files/auto" + str, new String[]{"rev", str2});
    }

    public Downloader startGetThumbnail(DbxThumbnailSize dbxThumbnailSize, DbxThumbnailFormat dbxThumbnailFormat, String str, String str2) throws DbxException {
        DbxPathV1.checkArgNonRoot("path", str);
        if (dbxThumbnailSize == null) {
            throw new IllegalArgumentException("'size' can't be null");
        }
        if (dbxThumbnailFormat == null) {
            throw new IllegalArgumentException("'format' can't be null");
        }
        return m10160m("1/thumbnails/auto" + str, new String[]{"size", dbxThumbnailSize.ident, com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_FORMAT, dbxThumbnailFormat.ident, "rev", str2});
    }

    public Uploader startUploadFile(String str, DbxWriteMode dbxWriteMode, long j) throws DbxException {
        if (j >= 0) {
            return j > 8388608 ? startUploadFileChunked(str, dbxWriteMode, j) : startUploadFileSingle(str, dbxWriteMode, j);
        }
        if (j == -1) {
            return startUploadFileChunked(str, dbxWriteMode, j);
        }
        throw new IllegalArgumentException("numBytes must be -1 or greater; given " + j);
    }

    public Uploader startUploadFileChunked(String str, DbxWriteMode dbxWriteMode, long j) {
        return startUploadFileChunked(4194304, str, dbxWriteMode, j);
    }

    public Uploader startUploadFileSingle(String str, DbxWriteMode dbxWriteMode, long j) throws DbxException {
        DbxPathV1.checkArg("targetPath", str);
        if (j < 0) {
            throw new IllegalArgumentException("numBytes must be zero or greater");
        }
        String content = this.f16663c.getContent();
        String str2 = "1/files_put/auto" + str;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HttpRequestor.Header("Content-Type", "application/octet-stream"));
        arrayList.add(new HttpRequestor.Header("Content-Length", Long.toString(j)));
        return new C2320b0(DbxRequestUtil.startPut(this.f16661a, this.f16662b, USER_AGENT_ID, content, str2, dbxWriteMode.f16737a, arrayList), j);
    }

    public DbxEntry.File uploadFile(String str, DbxWriteMode dbxWriteMode, long j, InputStream inputStream) throws DbxException, IOException {
        return uploadFile(str, dbxWriteMode, j, new DbxStreamWriter.InputStreamCopier(inputStream));
    }

    public <E extends Throwable> DbxEntry.File uploadFileChunked(String str, DbxWriteMode dbxWriteMode, long j, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        return finishUploadFile(startUploadFileChunked(str, dbxWriteMode, j), dbxStreamWriter);
    }

    public <E extends Throwable> DbxEntry.File uploadFileSingle(String str, DbxWriteMode dbxWriteMode, long j, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        return finishUploadFile(startUploadFileSingle(str, dbxWriteMode, j), dbxStreamWriter);
    }

    public DbxClientV1(DbxRequestConfig dbxRequestConfig, String str, DbxHost dbxHost) {
        if (dbxRequestConfig == null) {
            throw new IllegalArgumentException("'requestConfig' is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("'accessToken' is null");
        }
        if (dbxHost != null) {
            this.f16661a = dbxRequestConfig;
            this.f16662b = str;
            this.f16663c = dbxHost;
            return;
        }
        throw new IllegalArgumentException("'host' is null");
    }

    public long chunkedUploadAppend(String str, long j, byte[] bArr, int i, int i2) throws DbxException {
        return chunkedUploadAppend(str, j, i2, new DbxStreamWriter.ByteArrayCopier(bArr, i, i2));
    }

    public String chunkedUploadFirst(byte[] bArr, int i, int i2) throws DbxException {
        return chunkedUploadFirst(i2, new DbxStreamWriter.ByteArrayCopier(bArr, i, i2));
    }

    public DbxDelta<DbxEntry> getDelta(String str) throws DbxException {
        return getDelta(str, false);
    }

    public <C> DbxDeltaC<C> getDeltaC(Collector<DbxDeltaC.Entry<DbxEntry>, C> collector, String str) throws DbxException {
        return getDeltaC(collector, str, false);
    }

    public String getDeltaLatestCursor() throws DbxException {
        return m10153c(null, false);
    }

    public DbxEntry.WithChildren getMetadataWithChildren(String str) throws DbxException {
        return getMetadataWithChildren(str, false);
    }

    public <C> DbxEntry.WithChildrenC<C> getMetadataWithChildrenC(String str, Collector<DbxEntry, ? extends C> collector) throws DbxException {
        return getMetadataWithChildrenC(str, false, collector);
    }

    public Maybe<DbxEntry.WithChildren> getMetadataWithChildrenIfChanged(String str, String str2) throws DbxException {
        return getMetadataWithChildrenIfChanged(str, false, str2);
    }

    public <C> Maybe<DbxEntry.WithChildrenC<C>> getMetadataWithChildrenIfChangedC(String str, String str2, Collector<DbxEntry, ? extends C> collector) throws DbxException {
        return getMetadataWithChildrenIfChangedC(str, false, str2, collector);
    }

    public Uploader startUploadFileChunked(int i, String str, DbxWriteMode dbxWriteMode, long j) {
        DbxPathV1.checkArg("targetPath", str);
        if (dbxWriteMode != null) {
            return new C2344z(this, str, dbxWriteMode, j, new C2342x(this, i, null), null);
        }
        throw new IllegalArgumentException("'writeMode' can't be null");
    }

    public <E extends Throwable> DbxEntry.File uploadFile(String str, DbxWriteMode dbxWriteMode, long j, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        return finishUploadFile(startUploadFile(str, dbxWriteMode, j), dbxStreamWriter);
    }

    public <E extends Throwable> long chunkedUploadAppend(String str, long j, long j2, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        if (str != null) {
            if (str.length() == 0) {
                throw new IllegalArgumentException("'uploadId' can't be empty");
            }
            if (j >= 0) {
                HttpRequestor.Response m10155h = m10155h(new String[]{Constants.ALI_YUN_UPLOAD_ID, str, TypedValues.CycleType.S_WAVE_OFFSET, Long.toString(j)}, j2, dbxStreamWriter);
                String requestId = DbxRequestUtil.getRequestId(m10155h);
                try {
                    C2343y m10154g = m10154g(m10155h);
                    long j3 = j2 + j;
                    if (m10154g != null) {
                        if (m10154g.f16711e.equals(str)) {
                            long j4 = m10154g.f16712f;
                            if (j4 == j) {
                                throw new BadResponseException(requestId, "Corrected offset is same as given: " + j);
                            }
                            if (j4 < j) {
                                throw new BadResponseException(requestId, "we were at offset " + j + ", server said " + m10154g.f16712f);
                            }
                            if (j4 <= j3) {
                                return j4;
                            }
                            throw new BadResponseException(requestId, "we were at offset " + j + ", server said " + m10154g.f16712f);
                        }
                        throw new BadResponseException(requestId, "uploadId mismatch: us=" + StringUtil.m10140jq(str) + ", server=" + StringUtil.m10140jq(m10154g.f16711e));
                    }
                    if (m10155h.getStatusCode() == 200) {
                        C2343y m10156i = m10156i(m10155h);
                        if (m10156i.f16712f == j3) {
                            IOUtil.closeInput(m10155h.getBody());
                            return -1L;
                        }
                        throw new BadResponseException(requestId, "Expected offset " + j3 + " bytes, but returned offset is " + m10156i.f16712f);
                    }
                    throw DbxRequestUtil.unexpectedStatus(m10155h);
                } finally {
                    IOUtil.closeInput(m10155h.getBody());
                }
            }
            throw new IllegalArgumentException("'offset' can't be negative");
        }
        throw new IllegalArgumentException("'uploadId' can't be null");
    }

    public <E extends Throwable> String chunkedUploadFirst(int i, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        long j = i;
        HttpRequestor.Response m10155h = m10155h(new String[0], j, dbxStreamWriter);
        try {
            if (m10154g(m10155h) == null) {
                if (m10155h.getStatusCode() != 404) {
                    if (m10155h.getStatusCode() == 200) {
                        C2343y m10156i = m10156i(m10155h);
                        if (m10156i.f16712f == j) {
                            return m10156i.f16711e;
                        }
                        throw new BadResponseException(DbxRequestUtil.getRequestId(m10155h), "Sent " + i + " bytes, but returned offset is " + m10156i.f16712f);
                    }
                    throw DbxRequestUtil.unexpectedStatus(m10155h);
                }
                throw new BadResponseException(DbxRequestUtil.getRequestId(m10155h), "Got a 404, but we didn't send an upload_id");
            }
            throw new BadResponseException(DbxRequestUtil.getRequestId(m10155h), "Got offset correction response on first chunk.");
        } finally {
            IOUtil.closeInput(m10155h.getBody());
        }
    }

    public <C> DbxDeltaC<C> getDeltaCWithPathPrefix(Collector<DbxDeltaC.Entry<DbxEntry>, C> collector, String str, String str2) throws DbxException {
        return getDeltaCWithPathPrefix(collector, str, str2, false);
    }

    public String getDeltaLatestCursorWithPathPrefix(String str) throws DbxException {
        return getDeltaLatestCursorWithPathPrefix(str, false);
    }

    public DbxDelta<DbxEntry> getDeltaWithPathPrefix(String str, String str2) throws DbxException {
        DbxPathV1.checkArg("path", str2);
        return m10151a(str, str2, false);
    }

    public <E extends Throwable> DbxEntry.File uploadFileChunked(int i, String str, DbxWriteMode dbxWriteMode, long j, DbxStreamWriter<E> dbxStreamWriter) throws DbxException, Throwable {
        return finishUploadFile(startUploadFileChunked(i, str, dbxWriteMode, j), dbxStreamWriter);
    }

    public DbxEntry getMetadata(String str) throws DbxException {
        return getMetadata(str, false);
    }
}
