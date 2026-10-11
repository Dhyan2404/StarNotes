package com.onyx.engine.sdk.archive;

import com.alibaba.fastjson2.TypeReference;
import com.onyx.engine.sdk.JsonUtils;
import java.util.Collections;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class FileHeader {
    boolean isDirectory;
    boolean isEncrypted;
    String path;
    int size;

    public static List<FileHeader> parseList(String str) {
        List<FileHeader> list = (List) JsonUtils.fromJson(str, new TypeReference<List<FileHeader>>() { // from class: com.onyx.engine.sdk.archive.FileHeader.1
        }.getType());
        return list == null ? Collections.emptyList() : list;
    }

    public String getPath() {
        return this.path;
    }

    public int getSize() {
        return this.size;
    }

    public boolean isDirectory() {
        return this.isDirectory;
    }

    public boolean isEncrypted() {
        return this.isEncrypted;
    }

    public FileHeader setDirectory(boolean z) {
        this.isDirectory = z;
        return this;
    }

    public FileHeader setEncrypted(boolean z) {
        this.isEncrypted = z;
        return this;
    }

    public FileHeader setPath(String str) {
        this.path = str;
        return this;
    }

    public FileHeader setSize(int i) {
        this.size = i;
        return this;
    }

    public String toString() {
        return "FileHeader{path='" + this.path + Chars.QUOTE + ", size=" + this.size + ", isDirectory=" + this.isDirectory + ", isEncrypted=" + this.isEncrypted + '}';
    }
}
