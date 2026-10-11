package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.AbstractEntry;
import com.twelvemonkeys.imageio.metadata.psd.PSD;
import com.twelvemonkeys.lang.StringUtil;
import java.lang.reflect.Field;

/* loaded from: classes10.dex */
public class ilk extends AbstractEntry {

    /* renamed from: c */
    public final String f73355c;

    public ilk(int i, String str, Object obj) {
        super(Integer.valueOf(i), obj);
        this.f73355c = StringUtil.isEmpty(str) ? null : str;
    }

    /* renamed from: d */
    public final Class<?> m54724d() {
        try {
            return Class.forName("com.twelvemonkeys.imageio.plugins.psd.PSD");
        } catch (ClassNotFoundException unused) {
            return PSD.class;
        }
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry, com.twelvemonkeys.imageio.metadata.Entry
    public String getFieldName() {
        for (Field field : m54724d().getDeclaredFields()) {
            try {
                if (field.getType() == Integer.TYPE && field.getName().startsWith("RES_")) {
                    field.setAccessible(true);
                    if (field.get(null).equals(getIdentifier())) {
                        String lispToCamel = StringUtil.lispToCamel(field.getName().substring(4).replace("_", "-").toLowerCase(), true);
                        if (this.f73355c == null) {
                            return lispToCamel;
                        }
                        return lispToCamel + ": " + this.f73355c;
                    }
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return this.f73355c;
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry
    public String getNativeIdentifier() {
        return String.format("0x%04x", (Integer) getIdentifier());
    }
}
