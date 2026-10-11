package com.fasterxml.uuid.impl;

import com.fasterxml.uuid.StringArgGenerator;
import com.fasterxml.uuid.UUIDType;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.UUID;

/* loaded from: classes4.dex */
public class NameBasedGenerator extends StringArgGenerator {
    protected final MessageDigest _digester;
    protected final UUID _namespace;
    protected final UUIDType _type;

    /* renamed from: a */
    public final LoggerFacade f21384a;
    public static final Charset _utf8 = Charset.forName("UTF-8");
    public static final UUID NAMESPACE_DNS = UUID.fromString("6ba7b810-9dad-11d1-80b4-00c04fd430c8");
    public static final UUID NAMESPACE_URL = UUID.fromString("6ba7b811-9dad-11d1-80b4-00c04fd430c8");
    public static final UUID NAMESPACE_OID = UUID.fromString("6ba7b812-9dad-11d1-80b4-00c04fd430c8");
    public static final UUID NAMESPACE_X500 = UUID.fromString("6ba7b814-9dad-11d1-80b4-00c04fd430c8");

    public NameBasedGenerator(UUID uuid, MessageDigest messageDigest, UUIDType uUIDType) {
        LoggerFacade logger = LoggerFacade.getLogger(getClass());
        this.f21384a = logger;
        this._namespace = uuid;
        if (messageDigest == null) {
            throw new IllegalArgumentException("Digester not optional: cannot pass `null`");
        }
        if (uUIDType == null) {
            String algorithm = messageDigest.getAlgorithm();
            if (algorithm.startsWith("MD5")) {
                uUIDType = UUIDType.NAME_BASED_MD5;
            } else if (algorithm.startsWith("SHA")) {
                uUIDType = UUIDType.NAME_BASED_SHA1;
            } else {
                uUIDType = UUIDType.NAME_BASED_SHA1;
                logger.warn("Could not determine type of Digester from '%s'; assuming 'SHA-1' type", algorithm);
            }
        }
        this._digester = messageDigest;
        this._type = uUIDType;
    }

    @Override // com.fasterxml.uuid.StringArgGenerator
    public UUID generate(String str) {
        return generate(str.getBytes(_utf8));
    }

    public UUID getNamespace() {
        return this._namespace;
    }

    @Override // com.fasterxml.uuid.UUIDGenerator
    public UUIDType getType() {
        return this._type;
    }

    @Override // com.fasterxml.uuid.StringArgGenerator
    public UUID generate(byte[] bArr) {
        byte[] digest;
        synchronized (this._digester) {
            this._digester.reset();
            UUID uuid = this._namespace;
            if (uuid != null) {
                this._digester.update(UUIDUtil.asByteArray(uuid));
            }
            this._digester.update(bArr);
            digest = this._digester.digest();
        }
        return UUIDUtil.constructUUID(this._type, digest);
    }
}
