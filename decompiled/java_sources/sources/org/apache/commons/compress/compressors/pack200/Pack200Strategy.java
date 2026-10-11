package org.apache.commons.compress.compressors.pack200;

import com.sunia.HTREnginev2.a0n;
import com.sunia.HTREnginev2.hji;
import com.sunia.HTREnginev2.ran;
import java.io.IOException;

/* loaded from: classes12.dex */
public enum Pack200Strategy {
    IN_MEMORY { // from class: org.apache.commons.compress.compressors.pack200.Pack200Strategy.1
        @Override // org.apache.commons.compress.compressors.pack200.Pack200Strategy
        public a0n newStreamBridge() {
            return new hji();
        }
    },
    TEMP_FILE { // from class: org.apache.commons.compress.compressors.pack200.Pack200Strategy.2
        @Override // org.apache.commons.compress.compressors.pack200.Pack200Strategy
        public a0n newStreamBridge() throws IOException {
            return new ran();
        }
    };

    public abstract a0n newStreamBridge() throws IOException;
}
