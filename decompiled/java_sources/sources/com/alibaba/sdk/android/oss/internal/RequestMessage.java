package com.alibaba.sdk.android.oss.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider;
import com.alibaba.sdk.android.oss.common.utils.HttpUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpdnsMini;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.model.BucketLifecycleRule;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import com.sunia.HTREnginev2.i0i;
import com.tencent.cos.xml.model.bucket.PutBucketIntelligentTieringRequest;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class RequestMessage extends i0i {

    /* renamed from: e */
    public URI f13023e;

    /* renamed from: f */
    public URI f13024f;

    /* renamed from: g */
    public String f13025g;

    /* renamed from: h */
    public String f13026h;

    /* renamed from: i */
    public HttpMethod f13027i;

    /* renamed from: l */
    public boolean f13030l;

    /* renamed from: m */
    public OSSCredentialProvider f13031m;

    /* renamed from: q */
    public String f13035q;

    /* renamed from: s */
    public String f13037s;

    /* renamed from: t */
    public byte[] f13038t;

    /* renamed from: u */
    public Uri f13039u;

    /* renamed from: j */
    public boolean f13028j = true;

    /* renamed from: k */
    public Map<String, String> f13029k = new LinkedHashMap();

    /* renamed from: n */
    public boolean f13032n = false;

    /* renamed from: o */
    public boolean f13033o = false;

    /* renamed from: p */
    public boolean f13034p = false;

    /* renamed from: r */
    public boolean f13036r = false;

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void addHeader(String str, String str2) {
        super.addHeader(str, str2);
    }

    public String buildCanonicalURL() throws Exception {
        boolean z = false;
        OSSUtils.assertTrue(this.f13024f != null, "Endpoint haven't been set!");
        String scheme = this.f13024f.getScheme();
        String host = this.f13024f.getHost();
        String path = this.f13024f.getPath();
        int port = this.f13024f.getPort();
        String str = null;
        String valueOf = port != -1 ? String.valueOf(port) : null;
        if (TextUtils.isEmpty(host)) {
            OSSLog.logDebug("endpoint url : " + this.f13024f.toString());
        }
        OSSLog.logDebug(" scheme : " + scheme);
        OSSLog.logDebug(" originHost : " + host);
        OSSLog.logDebug(" port : " + valueOf);
        String str2 = scheme + "://" + host;
        if (!TextUtils.isEmpty(valueOf)) {
            str2 = str2 + ":" + valueOf;
        }
        if (!TextUtils.isEmpty(this.f13025g)) {
            if (OSSUtils.isOssOriginHost(host)) {
                String str3 = this.f13025g + "." + host;
                if (isHttpDnsEnable()) {
                    str = HttpdnsMini.getInstance().getIpByHostAsync(str3);
                } else {
                    OSSLog.logDebug("[buildCannonicalURL], disable httpdns");
                }
                addHeader("Host", str3);
                str2 = TextUtils.isEmpty(str) ? scheme + "://" + str3 : scheme + "://" + str;
            } else if (this.f13036r) {
                if (!this.f13033o) {
                    str2 = scheme + "://" + this.f13025g + "." + host;
                }
                z = true;
            } else if (OSSUtils.isValidateIP(host)) {
                if (!OSSUtils.isEmptyString(this.f13035q)) {
                    addHeader("Host", getIpWithHeader());
                }
                z = true;
            }
        }
        if (this.f13034p && path != null) {
            str2 = str2 + path;
        }
        if (z) {
            str2 = str2 + "/" + this.f13025g;
        }
        if (!TextUtils.isEmpty(this.f13026h)) {
            str2 = str2 + "/" + HttpUtil.urlEncode(this.f13026h, "utf-8");
        }
        String paramToQueryString = OSSUtils.paramToQueryString(this.f13029k, "utf-8");
        StringBuilder sb = new StringBuilder();
        sb.append("request---------------------\n");
        sb.append("request url=" + str2 + "\n");
        sb.append("request params=" + paramToQueryString + "\n");
        for (String str4 : getHeaders().keySet()) {
            sb.append("requestHeader [" + str4 + "]: ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append((String) getHeaders().get(str4));
            sb2.append("\n");
            sb.append(sb2.toString());
        }
        OSSLog.logDebug(sb.toString());
        if (OSSUtils.isEmptyString(paramToQueryString)) {
            return str2;
        }
        return str2 + "?" + paramToQueryString;
    }

    public String buildOSSServiceURL() {
        String str;
        OSSUtils.assertTrue(this.f13023e != null, "Service haven't been set!");
        String host = this.f13023e.getHost();
        String scheme = this.f13023e.getScheme();
        if (isHttpDnsEnable() && scheme.equalsIgnoreCase("http")) {
            str = HttpdnsMini.getInstance().getIpByHostAsync(host);
        } else {
            OSSLog.logDebug("[buildOSSServiceURL], disable httpdns or http is not need httpdns");
            str = null;
        }
        if (str == null) {
            str = host;
        }
        getHeaders().put("Host", host);
        String str2 = scheme + "://" + str;
        String paramToQueryString = OSSUtils.paramToQueryString(this.f13029k, "utf-8");
        if (OSSUtils.isEmptyString(paramToQueryString)) {
            return str2;
        }
        return str2 + "?" + paramToQueryString;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void close() throws IOException {
        super.close();
    }

    public void createBucketRequestBodyMarshall(Map<String, String> map) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        if (map != null) {
            stringBuffer.append("<CreateBucketConfiguration>");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                stringBuffer.append("<" + entry.getKey() + ">" + entry.getValue() + XMLStreamWriterImpl.OPEN_END_TAG + entry.getKey() + ">");
            }
            stringBuffer.append("</CreateBucketConfiguration>");
            byte[] bytes = stringBuffer.toString().getBytes("utf-8");
            long length = bytes.length;
            setContent(new ByteArrayInputStream(bytes));
            setContentLength(length);
        }
    }

    public byte[] deleteMultipleObjectRequestBodyMarshall(List<String> list, boolean z) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<Delete>");
        if (z) {
            stringBuffer.append("<Quiet>true</Quiet>");
        } else {
            stringBuffer.append("<Quiet>false</Quiet>");
        }
        for (String str : list) {
            stringBuffer.append("<Object>");
            stringBuffer.append("<Key>");
            stringBuffer.append(str);
            stringBuffer.append("</Key>");
            stringBuffer.append("</Object>");
        }
        stringBuffer.append("</Delete>");
        byte[] bytes = stringBuffer.toString().getBytes("utf-8");
        long length = bytes.length;
        setContent(new ByteArrayInputStream(bytes));
        setContentLength(length);
        return bytes;
    }

    public String getBucketName() {
        return this.f13025g;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ InputStream getContent() {
        return super.getContent();
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ long getContentLength() {
        return super.getContentLength();
    }

    public OSSCredentialProvider getCredentialProvider() {
        return this.f13031m;
    }

    public URI getEndpoint() {
        return this.f13024f;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ Map getHeaders() {
        return super.getHeaders();
    }

    public String getIpWithHeader() {
        return this.f13035q;
    }

    public HttpMethod getMethod() {
        return this.f13027i;
    }

    public String getObjectKey() {
        return this.f13026h;
    }

    public Map<String, String> getParameters() {
        return this.f13029k;
    }

    public URI getService() {
        return this.f13023e;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ String getStringBody() {
        return super.getStringBody();
    }

    public byte[] getUploadData() {
        return this.f13038t;
    }

    public String getUploadFilePath() {
        return this.f13037s;
    }

    public Uri getUploadUri() {
        return this.f13039u;
    }

    public boolean isAuthorizationRequired() {
        return this.f13028j;
    }

    public boolean isCheckCRC64() {
        return this.f13030l;
    }

    public boolean isCustomPathPrefixEnable() {
        return this.f13034p;
    }

    public boolean isHttpDnsEnable() {
        return this.f13032n;
    }

    public boolean isInCustomCnameExcludeList() {
        return this.f13036r;
    }

    public boolean isPathStyleAccessEnable() {
        return this.f13033o;
    }

    public void putBucketLifecycleRequestBodyMarshall(ArrayList<BucketLifecycleRule> arrayList) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<LifecycleConfiguration>");
        Iterator<BucketLifecycleRule> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            BucketLifecycleRule next = it2.next();
            stringBuffer.append("<Rule>");
            if (next.getIdentifier() != null) {
                stringBuffer.append("<ID>" + next.getIdentifier() + "</ID>");
            }
            if (next.getPrefix() != null) {
                stringBuffer.append("<Prefix>" + next.getPrefix() + "</Prefix>");
            }
            StringBuilder sb = new StringBuilder();
            sb.append("<Status>");
            sb.append(next.getStatus() ? PutBucketIntelligentTieringRequest.STATUS_ENABLED : "Disabled");
            sb.append("</Status>");
            stringBuffer.append(sb.toString());
            if (next.getDays() != null) {
                stringBuffer.append("<Days>" + next.getDays() + "</Days>");
            } else if (next.getExpireDate() != null) {
                stringBuffer.append("<Date>" + next.getExpireDate() + "</Date>");
            }
            if (next.getMultipartDays() != null) {
                stringBuffer.append("<AbortMultipartUpload><Days>" + next.getMultipartDays() + "</Days></AbortMultipartUpload>");
            } else if (next.getMultipartExpireDate() != null) {
                stringBuffer.append("<AbortMultipartUpload><Date>" + next.getMultipartDays() + "</Date></AbortMultipartUpload>");
            }
            if (next.getIADays() != null) {
                stringBuffer.append("<Transition><Days>" + next.getIADays() + "</Days><StorageClass>IA</StorageClass></Transition>");
            } else if (next.getIAExpireDate() != null) {
                stringBuffer.append("<Transition><Date>" + next.getIAExpireDate() + "</Date><StorageClass>IA</StorageClass></Transition>");
            } else if (next.getArchiveDays() != null) {
                stringBuffer.append("<Transition><Days>" + next.getArchiveDays() + "</Days><StorageClass>Archive</StorageClass></Transition>");
            } else if (next.getArchiveExpireDate() != null) {
                stringBuffer.append("<Transition><Date>" + next.getArchiveExpireDate() + "</Date><StorageClass>Archive</StorageClass></Transition>");
            }
            stringBuffer.append("</Rule>");
        }
        stringBuffer.append("</LifecycleConfiguration>");
        byte[] bytes = stringBuffer.toString().getBytes("utf-8");
        long length = bytes.length;
        setContent(new ByteArrayInputStream(bytes));
        setContentLength(length);
    }

    public void putBucketLoggingRequestBodyMarshall(String str, String str2) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<BucketLoggingStatus>");
        if (str != null) {
            stringBuffer.append("<LoggingEnabled><TargetBucket>" + str + "</TargetBucket>");
            if (str2 != null) {
                stringBuffer.append("<TargetPrefix>" + str2 + "</TargetPrefix>");
            }
            stringBuffer.append("</LoggingEnabled>");
        }
        stringBuffer.append("</BucketLoggingStatus>");
        byte[] bytes = stringBuffer.toString().getBytes("utf-8");
        long length = bytes.length;
        setContent(new ByteArrayInputStream(bytes));
        setContentLength(length);
    }

    public void putBucketRefererRequestBodyMarshall(ArrayList<String> arrayList, boolean z) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("<RefererConfiguration>");
        StringBuilder sb = new StringBuilder();
        sb.append("<AllowEmptyReferer>");
        sb.append(z ? "true" : "false");
        sb.append("</AllowEmptyReferer>");
        stringBuffer.append(sb.toString());
        if (arrayList != null && arrayList.size() > 0) {
            stringBuffer.append("<RefererList>");
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                stringBuffer.append("<Referer>" + it2.next() + "</Referer>");
            }
            stringBuffer.append("</RefererList>");
        }
        stringBuffer.append("</RefererConfiguration>");
        byte[] bytes = stringBuffer.toString().getBytes("utf-8");
        long length = bytes.length;
        setContent(new ByteArrayInputStream(bytes));
        setContentLength(length);
    }

    public void setBucketName(String str) {
        this.f13025g = str;
    }

    public void setCheckCRC64(boolean z) {
        this.f13030l = z;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setContent(InputStream inputStream) {
        super.setContent(inputStream);
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setContentLength(long j) {
        super.setContentLength(j);
    }

    public void setCredentialProvider(OSSCredentialProvider oSSCredentialProvider) {
        this.f13031m = oSSCredentialProvider;
    }

    public void setCustomPathPrefixEnable(boolean z) {
        this.f13034p = z;
    }

    public void setEndpoint(URI uri) {
        this.f13024f = uri;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setHeaders(Map map) {
        super.setHeaders(map);
    }

    public void setHttpDnsEnable(boolean z) {
        this.f13032n = z;
    }

    public void setIpWithHeader(String str) {
        this.f13035q = str;
    }

    public void setIsAuthorizationRequired(boolean z) {
        this.f13028j = z;
    }

    public void setIsInCustomCnameExcludeList(boolean z) {
        this.f13036r = z;
    }

    public void setMethod(HttpMethod httpMethod) {
        this.f13027i = httpMethod;
    }

    public void setObjectKey(String str) {
        this.f13026h = str;
    }

    public void setParameters(Map<String, String> map) {
        this.f13029k = map;
    }

    public void setPathStyleAccessEnable(boolean z) {
        this.f13033o = z;
    }

    public void setService(URI uri) {
        this.f13023e = uri;
    }

    @Override // com.sunia.HTREnginev2.i0i
    public /* bridge */ /* synthetic */ void setStringBody(String str) {
        super.setStringBody(str);
    }

    public void setUploadData(byte[] bArr) {
        this.f13038t = bArr;
    }

    public void setUploadFilePath(String str) {
        this.f13037s = str;
    }

    public void setUploadUri(Uri uri) {
        this.f13039u = uri;
    }
}
