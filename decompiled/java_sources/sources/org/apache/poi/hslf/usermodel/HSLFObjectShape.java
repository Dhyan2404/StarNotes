package org.apache.poi.hslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import org.apache.commons.io.output.AbstractByteArrayOutputStream;
import org.apache.commons.io.output.ByteArrayOutputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.ddf.EscherPropertyTypes;
import org.apache.poi.ddf.EscherSpRecord;
import org.apache.poi.hslf.record.ExEmbed;
import org.apache.poi.hslf.record.ExObjList;
import org.apache.poi.hslf.record.ExObjRefAtom;
import org.apache.poi.hslf.record.HSLFEscherClientDataRecord;
import org.apache.poi.hslf.record.Record;
import org.apache.poi.hslf.record.RecordTypes;
import org.apache.poi.poifs.filesystem.FileMagic;
import org.apache.poi.poifs.filesystem.Ole10Native;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.sl.usermodel.ObjectMetaData;
import org.apache.poi.sl.usermodel.ObjectShape;
import org.apache.poi.sl.usermodel.ShapeContainer;

/* loaded from: classes12.dex */
public final class HSLFObjectShape extends HSLFPictureShape implements ObjectShape<HSLFShape, HSLFTextParagraph> {
    private static final Logger LOG = LogManager.getLogger((Class<?>) HSLFObjectShape.class);
    private ExEmbed _exEmbed;

