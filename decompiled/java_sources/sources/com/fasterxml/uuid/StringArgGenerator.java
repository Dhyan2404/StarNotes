package com.fasterxml.uuid;

import java.util.UUID;

/* loaded from: classes4.dex */
public abstract class StringArgGenerator extends UUIDGenerator {
    public abstract UUID generate(String str);

    public abstract UUID generate(byte[] bArr);
}
