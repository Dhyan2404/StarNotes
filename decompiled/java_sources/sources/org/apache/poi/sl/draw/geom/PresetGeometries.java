package org.apache.poi.sl.draw.geom;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import javax.xml.transform.stream.StreamSource;
import org.apache.poi.sl.draw.geom.PresetParser;
import org.apache.poi.util.XMLHelper;

/* loaded from: classes12.dex */
public final class PresetGeometries {
    private final Map<String, CustomGeometry> map;

    /* loaded from: classes12.dex */
    public static class SingletonHelper {
        private static final PresetGeometries INSTANCE = new PresetGeometries();

        private SingletonHelper() {
        }
    }

    public static PresetGeometries getInstance() {
        return SingletonHelper.INSTANCE;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public CustomGeometry get(String str) {
        if (str == null) {
            return null;
        }
        return this.map.get(str);
    }

    public int hashCode() {
        return Objects.hash(this.map);
    }

    public Set<String> keySet() {
        return this.map.keySet();
    }

    public int size() {
        return this.map.size();
    }

    private PresetGeometries() {
        TreeMap treeMap = new TreeMap();
        this.map = treeMap;
        try {
            InputStream resourceAsStream = PresetGeometries.class.getResourceAsStream("presetShapeDefinitions.xml");
            try {
                XMLStreamReader createXMLStreamReader = XMLHelper.newXMLInputFactory().createXMLStreamReader(new StreamSource(resourceAsStream));
                try {
                    PresetParser presetParser = new PresetParser(PresetParser.Mode.FILE);
                    presetParser.parse(createXMLStreamReader);
                    treeMap.putAll(presetParser.getGeom());
                    if (resourceAsStream != null) {
                        resourceAsStream.close();
                    }
                } finally {
                    createXMLStreamReader.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (IOException | XMLStreamException e) {
            throw new IllegalStateException(e);
        }
    }
}
