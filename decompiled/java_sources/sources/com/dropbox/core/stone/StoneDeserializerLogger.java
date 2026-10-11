package com.dropbox.core.stone;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class StoneDeserializerLogger {
    public static Map<Class<?>, LoggerCallback> LOGGER_MAP = new HashMap();

    /* loaded from: classes4.dex */
    public interface LoggerCallback {
        void invoke(Object obj, String str);
    }

    public static void log(Object obj, String str) {
        Class<?> cls = obj.getClass();
        if (LOGGER_MAP.containsKey(cls)) {
            LOGGER_MAP.get(cls).invoke(obj, str);
        }
    }

    public static <T> void registerCallback(Class<T> cls, LoggerCallback loggerCallback) {
        LOGGER_MAP.put(cls, loggerCallback);
    }
}
