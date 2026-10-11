package org.apache.poi.hpbf.model;

import java.io.IOException;
import org.apache.poi.poifs.filesystem.DirectoryNode;

/* loaded from: classes12.dex */
public final class EscherDelayStm extends EscherPart {
    private static final String[] PATH = {"Escher", "EscherDelayStm"};

    public EscherDelayStm(DirectoryNode directoryNode) throws IOException {
        super(directoryNode, PATH);
    }
}
