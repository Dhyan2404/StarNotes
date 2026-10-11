package javax.servlet.http;

import java.util.Enumeration;

/* loaded from: classes5.dex */
public interface HttpSessionContext {
    Enumeration getIds();

    HttpSession getSession(String str);
}
