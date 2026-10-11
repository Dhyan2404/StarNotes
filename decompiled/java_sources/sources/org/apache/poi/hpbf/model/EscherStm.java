package org.apache.poi.hpbf.model;

import java.io.IOException;
import org.apache.poi.poifs.filesystem.DirectoryNode;

/* loaded from: classes12.dex */
public final class EscherStm extends EscherPart {
    private static final String[] PATH = {"Escher", "EscherStm"};

    public EscherStm(DirectoryNode directoryNode) throws IOException {
        super(directoryNode, PATH);
    }
}
