package com.google.api.client.auth.openidconnect;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.util.Base64;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.util.concurrent.UncheckedExecutionException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
/* loaded from: classes6.dex */
public class IdTokenVerifier {
    public static final long DEFAULT_TIME_SKEW_SECONDS = 300;
    private static final String FEDERATED_SIGNON_CERT_URL = "https://www.googleapis.com/oauth2/v3/certs";
    private static final String IAP_CERT_URL = "https://www.gstatic.com/iap/verify/public_key-jwk";
    private static final String NOT_SUPPORTED_ALGORITHM = "Unexpected signing algorithm %s: expected either RS256 or ES256";
    static final String SKIP_SIGNATURE_ENV_VAR = "OAUTH_CLIENT_SKIP_SIGNATURE";
    private final long acceptableTimeSkewSeconds;
    private final Collection<String> audience;
    private final String certificatesLocation;
    private final Clock clock;
    private final Environment environment;
    private final Collection<String> issuers;
    private final LoadingCache<String, Map<String, PublicKey>> publicKeyCache;
    private static final Logger LOGGER = Logger.getLogger(IdTokenVerifier.class.getName());
    private static final Set<String> SUPPORTED_ALGORITHMS = ImmutableSet.m26236of("RS256", "ES256");
    static final HttpTransport HTTP_TRANSPORT = new NetHttpTransport();

    @Beta
    /* loaded from: classes6.dex */
    public static class Builder {
        Collection<String> audience;
        String certificatesLocation;
        Environment environment;
        HttpTransportFactory httpTransportFactory;
        Collection<String> issuers;
        Clock clock = Clock.SYSTEM;
        long acceptableTimeSkewSeconds = 300;

        public IdTokenVerifier build() {
            return new IdTokenVerifier(this);
        }

        public final long getAcceptableTimeSkewSeconds() {
            return this.acceptableTimeSkewSeconds;
        }

        public final Collection<String> getAudience() {
            return this.audience;
        }

        public final Clock getClock() {
            return this.clock;
        }

        public final Environment getEnvironment() {
            return this.environment;
        }

        public final String getIssuer() {
            Collection<String> collection = this.issuers;
            if (collection == null) {
                return null;
            }
            return collection.iterator().next();
        }

        public final Collection<String> getIssuers() {
            return this.issuers;
        }

        public Builder setAcceptableTimeSkewSeconds(long j) {
            Preconditions.checkArgument(j >= 0);
            this.acceptableTimeSkewSeconds = j;
            return this;
        }

        public Builder setAudience(Collection<String> collection) {
            this.audience = collection;
            return this;
        }

        public Builder setCertificatesLocation(String str) {
            this.certificatesLocation = str;
            return this;
        }

        public Builder setClock(Clock clock) {
            this.clock = (Clock) Preconditions.checkNotNull(clock);
            return this;
        }

        public Builder setEnvironment(Environment environment) {
            this.environment = environment;
            return this;
        }

        public Builder setHttpTransportFactory(HttpTransportFactory httpTransportFactory) {
            this.httpTransportFactory = httpTransportFactory;
            return this;
        }

        public Builder setIssuer(String str) {
            return str == null ? setIssuers(null) : setIssuers(Collections.singleton(str));
        }

        public Builder setIssuers(Collection<String> collection) {
            Preconditions.checkArgument(collection == null || !collection.isEmpty(), "Issuers must not be empty");
            this.issuers = collection;
            return this;
        }
    }

    /* loaded from: classes6.dex */
    public static class DefaultHttpTransportFactory implements HttpTransportFactory {
        @Override // com.google.api.client.auth.openidconnect.HttpTransportFactory
        public HttpTransport create() {
            return IdTokenVerifier.HTTP_TRANSPORT;
        }
    }

    /* loaded from: classes6.dex */
    public static class PublicKeyLoader extends CacheLoader<String, Map<String, PublicKey>> {
        private final HttpTransportFactory httpTransportFactory;

        /* loaded from: classes6.dex */
        public static class JsonWebKey {

            @Key
            public String alg;

            @Key
            public String crv;

            /* renamed from: e */
            @Key
            public String f33487e;

            @Key
            public String kid;

            @Key
            public String kty;

