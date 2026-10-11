package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.cct.CCTDestination;
import com.google.android.datatransport.cct.internal.AndroidClientInfo;
import com.google.android.datatransport.cct.internal.BatchedLogRequest;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.LogEvent;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.android.datatransport.cct.internal.LogResponse;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.retries.Function;
import com.google.android.datatransport.runtime.retries.Retries;
import com.google.android.datatransport.runtime.retries.RetryStrategy;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.sunia.HTREnginev2.sod;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes4.dex */
public final class sod implements TransportBackend {

    /* renamed from: A */
    public static final String f84348A = "fingerprint";

    /* renamed from: B */
    public static final String f84349B = "locale";

    /* renamed from: C */
    public static final String f84350C = "country";

    /* renamed from: D */
    public static final String f84351D = "mcc_mnc";

    /* renamed from: E */
    public static final String f84352E = "tz-offset";

    /* renamed from: F */
    public static final String f84353F = "application_build";

    /* renamed from: h */
    public static final String f84354h = "CctTransportBackend";

    /* renamed from: i */
    public static final int f84355i = 30000;

    /* renamed from: j */
    public static final int f84356j = 130000;

    /* renamed from: k */
    public static final int f84357k = -1;

    /* renamed from: l */
    public static final String f84358l = "Accept-Encoding";

    /* renamed from: m */
    public static final String f84359m = "Content-Encoding";

    /* renamed from: n */
    public static final String f84360n = "gzip";

    /* renamed from: o */
    public static final String f84361o = "Content-Type";

    /* renamed from: p */
    public static final String f84362p = "X-Goog-Api-Key";

    /* renamed from: q */
    public static final String f84363q = "application/json";

    /* renamed from: r */
    @VisibleForTesting
    public static final String f84364r = "net-type";

    /* renamed from: s */
    @VisibleForTesting
    public static final String f84365s = "mobile-subtype";

    /* renamed from: t */
    public static final String f84366t = "sdk-version";

    /* renamed from: u */
    public static final String f84367u = "model";

    /* renamed from: v */
    public static final String f84368v = "hardware";

    /* renamed from: w */
    public static final String f84369w = "device";

    /* renamed from: x */
    public static final String f84370x = "product";

    /* renamed from: y */
    public static final String f84371y = "os-uild";

    /* renamed from: z */
    public static final String f84372z = "manufacturer";

    /* renamed from: a */
    public final DataEncoder f84373a;

    /* renamed from: b */
    public final ConnectivityManager f84374b;

    /* renamed from: c */
    public final Context f84375c;

    /* renamed from: d */
    public final URL f84376d;

    /* renamed from: e */
    public final Clock f84377e;

    /* renamed from: f */
    public final Clock f84378f;

    /* renamed from: g */
    public final int f84379g;

    /* renamed from: com.sunia.HTREnginev2.sod$a */
    /* loaded from: classes4.dex */
    public static final class C14409a {

        /* renamed from: a */
        public final URL f84380a;

        /* renamed from: b */
        public final BatchedLogRequest f84381b;

        /* renamed from: c */
        @Nullable
        public final String f84382c;

        public C14409a(URL url, BatchedLogRequest batchedLogRequest, @Nullable String str) {
            this.f84380a = url;
            this.f84381b = batchedLogRequest;
            this.f84382c = str;
        }

        /* renamed from: a */
        public C14409a m57208a(URL url) {
            return new C14409a(url, this.f84381b, this.f84382c);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.sod$b */
    /* loaded from: classes4.dex */
    public static final class C14410b {

        /* renamed from: a */
        public final int f84383a;

        /* renamed from: b */
        @Nullable
        public final URL f84384b;

        /* renamed from: c */
        public final long f84385c;

        public C14410b(int i, @Nullable URL url, long j) {
            this.f84383a = i;
            this.f84384b = url;
            this.f84385c = j;
        }
    }

    public sod(Context context, Clock clock, Clock clock2, int i) {
        this.f84373a = BatchedLogRequest.createDataEncoder();
        this.f84375c = context;
        this.f84374b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f84376d = m57205l(CCTDestination.f21781d);
        this.f84377e = clock2;
        this.f84378f = clock;
        this.f84379g = i;
    }

    /* renamed from: d */
    public static int m57198d(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return NetworkConnectionInfo.MobileSubtype.UNKNOWN_MOBILE_SUBTYPE.getValue();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return NetworkConnectionInfo.MobileSubtype.COMBINED.getValue();
        }
        if (NetworkConnectionInfo.MobileSubtype.forNumber(subtype) != null) {
            return subtype;
        }
        return 0;
    }

