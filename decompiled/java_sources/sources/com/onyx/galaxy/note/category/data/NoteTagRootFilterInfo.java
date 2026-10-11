package com.onyx.galaxy.note.category.data;

import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/data/NoteTagRootFilterInfo;", "Lcom/onyx/galaxy/note/category/data/FilterInfo;", "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class NoteTagRootFilterInfo extends FilterInfo {
    public NoteTagRootFilterInfo() {
        super(6, NoteConfigConst.TAG_ROOT_ID);
        setQueryArgs(NoteTagRootFilter.INSTANCE.getTagRootFilterArgs());
    }
}
