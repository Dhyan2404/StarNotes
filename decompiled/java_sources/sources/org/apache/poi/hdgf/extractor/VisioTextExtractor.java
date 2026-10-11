package org.apache.poi.hdgf.extractor;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.apache.poi.extractor.POIOLE2TextExtractor;
import org.apache.poi.hdgf.HDGFDiagram;
import org.apache.poi.hdgf.chunks.Chunk;
import org.apache.poi.hdgf.streams.ChunkStream;
import org.apache.poi.hdgf.streams.PointerContainingStream;
import org.apache.poi.hdgf.streams.Stream;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class VisioTextExtractor implements POIOLE2TextExtractor {
    private boolean doCloseFilesystem;
    private HDGFDiagram hdgf;

    public VisioTextExtractor(HDGFDiagram hDGFDiagram) {
        this.doCloseFilesystem = true;
        this.hdgf = hDGFDiagram;
    }

    private void findText(Stream stream, List<String> list) {
        Chunk.Command command;
        if (stream instanceof PointerContainingStream) {
            for (Stream stream2 : ((PointerContainingStream) stream).getPointedToStreams()) {
                findText(stream2, list);
            }
        }
        if (stream instanceof ChunkStream) {
            for (Chunk chunk : ((ChunkStream) stream).getChunks()) {
                if (chunk != null && chunk.getName() != null && "Text".equals(chunk.getName()) && chunk.getCommands().length > 0 && (command = chunk.getCommands()[0]) != null && command.getValue() != null) {
                    String obj = command.getValue().toString();
                    if (!obj.isEmpty() && !"\n".equals(obj)) {
                        list.add(obj);
                    }
                }
            }
        }
    }

    public String[] getAllText() {
        ArrayList arrayList = new ArrayList();
        for (Stream stream : this.hdgf.getTopLevelStreams()) {
            findText(stream, arrayList);
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public String getText() {
        StringBuilder sb = new StringBuilder();
        for (String str : getAllText()) {
            sb.append(str);
            if (!str.endsWith("\r") && !str.endsWith("\n")) {
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public boolean isCloseFilesystem() {
        return this.doCloseFilesystem;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public void setCloseFilesystem(boolean z) {
        this.doCloseFilesystem = z;
    }

    @Override // org.apache.poi.extractor.POITextExtractor
    public HDGFDiagram getFilesystem() {
        return this.hdgf;
    }

    @Override // org.apache.poi.extractor.POIOLE2TextExtractor, org.apache.poi.extractor.POITextExtractor
    public HDGFDiagram getDocument() {
        return this.hdgf;
    }

    public VisioTextExtractor(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    public VisioTextExtractor(DirectoryNode directoryNode) throws IOException {
        this(new HDGFDiagram(directoryNode));
    }

    public VisioTextExtractor(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }
}