            /* renamed from: n */
            @Key
            public String f33488n;

            @Key
            public String use;

            /* renamed from: x */
            @Key
            public String f33489x;

            /* renamed from: y */
            @Key
            public String f33490y;
        }

        /* loaded from: classes6.dex */
        public static class JsonWebKeySet extends GenericJson {

            @Key
            public List<JsonWebKey> keys;
        }

        public PublicKeyLoader(HttpTransportFactory httpTransportFactory) {
            this.httpTransportFactory = httpTransportFactory;
        }

        private PublicKey buildEs256PublicKey(JsonWebKey jsonWebKey) throws NoSuchAlgorithmException, InvalidParameterSpecException, InvalidKeySpecException {
            com.google.common.base.Preconditions.checkArgument("EC".equals(jsonWebKey.kty));
            com.google.common.base.Preconditions.checkArgument("P-256".equals(jsonWebKey.crv));
            ECPoint eCPoint = new ECPoint(new BigInteger(1, Base64.decodeBase64(jsonWebKey.f33489x)), new BigInteger(1, Base64.decodeBase64(jsonWebKey.f33490y)));
            AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance("EC");
            algorithmParameters.init(new ECGenParameterSpec("secp256r1"));
            return KeyFactory.getInstance("EC").generatePublic(new ECPublicKeySpec(eCPoint, (ECParameterSpec) algorithmParameters.getParameterSpec(ECParameterSpec.class)));
        }

        private PublicKey buildPublicKey(JsonWebKey jsonWebKey) throws NoSuchAlgorithmException, InvalidParameterSpecException, InvalidKeySpecException {
            if ("ES256".equals(jsonWebKey.alg)) {
                return buildEs256PublicKey(jsonWebKey);
            }
            if ("RS256".equals(jsonWebKey.alg)) {
                return buildRs256PublicKey(jsonWebKey);
            }
            return null;
        }

