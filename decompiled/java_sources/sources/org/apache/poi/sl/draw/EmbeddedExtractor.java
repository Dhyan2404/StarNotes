package org.apache.poi.sl.draw;

import java.util.Collections;
import java.util.function.Supplier;

/* loaded from: classes12.dex */
public interface EmbeddedExtractor {

    /* loaded from: classes12.dex */
    public static class EmbeddedPart {
        private Supplier<byte[]> data;
        private String name;

        public Supplier<byte[]> getData() {
            return this.data;
        }

        public String getName() {
            return this.name;
        }

        public void setData(Supplier<byte[]> supplier) {
            this.data = supplier;
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    default Iterable<EmbeddedPart> getEmbeddings() {
        return Collections.emptyList();
    }
}
