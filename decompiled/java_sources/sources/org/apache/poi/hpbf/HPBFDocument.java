package org.apache.poi.hpbf;

import java.io.IOException;
import java.io.InputStream;
import org.apache.poi.POIReadOnlyDocument;
import org.apache.poi.hpbf.model.EscherDelayStm;
import org.apache.poi.hpbf.model.EscherStm;
import org.apache.poi.hpbf.model.MainContents;
import org.apache.poi.hpbf.model.QuillContents;
import org.apache.poi.poifs.filesystem.DirectoryNode;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/* loaded from: classes12.dex */
public final class HPBFDocument extends POIReadOnlyDocument {
    private EscherDelayStm escherDelayStm;
    private EscherStm escherStm;
    private MainContents mainContents;
    private QuillContents quillContents;

    public HPBFDocument(POIFSFileSystem pOIFSFileSystem) throws IOException {
        this(pOIFSFileSystem.getRoot());
    }

    public EscherDelayStm getEscherDelayStm() {
        return this.escherDelayStm;
    }

    public EscherStm getEscherStm() {
        return this.escherStm;
    }

    public MainContents getMainContents() {
        return this.mainContents;
    }

    public QuillContents getQuillContents() {
        return this.quillContents;
    }

    public HPBFDocument(InputStream inputStream) throws IOException {
        this(new POIFSFileSystem(inputStream));
    }

    public HPBFDocument(DirectoryNode directoryNode) throws IOException {
        super(directoryNode);
        this.mainContents = new MainContents(directoryNode);
        this.quillContents = new QuillContents(directoryNode);
        this.escherStm = new EscherStm(directoryNode);
        this.escherDelayStm = new EscherDelayStm(directoryNode);
    }
}
