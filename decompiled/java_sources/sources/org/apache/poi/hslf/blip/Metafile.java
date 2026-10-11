package org.apache.poi.hslf.blip;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.DeflaterOutputStream;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream;
import org.apache.poi.ddf.EscherBSERecord;
import org.apache.poi.ddf.EscherContainerRecord;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.util.Internal;
import org.apache.poi.util.LittleEndian;
import org.apache.poi.util.LittleEndianInputStream;
import org.apache.poi.util.LittleEndianOutputStream;
import org.apache.poi.util.Units;

/* loaded from: classes12.dex */
public abstract class Metafile extends HSLFPictureData {
    @Internal
    public Metafile(EscherContainerRecord escherContainerRecord, EscherBSERecord escherBSERecord) {
        super(escherContainerRecord, escherBSERecord);
    }

    public static byte[] compress(byte[] bArr, int i, int i2) {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = new UnsynchronizedByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(unsynchronizedByteArrayOutputStream);
            try {
                deflaterOutputStream.write(bArr, i, i2);
                deflaterOutputStream.close();
                return unsynchronizedByteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (IOException e) {
            throw new AssertionError("Won't happen", e);
        }
    }

    @Override // org.apache.poi.sl.usermodel.PictureData
    public Dimension getImageDimension() {
        int uIDInstanceCount = getUIDInstanceCount() * 16;
        Header header = new Header();
        header.read(getRawData(), uIDInstanceCount);
        return new Dimension((int) Math.round(Units.toPoints((long) header.size.getWidth())), (int) Math.round(Units.toPoints((long) header.size.getHeight())));
    }

    /* loaded from: classes12.dex */
    public static class Header {
        private static final int RECORD_LENGTH = 34;
        private int compression;
        private int wmfsize;
        private int zipsize;
        private final Rectangle bounds = new Rectangle();
        private final Dimension size = new Dimension();
        private int filter = 254;

        public Rectangle getBounds() {
            return (Rectangle) this.bounds.clone();
        }

        public int getSize() {
            return 34;
        }

        public int getWmfSize() {
            return this.wmfsize;
        }

        public void read(byte[] bArr, int i) {
            try {
                LittleEndianInputStream littleEndianInputStream = new LittleEndianInputStream(new UnsynchronizedByteArrayInputStream(bArr, i, 34));
                try {
                    this.wmfsize = littleEndianInputStream.readInt();
                    int readInt = littleEndianInputStream.readInt();
                    int readInt2 = littleEndianInputStream.readInt();
                    this.bounds.setBounds(readInt, readInt2, littleEndianInputStream.readInt() - readInt, littleEndianInputStream.readInt() - readInt2);
                    this.size.setSize(littleEndianInputStream.readInt(), littleEndianInputStream.readInt());
                    this.zipsize = littleEndianInputStream.readInt();
                    this.compression = littleEndianInputStream.readUByte();
                    this.filter = littleEndianInputStream.readUByte();
                    littleEndianInputStream.close();
                } finally {
                }
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        public void setBounds(Rectangle rectangle) {
            this.bounds.setBounds(rectangle);
        }

        public void setDimension(Dimension dimension) {
            this.size.setSize(dimension);
        }

        public void setWmfSize(int i) {
            this.wmfsize = i;
        }

        public void setZipSize(int i) {
            this.zipsize = i;
        }

        public void write(OutputStream outputStream) throws IOException {
            LittleEndianOutputStream littleEndianOutputStream = new LittleEndianOutputStream(outputStream);
            littleEndianOutputStream.writeInt(this.wmfsize);
            littleEndianOutputStream.writeInt(this.bounds.f97732x);
            littleEndianOutputStream.writeInt(this.bounds.f97733y);
            Rectangle rectangle = this.bounds;
            littleEndianOutputStream.writeInt(rectangle.f97732x + rectangle.width);
            Rectangle rectangle2 = this.bounds;
            littleEndianOutputStream.writeInt(rectangle2.f97733y + rectangle2.height);
            littleEndianOutputStream.writeInt(this.size.width);
            littleEndianOutputStream.writeInt(this.size.height);
            littleEndianOutputStream.writeInt(this.zipsize);
            littleEndianOutputStream.writeByte(this.compression);
            littleEndianOutputStream.writeByte(this.filter);
        }

        public void write(byte[] bArr, int i) {
            LittleEndian.putInt(bArr, i, this.wmfsize);
            int i2 = i + 4;
            LittleEndian.putInt(bArr, i2, this.bounds.f97732x);
            int i3 = i2 + 4;
            LittleEndian.putInt(bArr, i3, this.bounds.f97733y);
            int i4 = i3 + 4;
            Rectangle rectangle = this.bounds;
            LittleEndian.putInt(bArr, i4, rectangle.f97732x + rectangle.width);
            int i5 = i4 + 4;
            Rectangle rectangle2 = this.bounds;
            LittleEndian.putInt(bArr, i5, rectangle2.f97733y + rectangle2.height);
            int i6 = i5 + 4;
            LittleEndian.putInt(bArr, i6, this.size.width);
            int i7 = i6 + 4;
            LittleEndian.putInt(bArr, i7, this.size.height);
            int i8 = i7 + 4;
            LittleEndian.putInt(bArr, i8, this.zipsize);
            int i9 = i8 + 4;
            bArr[i9] = (byte) this.compression;
            bArr[i9 + 1] = (byte) this.filter;
        }
    }
}
