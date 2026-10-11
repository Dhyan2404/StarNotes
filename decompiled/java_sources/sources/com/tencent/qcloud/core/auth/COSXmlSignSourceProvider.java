package com.tencent.qcloud.core.auth;

import android.text.TextUtils;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.tencent.cos.xml.crypto.Headers;
import com.tencent.qcloud.core.common.QCloudClientException;
import com.tencent.qcloud.core.http.HttpConfiguration;
import com.tencent.qcloud.core.http.HttpRequest;
import com.tencent.qcloud.core.util.QCloudHttpUtils;
import com.tencent.qcloud.core.util.QCloudStringUtils;
import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes10.dex */
public class COSXmlSignSourceProvider implements QCloudSignSourceProvider {
    private Map<String, List<String>> headerPairs;
    private String signTime;
    private final List<String> needToSignHeaders = Arrays.asList("cache-control", "content-disposition", "content-encoding", "content-length", "content-md5", "content-type", "expect", ClientCookie.EXPIRES_ATTR, Http2ExchangeCodec.f103778h, "if-match", "if-modified-since", "if-none-match", "if-unmodified-since", "origin", SessionDescription.f26441q, Http2ExchangeCodec.f103781k, "pic-operations");
    private Set<String> headerKeysRequiredToSign = new HashSet();
    private Set<String> parametersRequiredToSign = new HashSet();
    private Set<String> headerKeysSigned = new HashSet();
    private Set<String> parametersSigned = new HashSet();

    private String headersStringForKeys(Map<String, List<String>> map, Set<String> set, Set<String> set2) {
        StringBuilder sb = new StringBuilder();
        LinkedList<String> linkedList = new LinkedList();
        Iterator<String> it2 = set.iterator();
        while (it2.hasNext()) {
            linkedList.add(QCloudHttpUtils.urlEncodeString(it2.next()).toLowerCase(Locale.ROOT));
        }
        Collections.sort(linkedList, new Comparator<String>() { // from class: com.tencent.qcloud.core.auth.COSXmlSignSourceProvider.2
            @Override // java.util.Comparator
            public int compare(String str, String str2) {
                return str.compareTo(str2);
            }
        });
        Set<String> keySet = map.keySet();
        HashMap hashMap = new HashMap();
        for (String str : keySet) {
            hashMap.put(str.toLowerCase(Locale.ROOT), str);
        }
        boolean z = true;
        for (String str2 : linkedList) {
            List<String> list = map.get(hashMap.get(str2));
            if (list != null) {
                for (String str3 : list) {
                    if (!z) {
                        sb.append('&');
                    }
                    Locale locale = Locale.ROOT;
                    set2.add(str2.toLowerCase(locale));
                    sb.append(str2.toLowerCase(locale));
                    sb.append('=');
                    if (!TextUtils.isEmpty(str3)) {
                        sb.append(QCloudHttpUtils.urlEncodeString(str3));
                    }
                    z = false;
                }
            }
        }
        return sb.toString();
    }

    private String queryStringForKeys(URL url, Set<String> set, Set<String> set2) {
        StringBuilder sb = new StringBuilder();
        LinkedList<String> linkedList = new LinkedList();
        Iterator<String> it2 = set.iterator();
        while (it2.hasNext()) {
            linkedList.add(it2.next().toLowerCase(Locale.ROOT));
        }
        Collections.sort(linkedList, new Comparator<String>() { // from class: com.tencent.qcloud.core.auth.COSXmlSignSourceProvider.1
            @Override // java.util.Comparator
            public int compare(String str, String str2) {
                return str.compareTo(str2);
            }
        });
        Map<String, List<String>> decodedQueryPair = QCloudHttpUtils.getDecodedQueryPair(url);
        Set<String> keySet = decodedQueryPair.keySet();
        HashMap hashMap = new HashMap();
        for (String str : keySet) {
            hashMap.put(str.toLowerCase(Locale.ROOT), str);
        }
        boolean z = true;
        for (String str2 : linkedList) {
            List<String> list = decodedQueryPair.get(hashMap.get(str2));
            if (list != null) {
                for (String str3 : list) {
                    if (!z) {
                        sb.append('&');
                    }
                    Locale locale = Locale.ROOT;
                    set2.add(str2.toLowerCase(locale));
                    sb.append(str2.toLowerCase(locale));
                    sb.append('=');
                    if (!TextUtils.isEmpty(str3)) {
                        sb.append(QCloudHttpUtils.urlEncodeString(str3));
                    }
                    z = false;
                }
            }
        }
        return sb.toString();
    }

