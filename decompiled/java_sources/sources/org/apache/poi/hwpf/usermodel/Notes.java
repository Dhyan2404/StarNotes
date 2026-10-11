package org.apache.poi.hwpf.usermodel;

/* loaded from: classes12.dex */
public interface Notes {
    int getNoteAnchorPosition(int i);

    int getNoteIndexByAnchorPosition(int i);

    int getNoteTextEndOffset(int i);

    int getNoteTextStartOffset(int i);

    int getNotesCount();
}
