package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.rtsp.C4918b;
import com.google.android.exoplayer2.source.rtsp.RtspClient;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.google.android.exoplayer2.source.rtsp.RtspMessageChannel;
import com.google.android.exoplayer2.source.rtsp.RtspMessageUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.sunia.HTREnginev2.aul;
import com.sunia.HTREnginev2.bul;
import com.sunia.HTREnginev2.rtl;
import com.sunia.HTREnginev2.xtl;
import com.sunia.HTREnginev2.ytl;
import com.sunia.HTREnginev2.ztl;
import java.io.Closeable;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.SocketFactory;

/* loaded from: classes5.dex */
public final class RtspClient implements Closeable {

    /* renamed from: J */
    public static final int f26300J = 2;

    /* renamed from: O */
    public static final String f26301O = "RtspClient";

    /* renamed from: Q */
    public static final long f26302Q = 30000;

    /* renamed from: x */
    public static final int f26303x = -1;

    /* renamed from: y */
    public static final int f26304y = 0;

    /* renamed from: z */
    public static final int f26305z = 1;

    /* renamed from: e */
    public final SessionInfoListener f26306e;

    /* renamed from: f */
    public final PlaybackEventListener f26307f;

    /* renamed from: g */
    public final String f26308g;

    /* renamed from: h */
    public final SocketFactory f26309h;

    /* renamed from: i */
    public final boolean f26310i;

    /* renamed from: m */
    public Uri f26314m;

    /* renamed from: o */
    @Nullable
    public RtspMessageUtil.RtspAuthUserInfo f26316o;

    /* renamed from: p */
    @Nullable
    public String f26317p;

    /* renamed from: q */
    @Nullable
    public RunnableC4905b f26318q;

    /* renamed from: r */
    @Nullable
    public C4917a f26319r;

    /* renamed from: t */
    public boolean f26321t;

    /* renamed from: u */
    public boolean f26322u;

    /* renamed from: v */
    public boolean f26323v;

    /* renamed from: j */
    public final ArrayDeque<C4918b.d> f26311j = new ArrayDeque<>();

    /* renamed from: k */
    public final SparseArray<RtspRequest> f26312k = new SparseArray<>();

    /* renamed from: l */
    public final C4907d f26313l = new C4907d();

    /* renamed from: n */
    public RtspMessageChannel f26315n = new RtspMessageChannel(new C4906c());

    /* renamed from: w */
    public long f26324w = C4649C.TIME_UNSET;

    /* renamed from: s */
    public int f26320s = -1;

    /* loaded from: classes5.dex */
    public interface PlaybackEventListener {
        void onPlaybackError(RtspMediaSource.RtspPlaybackException rtspPlaybackException);

        void onPlaybackStarted(long j, ImmutableList<bul> immutableList);

        void onRtspSetupCompleted();
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface RtspState {
    }

    /* loaded from: classes5.dex */
    public interface SessionInfoListener {
        void onSessionTimelineRequestFailed(String str, @Nullable Throwable th);

        void onSessionTimelineUpdated(aul aulVar, ImmutableList<C4919c> immutableList);
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspClient$b */
    /* loaded from: classes5.dex */
    public final class RunnableC4905b implements Runnable, Closeable {

        /* renamed from: e */
        public final Handler f26325e = Util.createHandlerForCurrentLooper();

        /* renamed from: f */
        public final long f26326f;

        /* renamed from: g */
        public boolean f26327g;

        public RunnableC4905b(long j) {
            this.f26326f = j;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f26327g = false;
            this.f26325e.removeCallbacks(this);
        }

        /* renamed from: f */
        public void m20331f() {
            if (this.f26327g) {
                return;
            }
            this.f26327g = true;
            this.f26325e.postDelayed(this, this.f26326f);
        }

