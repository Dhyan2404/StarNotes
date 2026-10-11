package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEGQuality;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEGSegment;
import com.twelvemonkeys.imageio.metadata.jpeg.JPEGSegmentUtil;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.imageio.plugins.jpeg.JPEGHuffmanTable;
import javax.imageio.plugins.jpeg.JPEGQTable;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes10.dex */
public class bri {

    /* renamed from: e */
    public static final int f66062e = 16;

    /* renamed from: f */
    public static final Map<Integer, List<String>> f66063f = m53322a();

    /* renamed from: a */
    public JPEGQTable[] f66064a;

    /* renamed from: b */
    public JPEGHuffmanTable[] f66065b;

    /* renamed from: c */
    public JPEGHuffmanTable[] f66066c;

    /* renamed from: d */
    public final List<JPEGSegment> f66067d;

    public bri(ImageInputStream imageInputStream) throws IOException {
        this.f66067d = JPEGSegmentUtil.readSegments(imageInputStream, f66063f);
    }

    /* renamed from: a */
    public static Map<Integer, List<String>> m53322a() {
        HashMap hashMap = new HashMap();
        hashMap.put(Integer.valueOf(JPEG.DQT), null);
        hashMap.put(Integer.valueOf(JPEG.DHT), null);
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: b */
    public JPEGHuffmanTable[] m53323b() throws IOException {
        m53325d();
        return this.f66066c;
    }

    /* renamed from: c */
    public JPEGHuffmanTable[] m53324c() throws IOException {
        m53325d();
        return this.f66065b;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0064 A[LOOP:2: B:23:0x0062->B:24:0x0064, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0073 A[LOOP:3: B:27:0x0071->B:28:0x0073, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007e A[LOOP:4: B:31:0x007c->B:32:0x007e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0093  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m53325d() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sunia.HTREnginev2.bri.m53325d():void");
    }

    /* renamed from: e */
    public JPEGQTable[] m53326e() throws IOException {
        if (this.f66064a == null) {
            this.f66064a = JPEGQuality.getQTables(this.f66067d);
        }
        return this.f66064a;
    }
}
