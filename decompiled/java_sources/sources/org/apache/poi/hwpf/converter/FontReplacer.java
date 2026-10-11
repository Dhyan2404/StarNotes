package org.apache.poi.hwpf.converter;

/* loaded from: classes12.dex */
public interface FontReplacer {

    /* loaded from: classes12.dex */
    public static class Triplet {
        public boolean bold;
        public String fontName;
        public boolean italic;
    }

    Triplet update(Triplet triplet);
}
