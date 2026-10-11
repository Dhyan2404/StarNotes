package org.mortbay.jetty;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;

/* loaded from: classes13.dex */
public class HttpException extends IOException {
    String _reason;
    int _status;

    public HttpException(int i) {
        this._status = i;
        this._reason = null;
    }

    public String getReason() {
        return this._reason;
    }

    public int getStatus() {
        return this._status;
    }

    public void setReason(String str) {
        this._reason = str;
    }

    public void setStatus(int i) {
        this._status = i;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("HttpException(");
        stringBuffer.append(this._status);
        stringBuffer.append(",");
        stringBuffer.append(this._reason);
        stringBuffer.append(",");
        stringBuffer.append(super.getCause());
        stringBuffer.append(MotionUtils.f31762d);
        return stringBuffer.toString();
    }

    public HttpException(int i, String str) {
        this._status = i;
        this._reason = str;
    }

    public HttpException(int i, String str, Throwable th) {
        this._status = i;
        this._reason = str;
        initCause(th);
    }
}
