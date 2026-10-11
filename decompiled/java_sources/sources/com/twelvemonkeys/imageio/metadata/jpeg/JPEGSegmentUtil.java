package com.twelvemonkeys.imageio.metadata.jpeg;

import com.twelvemonkeys.imageio.metadata.Directory;
import com.twelvemonkeys.imageio.metadata.Entry;
import com.twelvemonkeys.imageio.metadata.exif.EXIFReader;
import com.twelvemonkeys.imageio.metadata.psd.PSD;
import com.twelvemonkeys.imageio.metadata.psd.PSDReader;
import com.twelvemonkeys.imageio.metadata.xmp.XMPReader;
import com.twelvemonkeys.imageio.stream.ByteArrayImageInputStream;
import com.twelvemonkeys.lang.Validate;
import java.awt.color.ICC_ColorSpace;
import java.awt.color.ICC_Profile;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.imageio.IIOException;
import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public final class JPEGSegmentUtil {
    public static final List<String> ALL_IDS;
    public static final Map<Integer, List<String>> ALL_SEGMENTS;
    public static final Map<Integer, List<String>> APP_SEGMENTS;

    /* loaded from: classes10.dex */
    public static class AllAppSegmentsMap extends HashMap<Integer, List<String>> {
        private AllAppSegmentsMap() {
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return (obj instanceof Integer) && JPEGSegment.isAppSegmentMarker(((Integer) obj).intValue());
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return "{All APPn segments}";
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public List<String> get(Object obj) {
            if (containsKey(obj)) {
                return JPEGSegmentUtil.ALL_IDS;
            }
            return null;
        }
    }

    /* loaded from: classes10.dex */
    public static class AllIdsList extends ArrayList<String> {
        private AllIdsList() {
        }

        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return true;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return "[All ids]";
        }
    }

    /* loaded from: classes10.dex */
    public static class AllSegmentsMap extends HashMap<Integer, List<String>> {
        private AllSegmentsMap() {
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return true;
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return "{All segments}";
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public List<String> get(Object obj) {
            if ((obj instanceof Integer) && JPEGSegment.isAppSegmentMarker(((Integer) obj).intValue())) {
                return JPEGSegmentUtil.ALL_IDS;
            }
            return null;
        }
    }

    static {
        ALL_IDS = Collections.unmodifiableList(new AllIdsList());
        ALL_SEGMENTS = Collections.unmodifiableMap(new AllSegmentsMap());
        APP_SEGMENTS = Collections.unmodifiableMap(new AllAppSegmentsMap());
    }

    /* renamed from: a */
    public static String m60481a(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charset.forName("ascii"));
    }

    /* renamed from: b */
    public static String m60482b(byte[] bArr, int i) {
        for (int i2 = 0; i2 < bArr.length - i; i2++) {
            int i3 = i + i2;
            if (bArr[i3] == 0 || i2 > 255) {
                return m60481a(bArr, i, i3);
            }
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m60483c(JPEGSegment jPEGSegment, Map<Integer, List<String>> map) {
        List<String> list = map.get(Integer.valueOf(jPEGSegment.marker));
        return list != null && list.contains(jPEGSegment.identifier());
    }

    /* renamed from: d */
    public static boolean m60484d(JPEGSegment jPEGSegment) {
        int i = jPEGSegment.marker;
        return i == 65498 || i == 65497 || i == 65496;
    }

    /* renamed from: e */
    public static boolean m60485e(JPEGSegment jPEGSegment, Map<Integer, List<String>> map) {
        return map.containsKey(Integer.valueOf(jPEGSegment.marker)) && ((jPEGSegment.identifier() == null && map.get(Integer.valueOf(jPEGSegment.marker)) == null) || m60483c(jPEGSegment, map));
    }

    /* renamed from: f */
    public static void m60486f(ImageInputStream imageInputStream) throws IOException {
        if (imageInputStream.readUnsignedShort() != 65496) {
            throw new IIOException("Not a JPEG stream");
        }
    }

    /* renamed from: g */
    public static JPEGSegment m60487g(ImageInputStream imageInputStream, Map<Integer, List<String>> map) throws IOException {
        int i;
        byte[] bArr;
        int readUnsignedByte = imageInputStream.readUnsignedByte();
        while (readUnsignedByte != 255) {
            readUnsignedByte = imageInputStream.readUnsignedByte();
        }
        int readUnsignedByte2 = imageInputStream.readUnsignedByte();
        while (true) {
            i = readUnsignedByte2 | 65280;
            if (i != 65535) {
                break;
            }
            readUnsignedByte2 = imageInputStream.readUnsignedByte();
        }
        if (((i >> 8) & 255) != 255) {
            throw new IIOException(String.format("Bad marker: %04x", Integer.valueOf(i)));
        }
        int readUnsignedShort = imageInputStream.readUnsignedShort();
        if (map.containsKey(Integer.valueOf(i))) {
            bArr = new byte[readUnsignedShort - 2];
            imageInputStream.readFully(bArr);
        } else if (JPEGSegment.isAppSegmentMarker(i)) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(32);
            while (true) {
                int read = imageInputStream.read();
                if (read <= 0) {
                    break;
                }
                byteArrayOutputStream.write(read);
            }
            bArr = byteArrayOutputStream.toByteArray();
            imageInputStream.skipBytes((readUnsignedShort - 3) - bArr.length);
        } else {
            imageInputStream.skipBytes(readUnsignedShort - 2);
            bArr = null;
        }
        return new JPEGSegment(i, bArr, readUnsignedShort);
    }

    public static void main(String[] strArr) throws IOException {
        for (String str : strArr) {
            if (strArr.length > 1) {
                System.out.println("File: " + str);
                System.out.println("------");
            }
            for (JPEGSegment jPEGSegment : readSegments(ImageIO.createImageInputStream(new File(str)), ALL_SEGMENTS)) {
                System.err.println("segment: " + jPEGSegment);
                if ("Exif".equals(jPEGSegment.identifier())) {
                    System.err.println("EXIF: " + new EXIFReader().read(new ByteArrayImageInputStream(jPEGSegment.data, jPEGSegment.offset() + 1, jPEGSegment.length() - 1)));
                } else if ("http://ns.adobe.com/xap/1.0/".equals(jPEGSegment.identifier())) {
                    System.err.println("XMP: " + new XMPReader().read(new ByteArrayImageInputStream(jPEGSegment.data, jPEGSegment.offset(), jPEGSegment.length())));
                    System.err.println(EXIFReader.HexDump.dump(jPEGSegment.data));
                } else if ("Photoshop 3.0".equals(jPEGSegment.identifier())) {
                    Directory read = new PSDReader().read(new ByteArrayImageInputStream(jPEGSegment.data, jPEGSegment.offset(), jPEGSegment.length()));
                    Entry entryById = read.getEntryById(Integer.valueOf(PSD.RES_ICC_PROFILE));
                    if (entryById != null) {
                        System.err.println("colorSpace: " + new ICC_ColorSpace(ICC_Profile.getInstance((byte[]) entryById.getValue())));
                    }
                    System.err.println("PSD: " + read);
                    System.err.println(EXIFReader.HexDump.dump(jPEGSegment.data));
                } else if (!"ICC_PROFILE".equals(jPEGSegment.identifier())) {
                    System.err.println(EXIFReader.HexDump.dump(jPEGSegment.data));
                }
            }
            if (strArr.length > 1) {
                System.out.println("------");
                System.out.println();
            }
        }
    }

    public static List<JPEGSegment> readSegments(ImageInputStream imageInputStream, int i, String str) throws IOException {
        return readSegments(imageInputStream, Collections.singletonMap(Integer.valueOf(i), str != null ? Collections.singletonList(str) : ALL_IDS));
    }

    public static List<JPEGSegment> readSegments(ImageInputStream imageInputStream, Map<Integer, List<String>> map) throws IOException {
        JPEGSegment m60487g;
        m60486f((ImageInputStream) Validate.notNull(imageInputStream, "stream"));
        List<JPEGSegment> emptyList = Collections.emptyList();
        do {
            try {
                m60487g = m60487g(imageInputStream, map);
                if (m60485e(m60487g, map)) {
                    if (emptyList == Collections.EMPTY_LIST) {
                        emptyList = new ArrayList();
                    }
                    emptyList.add(m60487g);
                }
            } catch (EOFException unused) {
            }
        } while (!m60484d(m60487g));
        return emptyList;
    }
}
