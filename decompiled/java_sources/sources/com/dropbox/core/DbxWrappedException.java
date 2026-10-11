package com.dropbox.core;

import com.dropbox.core.C2260a;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.callbacks.DbxGlobalCallbackFactory;
import com.dropbox.core.p006v2.callbacks.DbxRouteErrorCallback;
import com.dropbox.core.stone.StoneSerializer;
import com.fasterxml.jackson.core.JsonParseException;
import java.io.IOException;
import java.lang.reflect.Field;

/* loaded from: classes4.dex */
public final class DbxWrappedException extends Exception {
    private static final long serialVersionUID = 0;
    private final Object errValue;
    private final String requestId;
    private final LocalizedText userMessage;

    public DbxWrappedException(Object obj, String str, LocalizedText localizedText) {
        this.errValue = obj;
        this.requestId = str;
        this.userMessage = localizedText;
    }

    public static <T> void executeBlockForObject(DbxGlobalCallbackFactory dbxGlobalCallbackFactory, String str, T t) {
        DbxRouteErrorCallback<T> createRouteErrorCallback;
        if (dbxGlobalCallbackFactory == null || (createRouteErrorCallback = dbxGlobalCallbackFactory.createRouteErrorCallback(str, t)) == null) {
            return;
        }
        createRouteErrorCallback.setRouteError(t);
        createRouteErrorCallback.run();
    }

    public static void executeOtherBlocks(DbxGlobalCallbackFactory dbxGlobalCallbackFactory, String str, Object obj) {
        try {
            String str2 = obj.getClass().getMethod("tag", new Class[0]).invoke(obj, new Object[0]).toString().toLowerCase() + "value";
            for (Field field : obj.getClass().getDeclaredFields()) {
                if (field.getName().equalsIgnoreCase(str2)) {
                    field.setAccessible(true);
                    executeBlockForObject(dbxGlobalCallbackFactory, str, field.get(obj));
                    return;
                }
            }
        } catch (Exception unused) {
        }
    }

    public static <T> DbxWrappedException fromResponse(StoneSerializer<T> stoneSerializer, HttpRequestor.Response response, String str) throws IOException, JsonParseException {
        String requestId = DbxRequestUtil.getRequestId(response);
        C2260a<T> deserialize = new C2260a.a(stoneSerializer).deserialize(response.getBody());
        T m9997a = deserialize.m9997a();
        DbxGlobalCallbackFactory dbxGlobalCallbackFactory = DbxRequestUtil.sharedCallbackFactory;
        executeBlockForObject(dbxGlobalCallbackFactory, str, m9997a);
        executeOtherBlocks(dbxGlobalCallbackFactory, str, m9997a);
        return new DbxWrappedException(m9997a, requestId, deserialize.m9998b());
    }

    public Object getErrorValue() {
        return this.errValue;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public LocalizedText getUserMessage() {
        return this.userMessage;
    }
}
