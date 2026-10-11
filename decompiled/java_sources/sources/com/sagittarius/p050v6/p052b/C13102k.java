package com.sagittarius.p050v6.p052b;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Constructor;
import java.util.zip.ZipFile;

/* renamed from: com.sagittarius.v6.b.k */
/* loaded from: classes18.dex */
public final class C13102k implements InterfaceC13101j {

    /* renamed from: a */
    private final Constructor f63274a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C13102k(Class cls) {
        Constructor constructor = cls.getConstructor(File.class, ZipFile.class, DexFile.class);
        this.f63274a = constructor;
        constructor.setAccessible(true);
    }

    @Override // com.sagittarius.p050v6.p052b.InterfaceC13101j
    /* renamed from: a */
    public final Object mo52355a(File file, DexFile dexFile) {
        return this.f63274a.newInstance(file, new ZipFile(file), dexFile);
    }
}
