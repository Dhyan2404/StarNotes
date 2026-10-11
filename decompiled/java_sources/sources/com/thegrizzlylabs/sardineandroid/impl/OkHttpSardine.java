package com.thegrizzlylabs.sardineandroid.impl;

import android.text.TextUtils;
import com.burgstaller.okhttp.AuthenticationCacheInterceptor;
import com.burgstaller.okhttp.CachingAuthenticatorDecorator;
import com.burgstaller.okhttp.DispatchingAuthenticator;
import com.burgstaller.okhttp.basic.BasicAuthenticator;
import com.burgstaller.okhttp.digest.CachingAuthenticator;
import com.burgstaller.okhttp.digest.Credentials;
import com.burgstaller.okhttp.digest.DigestAuthenticator;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.C14106mo;
import com.thegrizzlylabs.sardineandroid.DavAce;
import com.thegrizzlylabs.sardineandroid.DavAcl;
import com.thegrizzlylabs.sardineandroid.DavPrincipal;
import com.thegrizzlylabs.sardineandroid.DavQuota;
import com.thegrizzlylabs.sardineandroid.DavResource;
import com.thegrizzlylabs.sardineandroid.Sardine;
import com.thegrizzlylabs.sardineandroid.impl.handler.ExistsResponseHandler;
import com.thegrizzlylabs.sardineandroid.impl.handler.InputStreamResponseHandler;
import com.thegrizzlylabs.sardineandroid.impl.handler.LockResponseHandler;
import com.thegrizzlylabs.sardineandroid.impl.handler.MultiStatusResponseHandler;
import com.thegrizzlylabs.sardineandroid.impl.handler.ResourcesResponseHandler;
import com.thegrizzlylabs.sardineandroid.impl.handler.ResponseHandler;
import com.thegrizzlylabs.sardineandroid.impl.handler.VoidResponseHandler;
import com.thegrizzlylabs.sardineandroid.model.Acl;
import com.thegrizzlylabs.sardineandroid.model.Allprop;
import com.thegrizzlylabs.sardineandroid.model.Exclusive;
import com.thegrizzlylabs.sardineandroid.model.Group;
import com.thegrizzlylabs.sardineandroid.model.Lockinfo;
import com.thegrizzlylabs.sardineandroid.model.Lockscope;
import com.thegrizzlylabs.sardineandroid.model.Locktype;
import com.thegrizzlylabs.sardineandroid.model.Multistatus;
import com.thegrizzlylabs.sardineandroid.model.Owner;
import com.thegrizzlylabs.sardineandroid.model.PrincipalCollectionSet;
import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.model.Propertyupdate;
import com.thegrizzlylabs.sardineandroid.model.Propfind;
import com.thegrizzlylabs.sardineandroid.model.Propstat;
import com.thegrizzlylabs.sardineandroid.model.Remove;
import com.thegrizzlylabs.sardineandroid.model.Response;
import com.thegrizzlylabs.sardineandroid.model.SearchRequest;
import com.thegrizzlylabs.sardineandroid.model.Write;
import com.thegrizzlylabs.sardineandroid.report.SardineReport;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import javax.xml.namespace.QName;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.apache.http.HttpHeaders;
import org.mortbay.jetty.HttpMethods;
import org.w3c.dom.Element;

/* loaded from: classes10.dex */
public class OkHttpSardine implements Sardine {
    private final Map<String, CachingAuthenticator> authCache;
    private OkHttpClient client;

    public OkHttpSardine() {
        this.authCache = new ConcurrentHashMap();
        this.client = new OkHttpClient.Builder().build();
    }

    private void addCustomProperties(Prop prop, Set<QName> set) {
        List<Element> any = prop.getAny();
        Iterator<QName> it2 = set.iterator();
        while (it2.hasNext()) {
            any.add(SardineUtil.createElement(it2.next()));
        }
    }

    private void addLockTokenToHeaders(Headers.Builder builder, String str, String str2) {
        builder.add(HttpHeaders.f110097IF, "<" + str + "> (<" + str2 + ">)");
    }

    private void execute(Request request) throws IOException {
        execute(request, new VoidResponseHandler());
    }

