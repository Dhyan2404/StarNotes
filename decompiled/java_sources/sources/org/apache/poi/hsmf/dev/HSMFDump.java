package org.apache.poi.hsmf.dev;

import androidx.constraintlayout.widget.ConstraintSet;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.util.Iterator;
import org.apache.poi.hsmf.datatypes.Chunk;
import org.apache.poi.hsmf.datatypes.ChunkGroup;
import org.apache.poi.hsmf.datatypes.MAPIProperty;
import org.apache.poi.hsmf.datatypes.PropertiesChunk;
import org.apache.poi.hsmf.datatypes.PropertyValue;
import org.apache.poi.hsmf.parsers.POIFSChunkParser;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public class HSMFDump {

    /* renamed from: fs */
    private POIFSFileSystem f111391fs;

    public HSMFDump(POIFSFileSystem pOIFSFileSystem) {
        this.f111391fs = pOIFSFileSystem;
    }

    public static void main(String[] strArr) throws Exception {
        for (String str : strArr) {
            POIFSFileSystem pOIFSFileSystem = new POIFSFileSystem(new File(str), true);
            new HSMFDump(pOIFSFileSystem).dump();
            pOIFSFileSystem.close();
        }
    }

    public void dump() throws IOException {
        dump(System.out);
    }

    public void dump(PrintStream printStream) throws IOException {
        for (ChunkGroup chunkGroup : POIFSChunkParser.parse(this.f111391fs)) {
            printStream.println(chunkGroup.getClass().getSimpleName());
            for (Chunk chunk : chunkGroup.getChunks()) {
                MAPIProperty mAPIProperty = MAPIProperty.get(chunk.getChunkId());
                if (chunk instanceof PropertiesChunk) {
                    PropertiesChunk propertiesChunk = (PropertiesChunk) chunk;
                    printStream.println("   Properties - " + propertiesChunk.getProperties().size() + ":");
                    for (MAPIProperty mAPIProperty2 : propertiesChunk.getProperties().keySet()) {
                        printStream.println("       * " + mAPIProperty2);
                        Iterator<PropertyValue> it2 = propertiesChunk.getValues(mAPIProperty2).iterator();
                        while (it2.hasNext()) {
                            printStream.println("        = " + it2.next());
                        }
                    }
                } else {
                    String str = mAPIProperty.f111389id + " - " + mAPIProperty.name;
                    if (mAPIProperty == MAPIProperty.UNKNOWN) {
                        str = chunk.getChunkId() + " - (unknown)";
                    }
                    printStream.println("   " + str + " - " + chunk.getType().getName());
                    StringBuilder sb = new StringBuilder();
                    sb.append(ConstraintSet.C0501a.f4632o);
                    sb.append(chunk);
                    printStream.println(sb.toString());
                }
            }
            printStream.println();
        }
    }
}
