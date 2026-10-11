package com.sagittarius.p050v6.p052b;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Constructor;

/* renamed from: com.sagittarius.v6.b.l */
/* loaded from: classes18.dex */
final class C13103l implements InterfaceC13101j {

    /* renamed from: a */
    private final Constructor f63275a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C13103l(Class cls) {
        Constructor constructor = cls.getConstructor(File.class, File.class, DexFile.class);
        this.f63275a = constructor;
        constructor.setAccessible(true);
    }

    @Override // com.sagittarius.p050v6.p052b.InterfaceC13101j
    /* renamed from: a */
    public final Object mo52355a(File file, DexFile dexFile) {
        return this.f63275a.newInstance(file, file, dexFile);
    }
}
