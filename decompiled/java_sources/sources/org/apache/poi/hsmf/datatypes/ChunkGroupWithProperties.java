package org.apache.poi.hsmf.datatypes;

import java.util.List;
import java.util.Map;

/* loaded from: classes12.dex */
public interface ChunkGroupWithProperties extends ChunkGroup {
    Map<MAPIProperty, List<PropertyValue>> getProperties();
}
