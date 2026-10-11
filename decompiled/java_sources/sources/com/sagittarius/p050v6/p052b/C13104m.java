package com.sagittarius.p050v6.p052b;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Constructor;

/* renamed from: com.sagittarius.v6.b.m */
/* loaded from: classes18.dex */
final class C13104m implements InterfaceC13101j {

    /* renamed from: a */
    private final Constructor f63276a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C13104m(Class cls) {
        Constructor constructor = cls.getConstructor(File.class, Boolean.TYPE, File.class, DexFile.class);
        this.f63276a = constructor;
        constructor.setAccessible(true);
    }

    @Override // com.sagittarius.p050v6.p052b.InterfaceC13101j
    /* renamed from: a */
    public final Object mo52355a(File file, DexFile dexFile) {
        return this.f63276a.newInstance(file, Boolean.FALSE, file, dexFile);
    }
}
