package org.apache.http.impl.cookie;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public abstract class AbstractCookieSpec implements CookieSpec {

    /* renamed from: a */
    public final Map<String, CookieAttributeHandler> f110836a;

    public AbstractCookieSpec() {
        this.f110836a = new ConcurrentHashMap(10);
    }

    public CookieAttributeHandler findAttribHandler(String str) {
        return this.f110836a.get(str);
    }

    public CookieAttributeHandler getAttribHandler(String str) {
        CookieAttributeHandler findAttribHandler = findAttribHandler(str);
        Asserts.check(findAttribHandler != null, "Handler not registered for " + str + " attribute");
        return findAttribHandler;
    }

    public Collection<CookieAttributeHandler> getAttribHandlers() {
        return this.f110836a.values();
    }

    @Deprecated
    public void registerAttribHandler(String str, CookieAttributeHandler cookieAttributeHandler) {
        Args.notNull(str, "Attribute name");
        Args.notNull(cookieAttributeHandler, "Attribute handler");
        this.f110836a.put(str, cookieAttributeHandler);
    }

    public AbstractCookieSpec(HashMap<String, CookieAttributeHandler> hashMap) {
        Asserts.notNull(hashMap, "Attribute handler map");
        this.f110836a = new ConcurrentHashMap(hashMap);
    }

    public AbstractCookieSpec(CommonCookieAttributeHandler... commonCookieAttributeHandlerArr) {
        this.f110836a = new ConcurrentHashMap(commonCookieAttributeHandlerArr.length);
        for (CommonCookieAttributeHandler commonCookieAttributeHandler : commonCookieAttributeHandlerArr) {
            this.f110836a.put(commonCookieAttributeHandler.getAttributeName(), commonCookieAttributeHandler);
        }
    }
}
