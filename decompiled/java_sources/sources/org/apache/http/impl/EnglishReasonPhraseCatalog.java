package org.apache.http.impl;

import java.util.Locale;
import org.apache.http.ReasonPhraseCatalog;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.mortbay.jetty.HttpStatus;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class EnglishReasonPhraseCatalog implements ReasonPhraseCatalog {
    public static final EnglishReasonPhraseCatalog INSTANCE = new EnglishReasonPhraseCatalog();

    /* renamed from: a */
    public static final String[][] f110404a = {null, new String[3], new String[8], new String[8], new String[30], new String[8]};

    static {
        m68365a(200, HttpStatus.f114656OK);
        m68365a(201, HttpStatus.Created);
        m68365a(202, HttpStatus.Accepted);
        m68365a(204, HttpStatus.No_Content);
        m68365a(301, HttpStatus.Moved_Permanently);
        m68365a(302, HttpStatus.Moved_Temporarily);
        m68365a(304, HttpStatus.Not_Modified);
        m68365a(400, HttpStatus.Bad_Request);
        m68365a(401, "Unauthorized");
        m68365a(403, HttpStatus.Forbidden);
        m68365a(404, HttpStatus.Not_Found);
        m68365a(org.apache.http.HttpStatus.SC_TOO_MANY_REQUESTS, "Too Many Requests");
        m68365a(500, HttpStatus.Internal_Server_Error);
        m68365a(501, HttpStatus.Not_Implemented);
        m68365a(502, HttpStatus.Bad_Gateway);
        m68365a(503, HttpStatus.Service_Unavailable);
        m68365a(100, HttpStatus.Continue);
        m68365a(307, "Temporary Redirect");
        m68365a(405, HttpStatus.Method_Not_Allowed);
        m68365a(409, HttpStatus.Conflict);
        m68365a(412, HttpStatus.Precondition_Failed);
        m68365a(413, "Request Too Long");
        m68365a(414, "Request-URI Too Long");
        m68365a(415, HttpStatus.Unsupported_Media_Type);
        m68365a(300, HttpStatus.Multiple_Choices);
        m68365a(303, HttpStatus.See_Other);
        m68365a(305, HttpStatus.Use_Proxy);
        m68365a(402, HttpStatus.Payment_Required);
        m68365a(406, HttpStatus.Not_Acceptable);
        m68365a(407, HttpStatus.Proxy_Authentication_Required);
        m68365a(408, HttpStatus.Request_Timeout);
        m68365a(101, HttpStatus.Switching_Protocols);
        m68365a(203, HttpStatus.Non_Authoritative_Information);
        m68365a(205, HttpStatus.Reset_Content);
        m68365a(206, HttpStatus.Partial_Content);
        m68365a(504, HttpStatus.Gateway_Timeout);
        m68365a(505, "Http Version Not Supported");
        m68365a(410, HttpStatus.Gone);
        m68365a(411, HttpStatus.Length_Required);
        m68365a(416, HttpStatus.Requested_Range_Not_Satisfiable);
        m68365a(417, HttpStatus.Expectation_Failed);
        m68365a(102, HttpStatus.Processing);
        m68365a(207, "Multi-Status");
        m68365a(422, HttpStatus.Unprocessable_Entity);
        m68365a(419, "Insufficient Space On Resource");
        m68365a(420, "Method Failure");
        m68365a(423, HttpStatus.Locked);
        m68365a(507, HttpStatus.Insufficient_Storage);
        m68365a(424, HttpStatus.Failed_Dependency);
    }

    /* renamed from: a */
    public static void m68365a(int i, String str) {
        int i2 = i / 100;
        f110404a[i2][i - (i2 * 100)] = str;
    }

    @Override // org.apache.http.ReasonPhraseCatalog
    public String getReason(int i, Locale locale) {
        Args.check(i >= 100 && i < 600, "Unknown category for status code " + i);
        int i2 = i / 100;
        int i3 = i - (i2 * 100);
        String[] strArr = f110404a[i2];
        if (strArr.length > i3) {
            return strArr[i3];
        }
        return null;
    }
}
