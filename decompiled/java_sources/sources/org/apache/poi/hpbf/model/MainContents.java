package org.apache.poi.hpbf.model;

import java.io.IOException;
import org.apache.poi.poifs.filesystem.DirectoryNode;

/* loaded from: classes12.dex */
public final class MainContents extends HPBFPart {
    private static final String[] PATH = {"Contents"};

    public MainContents(DirectoryNode directoryNode) throws IOException {
        super(directoryNode, PATH);
    }

    @Override // org.apache.poi.hpbf.model.HPBFPart
    public void generateData() {
    }
}
