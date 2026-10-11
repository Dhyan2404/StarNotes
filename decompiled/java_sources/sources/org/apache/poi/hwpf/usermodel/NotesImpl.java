package org.apache.poi.hwpf.usermodel;

import java.util.HashMap;
import java.util.Map;
import org.apache.poi.hwpf.model.NotesTables;

/* loaded from: classes12.dex */
public class NotesImpl implements Notes {
    private Map<Integer, Integer> anchorToIndexMap;
    private final NotesTables notesTables;

    public NotesImpl(NotesTables notesTables) {
        this.notesTables = notesTables;
    }

    private void updateAnchorToIndexMap() {
        if (this.anchorToIndexMap != null) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < this.notesTables.getDescriptorsCount(); i++) {
            hashMap.put(Integer.valueOf(this.notesTables.getDescriptor(i).getStart()), Integer.valueOf(i));
        }
        this.anchorToIndexMap = hashMap;
    }

    @Override // org.apache.poi.hwpf.usermodel.Notes
    public int getNoteAnchorPosition(int i) {
        return this.notesTables.getDescriptor(i).getStart();
    }

    @Override // org.apache.poi.hwpf.usermodel.Notes
    public int getNoteIndexByAnchorPosition(int i) {
        updateAnchorToIndexMap();
        Integer num = this.anchorToIndexMap.get(Integer.valueOf(i));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // org.apache.poi.hwpf.usermodel.Notes
    public int getNoteTextEndOffset(int i) {
        return this.notesTables.getTextPosition(i).getEnd();
    }

    @Override // org.apache.poi.hwpf.usermodel.Notes
    public int getNoteTextStartOffset(int i) {
        return this.notesTables.getTextPosition(i).getStart();
    }

    @Override // org.apache.poi.hwpf.usermodel.Notes
    public int getNotesCount() {
        return this.notesTables.getDescriptorsCount();
    }
}