    private String sortAndJoinSemicolon(Set<String> set) {
        if (set == null) {
            return "";
        }
        TreeSet<String> treeSet = new TreeSet(set);
        StringBuilder sb = new StringBuilder();
        for (String str : treeSet) {
            if (!QCloudStringUtils.isEmpty(sb.toString())) {
                sb.append(AndroidTreeView.f47214k);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    private Set<String> toLowerCase(Set<String> set) {
        if (set == null || set.size() <= 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (str != null) {
                hashSet.add(str.toLowerCase(Locale.ROOT));
            }
        }
        return hashSet;
    }

    public String getRealHeaderList() {
        return sortAndJoinSemicolon(this.headerKeysSigned);
    }

    public String getRealParameterList() {
        return sortAndJoinSemicolon(this.parametersSigned);
    }

    public void header(String str) {
        this.headerKeysRequiredToSign.add(str);
    }

    public void headers(Set<String> set) {
        if (set != null) {
            this.headerKeysRequiredToSign.addAll(set);
        }
    }

    @Override // com.tencent.qcloud.core.auth.QCloudSignSourceProvider
    public <T> void onSignRequestSuccess(HttpRequest<T> httpRequest, QCloudCredentials qCloudCredentials, String str) {
    }

    public void parameter(String str) {
        this.parametersRequiredToSign.add(str);
    }

    public void parameters(Set<String> set) {
        if (set != null) {
            this.parametersRequiredToSign.addAll(set);
        }
    }

    public void setHeaderPairsForSign(Map<String, List<String>> map) {
        this.headerPairs = map;
    }

    public void setSignTime(String str) {
        this.signTime = str;
    }

    @Override // com.tencent.qcloud.core.auth.QCloudSignSourceProvider
    public <T> String source(HttpRequest<T> httpRequest) throws QCloudClientException {
        String contentType;
        if (httpRequest == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        hashSet.add("Content-Type");
        hashSet.add("Content-Length");
        for (String str : httpRequest.headers().keySet()) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            if (this.needToSignHeaders.contains(lowerCase) || lowerCase.startsWith(Headers.COS_PREFIX)) {
                hashSet.add(str);
            }
        }
        if (httpRequest.getNoSignHeaders() != null) {
            Iterator<String> it2 = httpRequest.getNoSignHeaders().iterator();
            while (it2.hasNext()) {
                hashSet.remove(it2.next());
            }
        }
        if (this.headerKeysRequiredToSign.size() < 1) {
            this.headerKeysRequiredToSign.addAll(hashSet);
        }
        if (this.parametersRequiredToSign.size() < 1) {
            Map<String, List<String>> queryPair = QCloudHttpUtils.getQueryPair(httpRequest.url());
            Iterator<String> it3 = httpRequest.getNoSignParams().iterator();
            while (it3.hasNext()) {
                queryPair.remove(QCloudHttpUtils.urlDecodeString(it3.next()));
            }
            this.parametersRequiredToSign.addAll(queryPair.keySet());
        }
        if (this.headerKeysRequiredToSign.size() > 0) {
            Set<String> lowerCase2 = toLowerCase(this.headerKeysRequiredToSign);
            if (lowerCase2 != null && lowerCase2.contains("Content-Type".toLowerCase(Locale.ROOT)) && httpRequest.getRequestBody() != null && !httpRequest.headers().containsKey("Content-Type") && (contentType = httpRequest.contentType()) != null) {
                httpRequest.addHeader("Content-Type", contentType);
            }
            if (lowerCase2 != null && lowerCase2.contains("Content-Length".toLowerCase(Locale.ROOT)) && httpRequest.getRequestBody() != null) {
                try {
                    long contentLength = httpRequest.contentLength();
                    if (contentLength != -1) {
                        httpRequest.addHeader("Content-Length", Long.toString(contentLength));
                        httpRequest.removeHeader("Transfer-Encoding");
                    } else {
                        httpRequest.addHeader("Transfer-Encoding", "chunked");
                        httpRequest.removeHeader("Content-Length");
                    }
                } catch (IOException e) {
                    throw new QCloudClientException("read content length fails", e);
                }
            }
            if (lowerCase2 != null && lowerCase2.contains("Date".toLowerCase(Locale.ROOT))) {
                httpRequest.addHeader("Date", HttpConfiguration.getGMTDate(new Date()));
            }
        }
        StringBuilder sb = new StringBuilder(httpRequest.method().toLowerCase(Locale.ROOT));
        sb.append("\n");
        sb.append(QCloudHttpUtils.urlDecodeString(httpRequest.url().getPath()));
        sb.append("\n");
        sb.append(queryStringForKeys(httpRequest.url(), this.parametersRequiredToSign, this.parametersSigned));
        sb.append("\n");
        Map<String, List<String>> map = this.headerPairs;
        if (map == null) {
            map = httpRequest.headers();
        }
        this.headerPairs = map;
        sb.append(map != null ? headersStringForKeys(map, this.headerKeysRequiredToSign, this.headerKeysSigned) : "");
        sb.append("\n");
        return AuthConstants.SHA1 + "\n" + this.signTime + "\n" + Utils.encodeHexString(Utils.sha1(sb.toString())) + "\n";
    }
}
