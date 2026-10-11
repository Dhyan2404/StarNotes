package org.apache.http.impl.auth;

import com.alibaba.fastjson2.JSONB;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import java.nio.charset.Charset;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.Arrays;
import java.util.Locale;
import java.util.Random;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.http.Consts;

/* loaded from: classes12.dex */
public final class NTLMEngineImpl implements NTLMEngine {

    /* renamed from: A */
    public static final int f110430A = 8;

    /* renamed from: B */
    public static final int f110431B = 9;

    /* renamed from: C */
    public static final int f110432C = 10;

    /* renamed from: D */
    public static final int f110433D = 1;

    /* renamed from: E */
    public static final int f110434E = 2;

    /* renamed from: F */
    public static final int f110435F = 4;

    /* renamed from: G */
    public static final SecureRandom f110436G;

    /* renamed from: H */
    public static final byte[] f110437H;

    /* renamed from: I */
    public static final byte[] f110438I;

    /* renamed from: J */
    public static final byte[] f110439J;

    /* renamed from: K */
    public static final byte[] f110440K;

    /* renamed from: L */
    public static final byte[] f110441L;

    /* renamed from: M */
    public static final byte[] f110442M;

    /* renamed from: N */
    public static final String f110443N;

    /* renamed from: a */
    public static final Charset f110444a = Charset.forName("UnicodeLittleUnmarked");

    /* renamed from: b */
    public static final Charset f110445b = Consts.ASCII;

    /* renamed from: c */
    public static final int f110446c = 1;

    /* renamed from: d */
    public static final int f110447d = 2;

    /* renamed from: e */
    public static final int f110448e = 4;

    /* renamed from: f */
    public static final int f110449f = 16;

    /* renamed from: g */
    public static final int f110450g = 32;

    /* renamed from: h */
    public static final int f110451h = 128;

    /* renamed from: i */
    public static final int f110452i = 512;

    /* renamed from: j */
    public static final int f110453j = 4096;

    /* renamed from: k */
    public static final int f110454k = 8192;

    /* renamed from: l */
    public static final int f110455l = 32768;

    /* renamed from: m */
    public static final int f110456m = 524288;

    /* renamed from: n */
    public static final int f110457n = 33554432;

    /* renamed from: o */
    public static final int f110458o = 8388608;

    /* renamed from: p */
    public static final int f110459p = 536870912;

    /* renamed from: q */
    public static final int f110460q = 1073741824;

    /* renamed from: r */
    public static final int f110461r = Integer.MIN_VALUE;

    /* renamed from: s */
    public static final int f110462s = 0;

    /* renamed from: t */
    public static final int f110463t = 1;

    /* renamed from: u */
    public static final int f110464u = 2;

    /* renamed from: v */
    public static final int f110465v = 3;

    /* renamed from: w */
    public static final int f110466w = 4;

    /* renamed from: x */
    public static final int f110467x = 5;

    /* renamed from: y */
    public static final int f110468y = 6;

    /* renamed from: z */
    public static final int f110469z = 7;

    /* loaded from: classes12.dex */
    public static class CipherGen {
        protected final byte[] challenge;
        protected byte[] clientChallenge;
        protected byte[] clientChallenge2;
        protected final long currentTime;
        protected final String domain;
        protected byte[] lanManagerSessionKey;
        protected byte[] lm2SessionResponse;
        protected byte[] lmHash;
        protected byte[] lmResponse;
        protected byte[] lmUserSessionKey;
        protected byte[] lmv2Hash;
        protected byte[] lmv2Response;
        protected byte[] ntlm2SessionResponse;
        protected byte[] ntlm2SessionResponseUserSessionKey;
        protected byte[] ntlmHash;
        protected byte[] ntlmResponse;
        protected byte[] ntlmUserSessionKey;
        protected byte[] ntlmv2Blob;
        protected byte[] ntlmv2Hash;
        protected byte[] ntlmv2Response;
        protected byte[] ntlmv2UserSessionKey;
        protected final String password;
        protected final Random random;
        protected byte[] secondaryKey;
        protected final String target;
        protected final byte[] targetInformation;
        protected byte[] timestamp;
        protected final String user;

        @Deprecated
        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            this(NTLMEngineImpl.f110436G, System.currentTimeMillis(), str, str2, str3, bArr, str4, bArr2, bArr3, bArr4, bArr5, bArr6);
        }

        public byte[] getClientChallenge() throws NTLMEngineException {
            if (this.clientChallenge == null) {
                this.clientChallenge = NTLMEngineImpl.m68394W(this.random);
            }
            return this.clientChallenge;
        }

        public byte[] getClientChallenge2() throws NTLMEngineException {
            if (this.clientChallenge2 == null) {
                this.clientChallenge2 = NTLMEngineImpl.m68394W(this.random);
            }
            return this.clientChallenge2;
        }

        public byte[] getLM2SessionResponse() throws NTLMEngineException {
            if (this.lm2SessionResponse == null) {
                byte[] clientChallenge = getClientChallenge();
                byte[] bArr = new byte[24];
                this.lm2SessionResponse = bArr;
                System.arraycopy(clientChallenge, 0, bArr, 0, clientChallenge.length);
                byte[] bArr2 = this.lm2SessionResponse;
                Arrays.fill(bArr2, clientChallenge.length, bArr2.length, (byte) 0);
            }
            return this.lm2SessionResponse;
        }

        public byte[] getLMHash() throws NTLMEngineException {
            if (this.lmHash == null) {
                this.lmHash = NTLMEngineImpl.m68390S(this.password);
            }
            return this.lmHash;
        }

        public byte[] getLMResponse() throws NTLMEngineException {
            if (this.lmResponse == null) {
                this.lmResponse = NTLMEngineImpl.m68391T(getLMHash(), this.challenge);
            }
            return this.lmResponse;
        }

        public byte[] getLMUserSessionKey() throws NTLMEngineException {
            if (this.lmUserSessionKey == null) {
                this.lmUserSessionKey = new byte[16];
                System.arraycopy(getLMHash(), 0, this.lmUserSessionKey, 0, 8);
                Arrays.fill(this.lmUserSessionKey, 8, 16, (byte) 0);
            }
            return this.lmUserSessionKey;
        }

        public byte[] getLMv2Hash() throws NTLMEngineException {
            if (this.lmv2Hash == null) {
                this.lmv2Hash = NTLMEngineImpl.m68392U(this.domain, this.user, getNTLMHash());
            }
            return this.lmv2Hash;
        }

        public byte[] getLMv2Response() throws NTLMEngineException {
            if (this.lmv2Response == null) {
                this.lmv2Response = NTLMEngineImpl.m68393V(getLMv2Hash(), this.challenge, getClientChallenge());
            }
            return this.lmv2Response;
        }

        public byte[] getLanManagerSessionKey() throws NTLMEngineException {
            if (this.lanManagerSessionKey == null) {
                try {
                    byte[] bArr = new byte[14];
                    System.arraycopy(getLMHash(), 0, bArr, 0, 8);
                    Arrays.fill(bArr, 8, 14, JSONB.Constants.BC_INT8);
                    Key m68380I = NTLMEngineImpl.m68380I(bArr, 0);
                    Key m68380I2 = NTLMEngineImpl.m68380I(bArr, 7);
                    byte[] bArr2 = new byte[8];
                    System.arraycopy(getLMResponse(), 0, bArr2, 0, 8);
                    Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher.init(1, m68380I);
                    byte[] doFinal = cipher.doFinal(bArr2);
                    Cipher cipher2 = Cipher.getInstance("DES/ECB/NoPadding");
                    cipher2.init(1, m68380I2);
                    byte[] doFinal2 = cipher2.doFinal(bArr2);
                    byte[] bArr3 = new byte[16];
                    this.lanManagerSessionKey = bArr3;
                    System.arraycopy(doFinal, 0, bArr3, 0, doFinal.length);
                    System.arraycopy(doFinal2, 0, this.lanManagerSessionKey, doFinal.length, doFinal2.length);
                } catch (Exception e) {
                    throw new NTLMEngineException(e.getMessage(), e);
                }
            }
            return this.lanManagerSessionKey;
        }