    public HSLFObjectShape(HSLFPictureData hSLFPictureData) {
        super(hSLFPictureData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r6v6, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    public void addUpdatedData(ObjectMetaData objectMetaData, AbstractByteArrayOutputStream abstractByteArrayOutputStream) throws IOException {
        InputStream prepareToCheckMagic = FileMagic.prepareToCheckMagic(abstractByteArrayOutputStream.toInputStream());
        try {
            FileMagic valueOf = FileMagic.valueOf(prepareToCheckMagic);
            FileMagic fileMagic = FileMagic.OLE2;
            POIFSFileSystem pOIFSFileSystem = valueOf == fileMagic ? new POIFSFileSystem(prepareToCheckMagic) : new POIFSFileSystem();
            if (valueOf != fileMagic) {
                try {
                    pOIFSFileSystem.createDocument(prepareToCheckMagic, objectMetaData.getOleEntry());
                } finally {
                }
            }
            abstractByteArrayOutputStream.reset();
            Ole10Native.createOleMarkerEntry(pOIFSFileSystem);
            pOIFSFileSystem.getRoot().setStorageClsid(objectMetaData.getClassID());
            if (getObjectID() == 0) {
                setObjectID(getSheet().getSlideShow().addEmbed(pOIFSFileSystem));
            } else {
                HSLFObjectData objectData = getObjectData();
                if (objectData != null) {
                    pOIFSFileSystem.writeFilesystem(abstractByteArrayOutputStream);
                    objectData.setData(abstractByteArrayOutputStream.toByteArray());
                }
            }
            setProgId(objectMetaData.getProgId());
            setFullName(objectMetaData.getObjectName());
            pOIFSFileSystem.close();
            if (prepareToCheckMagic != null) {
                prepareToCheckMagic.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (prepareToCheckMagic != null) {
                    try {
                        prepareToCheckMagic.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    public ExEmbed getExEmbed() {
        return getExEmbed(false);
    }

    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public String getFullName() {
        ExEmbed exEmbed = getExEmbed();
        if (exEmbed == null) {
            return null;
        }
        return exEmbed.getClipboardName();
    }

    public String getInstanceName() {
        ExEmbed exEmbed = getExEmbed();
        if (exEmbed == null) {
            return null;
        }
        return exEmbed.getMenuName();
    }

    public int getObjectID() {
        return getEscherProperty(EscherPropertyTypes.BLIP__PICTUREID);
    }

    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public String getProgId() {
        ExEmbed exEmbed = getExEmbed();
        if (exEmbed == null) {
            return null;
        }
        return exEmbed.getProgId();
    }

    public void setFullName(String str) {
        ExEmbed exEmbed = getExEmbed(true);
        if (exEmbed != null) {
            exEmbed.setClipboardName(str);
        }
    }

    public void setObjectID(int i) {
        ExObjRefAtom exObjRefAtom;
        setEscherProperty(EscherPropertyTypes.BLIP__PICTUREID, i);
        EscherSpRecord escherSpRecord = (EscherSpRecord) getSpContainer().getChildById(EscherSpRecord.RECORD_ID);
        if (escherSpRecord != null) {
            escherSpRecord.setFlags(escherSpRecord.getFlags() | 16);
        } else {
            LOG.atWarn().log("Ole shape record not found.");
        }
        HSLFEscherClientDataRecord clientData = getClientData(true);
        Iterator<? extends Record> it2 = clientData.getHSLFChildRecords().iterator();
        while (true) {
            if (!it2.hasNext()) {
                exObjRefAtom = null;
                break;
            }
            Record next = it2.next();
            if (next.getRecordType() == RecordTypes.ExObjRefAtom.typeID) {
                exObjRefAtom = (ExObjRefAtom) next;
                break;
            }
        }
        if (exObjRefAtom == null) {
            exObjRefAtom = new ExObjRefAtom();
            clientData.addChild(exObjRefAtom);
        }
        exObjRefAtom.setExObjIdRef(i);
    }

    public void setProgId(String str) {
        ExEmbed exEmbed = getExEmbed(true);
        if (exEmbed != null) {
            exEmbed.setProgId(str);
        }
    }

    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public OutputStream updateObjectData(ObjectMetaData.Application application, final ObjectMetaData objectMetaData) {
        if (application != null) {
            objectMetaData = application.getMetaData();
        }
        if (objectMetaData != null) {
            return new ByteArrayOutputStream() { // from class: org.apache.poi.hslf.usermodel.HSLFObjectShape.1
                @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    HSLFObjectShape.this.addUpdatedData(objectMetaData, this);
                }
            };
        }
        throw new IllegalStateException("either application or metaData needs to be set");
    }

    public HSLFObjectShape(HSLFPictureData hSLFPictureData, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(hSLFPictureData, shapeContainer);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    private ExEmbed getExEmbed(boolean z) {
        if (this._exEmbed == null) {
            ExObjList exObjList = getSheet().getSlideShow().getDocumentRecord().getExObjList(z);
            if (exObjList == null) {
                LOG.atWarn().log("ExObjList not found");
                return null;
            }
            int objectID = getObjectID();
            for (Record record : exObjList.getChildRecords()) {
                if (record instanceof ExEmbed) {
                    ExEmbed exEmbed = (ExEmbed) record;
                    if (exEmbed.getExOleObjAtom().getObjID() == objectID) {
                        this._exEmbed = exEmbed;
                    }
                }
            }
            if (this._exEmbed == null && z) {
                ExEmbed exEmbed2 = new ExEmbed();
                this._exEmbed = exEmbed2;
                exEmbed2.getExOleObjAtom().setObjID(objectID);
                exObjList.appendChildRecord(this._exEmbed);
            }
        }
        return this._exEmbed;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [org.apache.poi.hslf.usermodel.HSLFSlideShow] */
    @Override // org.apache.poi.sl.usermodel.ObjectShape
    public HSLFObjectData getObjectData() {
        HSLFObjectData[] embeddedObjects = getSheet().getSlideShow().getEmbeddedObjects();
        ExEmbed exEmbed = getExEmbed();
        HSLFObjectData hSLFObjectData = null;
        if (exEmbed != null) {
            int objStgDataRef = exEmbed.getExOleObjAtom().getObjStgDataRef();
            for (HSLFObjectData hSLFObjectData2 : embeddedObjects) {
                if (hSLFObjectData2.getExOleObjStg().getPersistId() == objStgDataRef) {
                    hSLFObjectData = hSLFObjectData2;
                }
            }
        }
        if (hSLFObjectData == null) {
            LOG.atWarn().log("OLE data not found");
        }
        return hSLFObjectData;
    }

    public HSLFObjectShape(EscherContainerRecord escherContainerRecord, ShapeContainer<HSLFShape, HSLFTextParagraph> shapeContainer) {
        super(escherContainerRecord, shapeContainer);
    }
}