        private PublicKey buildRs256PublicKey(JsonWebKey jsonWebKey) throws NoSuchAlgorithmException, InvalidKeySpecException {
            com.google.common.base.Preconditions.checkArgument("RSA".equals(jsonWebKey.kty));
            com.google.common.base.Preconditions.checkNotNull(jsonWebKey.f33487e);
            com.google.common.base.Preconditions.checkNotNull(jsonWebKey.f33488n);
            return KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(1, Base64.decodeBase64(jsonWebKey.f33488n)), new BigInteger(1, Base64.decodeBase64(jsonWebKey.f33487e))));
        }

        @Override // com.google.common.cache.CacheLoader
        public Map<String, PublicKey> load(String str) throws Exception {
            try {
                JsonWebKeySet jsonWebKeySet = (JsonWebKeySet) this.httpTransportFactory.create().createRequestFactory().buildGetRequest(new GenericUrl(str)).setParser(GsonFactory.getDefaultInstance().createJsonObjectParser()).execute().parseAs(JsonWebKeySet.class);
                ImmutableMap.Builder builder = new ImmutableMap.Builder();
                List<JsonWebKey> list = jsonWebKeySet.keys;
                if (list == null) {
                    for (String str2 : jsonWebKeySet.keySet()) {
                        builder.put(str2, buildPublicKey((String) jsonWebKeySet.get(str2)));
                    }
                } else {
                    for (JsonWebKey jsonWebKey : list) {
                        try {
                            builder.put(jsonWebKey.kid, buildPublicKey(jsonWebKey));
                        } catch (NoSuchAlgorithmException | InvalidKeySpecException | InvalidParameterSpecException e) {
                            IdTokenVerifier.LOGGER.log(Level.WARNING, "Failed to put a key into the cache", e);
                        }
                    }
                }
                if (!builder.build().isEmpty()) {
                    return builder.build();
                }
                throw new VerificationException("No valid public key returned by the keystore: " + str);
            } catch (IOException e2) {
                IdTokenVerifier.LOGGER.log(Level.WARNING, "Failed to get a certificate from certificate location " + str, (Throwable) e2);
                throw e2;
            }
        }

        private PublicKey buildPublicKey(String str) throws CertificateException, UnsupportedEncodingException {
            return CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(str.getBytes("UTF-8"))).getPublicKey();
        }
    }

    /* loaded from: classes6.dex */
    public static class VerificationException extends Exception {
        public VerificationException(String str) {
            super(str);
        }

        public VerificationException(String str, Throwable th) {
            super(str, th);
        }
    }

    public IdTokenVerifier() {
        this(new Builder());
    }

    private String getCertificateLocation(JsonWebSignature.Header header) throws VerificationException {
        String str = this.certificatesLocation;
        if (str != null) {
            return str;
        }
        String algorithm = header.getAlgorithm();
        algorithm.hashCode();
        if (algorithm.equals("ES256")) {
            return IAP_CERT_URL;
        }
        if (algorithm.equals("RS256")) {
            return FEDERATED_SIGNON_CERT_URL;
        }
        throw new VerificationException(String.format(NOT_SUPPORTED_ALGORITHM, header.getAlgorithm()));
    }

    public final long getAcceptableTimeSkewSeconds() {
        return this.acceptableTimeSkewSeconds;
    }

    public final Collection<String> getAudience() {
        return this.audience;
    }

    public final Clock getClock() {
        return this.clock;
    }

    public final String getIssuer() {
        Collection<String> collection = this.issuers;
        if (collection == null) {
            return null;
        }
        return collection.iterator().next();
    }

    public final Collection<String> getIssuers() {
        return this.issuers;
    }

    public boolean verify(IdToken idToken) {
        if (!verifyPayload(idToken)) {
            return false;
        }
        try {
            return verifySignature(idToken);
        } catch (VerificationException e) {
            LOGGER.log(Level.SEVERE, "id token signature verification failed. Please see docs for IdTokenVerifier for default settings and configuration options", (Throwable) e);
            return false;
        }
    }

    public boolean verifyPayload(IdToken idToken) {
        Collection<String> collection;
        Collection<String> collection2 = this.issuers;
        return (collection2 == null || idToken.verifyIssuer(collection2)) && ((collection = this.audience) == null || idToken.verifyAudience(collection)) && idToken.verifyTime(this.clock.currentTimeMillis(), this.acceptableTimeSkewSeconds);
    }

    @VisibleForTesting
    public boolean verifySignature(IdToken idToken) throws VerificationException {
        if (Boolean.parseBoolean(this.environment.getVariable(SKIP_SIGNATURE_ENV_VAR))) {
            return true;
        }
        if (!SUPPORTED_ALGORITHMS.contains(idToken.getHeader().getAlgorithm())) {
            throw new VerificationException(String.format(NOT_SUPPORTED_ALGORITHM, idToken.getHeader().getAlgorithm()));
        }
        try {
            PublicKey publicKey = this.publicKeyCache.get(getCertificateLocation(idToken.getHeader())).get(idToken.getHeader().getKeyId());
            if (publicKey == null) {
                throw new VerificationException("Could not find public key for provided keyId: " + idToken.getHeader().getKeyId());
            }
            try {
                if (idToken.verifySignature(publicKey)) {
                    return true;
                }
                throw new VerificationException("Invalid signature");
            } catch (GeneralSecurityException e) {
                throw new VerificationException("Error validating token", e);
            }
        } catch (UncheckedExecutionException | ExecutionException e2) {
            throw new VerificationException("Error fetching public key from certificate location " + this.certificatesLocation, e2);
        }
    }

    public IdTokenVerifier(Builder builder) {
        this.certificatesLocation = builder.certificatesLocation;
        this.clock = builder.clock;
        this.acceptableTimeSkewSeconds = builder.acceptableTimeSkewSeconds;
        Collection<String> collection = builder.issuers;
        this.issuers = collection == null ? null : Collections.unmodifiableCollection(collection);
        Collection<String> collection2 = builder.audience;
        this.audience = collection2 != null ? Collections.unmodifiableCollection(collection2) : null;
        HttpTransportFactory httpTransportFactory = builder.httpTransportFactory;
        this.publicKeyCache = CacheBuilder.newBuilder().expireAfterWrite(1L, TimeUnit.HOURS).build(new PublicKeyLoader(httpTransportFactory == null ? new DefaultHttpTransportFactory() : httpTransportFactory));
        Environment environment = builder.environment;
        this.environment = environment == null ? new Environment() : environment;
    }
}
