package com.sun.imageio.stream;

import java.io.IOException;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes9.dex */
public class StreamFinalizer {
    private ImageInputStream stream;

    public StreamFinalizer(ImageInputStream imageInputStream) {
        this.stream = imageInputStream;
    }

    public void finalize() throws Throwable {
        try {
            this.stream.close();
        } catch (IOException unused) {
        } catch (Throwable th) {
            this.stream = null;
            super.finalize();
            throw th;
        }
        this.stream = null;
        super.finalize();
    }
}
