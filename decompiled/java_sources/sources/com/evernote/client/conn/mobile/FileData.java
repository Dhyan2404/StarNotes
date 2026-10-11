package com.evernote.client.conn.mobile;

import com.evernote.edam.type.Data;
import com.evernote.thrift.TException;
import com.evernote.thrift.protocol.TField;
import com.evernote.thrift.protocol.TProtocol;
import com.evernote.thrift.protocol.TStruct;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;

/* loaded from: classes4.dex */
public class FileData extends Data {
    private static final long serialVersionUID = 1;
    private File mBodyFile;
    private static final TStruct STRUCT_DESC = new TStruct("Data");
    private static final TField BODY_HASH_FIELD_DESC = new TField("bodyHash", (byte) 11, 1);
    private static final TField SIZE_FIELD_DESC = new TField("size", (byte) 8, 2);
    private static final TField BODY_FIELD_DESC = new TField("body", (byte) 11, 3);

    public FileData(byte[] bArr, File file) {
        this.mBodyFile = file;
        setBodyHash(bArr);
        setSize((int) file.length());
    }

    @Override // com.evernote.edam.type.Data, com.evernote.thrift.TBase
    public void write(TProtocol tProtocol) throws TException {
        FileInputStream fileInputStream;
        validate();
        tProtocol.writeStructBegin(STRUCT_DESC);
        if (getBodyHash() != null && isSetBodyHash()) {
            tProtocol.writeFieldBegin(BODY_HASH_FIELD_DESC);
            tProtocol.writeBinary(ByteBuffer.wrap(getBodyHash()));
            tProtocol.writeFieldEnd();
        }
        tProtocol.writeFieldBegin(SIZE_FIELD_DESC);
        tProtocol.writeI32(getSize());
        tProtocol.writeFieldEnd();
        File file = this.mBodyFile;
        if (file != null && file.isFile()) {
            tProtocol.writeFieldBegin(BODY_FIELD_DESC);
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(this.mBodyFile);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (FileNotFoundException e) {
                e = e;
            }
            try {
                tProtocol.writeStream(fileInputStream, this.mBodyFile.length());
                try {
                    fileInputStream.close();
                } catch (Exception unused) {
                }
                tProtocol.writeFieldEnd();
            } catch (FileNotFoundException e2) {
                e = e2;
                throw new TException("Failed to write binary body:" + this.mBodyFile, e);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        }
        tProtocol.writeFieldStop();
        tProtocol.writeStructEnd();
    }
}