        @Override // java.lang.Runnable
        public void run() {
            RtspClient.this.f26313l.m20346e(RtspClient.this.f26314m, RtspClient.this.f26317p);
            this.f26325e.postDelayed(this, this.f26326f);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspClient$c */
    /* loaded from: classes5.dex */
    public final class C4906c implements RtspMessageChannel.MessageListener {

        /* renamed from: a */
        public final Handler f26329a = Util.createHandlerForCurrentLooper();

        public C4906c() {
        }

        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final void m20333e(List<String> list) {
            RtspClient.this.m20324G0(list);
            if (RtspMessageUtil.m20390d(list)) {
                m20336d(list);
            } else {
                m20335c(list);
            }
        }

        /* renamed from: c */
        public final void m20335c(List<String> list) {
            RtspClient.this.f26313l.m20345d(Integer.parseInt((String) Assertions.checkNotNull(RtspMessageUtil.m20396j(list).f26435c.m20357e(RtspHeaders.f26355o))));
        }

        /* renamed from: d */
        public final void m20336d(List<String> list) {
            int i;
            ImmutableList<bul> m26161of;
            ztl m20397k = RtspMessageUtil.m20397k(list);
            int parseInt = Integer.parseInt((String) Assertions.checkNotNull(m20397k.f92196b.m20357e(RtspHeaders.f26355o)));
            RtspRequest rtspRequest = (RtspRequest) RtspClient.this.f26312k.get(parseInt);
            if (rtspRequest == null) {
                return;
            }
            RtspClient.this.f26312k.remove(parseInt);
            int i2 = rtspRequest.f26434b;
            try {
                i = m20397k.f92195a;
            } catch (ParserException e) {
                RtspClient.this.m20321D0(new RtspMediaSource.RtspPlaybackException(e));
                return;
            }
            if (i == 200) {
                switch (i2) {
                    case 1:
                    case 3:
                    case 7:
                    case 8:
                    case 9:
                    case 11:
                    case 12:
                        return;
                    case 2:
                        m20337f(new rtl(i, C4921e.m20493b(m20397k.f92197c)));
                        return;
                    case 4:
                        m20338g(new xtl(i, RtspMessageUtil.m20395i(m20397k.f92196b.m20357e(RtspHeaders.f26361u))));
                        return;
                    case 5:
                        m20339h();
                        return;
                    case 6:
                        String m20357e = m20397k.f92196b.m20357e("Range");
                        aul m53099d = m20357e == null ? aul.f65108c : aul.m53099d(m20357e);
                        try {
                            String m20357e2 = m20397k.f92196b.m20357e(RtspHeaders.f26363w);
                            m26161of = m20357e2 == null ? ImmutableList.m26161of() : bul.m53346a(m20357e2, RtspClient.this.f26314m);
                        } catch (ParserException unused) {
                            m26161of = ImmutableList.m26161of();
                        }
                        m20340i(new ytl(m20397k.f92195a, m53099d, m26161of));
                        return;
                    case 10:
                        String m20357e3 = m20397k.f92196b.m20357e("Session");
                        String m20357e4 = m20397k.f92196b.m20357e(RtspHeaders.f26337D);
                        if (m20357e3 == null || m20357e4 == null) {
                            throw ParserException.createForMalformedManifest("Missing mandatory session or transport header", null);
                        }
                        m20341j(new C4920d(m20397k.f92195a, RtspMessageUtil.m20398l(m20357e3), m20357e4));
                        return;
                    default:
                        throw new IllegalStateException();
                }
                RtspClient.this.m20321D0(new RtspMediaSource.RtspPlaybackException(e));
                return;
            }
            if (i != 401) {
                if (i == 301 || i == 302) {
                    if (RtspClient.this.f26320s != -1) {
                        RtspClient.this.f26320s = 0;
                    }
                    String m20357e5 = m20397k.f92196b.m20357e("Location");
                    if (m20357e5 == null) {
                        RtspClient.this.f26306e.onSessionTimelineRequestFailed("Redirection without new location.", null);
                        return;
                    }
                    Uri parse = Uri.parse(m20357e5);
                    RtspClient.this.f26314m = RtspMessageUtil.m20401o(parse);
                    RtspClient.this.f26316o = RtspMessageUtil.m20399m(parse);
                    RtspClient.this.f26313l.m20344c(RtspClient.this.f26314m, RtspClient.this.f26317p);
                    return;
                }
            } else if (RtspClient.this.f26316o != null && !RtspClient.this.f26322u) {
                ImmutableList<String> m20358f = m20397k.f92196b.m20358f("WWW-Authenticate");
                if (m20358f.isEmpty()) {
                    throw ParserException.createForMalformedManifest("Missing WWW-Authenticate header in a 401 response.", null);
                }
                for (int i3 = 0; i3 < m20358f.size(); i3++) {
                    RtspClient.this.f26319r = RtspMessageUtil.m20400n(m20358f.get(i3));
                    if (RtspClient.this.f26319r.f26474a == 2) {
                        break;
                    }
                }
                RtspClient.this.f26313l.m20343b();
                RtspClient.this.f26322u = true;
                return;
            }
            RtspClient rtspClient = RtspClient.this;
            String m20405s = RtspMessageUtil.m20405s(i2);
            int i4 = m20397k.f92195a;
            StringBuilder sb = new StringBuilder(String.valueOf(m20405s).length() + 12);
            sb.append(m20405s);
            sb.append(" ");
            sb.append(i4);
            rtspClient.m20321D0(new RtspMediaSource.RtspPlaybackException(sb.toString()));
        }

        /* renamed from: f */
        public final void m20337f(rtl rtlVar) {
            aul aulVar = aul.f65108c;
            String str = rtlVar.f83466b.f26445a.get(SessionDescription.f26441q);
            if (str != null) {
                try {
                    aulVar = aul.m53099d(str);
                } catch (ParserException e) {
                    RtspClient.this.f26306e.onSessionTimelineRequestFailed("SDP format error.", e);
                    return;
                }
            }
            ImmutableList<C4919c> m20290B0 = RtspClient.m20290B0(rtlVar.f83466b, RtspClient.this.f26314m);
            if (m20290B0.isEmpty()) {
                RtspClient.this.f26306e.onSessionTimelineRequestFailed("No playable track.", null);
            } else {
                RtspClient.this.f26306e.onSessionTimelineUpdated(aulVar, m20290B0);
                RtspClient.this.f26321t = true;
            }
        }

        /* renamed from: g */
        public final void m20338g(xtl xtlVar) {
            if (RtspClient.this.f26318q != null) {
                return;
            }
            if (RtspClient.m20293K0(xtlVar.f90061b)) {
                RtspClient.this.f26313l.m20344c(RtspClient.this.f26314m, RtspClient.this.f26317p);
            } else {
                RtspClient.this.f26306e.onSessionTimelineRequestFailed("DESCRIBE not supported.", null);
            }
        }

        /* renamed from: h */
        public final void m20339h() {
            Assertions.checkState(RtspClient.this.f26320s == 2);
            RtspClient.this.f26320s = 1;
            RtspClient.this.f26323v = false;
            if (RtspClient.this.f26324w != C4649C.TIME_UNSET) {
                RtspClient rtspClient = RtspClient.this;
                rtspClient.m20330N0(Util.usToMs(rtspClient.f26324w));
            }
        }

        /* renamed from: i */
        public final void m20340i(ytl ytlVar) {
            Assertions.checkState(RtspClient.this.f26320s == 1);
            RtspClient.this.f26320s = 2;
            if (RtspClient.this.f26318q == null) {
                RtspClient rtspClient = RtspClient.this;
                rtspClient.f26318q = new RunnableC4905b(30000L);
                RtspClient.this.f26318q.m20331f();
            }
            RtspClient.this.f26324w = C4649C.TIME_UNSET;
            RtspClient.this.f26307f.onPlaybackStarted(Util.msToUs(ytlVar.f91072b.f65112a), ytlVar.f91073c);
        }

        /* renamed from: j */
        public final void m20341j(C4920d c4920d) {
            Assertions.checkState(RtspClient.this.f26320s != -1);
            RtspClient.this.f26320s = 1;
            RtspClient.this.f26317p = c4920d.f26522b.sessionId;
            RtspClient.this.m20320C0();
        }

        @Override // com.google.android.exoplayer2.source.rtsp.RtspMessageChannel.MessageListener
        public void onRtspMessageReceived(final List<String> list) {
            this.f26329a.post(new Runnable() { // from class: com.sunia.HTREnginev2.qtl
                @Override // java.lang.Runnable
                public final void run() {
                    RtspClient.C4906c.this.m20333e(list);
                }
            });
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.rtsp.RtspClient$d */
    /* loaded from: classes5.dex */
    public final class C4907d {

        /* renamed from: a */
        public int f26331a;

        /* renamed from: b */
        public RtspRequest f26332b;

        public C4907d() {
        }

        /* renamed from: a */
        public final RtspRequest m20342a(int i, @Nullable String str, Map<String, String> map, Uri uri) {
            String str2 = RtspClient.this.f26308g;
            int i2 = this.f26331a;
            this.f26331a = i2 + 1;
            RtspHeaders.Builder builder = new RtspHeaders.Builder(str2, str, i2);
            if (RtspClient.this.f26319r != null) {
                Assertions.checkStateNotNull(RtspClient.this.f26316o);
                try {
                    builder.add("Authorization", RtspClient.this.f26319r.m20418a(RtspClient.this.f26316o, uri, i));
                } catch (ParserException e) {
                    RtspClient.this.m20321D0(new RtspMediaSource.RtspPlaybackException(e));
                }
            }
            builder.addAll(map);
            return new RtspRequest(uri, i, builder.build(), "");
        }

        /* renamed from: b */
        public void m20343b() {
            Assertions.checkStateNotNull(this.f26332b);
            ImmutableListMultimap<String, String> m20355b = this.f26332b.f26435c.m20355b();
            HashMap hashMap = new HashMap();
            for (String str : m20355b.keySet()) {
                if (!str.equals(RtspHeaders.f26355o) && !str.equals("User-Agent") && !str.equals("Session") && !str.equals("Authorization")) {
                    hashMap.put(str, (String) Iterables.getLast(m20355b.get((ImmutableListMultimap<String, String>) str)));
                }
            }
            m20349h(m20342a(this.f26332b.f26434b, RtspClient.this.f26317p, hashMap, this.f26332b.f26433a));
        }

        /* renamed from: c */
        public void m20344c(Uri uri, @Nullable String str) {
            m20349h(m20342a(2, str, ImmutableMap.m26185of(), uri));
        }

        /* renamed from: d */
        public void m20345d(int i) {
            m20350i(new ztl(405, new RtspHeaders.Builder(RtspClient.this.f26308g, RtspClient.this.f26317p, i).build()));
            this.f26331a = Math.max(this.f26331a, i + 1);
        }

        /* renamed from: e */
        public void m20346e(Uri uri, @Nullable String str) {
            m20349h(m20342a(4, str, ImmutableMap.m26185of(), uri));
        }

        /* renamed from: f */
        public void m20347f(Uri uri, String str) {
            Assertions.checkState(RtspClient.this.f26320s == 2);
            m20349h(m20342a(5, str, ImmutableMap.m26185of(), uri));
            RtspClient.this.f26323v = true;
        }

        /* renamed from: g */
        public void m20348g(Uri uri, long j, String str) {
            boolean z = true;
            if (RtspClient.this.f26320s != 1 && RtspClient.this.f26320s != 2) {
                z = false;
            }
            Assertions.checkState(z);
            m20349h(m20342a(6, str, ImmutableMap.m26186of("Range", aul.m53098b(j)), uri));
        }

        /* renamed from: h */
        public final void m20349h(RtspRequest rtspRequest) {
            int parseInt = Integer.parseInt((String) Assertions.checkNotNull(rtspRequest.f26435c.m20357e(RtspHeaders.f26355o)));
            Assertions.checkState(RtspClient.this.f26312k.get(parseInt) == null);
            RtspClient.this.f26312k.append(parseInt, rtspRequest);
            ImmutableList<String> m20402p = RtspMessageUtil.m20402p(rtspRequest);
            RtspClient.this.m20324G0(m20402p);
            RtspClient.this.f26315n.m20373M(m20402p);
            this.f26332b = rtspRequest;
        }

        /* renamed from: i */
        public final void m20350i(ztl ztlVar) {
            ImmutableList<String> m20403q = RtspMessageUtil.m20403q(ztlVar);
            RtspClient.this.m20324G0(m20403q);
            RtspClient.this.f26315n.m20373M(m20403q);
        }

        /* renamed from: j */
        public void m20351j(Uri uri, String str, @Nullable String str2) {
            RtspClient.this.f26320s = 0;
            m20349h(m20342a(10, str2, ImmutableMap.m26186of(RtspHeaders.f26337D, str), uri));
        }

        /* renamed from: k */
        public void m20352k(Uri uri, String str) {
            if (RtspClient.this.f26320s == -1 || RtspClient.this.f26320s == 0) {
                return;
            }
            RtspClient.this.f26320s = 0;
            m20349h(m20342a(12, str, ImmutableMap.m26185of(), uri));
        }
    }

    public RtspClient(SessionInfoListener sessionInfoListener, PlaybackEventListener playbackEventListener, String str, Uri uri, SocketFactory socketFactory, boolean z) {
        this.f26306e = sessionInfoListener;
        this.f26307f = playbackEventListener;
        this.f26308g = str;
        this.f26309h = socketFactory;
        this.f26310i = z;
        this.f26314m = RtspMessageUtil.m20401o(uri);
        this.f26316o = RtspMessageUtil.m20399m(uri);
    }

    /* renamed from: B0 */
    public static ImmutableList<C4919c> m20290B0(SessionDescription sessionDescription, Uri uri) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        for (int i = 0; i < sessionDescription.f26446b.size(); i++) {
            MediaDescription mediaDescription = sessionDescription.f26446b.get(i);
            if (RtpPayloadFormat.isFormatSupported(mediaDescription)) {
                builder.add((ImmutableList.Builder) new C4919c(mediaDescription, uri));
            }
        }
        return builder.build();
    }

    /* renamed from: K0 */
    public static boolean m20293K0(List<Integer> list) {
        return list.isEmpty() || list.contains(2);
    }

    /* renamed from: C0 */
    public final void m20320C0() {
        C4918b.d pollFirst = this.f26311j.pollFirst();
        if (pollFirst == null) {
            this.f26307f.onRtspSetupCompleted();
        } else {
            this.f26313l.m20351j(pollFirst.m20473c(), pollFirst.m20474d(), this.f26317p);
        }
    }

    /* renamed from: D0 */
    public final void m20321D0(Throwable th) {
        RtspMediaSource.RtspPlaybackException rtspPlaybackException = th instanceof RtspMediaSource.RtspPlaybackException ? (RtspMediaSource.RtspPlaybackException) th : new RtspMediaSource.RtspPlaybackException(th);
        if (this.f26321t) {
            this.f26307f.onPlaybackError(rtspPlaybackException);
        } else {
            this.f26306e.onSessionTimelineRequestFailed(Strings.nullToEmpty(th.getMessage()), th);
        }
    }

    /* renamed from: E0 */
    public final Socket m20322E0(Uri uri) throws IOException {
        Assertions.checkArgument(uri.getHost() != null);
        return this.f26309h.createSocket((String) Assertions.checkNotNull(uri.getHost()), uri.getPort() > 0 ? uri.getPort() : 554);
    }

    /* renamed from: F0 */
    public int m20323F0() {
        return this.f26320s;
    }

    /* renamed from: G0 */
    public final void m20324G0(List<String> list) {
        if (this.f26310i) {
            Log.m21487d(f26301O, Joiner.m25799on("\n").join(list));
        }
    }

    /* renamed from: H0 */
    public void m20325H0(int i, RtspMessageChannel.InterleavedBinaryDataListener interleavedBinaryDataListener) {
        this.f26315n.m20372I(i, interleavedBinaryDataListener);
    }

    /* renamed from: I0 */
    public void m20326I0() {
        try {
            close();
            RtspMessageChannel rtspMessageChannel = new RtspMessageChannel(new C4906c());
            this.f26315n = rtspMessageChannel;
            rtspMessageChannel.m20371H(m20322E0(this.f26314m));
            this.f26317p = null;
            this.f26322u = false;
            this.f26319r = null;
        } catch (IOException e) {
            this.f26307f.onPlaybackError(new RtspMediaSource.RtspPlaybackException(e));
        }
    }

    /* renamed from: J0 */
    public void m20327J0(long j) {
        if (this.f26320s == 2 && !this.f26323v) {
            this.f26313l.m20347f(this.f26314m, (String) Assertions.checkNotNull(this.f26317p));
        }
        this.f26324w = j;
    }

    /* renamed from: L0 */
    public void m20328L0(List<C4918b.d> list) {
        this.f26311j.addAll(list);
        m20320C0();
    }

    /* renamed from: M0 */
    public void m20329M0() throws IOException {
        try {
            this.f26315n.m20371H(m20322E0(this.f26314m));
            this.f26313l.m20346e(this.f26314m, this.f26317p);
        } catch (IOException e) {
            Util.closeQuietly(this.f26315n);
            throw e;
        }
    }

    /* renamed from: N0 */
    public void m20330N0(long j) {
        this.f26313l.m20348g(this.f26314m, j, (String) Assertions.checkNotNull(this.f26317p));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        RunnableC4905b runnableC4905b = this.f26318q;
        if (runnableC4905b != null) {
            runnableC4905b.close();
            this.f26318q = null;
            this.f26313l.m20352k(this.f26314m, (String) Assertions.checkNotNull(this.f26317p));
        }
        this.f26315n.close();
    }
}
