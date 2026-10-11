package org.apache.poi.hwpf.usermodel;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import org.apache.poi.hwpf.model.PlexOfField;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
class FieldImpl implements Field {
    private PlexOfField endPlex;
    private PlexOfField separatorPlex;
    private PlexOfField startPlex;

    public FieldImpl(PlexOfField plexOfField, PlexOfField plexOfField2, PlexOfField plexOfField3) {
        if (plexOfField == null) {
            throw new IllegalArgumentException("startPlex == null");
        }
        if (plexOfField3 == null) {
            throw new IllegalArgumentException("endPlex == null");
        }
        if (plexOfField.getFld().getBoundaryType() != 19) {
            throw new IllegalArgumentException("startPlex (" + plexOfField + ") is not type of FIELD_BEGIN");
        }
        if (plexOfField2 != null && plexOfField2.getFld().getBoundaryType() != 20) {
            throw new IllegalArgumentException("separatorPlex" + plexOfField2 + ") is not type of FIELD_SEPARATOR");
        }
        if (plexOfField3.getFld().getBoundaryType() == 21) {
            this.startPlex = plexOfField;
            this.separatorPlex = plexOfField2;
            this.endPlex = plexOfField3;
        } else {
            throw new IllegalArgumentException("endPlex (" + plexOfField3 + ") is not type of FIELD_END");
        }
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public Range firstSubrange(Range range) {
        if (hasSeparator()) {
            if (getMarkStartOffset() + 1 == getMarkSeparatorOffset()) {
                return null;
            }
            return new Range(getMarkStartOffset() + 1, getMarkSeparatorOffset(), range) { // from class: org.apache.poi.hwpf.usermodel.FieldImpl.1
                @Override // org.apache.poi.hwpf.usermodel.Range
                public String toString() {
                    return "FieldSubrange1 (" + super.toString() + MotionUtils.f31762d;
                }
            };
        }
        if (getMarkStartOffset() + 1 == getMarkEndOffset()) {
            return null;
        }
        return new Range(getMarkStartOffset() + 1, getMarkEndOffset(), range) { // from class: org.apache.poi.hwpf.usermodel.FieldImpl.2
            @Override // org.apache.poi.hwpf.usermodel.Range
            public String toString() {
                return "FieldSubrange1 (" + super.toString() + MotionUtils.f31762d;
            }
        };
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public int getFieldEndOffset() {
        return this.endPlex.getFcStart() + 1;
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public int getFieldStartOffset() {
        return this.startPlex.getFcStart();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public CharacterRun getMarkEndCharacterRun(Range range) {
        return new Range(getMarkEndOffset(), getMarkEndOffset() + 1, range).getCharacterRun(0);
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public int getMarkEndOffset() {
        return this.endPlex.getFcStart();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public CharacterRun getMarkSeparatorCharacterRun(Range range) {
        if (hasSeparator()) {
            return new Range(getMarkSeparatorOffset(), getMarkSeparatorOffset() + 1, range).getCharacterRun(0);
        }
        return null;
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public int getMarkSeparatorOffset() {
        return this.separatorPlex.getFcStart();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public CharacterRun getMarkStartCharacterRun(Range range) {
        return new Range(getMarkStartOffset(), getMarkStartOffset() + 1, range).getCharacterRun(0);
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public int getMarkStartOffset() {
        return this.startPlex.getFcStart();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public int getType() {
        return this.startPlex.getFld().getFieldType();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean hasSeparator() {
        return this.separatorPlex != null;
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean isHasSep() {
        return this.endPlex.getFld().isFHasSep();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean isLocked() {
        return this.endPlex.getFld().isFLocked();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean isNested() {
        return this.endPlex.getFld().isFNested();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean isPrivateResult() {
        return this.endPlex.getFld().isFPrivateResult();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean isResultDirty() {
        return this.endPlex.getFld().isFResultDirty();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean isResultEdited() {
        return this.endPlex.getFld().isFResultEdited();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public boolean isZombieEmbed() {
        return this.endPlex.getFld().isFZombieEmbed();
    }

    @Override // org.apache.poi.hwpf.usermodel.Field
    public Range secondSubrange(Range range) {
        if (!hasSeparator() || getMarkSeparatorOffset() + 1 == getMarkEndOffset()) {
            return null;
        }
        return new Range(getMarkSeparatorOffset() + 1, getMarkEndOffset(), range) { // from class: org.apache.poi.hwpf.usermodel.FieldImpl.3
            @Override // org.apache.poi.hwpf.usermodel.Range
            public String toString() {
                return "FieldSubrange2 (" + super.toString() + MotionUtils.f31762d;
            }
        };
    }

    public String toString() {
        return "Field [" + getFieldStartOffset() + "; " + getFieldEndOffset() + "] (type: 0x" + Integer.toHexString(getType()) + CloudStorageConstants.OPERATION_EQUAL + getType() + " )";
    }
}
