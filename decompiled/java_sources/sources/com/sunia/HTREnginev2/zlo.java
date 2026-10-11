package com.sunia.HTREnginev2;

import com.google.android.material.motion.MotionUtils;
import com.twelvemonkeys.imageio.metadata.AbstractEntry;
import com.twelvemonkeys.imageio.metadata.xmp.XMP;

/* loaded from: classes10.dex */
public final class zlo extends AbstractEntry {

    /* renamed from: c */
    public final String f91940c;

    public zlo(String str, Object obj) {
        this(str, null, obj);
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry, com.twelvemonkeys.imageio.metadata.Entry
    public String getFieldName() {
        String str = this.f91940c;
        return str != null ? str : XMP.DEFAULT_NS_MAPPING.get(getIdentifier());
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry
    public String getNativeIdentifier() {
        String str = (String) getIdentifier();
        String str2 = this.f91940c;
        String str3 = (str2 == null || !str.endsWith(str2)) ? null : XMP.DEFAULT_NS_MAPPING.get(str.substring(0, str.length() - this.f91940c.length()));
        if (str3 == null) {
            return str;
        }
        return str3 + ":" + this.f91940c;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry
    public String toString() {
        String str;
        String typeName = getTypeName();
        if (typeName != null) {
            str = " (" + typeName + MotionUtils.f31762d;
        } else {
            str = "";
        }
        return String.format("%s: %s%s", getNativeIdentifier(), getValueAsString(), str);
    }

    public zlo(String str, String str2, Object obj) {
        super(str, obj);
        this.f91940c = str2;
    }
}