        public byte[] getNTLM2SessionResponse() throws NTLMEngineException {
            if (this.ntlm2SessionResponse == null) {
                this.ntlm2SessionResponse = NTLMEngineImpl.m68396Y(getNTLMHash(), this.challenge, getClientChallenge());
            }
            return this.ntlm2SessionResponse;
        }

        public byte[] getNTLM2SessionResponseUserSessionKey() throws NTLMEngineException {
            if (this.ntlm2SessionResponseUserSessionKey == null) {
                byte[] lM2SessionResponse = getLM2SessionResponse();
                byte[] bArr = this.challenge;
                byte[] bArr2 = new byte[bArr.length + lM2SessionResponse.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                System.arraycopy(lM2SessionResponse, 0, bArr2, this.challenge.length, lM2SessionResponse.length);
                this.ntlm2SessionResponseUserSessionKey = NTLMEngineImpl.m68389R(bArr2, getNTLMUserSessionKey());
            }
            return this.ntlm2SessionResponseUserSessionKey;
        }

        public byte[] getNTLMHash() throws NTLMEngineException {
            if (this.ntlmHash == null) {
                this.ntlmHash = NTLMEngineImpl.m68397Z(this.password);
            }
            return this.ntlmHash;
        }

        public byte[] getNTLMResponse() throws NTLMEngineException {
            if (this.ntlmResponse == null) {
                this.ntlmResponse = NTLMEngineImpl.m68391T(getNTLMHash(), this.challenge);
            }
            return this.ntlmResponse;
        }

        public byte[] getNTLMUserSessionKey() throws NTLMEngineException {
            if (this.ntlmUserSessionKey == null) {
                C19353c c19353c = new C19353c();
                c19353c.m68451f(getNTLMHash());
                this.ntlmUserSessionKey = c19353c.m68446a();
            }
            return this.ntlmUserSessionKey;
        }

        public byte[] getNTLMv2Blob() throws NTLMEngineException {
            if (this.ntlmv2Blob == null) {
                this.ntlmv2Blob = NTLMEngineImpl.m68379H(getClientChallenge2(), this.targetInformation, getTimestamp());
            }
            return this.ntlmv2Blob;
        }

        public byte[] getNTLMv2Hash() throws NTLMEngineException {
            if (this.ntlmv2Hash == null) {
                this.ntlmv2Hash = NTLMEngineImpl.m68399a0(this.domain, this.user, getNTLMHash());
            }
            return this.ntlmv2Hash;
        }

        public byte[] getNTLMv2Response() throws NTLMEngineException {
            if (this.ntlmv2Response == null) {
                this.ntlmv2Response = NTLMEngineImpl.m68393V(getNTLMv2Hash(), this.challenge, getNTLMv2Blob());
            }
            return this.ntlmv2Response;
        }

        public byte[] getNTLMv2UserSessionKey() throws NTLMEngineException {
            if (this.ntlmv2UserSessionKey == null) {
                byte[] nTLMv2Hash = getNTLMv2Hash();
                byte[] bArr = new byte[16];
                System.arraycopy(getNTLMv2Response(), 0, bArr, 0, 16);
                this.ntlmv2UserSessionKey = NTLMEngineImpl.m68389R(bArr, nTLMv2Hash);
            }
            return this.ntlmv2UserSessionKey;
        }

        public byte[] getSecondaryKey() throws NTLMEngineException {
            if (this.secondaryKey == null) {
                this.secondaryKey = NTLMEngineImpl.m68395X(this.random);
            }
            return this.secondaryKey;
        }

        public byte[] getTimestamp() {
            if (this.timestamp == null) {
                long j = (this.currentTime + 11644473600000L) * 10000;
                this.timestamp = new byte[8];
                for (int i = 0; i < 8; i++) {
                    this.timestamp[i] = (byte) j;
                    j >>>= 8;
                }
            }
            return this.timestamp;
        }

        public CipherGen(Random random, long j, String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6) {
            this.lmHash = null;
            this.lmResponse = null;
            this.ntlmHash = null;
            this.ntlmResponse = null;
            this.ntlmv2Hash = null;
            this.lmv2Hash = null;
            this.lmv2Response = null;
            this.ntlmv2Blob = null;
            this.ntlmv2Response = null;
            this.ntlm2SessionResponse = null;
            this.lm2SessionResponse = null;
            this.lmUserSessionKey = null;
            this.ntlmUserSessionKey = null;
            this.ntlmv2UserSessionKey = null;
            this.ntlm2SessionResponseUserSessionKey = null;
            this.lanManagerSessionKey = null;
            this.random = random;
            this.currentTime = j;
            this.domain = str;
            this.target = str4;
            this.user = str2;
            this.password = str3;
            this.challenge = bArr;
            this.targetInformation = bArr2;
            this.clientChallenge = bArr3;
            this.clientChallenge2 = bArr4;
            this.secondaryKey = bArr5;
            this.timestamp = bArr6;
        }

        @Deprecated
        public CipherGen(String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2) {
            this(NTLMEngineImpl.f110436G, System.currentTimeMillis(), str, str2, str3, bArr, str4, bArr2);
        }

        public CipherGen(Random random, long j, String str, String str2, String str3, byte[] bArr, String str4, byte[] bArr2) {
            this(random, j, str, str2, str3, bArr, str4, bArr2, null, null, null, null);
        }
    }

    /* loaded from: classes12.dex */
    public enum Mode {
        CLIENT,
        SERVER
    }

    /* renamed from: org.apache.http.impl.auth.NTLMEngineImpl$a */
    /* loaded from: classes12.dex */
    public static class C19351a {

        /* renamed from: a */
        public final byte[] f110470a;

        /* renamed from: b */
        public final byte[] f110471b;

        /* renamed from: c */
        public final MessageDigest f110472c;

        public C19351a(byte[] bArr) {
            MessageDigest m68384M = NTLMEngineImpl.m68384M();
            this.f110472c = m68384M;
            this.f110470a = new byte[64];
            this.f110471b = new byte[64];
            int length = bArr.length;
            if (length > 64) {
                m68384M.update(bArr);
                bArr = m68384M.digest();
                length = bArr.length;
            }
            int i = 0;
            while (i < length) {
                this.f110470a[i] = (byte) (54 ^ bArr[i]);
                this.f110471b[i] = (byte) (92 ^ bArr[i]);
                i++;
            }
            while (i < 64) {
                this.f110470a[i] = TarConstants.LF_FIFO;
                this.f110471b[i] = UTF8JsonGenerator.f21291k;
                i++;
            }
            this.f110472c.reset();
            this.f110472c.update(this.f110470a);
        }

        /* renamed from: a */
        public byte[] m68433a() {
            byte[] digest = this.f110472c.digest();
            this.f110472c.update(this.f110471b);
            return this.f110472c.digest(digest);
        }

