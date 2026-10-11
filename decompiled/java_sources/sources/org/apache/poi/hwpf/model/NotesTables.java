package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.apache.poi.hwpf.model.types.FRDAbstractType;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class NotesTables {
    private PlexOfCps descriptors;
    private final NoteType noteType;
    private PlexOfCps textPositions;

    public NotesTables(NoteType noteType) {
        this.descriptors = new PlexOfCps(FRDAbstractType.getSize());
        PlexOfCps plexOfCps = new PlexOfCps(0);
        this.textPositions = plexOfCps;
        this.noteType = noteType;
        plexOfCps.addProperty(new GenericPropertyNode(0, 1, new byte[0]));
    }

    private void read(byte[] bArr, FileInformationBlock fileInformationBlock) {
        int notesDescriptorsOffset = fileInformationBlock.getNotesDescriptorsOffset(this.noteType);
        int notesDescriptorsSize = fileInformationBlock.getNotesDescriptorsSize(this.noteType);
        if (notesDescriptorsOffset != 0 && notesDescriptorsSize != 0) {
            this.descriptors = new PlexOfCps(bArr, notesDescriptorsOffset, notesDescriptorsSize, FRDAbstractType.getSize());
        }
        int notesTextPositionsOffset = fileInformationBlock.getNotesTextPositionsOffset(this.noteType);
        int notesTextPositionsSize = fileInformationBlock.getNotesTextPositionsSize(this.noteType);
        if (notesTextPositionsOffset == 0 || notesTextPositionsSize == 0) {
            return;
        }
        this.textPositions = new PlexOfCps(bArr, notesTextPositionsOffset, notesTextPositionsSize, 0);
    }

    public GenericPropertyNode getDescriptor(int i) {
        return this.descriptors.getProperty(i);
    }

    public int getDescriptorsCount() {
        return this.descriptors.length();
    }

    public GenericPropertyNode getTextPosition(int i) {
        return this.textPositions.getProperty(i);
    }

    public void writeRef(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        PlexOfCps plexOfCps = this.descriptors;
        if (plexOfCps == null || plexOfCps.length() == 0) {
            fileInformationBlock.setNotesDescriptorsOffset(this.noteType, byteArrayOutputStream.size());
            fileInformationBlock.setNotesDescriptorsSize(this.noteType, 0);
            return;
        }
        int size = byteArrayOutputStream.size();
        byteArrayOutputStream.write(this.descriptors.toByteArray());
        int size2 = byteArrayOutputStream.size();
        fileInformationBlock.setNotesDescriptorsOffset(this.noteType, size);
        fileInformationBlock.setNotesDescriptorsSize(this.noteType, size2 - size);
    }

    public void writeTxt(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        PlexOfCps plexOfCps = this.textPositions;
        if (plexOfCps == null || plexOfCps.length() == 0) {
            fileInformationBlock.setNotesTextPositionsOffset(this.noteType, byteArrayOutputStream.size());
            fileInformationBlock.setNotesTextPositionsSize(this.noteType, 0);
            return;
        }
        int size = byteArrayOutputStream.size();
        byteArrayOutputStream.write(this.textPositions.toByteArray());
        int size2 = byteArrayOutputStream.size();
        fileInformationBlock.setNotesTextPositionsOffset(this.noteType, size);
        fileInformationBlock.setNotesTextPositionsSize(this.noteType, size2 - size);
    }

    public NotesTables(NoteType noteType, byte[] bArr, FileInformationBlock fileInformationBlock) {
        this.descriptors = new PlexOfCps(FRDAbstractType.getSize());
        this.textPositions = new PlexOfCps(0);
        this.noteType = noteType;
        read(bArr, fileInformationBlock);
    }
}
