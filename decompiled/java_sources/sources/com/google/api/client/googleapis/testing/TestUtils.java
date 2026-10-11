package com.google.api.client.googleapis.testing;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes6.dex */
public final class TestUtils {
    private static final String UTF_8 = "UTF-8";

    private TestUtils() {
    }

    public static Map<String, String> parseQuery(String str) throws IOException {
        HashMap hashMap = new HashMap();
        Iterator<String> it2 = Splitter.m25826on('&').split(str).iterator();
        while (it2.hasNext()) {
            ArrayList newArrayList = Lists.newArrayList(Splitter.m25826on('=').split(it2.next()));
            if (newArrayList.size() != 2) {
                throw new IOException("Invalid Query String");
            }
            hashMap.put(URLDecoder.decode((String) newArrayList.get(0), "UTF-8"), URLDecoder.decode((String) newArrayList.get(1), "UTF-8"));
        }
        return hashMap;
    }
}
