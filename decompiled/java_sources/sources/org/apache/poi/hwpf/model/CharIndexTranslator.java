package org.apache.poi.hwpf.model;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public interface CharIndexTranslator {
    int getByteIndex(int i);

    int[][] getCharIndexRanges(int i, int i2);

    boolean isIndexInTable(int i);

    int lookIndexBackward(int i);

    int lookIndexForward(int i);
}
