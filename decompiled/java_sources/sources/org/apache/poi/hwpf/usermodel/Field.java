package org.apache.poi.hwpf.usermodel;

/* loaded from: classes12.dex */
public interface Field {
    Range firstSubrange(Range range);

    int getFieldEndOffset();

    int getFieldStartOffset();

    CharacterRun getMarkEndCharacterRun(Range range);

    int getMarkEndOffset();

    CharacterRun getMarkSeparatorCharacterRun(Range range);

    int getMarkSeparatorOffset();

    CharacterRun getMarkStartCharacterRun(Range range);

    int getMarkStartOffset();

    int getType();

    boolean hasSeparator();

    boolean isHasSep();

    boolean isLocked();

    boolean isNested();

    boolean isPrivateResult();

    boolean isResultDirty();

    boolean isResultEdited();

    boolean isZombieEmbed();

    Range secondSubrange(Range range);
}
