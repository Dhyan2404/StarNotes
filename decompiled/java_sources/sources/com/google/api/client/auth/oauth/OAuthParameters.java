package com.google.api.client.auth.oauth;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Data;
import com.google.api.client.util.escape.PercentEscaper;
import com.google.common.collect.Multiset;
import com.google.common.collect.TreeMultiset;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.scribe.model.OAuthConstants;

@Beta
/* loaded from: classes6.dex */
public final class OAuthParameters implements HttpExecuteInterceptor, HttpRequestInitializer {
    public String callback;
    public String consumerKey;
    public String nonce;
    public String realm;
    public String signature;
    public String signatureMethod;
    public OAuthSigner signer;
    public String timestamp;
    public String token;
    public String verifier;
    public String version;
    private static final SecureRandom RANDOM = new SecureRandom();
    private static final PercentEscaper ESCAPER = new PercentEscaper("-_.~");

    /* loaded from: classes6.dex */
    public static class Parameter implements Comparable<Parameter> {
        private final String key;
        private final String value;

        public Parameter(String str, String str2) {
            this.key = str;
            this.value = str2;
        }

        public String getKey() {
            return this.key;
        }

        public String getValue() {
            return this.value;
        }

        @Override // java.lang.Comparable
        public int compareTo(Parameter parameter) {
            int compareTo = this.key.compareTo(parameter.key);
            return compareTo == 0 ? this.value.compareTo(parameter.value) : compareTo;
        }
    }

    private void appendParameter(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            sb.append(' ');
            sb.append(escape(str));
            sb.append("=\"");
            sb.append(escape(str2));
            sb.append("\",");
        }
    }

    public static String escape(String str) {
        return ESCAPER.escape(str);
    }

    private void putParameter(Multiset<Parameter> multiset, String str, Object obj) {
        multiset.add(new Parameter(escape(str), obj == null ? null : escape(obj.toString())));
    }

    private void putParameterIfValueNotNull(Multiset<Parameter> multiset, String str, String str2) {
        if (str2 != null) {
            putParameter(multiset, str, str2);
        }
    }

    public void computeNonce() {
        this.nonce = Long.toHexString(Math.abs(RANDOM.nextLong()));
    }

    public void computeSignature(String str, GenericUrl genericUrl) throws GeneralSecurityException {
        OAuthSigner oAuthSigner = this.signer;
        String signatureMethod = oAuthSigner.getSignatureMethod();
        this.signatureMethod = signatureMethod;
        TreeMultiset create = TreeMultiset.create();
        putParameterIfValueNotNull(create, OAuthConstants.CALLBACK, this.callback);
        putParameterIfValueNotNull(create, OAuthConstants.CONSUMER_KEY, this.consumerKey);
        putParameterIfValueNotNull(create, OAuthConstants.NONCE, this.nonce);
        putParameterIfValueNotNull(create, OAuthConstants.SIGN_METHOD, signatureMethod);
        putParameterIfValueNotNull(create, OAuthConstants.TIMESTAMP, this.timestamp);
        putParameterIfValueNotNull(create, OAuthConstants.TOKEN, this.token);
        putParameterIfValueNotNull(create, OAuthConstants.VERIFIER, this.verifier);
        putParameterIfValueNotNull(create, OAuthConstants.VERSION, this.version);
        for (Map.Entry<String, Object> entry : genericUrl.entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                String key = entry.getKey();
                if (value instanceof Collection) {
                    Iterator it2 = ((Collection) value).iterator();
                    while (it2.hasNext()) {
                        putParameter(create, key, it2.next());
                    }
                } else {
                    putParameter(create, key, value);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (E e : create.elementSet()) {
            if (z) {
                z = false;
            } else {
                sb.append('&');
            }
            sb.append(e.getKey());
            String value2 = e.getValue();
            if (value2 != null) {
                sb.append('=');
                sb.append(value2);
            }
        }
        String sb2 = sb.toString();
        GenericUrl genericUrl2 = new GenericUrl();
        String scheme = genericUrl.getScheme();
        genericUrl2.setScheme(scheme);
        genericUrl2.setHost(genericUrl.getHost());
        genericUrl2.setPathParts(genericUrl.getPathParts());
        int port = genericUrl.getPort();
        if (("http".equals(scheme) && port == 80) || ("https".equals(scheme) && port == 443)) {
            port = -1;
        }
        genericUrl2.setPort(port);
        this.signature = oAuthSigner.computeSignature(escape(str) + '&' + escape(genericUrl2.build()) + '&' + escape(sb2));
    }

    public void computeTimestamp() {
        this.timestamp = Long.toString(System.currentTimeMillis() / 1000);
    }

    public String getAuthorizationHeader() {
        StringBuilder sb = new StringBuilder("OAuth");
        appendParameter(sb, OAuthConstants.REALM, this.realm);
        appendParameter(sb, OAuthConstants.CALLBACK, this.callback);
        appendParameter(sb, OAuthConstants.CONSUMER_KEY, this.consumerKey);
        appendParameter(sb, OAuthConstants.NONCE, this.nonce);
        appendParameter(sb, OAuthConstants.SIGNATURE, this.signature);
        appendParameter(sb, OAuthConstants.SIGN_METHOD, this.signatureMethod);
        appendParameter(sb, OAuthConstants.TIMESTAMP, this.timestamp);
        appendParameter(sb, OAuthConstants.TOKEN, this.token);
        appendParameter(sb, OAuthConstants.VERIFIER, this.verifier);
        appendParameter(sb, OAuthConstants.VERSION, this.version);
        return sb.substring(0, sb.length() - 1);
    }

    @Override // com.google.api.client.http.HttpRequestInitializer
    public void initialize(HttpRequest httpRequest) throws IOException {
        httpRequest.setInterceptor(this);
    }

    @Override // com.google.api.client.http.HttpExecuteInterceptor
    public void intercept(HttpRequest httpRequest) throws IOException {
        Map<String, Object> map;
        computeNonce();
        computeTimestamp();
        try {
            GenericUrl url = httpRequest.getUrl();
            HttpContent content = httpRequest.getContent();
            if (content instanceof UrlEncodedContent) {
                map = Data.mapOf(((UrlEncodedContent) content).getData());
                url.putAll(map);
            } else {
                map = null;
            }
            computeSignature(httpRequest.getRequestMethod(), url);
            if (map != null) {
                Iterator<Map.Entry<String, Object>> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    url.remove(it2.next().getKey());
                }
            }
            httpRequest.getHeaders().setAuthorization(getAuthorizationHeader());
        } catch (GeneralSecurityException e) {
            IOException iOException = new IOException();
            iOException.initCause(e);
            throw iOException;
        }
    }
}
