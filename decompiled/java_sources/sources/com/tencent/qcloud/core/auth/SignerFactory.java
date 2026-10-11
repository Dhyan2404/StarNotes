package com.tencent.qcloud.core.auth;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes10.dex */
public final class SignerFactory {
    private static final String COS_XML_SIGNER = "CosXmlSigner";
    private static final Map<String, Class<? extends QCloudSigner>> SIGNERS;
    private static final Map<String, QCloudSigner> SIGNER_INSTANCES;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(5);
        SIGNERS = concurrentHashMap;
        SIGNER_INSTANCES = new ConcurrentHashMap(5);
        concurrentHashMap.put(COS_XML_SIGNER, COSXmlSigner.class);
    }

    private SignerFactory() {
    }

    private static QCloudSigner createSigner(String str) {
        Class<? extends QCloudSigner> cls = SIGNERS.get(str);
        if (cls == null) {
            return null;
        }
        try {
            QCloudSigner newInstance = cls.newInstance();
            SIGNER_INSTANCES.put(str, newInstance);
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e);
        } catch (InstantiationException e2) {
            throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e2);
        }
    }

    public static QCloudSigner getSigner(String str) {
        return lookupAndCreateSigner(str);
    }

    private static QCloudSigner lookupAndCreateSigner(String str) {
        Map<String, QCloudSigner> map = SIGNER_INSTANCES;
        return map.containsKey(str) ? map.get(str) : createSigner(str);
    }

    public static void registerSigner(String str, Class<? extends QCloudSigner> cls) {
        if (str == null) {
            throw new IllegalArgumentException("signerType cannot be null");
        }
        if (cls != null) {
            SIGNERS.put(str, cls);
            return;
        }
        throw new IllegalArgumentException("signerClass cannot be null");
    }

    public static <T extends QCloudSigner> void registerSigner(String str, T t) {
        if (str == null) {
            throw new IllegalArgumentException("signerType cannot be null");
        }
        if (t != null) {
            SIGNER_INSTANCES.put(str, t);
            return;
        }
        throw new IllegalArgumentException("signer instance cannot be null");
    }
}
