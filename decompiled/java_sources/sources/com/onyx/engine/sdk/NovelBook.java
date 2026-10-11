package com.onyx.engine.sdk;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes8.dex */
public class NovelBook {
    public boolean hasVolume;
    public List<NovelChapter> chapters = new ArrayList();
    public List<NovelVolume> volumes = new ArrayList();

    /* loaded from: classes8.dex */
    public static class NovelChapter {
        public boolean buy;
        public boolean canRead;

        /* renamed from: id */
        public String f52905id;
        public String title;
        public int words;
    }

    /* loaded from: classes8.dex */
    public static class NovelVolume {
        public List<NovelChapter> chapters = new ArrayList();

        /* renamed from: id */
        public String f52906id;
        public String title;
    }
}