    private void removeAuthenticationCacheInterceptor(OkHttpClient.Builder builder) {
        Iterator<Interceptor> it2 = builder.interceptors().iterator();
        while (it2.hasNext()) {
            if (it2.next() instanceof AuthenticationCacheInterceptor) {
                it2.remove();
            }
        }
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void copy(String str, String str2) throws IOException {
        copy(str, str2, true);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void createDirectory(String str) throws IOException {
        execute(newRequestBuilder(str).method("MKCOL", null).build());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void delete(String str) throws IOException {
        execute(newRequestBuilder(str).delete().build());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void disableCompression() {
        throw new UnsupportedOperationException();
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void enableCompression() {
        throw new UnsupportedOperationException();
    }

    public String encodeUrl(String str) {
        return str;
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public boolean exists(String str) throws IOException {
        return ((Boolean) execute(newRequestBuilder(str).method("HEAD", null).build(), new ExistsResponseHandler())).booleanValue();
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public InputStream get(String str) throws IOException {
        return get(str, Collections.emptyMap());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public DavAcl getAcl(String str) throws IOException {
        Propfind propfind = new Propfind();
        Prop prop = new Prop();
        prop.setOwner(new Owner());
        prop.setGroup(new Group());
        prop.setAcl(new Acl());
        propfind.setProp(prop);
        List<Response> response = ((Multistatus) execute(newRequestBuilder(str).header(HttpHeaders.DEPTH, "0").method("PROPFIND", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(propfind))).build(), new MultiStatusResponseHandler())).getResponse();
        if (response.isEmpty()) {
            return null;
        }
        return new DavAcl(response.get(0));
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<String> getPrincipalCollectionSet(String str) throws IOException {
        Propfind propfind = new Propfind();
        Prop prop = new Prop();
        prop.setPrincipalCollectionSet(new PrincipalCollectionSet());
        propfind.setProp(prop);
        List<Response> response = ((Multistatus) execute(newRequestBuilder(str).header(HttpHeaders.DEPTH, "0").method("PROPFIND", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(propfind))).build(), new MultiStatusResponseHandler())).getResponse();
        if (response.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Response response2 : response) {
            if (response2.getPropstat() != null) {
                for (Propstat propstat : response2.getPropstat()) {
                    if (propstat.getProp() != null && propstat.getProp().getPrincipalCollectionSet() != null && propstat.getProp().getPrincipalCollectionSet().getHref() != null) {
                        arrayList.add(propstat.getProp().getPrincipalCollectionSet().getHref());
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavPrincipal> getPrincipals(String str) throws IOException {
        Propfind propfind = new Propfind();
        propfind.setProp(new Prop());
        List<Response> response = ((Multistatus) execute(newRequestBuilder(str).header(HttpHeaders.DEPTH, "1").method("PROPFIND", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(propfind))).build(), new MultiStatusResponseHandler())).getResponse();
        if (response.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Response response2 : response) {
            if (response2.getPropstat() != null) {
                for (Propstat propstat : response2.getPropstat()) {
                    if (propstat.getProp() != null && propstat.getProp().getResourcetype() != null && propstat.getProp().getResourcetype().getPrincipal() != null) {
                        arrayList.add(new DavPrincipal(DavPrincipal.PrincipalType.HREF, response2.getHref(), propstat.getProp().getDisplayname()));
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public DavQuota getQuota(String str) throws IOException {
        Propfind propfind = new Propfind();
        propfind.setProp(new Prop());
        List<Response> response = ((Multistatus) execute(newRequestBuilder(str).header(HttpHeaders.DEPTH, "0").method("PROPFIND", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(propfind))).build(), new MultiStatusResponseHandler())).getResponse();
        if (response.isEmpty()) {
            return null;
        }
        return new DavQuota(response.get(0));
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> getResources(String str) throws IOException {
        return list(str);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void ignoreCookies() {
        throw new UnsupportedOperationException();
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> list(String str) throws IOException {
        return list(str, 1);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public String lock(String str) throws IOException {
        return lock(str, 0);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void move(String str, String str2) throws IOException {
        move(str, str2, true);
    }

    public Request.Builder newRequestBuilder(String str) {
        return new Request.Builder().url(encodeUrl(str));
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> patch(String str, Map<QName, String> map) throws IOException {
        return patch(str, map, Collections.emptyList());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> propfind(String str, int i, Set<QName> set) throws IOException {
        Propfind propfind = new Propfind();
        Prop prop = new Prop();
        addCustomProperties(prop, set);
        propfind.setProp(prop);
        return propfind(str, i, propfind);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void put(String str, byte[] bArr) throws IOException {
        put(str, bArr, (String) null);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public String refreshLock(String str, String str2, String str3) throws IOException {
        return (String) execute(newRequestBuilder(str).method("LOCK", null).header(HttpHeaders.f110097IF, "<" + str3 + "> (<" + str2 + ">)").build(), new LockResponseHandler());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public <T> T report(String str, int i, SardineReport<T> sardineReport) throws IOException {
        return sardineReport.fromMultistatus((Multistatus) execute(newRequestBuilder(str).header(HttpHeaders.DEPTH, i < 0 ? Constants.ATTRNAME_INFINITY : Integer.toString(i)).method("REPORT", RequestBody.create(MediaType.parse("text/xml"), sardineReport.toXml())).build(), new MultiStatusResponseHandler()));
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> search(String str, String str2, String str3) throws IOException {
        return (List) execute(newRequestBuilder(str).method("SEARCH", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(SardineUtil.toXml(new SearchRequest(str2, str3))))).build(), new ResourcesResponseHandler());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void setAcl(String str, List<DavAce> list) throws IOException {
        Acl acl = new Acl();
        acl.setAce(new ArrayList());
        for (DavAce davAce : list) {
            if (davAce.getInherited() == null && !davAce.isProtected()) {
                acl.getAce().add(davAce.toModel());
            }
        }
        execute(newRequestBuilder(str).method("ACL", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(acl))).build(), new VoidResponseHandler());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void setCredentials(String str, String str2, boolean z) {
        OkHttpClient.Builder newBuilder = this.client.newBuilder();
        if (str != null && str2 != null) {
            if (z) {
                removeAuthenticationCacheInterceptor(newBuilder);
                Credentials credentials = new Credentials(str, str2);
                newBuilder.authenticator(new CachingAuthenticatorDecorator(new DispatchingAuthenticator.Builder().with("digest", new DigestAuthenticator(credentials)).with("basic", new BasicAuthenticator(credentials)).build(), this.authCache)).addInterceptor(new AuthenticationCacheInterceptor(this.authCache));
            } else {
                newBuilder.authenticator(new C14106mo(str, str2));
            }
            this.client = newBuilder.build();
            return;
        }
        this.client = newBuilder.build();
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void setCustomProps(String str, Map<String, String> map, List<String> list) throws IOException {
        patch(str, SardineUtil.toQName(map), SardineUtil.toQName(list));
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void unlock(String str, String str2) throws IOException {
        execute(newRequestBuilder(str).method("UNLOCK", null).header(HttpHeaders.LOCK_TOKEN, "<" + str2 + ">").build(), new VoidResponseHandler());
    }

    private <T> T execute(Request request, ResponseHandler<T> responseHandler) throws IOException {
        return responseHandler.handleResponse(this.client.newCall(request).execute());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void copy(String str, String str2, boolean z) throws IOException {
        execute(newRequestBuilder(str).method("COPY", null).header("DESTINATION", URI.create(encodeUrl(str2)).toASCIIString()).header("OVERWRITE", z ? "T" : "F").build());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public InputStream get(String str, Map<String, String> map) throws IOException {
        return get(str, Headers.m64793of(map));
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> list(String str, int i) throws IOException {
        return list(str, i, true);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public String lock(String str, int i) throws IOException {
        Lockinfo lockinfo = new Lockinfo();
        Lockscope lockscope = new Lockscope();
        lockscope.setExclusive(new Exclusive());
        lockinfo.setLockscope(lockscope);
        Locktype locktype = new Locktype();
        locktype.setWrite(new Write());
        lockinfo.setLocktype(locktype);
        Request.Builder method = newRequestBuilder(str).method("LOCK", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(lockinfo)));
        if (i > 0) {
            method.header("Timeout", "Second-" + i);
        }
        return (String) execute(method.build(), new LockResponseHandler());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void move(String str, String str2, boolean z) throws IOException {
        move(str, str2, z, null);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> patch(String str, Map<QName, String> map, List<QName> list) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<QName, String> entry : map.entrySet()) {
            Element createElement = SardineUtil.createElement(entry.getKey());
            createElement.setTextContent(entry.getValue());
            arrayList.add(createElement);
        }
        return patch(str, arrayList, list);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void put(String str, byte[] bArr, String str2) throws IOException {
        put(str, RequestBody.create(str2 == null ? null : MediaType.parse(str2), bArr));
    }

    public InputStream get(String str, Headers headers) throws IOException {
        return (InputStream) execute(newRequestBuilder(str).get().headers(headers).build(), new InputStreamResponseHandler());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> list(String str, int i, Set<QName> set) throws IOException {
        Propfind propfind = new Propfind();
        Prop prop = new Prop();
        addCustomProperties(prop, set);
        propfind.setProp(prop);
        return propfind(str, i, propfind);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void move(String str, String str2, boolean z, String str3) throws IOException {
        String encodeUrl = encodeUrl(str2);
        Request.Builder method = newRequestBuilder(str).method(HttpMethods.MOVE, null);
        Headers.Builder builder = new Headers.Builder();
        builder.add("DESTINATION", encodeUrl);
        builder.add("OVERWRITE", z ? "T" : "F");
        if (str3 != null) {
            addLockTokenToHeaders(builder, encodeUrl, str3);
        }
        method.headers(builder.build());
        execute(method.build());
    }

    public OkHttpSardine(OkHttpClient okHttpClient) {
        this.authCache = new ConcurrentHashMap();
        this.client = okHttpClient;
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void put(String str, File file, String str2) throws IOException {
        put(str, file, str2, false);
    }

    public List<DavResource> propfind(String str, int i, Propfind propfind) throws IOException {
        return (List) execute(newRequestBuilder(str).header(HttpHeaders.DEPTH, i < 0 ? Constants.ATTRNAME_INFINITY : Integer.toString(i)).method("PROPFIND", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(propfind))).build(), new ResourcesResponseHandler());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void put(String str, File file, String str2, boolean z) throws IOException {
        put(str, file, str2, z, null);
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void put(String str, File file, String str2, boolean z, String str3) throws IOException {
        RequestBody create = RequestBody.create(str2 == null ? null : MediaType.parse(str2), file);
        Headers.Builder builder = new Headers.Builder();
        if (z) {
            builder.add("Expect", HTTP.EXPECT_CONTINUE);
        }
        if (!TextUtils.isEmpty(str3)) {
            addLockTokenToHeaders(builder, str, str3);
        }
        put(str, create, builder.build());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> list(String str, int i, boolean z) throws IOException {
        if (z) {
            Propfind propfind = new Propfind();
            propfind.setAllprop(new Allprop());
            return propfind(str, i, propfind);
        }
        return list(str, i, Collections.emptySet());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public List<DavResource> patch(String str, List<Element> list, List<QName> list2) throws IOException {
        Propertyupdate propertyupdate = new Propertyupdate();
        com.thegrizzlylabs.sardineandroid.model.Set set = new com.thegrizzlylabs.sardineandroid.model.Set();
        propertyupdate.getRemoveOrSet().add(set);
        Prop prop = new Prop();
        prop.getAny().addAll(list);
        set.setProp(prop);
        Remove remove = new Remove();
        propertyupdate.getRemoveOrSet().add(remove);
        Prop prop2 = new Prop();
        List<Element> any = prop2.getAny();
        Iterator<QName> it2 = list2.iterator();
        while (it2.hasNext()) {
            any.add(SardineUtil.createElement(it2.next()));
        }
        remove.setProp(prop2);
        return (List) execute(newRequestBuilder(str).method("PROPPATCH", RequestBody.create(MediaType.parse("text/xml"), SardineUtil.toXml(propertyupdate))).build(), new ResourcesResponseHandler());
    }

    private void put(String str, RequestBody requestBody) throws IOException {
        put(str, requestBody, new Headers.Builder().build());
    }

    private void put(String str, RequestBody requestBody, Headers headers) throws IOException {
        execute(newRequestBuilder(str).put(requestBody).headers(headers).build());
    }

    @Override // com.thegrizzlylabs.sardineandroid.Sardine
    public void setCredentials(String str, String str2) {
        setCredentials(str, str2, true);
    }
}
