package org.apache.poi.hwmf.usermodel;

import java.nio.charset.Charset;
import java.util.function.Supplier;

/* loaded from: classes12.dex */
public interface HwmfCharsetAware {
    void setCharsetProvider(Supplier<Charset> supplier);
}
