package org.scribe.builder;

import java.io.OutputStream;
import org.scribe.builder.api.Api;
import org.scribe.exceptions.OAuthException;
import org.scribe.model.OAuthConfig;
import org.scribe.model.OAuthConstants;
import org.scribe.model.SignatureType;
import org.scribe.oauth.OAuthService;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class ServiceBuilder {

    /* renamed from: a */
    public String f115837a;

    /* renamed from: b */
    public String f115838b;

    /* renamed from: d */
    public Api f115840d;

    /* renamed from: e */
    public String f115841e;

    /* renamed from: c */
    public String f115839c = OAuthConstants.OUT_OF_BAND;

    /* renamed from: f */
    public SignatureType f115842f = SignatureType.Header;

    /* renamed from: g */
    public OutputStream f115843g = null;

    /* renamed from: a */
    public final Api m71868a(Class<? extends Api> cls) {
        Preconditions.checkNotNull(cls, "Api class cannot be null");
        try {
            return cls.newInstance();
        } catch (Exception e) {
            throw new OAuthException("Error while creating the Api object", e);
        }
    }

    public ServiceBuilder apiKey(String str) {
        Preconditions.checkEmptyString(str, "Invalid Api key");
        this.f115837a = str;
        return this;
    }

    public ServiceBuilder apiSecret(String str) {
        Preconditions.checkEmptyString(str, "Invalid Api secret");
        this.f115838b = str;
        return this;
    }

    public OAuthService build() {
        Preconditions.checkNotNull(this.f115840d, "You must specify a valid api through the provider() method");
        Preconditions.checkEmptyString(this.f115837a, "You must provide an api key");
        Preconditions.checkEmptyString(this.f115838b, "You must provide an api secret");
        return this.f115840d.createService(new OAuthConfig(this.f115837a, this.f115838b, this.f115839c, this.f115842f, this.f115841e, this.f115843g));
    }

    public ServiceBuilder callback(String str) {
        Preconditions.checkNotNull(str, "Callback can't be null");
        this.f115839c = str;
        return this;
    }

    public ServiceBuilder debug() {
        debugStream(System.out);
        return this;
    }

    public ServiceBuilder debugStream(OutputStream outputStream) {
        Preconditions.checkNotNull(outputStream, "debug stream can't be null");
        this.f115843g = outputStream;
        return this;
    }

    public ServiceBuilder provider(Class<? extends Api> cls) {
        this.f115840d = m71868a(cls);
        return this;
    }

    public ServiceBuilder scope(String str) {
        Preconditions.checkEmptyString(str, "Invalid OAuth scope");
        this.f115841e = str;
        return this;
    }

    public ServiceBuilder signatureType(SignatureType signatureType) {
        Preconditions.checkNotNull(signatureType, "Signature type can't be null");
        this.f115842f = signatureType;
        return this;
    }

    public ServiceBuilder provider(Api api) {
        Preconditions.checkNotNull(api, "Api cannot be null");
        this.f115840d = api;
        return this;
    }
}