        /* renamed from: b */
        public void m68434b(byte[] bArr) {
            this.f110472c.update(bArr);
        }

        /* renamed from: c */
        public void m68435c(byte[] bArr, int i, int i2) {
            this.f110472c.update(bArr, i, i2);
        }
    }

    /* renamed from: org.apache.http.impl.auth.NTLMEngineImpl$b */
    /* loaded from: classes12.dex */
    public static class C19352b {

        /* renamed from: a */
        public final byte[] f110473a;

        /* renamed from: b */
        public byte[] f110474b;

        /* renamed from: c */
        public byte[] f110475c;

        /* renamed from: d */
        public final Cipher f110476d;

        /* renamed from: e */
        public final Mode f110477e;

        /* renamed from: f */
        public final boolean f110478f;

        /* renamed from: g */
        public int f110479g = 0;

        public C19352b(byte[] bArr, Mode mode, boolean z) throws NTLMEngineException {
            this.f110473a = bArr;
            this.f110478f = z;
            this.f110477e = mode;
            try {
                MessageDigest m68384M = NTLMEngineImpl.m68384M();
                MessageDigest m68384M2 = NTLMEngineImpl.m68384M();
                m68384M.update(bArr);
                m68384M2.update(bArr);
                if (mode == Mode.CLIENT) {
                    m68384M.update(NTLMEngineImpl.f110439J);
                    m68384M2.update(NTLMEngineImpl.f110441L);
                } else {
                    m68384M.update(NTLMEngineImpl.f110438I);
                    m68384M2.update(NTLMEngineImpl.f110440K);
                }
                this.f110474b = m68384M.digest();
                this.f110475c = m68384M2.digest();
                this.f110476d = m68443h();
            } catch (Exception e) {
                throw new NTLMEngineException(e.getMessage(), e);
            }
        }

        /* renamed from: a */
        public final void m68436a() throws NTLMEngineException {
            if (!this.f110478f) {
                MessageDigest m68384M = NTLMEngineImpl.m68384M();
                m68384M.update(this.f110475c);
                byte[] bArr = new byte[4];
                NTLMEngineImpl.m68413h0(bArr, this.f110479g, 0);
                m68384M.update(bArr);
                this.f110475c = m68384M.digest();
                m68443h();
            }
            this.f110479g++;
        }

        /* renamed from: b */
        public final byte[] m68437b(byte[] bArr) {
            byte[] bArr2 = new byte[16];
            bArr2[0] = 1;
            bArr2[1] = 0;
            bArr2[2] = 0;
            bArr2[3] = 0;
            C19351a c19351a = new C19351a(this.f110474b);
            c19351a.m68434b(NTLMEngineImpl.m68382K(this.f110479g));
            c19351a.m68434b(bArr);
            byte[] bArr3 = new byte[8];
            System.arraycopy(c19351a.m68433a(), 0, bArr3, 0, 8);
            System.arraycopy(m68440e(bArr3), 0, bArr2, 4, 8);
            NTLMEngineImpl.m68381J(bArr2, 12, this.f110479g);
            return bArr2;
        }

        /* renamed from: c */
        public final byte[] m68438c(byte[] bArr) {
            return this.f110476d.update(bArr);
        }

