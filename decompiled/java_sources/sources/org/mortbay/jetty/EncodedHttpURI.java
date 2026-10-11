package org.mortbay.jetty;

import java.io.UnsupportedEncodingException;
import org.mortbay.util.MultiMap;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.URIUtil;
import org.mortbay.util.UrlEncoded;
import org.mortbay.util.Utf8StringBuffer;

/* loaded from: classes13.dex */
public class EncodedHttpURI extends HttpURI {

    /* renamed from: y */
    public String f114588y;

    public EncodedHttpURI(String str) {
        this.f114588y = str;
    }

    @Override // org.mortbay.jetty.HttpURI
    public void decodeQueryTo(MultiMap multiMap) {
        int i = this.f114678j;
        if (i == this.f114679k) {
            return;
        }
        UrlEncoded.decodeTo(StringUtil.toString(this.f114670b, i + 1, (r1 - i) - 1, this.f114588y), multiMap, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getAuthority() {
        int i = this.f114673e;
        int i2 = this.f114676h;
        if (i == i2) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i, i2 - i, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getCompletePath() {
        int i = this.f114676h;
        int i2 = this.f114680l;
        if (i == i2) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i, i2 - i, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getDecodedPath() {
        int i = this.f114676h;
        int i2 = this.f114677i;
        if (i == i2) {
            return null;
        }
        return URIUtil.decodePath(this.f114670b, i, i2 - i);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getFragment() {
        int i = this.f114679k;
        if (i == this.f114680l) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i + 1, (r1 - i) - 1, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getHost() {
        int i = this.f114674f;
        int i2 = this.f114675g;
        if (i == i2) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i, i2 - i, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getParam() {
        int i = this.f114677i;
        if (i == this.f114678j) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i + 1, (r1 - i) - 1, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getPath() {
        int i = this.f114676h;
        int i2 = this.f114677i;
        if (i == i2) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i, i2 - i, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getPathAndParam() {
        int i = this.f114676h;
        int i2 = this.f114678j;
        if (i == i2) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i, i2 - i, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public int getPort() {
        int i = this.f114675g;
        if (i == this.f114676h) {
            return -1;
        }
        return TypeUtil.parseInt(this.f114670b, i + 1, (r1 - i) - 1, 10);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getQuery() {
        int i = this.f114678j;
        if (i == this.f114679k) {
            return null;
        }
        return StringUtil.toString(this.f114670b, i + 1, (r1 - i) - 1, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public String getScheme() {
        int i = this.f114672d;
        int i2 = this.f114673e;
        if (i == i2) {
            return null;
        }
        int i3 = i2 - i;
        if (i3 == 5) {
            byte[] bArr = this.f114670b;
            if (bArr[i] == 104 && bArr[i + 1] == 116 && bArr[i + 2] == 116 && bArr[i + 3] == 112) {
                return "http";
            }
        }
        if (i3 == 6) {
            byte[] bArr2 = this.f114670b;
            if (bArr2[i] == 104 && bArr2[i + 1] == 116 && bArr2[i + 2] == 116 && bArr2[i + 3] == 112 && bArr2[i + 4] == 115) {
                return "https";
            }
        }
        return StringUtil.toString(this.f114670b, i, (i2 - i) - 1, this.f114588y);
    }

    @Override // org.mortbay.jetty.HttpURI
    public boolean hasQuery() {
        return this.f114679k > this.f114678j;
    }

    @Override // org.mortbay.jetty.HttpURI
    public String toString() {
        if (this.f114671c == null) {
            byte[] bArr = this.f114670b;
            int i = this.f114672d;
            this.f114671c = StringUtil.toString(bArr, i, this.f114680l - i, this.f114588y);
        }
        return this.f114671c;
    }

    @Override // org.mortbay.jetty.HttpURI
    public void writeTo(Utf8StringBuffer utf8StringBuffer) {
        utf8StringBuffer.getStringBuffer().append(toString());
    }

    @Override // org.mortbay.jetty.HttpURI
    public void decodeQueryTo(MultiMap multiMap, String str) throws UnsupportedEncodingException {
        int i = this.f114678j;
        if (i == this.f114679k) {
            return;
        }
        if (str == null) {
            str = this.f114588y;
        }
        UrlEncoded.decodeTo(StringUtil.toString(this.f114670b, i + 1, (r1 - i) - 1, str), multiMap, str);
    }
}