    /* renamed from: e */
    public static int m57199e(NetworkInfo networkInfo) {
        return networkInfo == null ? NetworkConnectionInfo.NetworkType.NONE.getValue() : networkInfo.getType();
    }

    /* renamed from: f */
    public static int m57200f(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Logging.m17455e(f84354h, "Unable to find version code for package", e);
            return -1;
        }
    }

    /* renamed from: h */
    public static TelephonyManager m57201h(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    @VisibleForTesting
    /* renamed from: i */
    public static long m57202i() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* renamed from: j */
    public static /* synthetic */ C14409a m57203j(C14409a c14409a, C14410b c14410b) {
        URL url = c14410b.f84384b;
        if (url == null) {
            return null;
        }
        Logging.m17452d(f84354h, "Following redirect to: %s", url);
        return c14409a.m57208a(c14410b.f84384b);
    }

    /* renamed from: k */
    public static InputStream m57204k(InputStream inputStream, String str) throws IOException {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    /* renamed from: l */
    public static URL m57205l(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    /* renamed from: c */
    public final C14410b m57206c(C14409a c14409a) throws IOException {
        Logging.m17456i(f84354h, "Making request to: %s", c14409a.f84380a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) c14409a.f84380a.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f84379g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "3.1.8"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = c14409a.f84382c;
        if (str != null) {
            httpURLConnection.setRequestProperty(f84362p, str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    this.f84373a.encode(c14409a.f84381b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Logging.m17456i(f84354h, "Status Code: %d", Integer.valueOf(responseCode));
                    Logging.m17452d(f84354h, "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    Logging.m17452d(f84354h, "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new C14410b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new C14410b(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream m57204k = m57204k(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                        try {
                            C14410b c14410b = new C14410b(responseCode, null, LogResponse.fromJson(new BufferedReader(new InputStreamReader(m57204k))).getNextRequestWaitMillis());
                            if (m57204k != null) {
                                m57204k.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return c14410b;
                        } finally {
                        }
                    } catch (Throwable th) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } finally {
                }
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (EncodingException | IOException e) {
            Logging.m17455e(f84354h, "Couldn't encode request, returning with 400", e);
            return new C14410b(400, null, 0L);
        } catch (ConnectException | UnknownHostException e2) {
            Logging.m17455e(f84354h, "Couldn't open connection, returning with 500", e2);
            return new C14410b(500, null, 0L);
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    public EventInternal decorate(EventInternal eventInternal) {
        NetworkInfo activeNetworkInfo = this.f84374b.getActiveNetworkInfo();
        return eventInternal.toBuilder().addMetadata(f84366t, Build.VERSION.SDK_INT).addMetadata("model", Build.MODEL).addMetadata(f84368v, Build.HARDWARE).addMetadata("device", Build.DEVICE).addMetadata(f84370x, Build.PRODUCT).addMetadata(f84371y, Build.ID).addMetadata(f84372z, Build.MANUFACTURER).addMetadata(f84348A, Build.FINGERPRINT).addMetadata(f84352E, m57202i()).addMetadata(f84364r, m57199e(activeNetworkInfo)).addMetadata(f84365s, m57198d(activeNetworkInfo)).addMetadata(f84350C, Locale.getDefault().getCountry()).addMetadata("locale", Locale.getDefault().getLanguage()).addMetadata(f84351D, m57201h(this.f84375c).getSimOperator()).addMetadata(f84353F, Integer.toString(m57200f(this.f84375c))).build();
    }

    /* renamed from: g */
    public final BatchedLogRequest m57207g(BackendRequest backendRequest) {
        LogEvent.Builder protoBuilder;
        HashMap hashMap = new HashMap();
        for (EventInternal eventInternal : backendRequest.getEvents()) {
            String transportName = eventInternal.getTransportName();
            if (hashMap.containsKey(transportName)) {
                ((List) hashMap.get(transportName)).add(eventInternal);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eventInternal);
                hashMap.put(transportName, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            EventInternal eventInternal2 = (EventInternal) ((List) entry.getValue()).get(0);
            LogRequest.Builder clientInfo = LogRequest.builder().setQosTier(QosTier.DEFAULT).setRequestTimeMs(this.f84378f.getTime()).setRequestUptimeMs(this.f84377e.getTime()).setClientInfo(ClientInfo.builder().setClientType(ClientInfo.ClientType.ANDROID_FIREBASE).setAndroidClientInfo(AndroidClientInfo.builder().setSdkVersion(Integer.valueOf(eventInternal2.getInteger(f84366t))).setModel(eventInternal2.get("model")).setHardware(eventInternal2.get(f84368v)).setDevice(eventInternal2.get("device")).setProduct(eventInternal2.get(f84370x)).setOsBuild(eventInternal2.get(f84371y)).setManufacturer(eventInternal2.get(f84372z)).setFingerprint(eventInternal2.get(f84348A)).setCountry(eventInternal2.get(f84350C)).setLocale(eventInternal2.get("locale")).setMccMnc(eventInternal2.get(f84351D)).setApplicationBuild(eventInternal2.get(f84353F)).build()).build());
            try {
                clientInfo.setSource(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException unused) {
                clientInfo.setSource((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (EventInternal eventInternal3 : (List) entry.getValue()) {
                EncodedPayload encodedPayload = eventInternal3.getEncodedPayload();
                Encoding encoding = encodedPayload.getEncoding();
                if (encoding.equals(Encoding.m17394of("proto"))) {
                    protoBuilder = LogEvent.protoBuilder(encodedPayload.getBytes());
                } else if (encoding.equals(Encoding.m17394of("json"))) {
                    protoBuilder = LogEvent.jsonBuilder(new String(encodedPayload.getBytes(), Charset.forName("UTF-8")));
                } else {
                    Logging.m17457w(f84354h, "Received event of unsupported encoding %s. Skipping...", encoding);
                }
                protoBuilder.setEventTimeMs(eventInternal3.getEventMillis()).setEventUptimeMs(eventInternal3.getUptimeMillis()).setTimezoneOffsetSeconds(eventInternal3.getLong(f84352E)).setNetworkConnectionInfo(NetworkConnectionInfo.builder().setNetworkType(NetworkConnectionInfo.NetworkType.forNumber(eventInternal3.getInteger(f84364r))).setMobileSubtype(NetworkConnectionInfo.MobileSubtype.forNumber(eventInternal3.getInteger(f84365s))).build());
                if (eventInternal3.getCode() != null) {
                    protoBuilder.setEventCode(eventInternal3.getCode());
                }
                arrayList3.add(protoBuilder.build());
            }
            clientInfo.setLogEvents(arrayList3);
            arrayList2.add(clientInfo.build());
        }
        return BatchedLogRequest.create(arrayList2);
    }

    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    public BackendResponse send(BackendRequest backendRequest) {
        BatchedLogRequest m57207g = m57207g(backendRequest);
        URL url = this.f84376d;
        if (backendRequest.getExtras() != null) {
            try {
                CCTDestination fromByteArray = CCTDestination.fromByteArray(backendRequest.getExtras());
                r3 = fromByteArray.getAPIKey() != null ? fromByteArray.getAPIKey() : null;
                if (fromByteArray.getEndPoint() != null) {
                    url = m57205l(fromByteArray.getEndPoint());
                }
            } catch (IllegalArgumentException unused) {
                return BackendResponse.fatalError();
            }
        }
        try {
            C14410b c14410b = (C14410b) Retries.retry(5, new C14409a(url, m57207g, r3), new Function() { // from class: com.sunia.HTREnginev2.qod
                @Override // com.google.android.datatransport.runtime.retries.Function
                public final Object apply(Object obj) {
                    sod.C14410b m57206c;
                    m57206c = sod.this.m57206c((sod.C14409a) obj);
                    return m57206c;
                }
            }, new RetryStrategy() { // from class: com.sunia.HTREnginev2.rod
                @Override // com.google.android.datatransport.runtime.retries.RetryStrategy
                public final Object shouldRetry(Object obj, Object obj2) {
                    sod.C14409a m57203j;
                    m57203j = sod.m57203j((sod.C14409a) obj, (sod.C14410b) obj2);
                    return m57203j;
                }
            });
            int i = c14410b.f84383a;
            if (i == 200) {
                return BackendResponse.m17433ok(c14410b.f84385c);
            }
            if (i < 500 && i != 404) {
                return i == 400 ? BackendResponse.invalidPayload() : BackendResponse.fatalError();
            }
            return BackendResponse.transientError();
        } catch (IOException e) {
            Logging.m17455e(f84354h, "Could not make request to the backend", e);
            return BackendResponse.transientError();
        }
    }

    public sod(Context context, Clock clock, Clock clock2) {
        this(context, clock, clock2, f84356j);
    }
}