        /* renamed from: d */
        public byte[] m68439d(byte[] bArr) throws NTLMEngineException {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 0, 16);
            int length = bArr.length - 16;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, 16, bArr3, 0, length);
            byte[] m68438c = m68438c(bArr3);
            if (!m68445j(bArr2, m68438c)) {
                throw new NTLMEngineException("Wrong signature");
            }
            m68436a();
            return m68438c;
        }

        /* renamed from: e */
        public final byte[] m68440e(byte[] bArr) {
            return this.f110476d.update(bArr);
        }

        /* renamed from: f */
        public byte[] m68441f() {
            return this.f110475c;
        }

        /* renamed from: g */
        public byte[] m68442g() {
            return this.f110474b;
        }

        /* renamed from: h */
        public final Cipher m68443h() throws NTLMEngineException {
            try {
                Cipher cipher = Cipher.getInstance("RC4");
                if (this.f110477e == Mode.CLIENT) {
                    cipher.init(1, new SecretKeySpec(this.f110475c, "RC4"));
                } else {
                    cipher.init(2, new SecretKeySpec(this.f110475c, "RC4"));
                }
                return cipher;
            } catch (Exception e) {
                throw new NTLMEngineException(e.getMessage(), e);
            }
        }

        /* renamed from: i */
        public byte[] m68444i(byte[] bArr) throws NTLMEngineException {
            byte[] m68440e = m68440e(bArr);
            byte[] m68437b = m68437b(bArr);
            byte[] bArr2 = new byte[m68437b.length + m68440e.length];
            System.arraycopy(m68437b, 0, bArr2, 0, m68437b.length);
            System.arraycopy(m68440e, 0, bArr2, m68437b.length, m68440e.length);
            m68436a();
            return bArr2;
        }

        /* renamed from: j */
        public final boolean m68445j(byte[] bArr, byte[] bArr2) {
            return Arrays.equals(bArr, m68437b(bArr2));
        }
    }

    /* renamed from: org.apache.http.impl.auth.NTLMEngineImpl$c */
    /* loaded from: classes12.dex */
    public static class C19353c {

        /* renamed from: a */
        public int f110480a = 1732584193;

        /* renamed from: b */
        public int f110481b = -271733879;

        /* renamed from: c */
        public int f110482c = -1732584194;

        /* renamed from: d */
        public int f110483d = 271733878;

        /* renamed from: e */
        public long f110484e = 0;

        /* renamed from: f */
        public final byte[] f110485f = new byte[64];

        /* renamed from: a */
        public byte[] m68446a() {
            int i = (int) (this.f110484e & 63);
            int i2 = i < 56 ? 56 - i : 120 - i;
            byte[] bArr = new byte[i2 + 8];
            bArr[0] = Byte.MIN_VALUE;
            for (int i3 = 0; i3 < 8; i3++) {
                bArr[i2 + i3] = (byte) ((this.f110484e * 8) >>> (i3 * 8));
            }
            m68451f(bArr);
            byte[] bArr2 = new byte[16];
            NTLMEngineImpl.m68413h0(bArr2, this.f110480a, 0);
            NTLMEngineImpl.m68413h0(bArr2, this.f110481b, 4);
            NTLMEngineImpl.m68413h0(bArr2, this.f110482c, 8);
            NTLMEngineImpl.m68413h0(bArr2, this.f110483d, 12);
            return bArr2;
        }

        /* renamed from: b */
        public void m68447b() {
            int[] iArr = new int[16];
            for (int i = 0; i < 16; i++) {
                byte[] bArr = this.f110485f;
                int i2 = i * 4;
                iArr[i] = (bArr[i2] & 255) + ((bArr[i2 + 1] & 255) << 8) + ((bArr[i2 + 2] & 255) << 16) + ((bArr[i2 + 3] & 255) << 24);
            }
            int i3 = this.f110480a;
            int i4 = this.f110481b;
            int i5 = this.f110482c;
            int i6 = this.f110483d;
            m68448c(iArr);
            m68449d(iArr);
            m68450e(iArr);
            this.f110480a += i3;
            this.f110481b += i4;
            this.f110482c += i5;
            this.f110483d += i6;
        }

        /* renamed from: c */
        public void m68448c(int[] iArr) {
            int m68409f0 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68398a(this.f110481b, this.f110482c, this.f110483d) + iArr[0], 3);
            this.f110480a = m68409f0;
            int m68409f02 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68398a(m68409f0, this.f110481b, this.f110482c) + iArr[1], 7);
            this.f110483d = m68409f02;
            int m68409f03 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68398a(m68409f02, this.f110480a, this.f110481b) + iArr[2], 11);
            this.f110482c = m68409f03;
            int m68409f04 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68398a(m68409f03, this.f110483d, this.f110480a) + iArr[3], 19);
            this.f110481b = m68409f04;
            int m68409f05 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68398a(m68409f04, this.f110482c, this.f110483d) + iArr[4], 3);
            this.f110480a = m68409f05;
            int m68409f06 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68398a(m68409f05, this.f110481b, this.f110482c) + iArr[5], 7);
            this.f110483d = m68409f06;
            int m68409f07 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68398a(m68409f06, this.f110480a, this.f110481b) + iArr[6], 11);
            this.f110482c = m68409f07;
            int m68409f08 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68398a(m68409f07, this.f110483d, this.f110480a) + iArr[7], 19);
            this.f110481b = m68409f08;
            int m68409f09 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68398a(m68409f08, this.f110482c, this.f110483d) + iArr[8], 3);
            this.f110480a = m68409f09;
            int m68409f010 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68398a(m68409f09, this.f110481b, this.f110482c) + iArr[9], 7);
            this.f110483d = m68409f010;
            int m68409f011 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68398a(m68409f010, this.f110480a, this.f110481b) + iArr[10], 11);
            this.f110482c = m68409f011;
            int m68409f012 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68398a(m68409f011, this.f110483d, this.f110480a) + iArr[11], 19);
            this.f110481b = m68409f012;
            int m68409f013 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68398a(m68409f012, this.f110482c, this.f110483d) + iArr[12], 3);
            this.f110480a = m68409f013;
            int m68409f014 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68398a(m68409f013, this.f110481b, this.f110482c) + iArr[13], 7);
            this.f110483d = m68409f014;
            int m68409f015 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68398a(m68409f014, this.f110480a, this.f110481b) + iArr[14], 11);
            this.f110482c = m68409f015;
            this.f110481b = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68398a(m68409f015, this.f110483d, this.f110480a) + iArr[15], 19);
        }

        /* renamed from: d */
        public void m68449d(int[] iArr) {
            int m68409f0 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68400b(this.f110481b, this.f110482c, this.f110483d) + iArr[0] + 1518500249, 3);
            this.f110480a = m68409f0;
            int m68409f02 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68400b(m68409f0, this.f110481b, this.f110482c) + iArr[4] + 1518500249, 5);
            this.f110483d = m68409f02;
            int m68409f03 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68400b(m68409f02, this.f110480a, this.f110481b) + iArr[8] + 1518500249, 9);
            this.f110482c = m68409f03;
            int m68409f04 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68400b(m68409f03, this.f110483d, this.f110480a) + iArr[12] + 1518500249, 13);
            this.f110481b = m68409f04;
            int m68409f05 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68400b(m68409f04, this.f110482c, this.f110483d) + iArr[1] + 1518500249, 3);
            this.f110480a = m68409f05;
            int m68409f06 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68400b(m68409f05, this.f110481b, this.f110482c) + iArr[5] + 1518500249, 5);
            this.f110483d = m68409f06;
            int m68409f07 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68400b(m68409f06, this.f110480a, this.f110481b) + iArr[9] + 1518500249, 9);
            this.f110482c = m68409f07;
            int m68409f08 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68400b(m68409f07, this.f110483d, this.f110480a) + iArr[13] + 1518500249, 13);
            this.f110481b = m68409f08;
            int m68409f09 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68400b(m68409f08, this.f110482c, this.f110483d) + iArr[2] + 1518500249, 3);
            this.f110480a = m68409f09;
            int m68409f010 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68400b(m68409f09, this.f110481b, this.f110482c) + iArr[6] + 1518500249, 5);
            this.f110483d = m68409f010;
            int m68409f011 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68400b(m68409f010, this.f110480a, this.f110481b) + iArr[10] + 1518500249, 9);
            this.f110482c = m68409f011;
            int m68409f012 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68400b(m68409f011, this.f110483d, this.f110480a) + iArr[14] + 1518500249, 13);
            this.f110481b = m68409f012;
            int m68409f013 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68400b(m68409f012, this.f110482c, this.f110483d) + iArr[3] + 1518500249, 3);
            this.f110480a = m68409f013;
            int m68409f014 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68400b(m68409f013, this.f110481b, this.f110482c) + iArr[7] + 1518500249, 5);
            this.f110483d = m68409f014;
            int m68409f015 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68400b(m68409f014, this.f110480a, this.f110481b) + iArr[11] + 1518500249, 9);
            this.f110482c = m68409f015;
            this.f110481b = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68400b(m68409f015, this.f110483d, this.f110480a) + iArr[15] + 1518500249, 13);
        }

        /* renamed from: e */
        public void m68450e(int[] iArr) {
            int m68409f0 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68402c(this.f110481b, this.f110482c, this.f110483d) + iArr[0] + 1859775393, 3);
            this.f110480a = m68409f0;
            int m68409f02 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68402c(m68409f0, this.f110481b, this.f110482c) + iArr[8] + 1859775393, 9);
            this.f110483d = m68409f02;
            int m68409f03 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68402c(m68409f02, this.f110480a, this.f110481b) + iArr[4] + 1859775393, 11);
            this.f110482c = m68409f03;
            int m68409f04 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68402c(m68409f03, this.f110483d, this.f110480a) + iArr[12] + 1859775393, 15);
            this.f110481b = m68409f04;
            int m68409f05 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68402c(m68409f04, this.f110482c, this.f110483d) + iArr[2] + 1859775393, 3);
            this.f110480a = m68409f05;
            int m68409f06 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68402c(m68409f05, this.f110481b, this.f110482c) + iArr[10] + 1859775393, 9);
            this.f110483d = m68409f06;
            int m68409f07 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68402c(m68409f06, this.f110480a, this.f110481b) + iArr[6] + 1859775393, 11);
            this.f110482c = m68409f07;
            int m68409f08 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68402c(m68409f07, this.f110483d, this.f110480a) + iArr[14] + 1859775393, 15);
            this.f110481b = m68409f08;
            int m68409f09 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68402c(m68409f08, this.f110482c, this.f110483d) + iArr[1] + 1859775393, 3);
            this.f110480a = m68409f09;
            int m68409f010 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68402c(m68409f09, this.f110481b, this.f110482c) + iArr[9] + 1859775393, 9);
            this.f110483d = m68409f010;
            int m68409f011 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68402c(m68409f010, this.f110480a, this.f110481b) + iArr[5] + 1859775393, 11);
            this.f110482c = m68409f011;
            int m68409f012 = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68402c(m68409f011, this.f110483d, this.f110480a) + iArr[13] + 1859775393, 15);
            this.f110481b = m68409f012;
            int m68409f013 = NTLMEngineImpl.m68409f0(this.f110480a + NTLMEngineImpl.m68402c(m68409f012, this.f110482c, this.f110483d) + iArr[3] + 1859775393, 3);
            this.f110480a = m68409f013;
            int m68409f014 = NTLMEngineImpl.m68409f0(this.f110483d + NTLMEngineImpl.m68402c(m68409f013, this.f110481b, this.f110482c) + iArr[11] + 1859775393, 9);
            this.f110483d = m68409f014;
            int m68409f015 = NTLMEngineImpl.m68409f0(this.f110482c + NTLMEngineImpl.m68402c(m68409f014, this.f110480a, this.f110481b) + iArr[7] + 1859775393, 11);
            this.f110482c = m68409f015;
            this.f110481b = NTLMEngineImpl.m68409f0(this.f110481b + NTLMEngineImpl.m68402c(m68409f015, this.f110483d, this.f110480a) + iArr[15] + 1859775393, 15);
        }

        /* renamed from: f */
        public void m68451f(byte[] bArr) {
            byte[] bArr2;
            int i = (int) (this.f110484e & 63);
            int i2 = 0;
            while (true) {
                int length = (bArr.length - i2) + i;
                bArr2 = this.f110485f;
                if (length < bArr2.length) {
                    break;
                }
                int length2 = bArr2.length - i;
                System.arraycopy(bArr, i2, bArr2, i, length2);
                this.f110484e += length2;
                i2 += length2;
                m68447b();
                i = 0;
            }
            if (i2 < bArr.length) {
                int length3 = bArr.length - i2;
                System.arraycopy(bArr, i2, bArr2, i, length3);
                this.f110484e += length3;
            }
        }
    }

    /* renamed from: org.apache.http.impl.auth.NTLMEngineImpl$e */
    /* loaded from: classes12.dex */
    public static class C19355e extends C19354d {

        /* renamed from: c */
        public final byte[] f110488c;

        /* renamed from: d */
        public final byte[] f110489d;

        /* renamed from: e */
        public final int f110490e;

        public C19355e(String str, String str2) throws NTLMEngineException {
            this(str, str2, null);
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.C19354d
        /* renamed from: e */
        public void mo68456e() {
            byte[] bArr = this.f110489d;
            int length = bArr != null ? bArr.length : 0;
            byte[] bArr2 = this.f110488c;
            int length2 = bArr2 != null ? bArr2.length : 0;
            m68461j(length2 + 40 + length, 1);
            m68454c(this.f110490e);
            m68455d(length);
            m68455d(length);
            m68454c(length2 + 32 + 8);
            m68455d(length2);
            m68455d(length2);
            m68454c(40);
            m68455d(261);
            m68454c(2600);
            m68455d(3840);
            byte[] bArr3 = this.f110488c;
            if (bArr3 != null) {
                m68453b(bArr3);
            }
            byte[] bArr4 = this.f110489d;
            if (bArr4 != null) {
                m68453b(bArr4);
            }
        }

        /* renamed from: p */
        public final int m68467p() {
            return -1576500735;
        }

        public C19355e(String str, String str2, Integer num) throws NTLMEngineException {
            this.f110490e = num == null ? m68467p() : num.intValue();
            String m68378G = NTLMEngineImpl.m68378G(str2);
            String m68377F = NTLMEngineImpl.m68377F(str);
            this.f110488c = m68378G != null ? m68378G.getBytes(NTLMEngineImpl.f110444a) : null;
            this.f110489d = m68377F != null ? m68377F.toUpperCase(Locale.ROOT).getBytes(NTLMEngineImpl.f110444a) : null;
        }

        public C19355e() {
            this.f110488c = null;
            this.f110489d = null;
            this.f110490e = m68467p();
        }
    }

    /* renamed from: org.apache.http.impl.auth.NTLMEngineImpl$f */
    /* loaded from: classes12.dex */
    public static class C19356f extends C19354d {

        /* renamed from: c */
        public final byte[] f110491c;

        /* renamed from: d */
        public String f110492d;

        /* renamed from: e */
        public byte[] f110493e;

        /* renamed from: f */
        public final int f110494f;

        public C19356f(String str) throws NTLMEngineException {
            this(Base64.decodeBase64(str.getBytes(NTLMEngineImpl.f110445b)));
        }

        /* renamed from: p */
        public byte[] m68468p() {
            return this.f110491c;
        }

        /* renamed from: q */
        public int m68469q() {
            return this.f110494f;
        }

        /* renamed from: r */
        public String m68470r() {
            return this.f110492d;
        }

        /* renamed from: s */
        public byte[] m68471s() {
            return this.f110493e;
        }

        public C19356f(byte[] bArr) throws NTLMEngineException {
            super(bArr, 2);
            byte[] bArr2 = new byte[8];
            this.f110491c = bArr2;
            m68463l(bArr2, 24);
            int m68465n = m68465n(20);
            this.f110494f = m68465n;
            this.f110492d = null;
            if (m68458g() >= 20) {
                byte[] m68464m = m68464m(12);
                if (m68464m.length != 0) {
                    this.f110492d = new String(m68464m, NTLMEngineImpl.m68383L(m68465n));
                }
            }
            this.f110493e = null;
            if (m68458g() >= 48) {
                byte[] m68464m2 = m68464m(40);
                if (m68464m2.length != 0) {
                    this.f110493e = m68464m2;
                }
            }
        }
    }

    /* renamed from: org.apache.http.impl.auth.NTLMEngineImpl$g */
    /* loaded from: classes12.dex */
    public static class C19357g extends C19354d {

        /* renamed from: c */
        public final byte[] f110495c;

        /* renamed from: d */
        public final byte[] f110496d;

        /* renamed from: e */
        public final int f110497e;

        /* renamed from: f */
        public final byte[] f110498f;

        /* renamed from: g */
        public final byte[] f110499g;

        /* renamed from: h */
        public final byte[] f110500h;

        /* renamed from: i */
        public byte[] f110501i;

        /* renamed from: j */
        public byte[] f110502j;

        /* renamed from: k */
        public final byte[] f110503k;

        /* renamed from: l */
        public final byte[] f110504l;

        /* renamed from: m */
        public final boolean f110505m;

        public C19357g(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) throws NTLMEngineException {
            this(str, str2, str3, str4, bArr, i, str5, bArr2, null, null, null);
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.C19354d
        /* renamed from: e */
        public void mo68456e() {
            int i;
            int length = this.f110502j.length;
            int length2 = this.f110501i.length;
            byte[] bArr = this.f110498f;
            int length3 = bArr != null ? bArr.length : 0;
            byte[] bArr2 = this.f110499g;
            int length4 = bArr2 != null ? bArr2.length : 0;
            int length5 = this.f110500h.length;
            byte[] bArr3 = this.f110503k;
            int length6 = bArr3 != null ? bArr3.length : 0;
            int i2 = (this.f110505m ? 16 : 0) + 72;
            int i3 = i2 + length2;
            int i4 = i3 + length;
            int i5 = i4 + length3;
            int i6 = i5 + length5;
            int i7 = i6 + length4;
            m68461j(i7 + length6, 3);
            m68455d(length2);
            m68455d(length2);
            m68454c(i2);
            m68455d(length);
            m68455d(length);
            m68454c(i3);
            m68455d(length3);
            m68455d(length3);
            m68454c(i4);
            m68455d(length5);
            m68455d(length5);
            m68454c(i5);
            m68455d(length4);
            m68455d(length4);
            m68454c(i6);
            m68455d(length6);
            m68455d(length6);
            m68454c(i7);
            m68454c(this.f110497e);
            m68455d(261);
            m68454c(2600);
            m68455d(3840);
            if (this.f110505m) {
                i = this.f110487b;
                this.f110487b = i + 16;
            } else {
                i = -1;
            }
            m68453b(this.f110501i);
            m68453b(this.f110502j);
            m68453b(this.f110498f);
            m68453b(this.f110500h);
            m68453b(this.f110499g);
            byte[] bArr4 = this.f110503k;
            if (bArr4 != null) {
                m68453b(bArr4);
            }
            if (this.f110505m) {
                C19351a c19351a = new C19351a(this.f110504l);
                c19351a.m68434b(this.f110495c);
                c19351a.m68434b(this.f110496d);
                c19351a.m68434b(this.f110486a);
                byte[] m68433a = c19351a.m68433a();
                System.arraycopy(m68433a, 0, this.f110486a, i, m68433a.length);
            }
        }

        /* renamed from: p */
        public final byte[] m68472p(byte[] bArr, Certificate certificate) throws NTLMEngineException {
            byte[] bArr2 = new byte[bArr.length + 8 + 20];
            int length = bArr.length - 4;
            System.arraycopy(bArr, 0, bArr2, 0, length);
            NTLMEngineImpl.m68415i0(bArr2, 6, length);
            NTLMEngineImpl.m68415i0(bArr2, 4, length + 2);
            NTLMEngineImpl.m68413h0(bArr2, 2, length + 4);
            NTLMEngineImpl.m68415i0(bArr2, 10, length + 8);
            NTLMEngineImpl.m68415i0(bArr2, 16, length + 10);
            try {
                byte[] digest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(certificate.getEncoded());
                byte[] bArr3 = new byte[NTLMEngineImpl.f110442M.length + 20 + digest.length];
                NTLMEngineImpl.m68413h0(bArr3, 53, 16);
                System.arraycopy(NTLMEngineImpl.f110442M, 0, bArr3, 20, NTLMEngineImpl.f110442M.length);
                System.arraycopy(digest, 0, bArr3, NTLMEngineImpl.f110442M.length + 20, digest.length);
                System.arraycopy(NTLMEngineImpl.m68384M().digest(bArr3), 0, bArr2, length + 12, 16);
                return bArr2;
            } catch (NoSuchAlgorithmException e) {
                throw new NTLMEngineException(e.getMessage(), e);
            } catch (CertificateEncodingException e2) {
                throw new NTLMEngineException(e2.getMessage(), e2);
            }
        }

        /* renamed from: q */
        public byte[] m68473q() {
            return this.f110503k;
        }

        /* renamed from: r */
        public byte[] m68474r() {
            return this.f110504l;
        }

        public C19357g(Random random, long j, String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) throws NTLMEngineException {
            this(random, j, str, str2, str3, str4, bArr, i, str5, bArr2, null, null, null);
        }

        public C19357g(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2, Certificate certificate, byte[] bArr3, byte[] bArr4) throws NTLMEngineException {
            this(NTLMEngineImpl.f110436G, System.currentTimeMillis(), str, str2, str3, str4, bArr, i, str5, bArr2, certificate, bArr3, bArr4);
        }

        public C19357g(Random random, long j, String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2, Certificate certificate, byte[] bArr3, byte[] bArr4) throws NTLMEngineException {
            byte[] bArr5;
            byte[] lMUserSessionKey;
            if (random != null) {
                this.f110497e = i;
                this.f110495c = bArr3;
                this.f110496d = bArr4;
                String m68378G = NTLMEngineImpl.m68378G(str2);
                String m68377F = NTLMEngineImpl.m68377F(str);
                if (certificate != null) {
                    byte[] m68472p = m68472p(bArr2, certificate);
                    this.f110505m = true;
                    bArr5 = m68472p;
                } else {
                    this.f110505m = false;
                    bArr5 = bArr2;
                }
                CipherGen cipherGen = new CipherGen(random, j, m68377F, str3, str4, bArr, str5, bArr5);
                try {
                    if ((8388608 & i) != 0 && bArr2 != null && str5 != null) {
                        this.f110502j = cipherGen.getNTLMv2Response();
                        this.f110501i = cipherGen.getLMv2Response();
                        if ((i & 128) != 0) {
                            lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                        } else {
                            lMUserSessionKey = cipherGen.getNTLMv2UserSessionKey();
                        }
                    } else if ((524288 & i) != 0) {
                        this.f110502j = cipherGen.getNTLM2SessionResponse();
                        this.f110501i = cipherGen.getLM2SessionResponse();
                        if ((i & 128) != 0) {
                            lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                        } else {
                            lMUserSessionKey = cipherGen.getNTLM2SessionResponseUserSessionKey();
                        }
                    } else {
                        this.f110502j = cipherGen.getNTLMResponse();
                        this.f110501i = cipherGen.getLMResponse();
                        if ((i & 128) != 0) {
                            lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                        } else {
                            lMUserSessionKey = cipherGen.getNTLMUserSessionKey();
                        }
                    }
                } catch (NTLMEngineException unused) {
                    this.f110502j = new byte[0];
                    this.f110501i = cipherGen.getLMResponse();
                    if ((i & 128) != 0) {
                        lMUserSessionKey = cipherGen.getLanManagerSessionKey();
                    } else {
                        lMUserSessionKey = cipherGen.getLMUserSessionKey();
                    }
                }
                if ((i & 16) != 0) {
                    if ((1073741824 & i) != 0) {
                        byte[] secondaryKey = cipherGen.getSecondaryKey();
                        this.f110504l = secondaryKey;
                        this.f110503k = NTLMEngineImpl.m68404d(secondaryKey, lMUserSessionKey);
                    } else {
                        this.f110503k = lMUserSessionKey;
                        this.f110504l = lMUserSessionKey;
                    }
                } else if (!this.f110505m) {
                    this.f110503k = null;
                    this.f110504l = null;
                } else {
                    throw new NTLMEngineException("Cannot sign/seal: no exported session key");
                }
                Charset m68383L = NTLMEngineImpl.m68383L(i);
                this.f110499g = m68378G != null ? m68378G.getBytes(m68383L) : null;
                this.f110498f = m68377F != null ? m68377F.toUpperCase(Locale.ROOT).getBytes(m68383L) : null;
                this.f110500h = str3.getBytes(m68383L);
                return;
            }
            throw new NTLMEngineException("Random generator not available");
        }
    }

    static {
        SecureRandom secureRandom;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception unused) {
            secureRandom = null;
        }
        f110436G = secureRandom;
        f110437H = m68385N("NTLMSSP");
        f110438I = m68385N("session key to server-to-client signing key magic constant");
        f110439J = m68385N("session key to client-to-server signing key magic constant");
        f110440K = m68385N("session key to server-to-client sealing key magic constant");
        f110441L = m68385N("session key to client-to-server sealing key magic constant");
        f110442M = "tls-server-end-point:".getBytes(Consts.ASCII);
        f110443N = new C19355e().m68460i();
    }

    /* renamed from: F */
    public static String m68377F(String str) {
        return m68411g0(str);
    }

    /* renamed from: G */
    public static String m68378G(String str) {
        return m68411g0(str);
    }

    /* renamed from: H */
    public static byte[] m68379H(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[bArr3.length + 8 + 8 + 4 + bArr2.length + 4];
        System.arraycopy(new byte[]{1, 1, 0, 0}, 0, bArr4, 0, 4);
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, 4, 4);
        System.arraycopy(bArr3, 0, bArr4, 8, bArr3.length);
        int length = bArr3.length + 8;
        System.arraycopy(bArr, 0, bArr4, length, 8);
        int i = length + 8;
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, i, 4);
        int i2 = i + 4;
        System.arraycopy(bArr2, 0, bArr4, i2, bArr2.length);
        System.arraycopy(new byte[]{0, 0, 0, 0}, 0, bArr4, i2 + bArr2.length, 4);
        return bArr4;
    }

    /* renamed from: I */
    public static Key m68380I(byte[] bArr, int i) {
        byte[] bArr2 = new byte[7];
        System.arraycopy(bArr, i, bArr2, 0, 7);
        byte[] bArr3 = {bArr2[0], (byte) ((bArr2[0] << 7) | ((bArr2[1] & 255) >>> 1)), (byte) ((bArr2[1] << 6) | ((bArr2[2] & 255) >>> 2)), (byte) ((bArr2[2] << 5) | ((bArr2[3] & 255) >>> 3)), (byte) ((bArr2[3] << 4) | ((bArr2[4] & 255) >>> 4)), (byte) ((bArr2[4] << 3) | ((bArr2[5] & 255) >>> 5)), (byte) ((bArr2[5] << 2) | ((bArr2[6] & 255) >>> 6)), (byte) (bArr2[6] << 1)};
        m68401b0(bArr3);
        return new SecretKeySpec(bArr3, "DES");
    }

    /* renamed from: J */
    public static void m68381J(byte[] bArr, int i, int i2) {
        bArr[i + 0] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i + 3] = (byte) ((i2 >> 24) & 255);
    }

    /* renamed from: K */
    public static byte[] m68382K(int i) {
        byte[] bArr = new byte[4];
        m68381J(bArr, 0, i);
        return bArr;
    }

    /* renamed from: L */
    public static Charset m68383L(int i) throws NTLMEngineException {
        if ((i & 1) == 0) {
            return f110445b;
        }
        Charset charset = f110444a;
        if (charset != null) {
            return charset;
        }
        throw new NTLMEngineException("Unicode not supported");
    }

    /* renamed from: M */
    public static MessageDigest m68384M() {
        try {
            return MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("MD5 message digest doesn't seem to exist - fatal error: " + e.getMessage(), e);
        }
    }

    /* renamed from: N */
    public static byte[] m68385N(String str) {
        byte[] bytes = str.getBytes(Consts.ASCII);
        byte[] bArr = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[bytes.length] = 0;
        return bArr;
    }

    /* renamed from: O */
    public static String m68386O(String str, String str2) {
        return f110443N;
    }

    /* renamed from: P */
    public static String m68387P(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2) throws NTLMEngineException {
        return new C19357g(str4, str3, str, str2, bArr, i, str5, bArr2).m68460i();
    }

    /* renamed from: Q */
    public static String m68388Q(String str, String str2, String str3, String str4, byte[] bArr, int i, String str5, byte[] bArr2, Certificate certificate, byte[] bArr3, byte[] bArr4) throws NTLMEngineException {
        return new C19357g(str4, str3, str, str2, bArr, i, str5, bArr2, certificate, bArr3, bArr4).m68460i();
    }

    /* renamed from: R */
    public static byte[] m68389R(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        C19351a c19351a = new C19351a(bArr2);
        c19351a.m68434b(bArr);
        return c19351a.m68433a();
    }

    /* renamed from: S */
    public static byte[] m68390S(String str) throws NTLMEngineException {
        try {
            String upperCase = str.toUpperCase(Locale.ROOT);
            Charset charset = Consts.ASCII;
            byte[] bytes = upperCase.getBytes(charset);
            byte[] bArr = new byte[14];
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 14));
            Key m68380I = m68380I(bArr, 0);
            Key m68380I2 = m68380I(bArr, 7);
            byte[] bytes2 = "KGS!@#$%".getBytes(charset);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, m68380I);
            byte[] doFinal = cipher.doFinal(bytes2);
            cipher.init(1, m68380I2);
            byte[] doFinal2 = cipher.doFinal(bytes2);
            byte[] bArr2 = new byte[16];
            System.arraycopy(doFinal, 0, bArr2, 0, 8);
            System.arraycopy(doFinal2, 0, bArr2, 8, 8);
            return bArr2;
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* renamed from: T */
    public static byte[] m68391T(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            byte[] bArr3 = new byte[21];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            Key m68380I = m68380I(bArr3, 0);
            Key m68380I2 = m68380I(bArr3, 7);
            Key m68380I3 = m68380I(bArr3, 14);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, m68380I);
            byte[] doFinal = cipher.doFinal(bArr2);
            cipher.init(1, m68380I2);
            byte[] doFinal2 = cipher.doFinal(bArr2);
            cipher.init(1, m68380I3);
            byte[] doFinal3 = cipher.doFinal(bArr2);
            byte[] bArr4 = new byte[24];
            System.arraycopy(doFinal, 0, bArr4, 0, 8);
            System.arraycopy(doFinal2, 0, bArr4, 8, 8);
            System.arraycopy(doFinal3, 0, bArr4, 16, 8);
            return bArr4;
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* renamed from: U */
    public static byte[] m68392U(String str, String str2, byte[] bArr) throws NTLMEngineException {
        Charset charset = f110444a;
        if (charset == null) {
            throw new NTLMEngineException("Unicode not supported");
        }
        C19351a c19351a = new C19351a(bArr);
        Locale locale = Locale.ROOT;
        c19351a.m68434b(str2.toUpperCase(locale).getBytes(charset));
        if (str != null) {
            c19351a.m68434b(str.toUpperCase(locale).getBytes(charset));
        }
        return c19351a.m68433a();
    }

    /* renamed from: V */
    public static byte[] m68393V(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        C19351a c19351a = new C19351a(bArr);
        c19351a.m68434b(bArr2);
        c19351a.m68434b(bArr3);
        byte[] m68433a = c19351a.m68433a();
        byte[] bArr4 = new byte[m68433a.length + bArr3.length];
        System.arraycopy(m68433a, 0, bArr4, 0, m68433a.length);
        System.arraycopy(bArr3, 0, bArr4, m68433a.length, bArr3.length);
        return bArr4;
    }

    /* renamed from: W */
    public static byte[] m68394W(Random random) {
        byte[] bArr = new byte[8];
        synchronized (random) {
            random.nextBytes(bArr);
        }
        return bArr;
    }

    /* renamed from: X */
    public static byte[] m68395X(Random random) {
        byte[] bArr = new byte[16];
        synchronized (random) {
            random.nextBytes(bArr);
        }
        return bArr;
    }

    /* renamed from: Y */
    public static byte[] m68396Y(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        try {
            MessageDigest m68384M = m68384M();
            m68384M.update(bArr2);
            m68384M.update(bArr3);
            byte[] digest = m68384M.digest();
            byte[] bArr4 = new byte[8];
            System.arraycopy(digest, 0, bArr4, 0, 8);
            return m68391T(bArr, bArr4);
        } catch (Exception e) {
            if (e instanceof NTLMEngineException) {
                throw ((NTLMEngineException) e);
            }
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* renamed from: Z */
    public static byte[] m68397Z(String str) throws NTLMEngineException {
        Charset charset = f110444a;
        if (charset == null) {
            throw new NTLMEngineException("Unicode not supported");
        }
        byte[] bytes = str.getBytes(charset);
        C19353c c19353c = new C19353c();
        c19353c.m68451f(bytes);
        return c19353c.m68446a();
    }

    /* renamed from: a */
    public static int m68398a(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    /* renamed from: a0 */
    public static byte[] m68399a0(String str, String str2, byte[] bArr) throws NTLMEngineException {
        Charset charset = f110444a;
        if (charset == null) {
            throw new NTLMEngineException("Unicode not supported");
        }
        C19351a c19351a = new C19351a(bArr);
        c19351a.m68434b(str2.toUpperCase(Locale.ROOT).getBytes(charset));
        if (str != null) {
            c19351a.m68434b(str.getBytes(charset));
        }
        return c19351a.m68433a();
    }

    /* renamed from: b */
    public static int m68400b(int i, int i2, int i3) {
        return (i & i3) | (i & i2) | (i2 & i3);
    }

    /* renamed from: b0 */
    public static void m68401b0(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            if (((((((((b >>> 7) ^ (b >>> 6)) ^ (b >>> 5)) ^ (b >>> 4)) ^ (b >>> 3)) ^ (b >>> 2)) ^ (b >>> 1)) & 1) == 0) {
                bArr[i] = (byte) (b | 1);
            } else {
                bArr[i] = (byte) (b & (-2));
            }
        }
    }

    /* renamed from: c */
    public static int m68402c(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* renamed from: c0 */
    public static byte[] m68403c0(byte[] bArr, int i) {
        int m68407e0 = m68407e0(bArr, i);
        int m68405d0 = m68405d0(bArr, i + 4);
        if (bArr.length < m68405d0 + m68407e0) {
            return new byte[m68407e0];
        }
        byte[] bArr2 = new byte[m68407e0];
        System.arraycopy(bArr, m68405d0, bArr2, 0, m68407e0);
        return bArr2;
    }

    /* renamed from: d */
    public static byte[] m68404d(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            Cipher cipher = Cipher.getInstance("RC4");
            cipher.init(1, new SecretKeySpec(bArr2, "RC4"));
            return cipher.doFinal(bArr);
        } catch (Exception e) {
            throw new NTLMEngineException(e.getMessage(), e);
        }
    }

    /* renamed from: d0 */
    public static int m68405d0(byte[] bArr, int i) {
        if (bArr.length < i + 4) {
            return 0;
        }
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: e0 */
    public static int m68407e0(byte[] bArr, int i) {
        if (bArr.length < i + 2) {
            return 0;
        }
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* renamed from: f0 */
    public static int m68409f0(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: g0 */
    public static String m68411g0(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(46);
        return indexOf != -1 ? str.substring(0, indexOf) : str;
    }

    /* renamed from: h0 */
    public static void m68413h0(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
        bArr[i2 + 2] = (byte) ((i >> 16) & 255);
        bArr[i2 + 3] = (byte) ((i >> 24) & 255);
    }

    /* renamed from: i0 */
    public static void m68415i0(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) (i & 255);
        bArr[i2 + 1] = (byte) ((i >> 8) & 255);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType1Msg(String str, String str2) throws NTLMEngineException {
        return m68386O(str2, str);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType3Msg(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        C19356f c19356f = new C19356f(str5);
        return m68387P(str, str2, str4, str3, c19356f.m68468p(), c19356f.m68469q(), c19356f.m68470r(), c19356f.m68471s());
    }

    /* renamed from: org.apache.http.impl.auth.NTLMEngineImpl$d */
    /* loaded from: classes12.dex */
    public static class C19354d {

        /* renamed from: a */
        public byte[] f110486a;

        /* renamed from: b */
        public int f110487b;

        public C19354d() {
            this.f110486a = null;
            this.f110487b = 0;
        }

        /* renamed from: a */
        public void m68452a(byte b) {
            byte[] bArr = this.f110486a;
            int i = this.f110487b;
            bArr[i] = b;
            this.f110487b = i + 1;
        }

        /* renamed from: b */
        public void m68453b(byte[] bArr) {
            if (bArr == null) {
                return;
            }
            for (byte b : bArr) {
                byte[] bArr2 = this.f110486a;
                int i = this.f110487b;
                bArr2[i] = b;
                this.f110487b = i + 1;
            }
        }

        /* renamed from: c */
        public void m68454c(int i) {
            m68452a((byte) (i & 255));
            m68452a((byte) ((i >> 8) & 255));
            m68452a((byte) ((i >> 16) & 255));
            m68452a((byte) ((i >> 24) & 255));
        }

        /* renamed from: d */
        public void m68455d(int i) {
            m68452a((byte) (i & 255));
            m68452a((byte) ((i >> 8) & 255));
        }

        /* renamed from: e */
        public void mo68456e() {
            throw new RuntimeException("Message builder not implemented for " + getClass().getName());
        }

        /* renamed from: f */
        public byte[] m68457f() {
            if (this.f110486a == null) {
                mo68456e();
            }
            byte[] bArr = this.f110486a;
            int length = bArr.length;
            int i = this.f110487b;
            if (length > i) {
                byte[] bArr2 = new byte[i];
                System.arraycopy(bArr, 0, bArr2, 0, i);
                this.f110486a = bArr2;
            }
            return this.f110486a;
        }

        /* renamed from: g */
        public int m68458g() {
            return this.f110487b;
        }

        /* renamed from: h */
        public int m68459h() {
            return NTLMEngineImpl.f110437H.length + 4;
        }

        /* renamed from: i */
        public String m68460i() {
            return new String(Base64.encodeBase64(m68457f()), Consts.ASCII);
        }

        /* renamed from: j */
        public void m68461j(int i, int i2) {
            this.f110486a = new byte[i];
            this.f110487b = 0;
            m68453b(NTLMEngineImpl.f110437H);
            m68454c(i2);
        }

        /* renamed from: k */
        public byte m68462k(int i) throws NTLMEngineException {
            byte[] bArr = this.f110486a;
            if (bArr.length >= i + 1) {
                return bArr[i];
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        /* renamed from: l */
        public void m68463l(byte[] bArr, int i) throws NTLMEngineException {
            byte[] bArr2 = this.f110486a;
            if (bArr2.length < bArr.length + i) {
                throw new NTLMEngineException("NTLM: Message too short");
            }
            System.arraycopy(bArr2, i, bArr, 0, bArr.length);
        }

        /* renamed from: m */
        public byte[] m68464m(int i) throws NTLMEngineException {
            return NTLMEngineImpl.m68403c0(this.f110486a, i);
        }

        /* renamed from: n */
        public int m68465n(int i) throws NTLMEngineException {
            return NTLMEngineImpl.m68405d0(this.f110486a, i);
        }

        /* renamed from: o */
        public int m68466o(int i) throws NTLMEngineException {
            return NTLMEngineImpl.m68407e0(this.f110486a, i);
        }

        public C19354d(String str, int i) throws NTLMEngineException {
            this(Base64.decodeBase64(str.getBytes(NTLMEngineImpl.f110445b)), i);
        }

        public C19354d(byte[] bArr, int i) throws NTLMEngineException {
            this.f110487b = 0;
            this.f110486a = bArr;
            if (bArr.length >= NTLMEngineImpl.f110437H.length) {
                for (int i2 = 0; i2 < NTLMEngineImpl.f110437H.length; i2++) {
                    if (this.f110486a[i2] != NTLMEngineImpl.f110437H[i2]) {
                        throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
                    }
                }
                int m68465n = m68465n(NTLMEngineImpl.f110437H.length);
                if (m68465n == i) {
                    this.f110487b = this.f110486a.length;
                    return;
                }
                throw new NTLMEngineException("NTLM type " + Integer.toString(i) + " message expected - instead got type " + Integer.toString(m68465n));
            }
            throw new NTLMEngineException("NTLM message decoding error - packet too short");
        }
    }
}
