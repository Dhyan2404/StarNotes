package org.apache.poi.hwpf.usermodel;

import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.poi.poifs.filesystem.DirectoryEntry;
import org.apache.poi.poifs.filesystem.Entry;
import org.apache.poi.poifs.filesystem.EntryUtils;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class ObjectPoolImpl implements ObjectsPool {
    private DirectoryEntry _objectPool;

    public ObjectPoolImpl(DirectoryEntry directoryEntry) {
        this._objectPool = directoryEntry;
    }

    @Override // org.apache.poi.hwpf.usermodel.ObjectsPool
    public Entry getObjectById(String str) {
        DirectoryEntry directoryEntry = this._objectPool;
        if (directoryEntry == null) {
            return null;
        }
        try {
            return directoryEntry.getEntry(str);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    @Internal
    public void writeTo(DirectoryEntry directoryEntry) throws IOException {
        DirectoryEntry directoryEntry2 = this._objectPool;
        if (directoryEntry2 != null) {
            EntryUtils.copyNodeRecursively(directoryEntry2, directoryEntry);
        }
    }
}
