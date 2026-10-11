package com.sunia.HTREnginev2;

import java.io.Serializable;
import java.nio.file.Path;
import java.util.function.Function;
import onyx.org.apache.commons.io.file.PathUtils;

/* loaded from: classes11.dex */
public final /* synthetic */ class kjl implements Function, Serializable {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return PathUtils.getFileNameString((Path) obj);
    }
}
