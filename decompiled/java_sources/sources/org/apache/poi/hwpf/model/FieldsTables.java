package org.apache.poi.hwpf.model;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes12.dex */
public class FieldsTables {
    private static final int FLD_SIZE = 2;

    @Deprecated
    public static final int PLCFFLDATN = 0;

    @Deprecated
    public static final int PLCFFLDEDN = 1;

    @Deprecated
    public static final int PLCFFLDFTN = 2;

    @Deprecated
    public static final int PLCFFLDHDR = 3;

    @Deprecated
    public static final int PLCFFLDHDRTXBX = 4;

    @Deprecated
    public static final int PLCFFLDMOM = 5;

    @Deprecated
    public static final int PLCFFLDTXBX = 6;
    private Map<FieldsDocumentPart, PlexOfCps> _tables = new HashMap(FieldsDocumentPart.values().length);

    public FieldsTables(byte[] bArr, FileInformationBlock fileInformationBlock) {
        for (FieldsDocumentPart fieldsDocumentPart : FieldsDocumentPart.values()) {
            this._tables.put(fieldsDocumentPart, readPLCF(bArr, fileInformationBlock, fieldsDocumentPart));
        }
    }

    private PlexOfCps readPLCF(byte[] bArr, FileInformationBlock fileInformationBlock, FieldsDocumentPart fieldsDocumentPart) {
        int fieldsPlcfOffset = fileInformationBlock.getFieldsPlcfOffset(fieldsDocumentPart);
        int fieldsPlcfLength = fileInformationBlock.getFieldsPlcfLength(fieldsDocumentPart);
        if (fieldsPlcfOffset <= 0 || fieldsPlcfLength <= 0) {
            return null;
        }
        return new PlexOfCps(bArr, fieldsPlcfOffset, fieldsPlcfLength, 2);
    }

    private int savePlex(FileInformationBlock fileInformationBlock, FieldsDocumentPart fieldsDocumentPart, PlexOfCps plexOfCps, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        if (plexOfCps == null || plexOfCps.length() == 0) {
            fileInformationBlock.setFieldsPlcfOffset(fieldsDocumentPart, byteArrayOutputStream.size());
            fileInformationBlock.setFieldsPlcfLength(fieldsDocumentPart, 0);
            return 0;
        }
        byte[] byteArray = plexOfCps.toByteArray();
        int size = byteArrayOutputStream.size();
        int length = byteArray.length;
        byteArrayOutputStream.write(byteArray);
        fileInformationBlock.setFieldsPlcfOffset(fieldsDocumentPart, size);
        fileInformationBlock.setFieldsPlcfLength(fieldsDocumentPart, length);
        return length;
    }

    private static ArrayList<PlexOfField> toArrayList(PlexOfCps plexOfCps) {
        if (plexOfCps == null) {
            return new ArrayList<>();
        }
        ArrayList<PlexOfField> arrayList = new ArrayList<>(plexOfCps.length());
        for (int i = 0; i < plexOfCps.length(); i++) {
            arrayList.add(new PlexOfField(plexOfCps.getProperty(i)));
        }
        return arrayList;
    }

    public ArrayList<PlexOfField> getFieldsPLCF(FieldsDocumentPart fieldsDocumentPart) {
        return toArrayList(this._tables.get(fieldsDocumentPart));
    }

    public void write(FileInformationBlock fileInformationBlock, ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        for (FieldsDocumentPart fieldsDocumentPart : FieldsDocumentPart.values()) {
            savePlex(fileInformationBlock, fieldsDocumentPart, this._tables.get(fieldsDocumentPart), byteArrayOutputStream);
        }
    }

    @Deprecated
    public ArrayList<PlexOfField> getFieldsPLCF(int i) {
        return getFieldsPLCF(FieldsDocumentPart.values()[i]);
    }
}
