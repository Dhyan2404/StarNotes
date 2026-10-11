package io.opencensus.contrib.http.util;

import io.opencensus.trace.Status;
import javax.annotation.Nullable;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes10.dex */
public final class HttpTraceUtil {

    /* renamed from: a */
    public static final Status f94669a;

    /* renamed from: b */
    public static final Status f94670b;

    /* renamed from: c */
    public static final Status f94671c;

    /* renamed from: d */
    public static final Status f94672d;

    /* renamed from: e */
    public static final Status f94673e;

    /* renamed from: f */
    public static final Status f94674f;

    /* renamed from: g */
    public static final Status f94675g;

    /* renamed from: h */
    public static final Status f94676h;

    /* renamed from: i */
    public static final Status f94677i;

    /* renamed from: j */
    public static final Status f94678j;

    /* renamed from: k */
    public static final Status f94679k;

    /* renamed from: l */
    public static final Status f94680l;

    /* renamed from: m */
    public static final Status f94681m;

    /* renamed from: n */
    public static final Status f94682n;

    /* renamed from: o */
    public static final Status f94683o;

    /* renamed from: p */
    public static final Status f94684p;

    /* renamed from: q */
    public static final Status f94685q;

    /* renamed from: r */
    public static final Status f94686r;

    /* renamed from: s */
    public static final Status f94687s;

    static {
        Status status = Status.UNKNOWN;
        f94669a = status.withDescription(HttpStatus.Continue);
        f94670b = status.withDescription(HttpStatus.Switching_Protocols);
        f94671c = status.withDescription(HttpStatus.Payment_Required);
        f94672d = status.withDescription(HttpStatus.Method_Not_Allowed);
        f94673e = status.withDescription(HttpStatus.Not_Acceptable);
        f94674f = status.withDescription(HttpStatus.Proxy_Authentication_Required);
        f94675g = status.withDescription("Request Time-out");
        f94676h = status.withDescription(HttpStatus.Conflict);
        f94677i = status.withDescription(HttpStatus.Gone);
        f94678j = status.withDescription(HttpStatus.Length_Required);
        f94679k = status.withDescription(HttpStatus.Precondition_Failed);
        f94680l = status.withDescription(HttpStatus.Request_Entity_Too_Large);
        f94681m = status.withDescription("Request-URI Too Large");
        f94682n = status.withDescription(HttpStatus.Unsupported_Media_Type);
        f94683o = status.withDescription("Requested range not satisfiable");
        f94684p = status.withDescription(HttpStatus.Expectation_Failed);
        f94685q = status.withDescription(HttpStatus.Internal_Server_Error);
        f94686r = status.withDescription(HttpStatus.Bad_Gateway);
        f94687s = status.withDescription("HTTP Version not supported");
    }

    public static final Status parseResponseStatus(int i, @Nullable Throwable th) {
        String str;
        if (th != null) {
            str = th.getMessage();
            if (str == null) {
                str = th.getClass().getSimpleName();
            }
        } else {
            str = null;
        }
        if (i == 0) {
            return Status.UNKNOWN.withDescription(str);
        }
        if (i >= 200 && i < 400) {
            return Status.f94861OK;
        }
        if (i == 100) {
            return f94669a;
        }
        if (i == 101) {
            return f94670b;
        }
        if (i == 429) {
            return Status.RESOURCE_EXHAUSTED.withDescription(str);
        }
        switch (i) {
            case 400:
                return Status.INVALID_ARGUMENT.withDescription(str);
            case 401:
                return Status.UNAUTHENTICATED.withDescription(str);
            case 402:
                return f94671c;
            case 403:
                return Status.PERMISSION_DENIED.withDescription(str);
            case 404:
                return Status.NOT_FOUND.withDescription(str);
            case 405:
                return f94672d;
            case 406:
                return f94673e;
            case 407:
                return f94674f;
            case 408:
                return f94675g;
            case 409:
                return f94676h;
            case 410:
                return f94677i;
            case 411:
                return f94678j;
            case 412:
                return f94679k;
            case 413:
                return f94680l;
            case 414:
                return f94681m;
            case 415:
                return f94682n;
            case 416:
                return f94683o;
            case 417:
                return f94684p;
            default:
                switch (i) {
                    case 500:
                        return f94685q;
                    case 501:
                        return Status.UNIMPLEMENTED.withDescription(str);
                    case 502:
                        return f94686r;
                    case 503:
                        return Status.UNAVAILABLE.withDescription(str);
                    case 504:
                        return Status.DEADLINE_EXCEEDED.withDescription(str);
                    case 505:
                        return f94687s;
                    default:
                        return Status.UNKNOWN.withDescription(str);
                }
        }
    }
}
