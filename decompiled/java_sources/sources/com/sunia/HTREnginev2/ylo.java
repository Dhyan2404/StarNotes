package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.AbstractCompoundDirectory;
import com.twelvemonkeys.imageio.metadata.Directory;
import java.util.Collection;

/* loaded from: classes10.dex */
public final class ylo extends AbstractCompoundDirectory {

    /* renamed from: h */
    public final String f90868h;

    public ylo(Collection<? extends Directory> collection, String str) {
        super(collection);
        this.f90868h = str;
    }

    /* renamed from: b */
    public String m58456b() {
        return this.f90868h;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractCompoundDirectory, com.twelvemonkeys.imageio.metadata.AbstractDirectory, com.twelvemonkeys.imageio.metadata.Directory
    public boolean isReadOnly() {
        return super.isReadOnly();
    }
}
