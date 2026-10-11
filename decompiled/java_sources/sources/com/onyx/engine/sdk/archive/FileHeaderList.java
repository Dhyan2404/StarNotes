package com.onyx.engine.sdk.archive;

import com.onyx.engine.sdk.DataList;
import com.onyx.engine.sdk.JsonUtils;
import com.onyx.engine.sdk.archive.FileHeaderList;
import java.util.function.Supplier;

/* loaded from: classes8.dex */
public class FileHeaderList extends DataList<FileHeader> {
    public static FileHeaderList fromJson(String str) {
        return (FileHeaderList) JsonUtils.fromJson(str, FileHeaderList.class, new Supplier() { // from class: com.sunia.HTREnginev2.xgg
            @Override // java.util.function.Supplier
            public final Object get() {
                return new FileHeaderList();
            }
        });
    }
}
