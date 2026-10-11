package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.AbstractDirectory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.xmp.XMP;
import java.util.Collection;

/* loaded from: classes10.dex */
public final class vbl extends AbstractDirectory {

    /* renamed from: g */
    public final String f87342g;

    public vbl(Collection<? extends Entry> collection) {
        this(null, collection);
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractDirectory
    public String toString() {
        return this.f87342g != null ? super.toString().replaceAll("^RDFDescription\\[", String.format("%s[%s|%s, ", vbl.class.getSimpleName(), XMP.DEFAULT_NS_MAPPING.get(this.f87342g), this.f87342g)) : super.toString();
    }

    public vbl(String str, Collection<? extends Entry> collection) {
        super(collection);
        this.f87342g = str;
    }
}
