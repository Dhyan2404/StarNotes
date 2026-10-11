package com.twelvemonkeys.imageio.metadata.xmp;

import com.alibaba.fastjson2.JSONB;
import com.twelvemonkeys.imageio.stream.BufferedImageInputStream;
import com.twelvemonkeys.imageio.util.IIOUtil;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import onyx.org.apache.commons.io.input.XmlStreamReader;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.poi.ss.formula.ptg.DeletedRef3DPtg;

/* loaded from: classes10.dex */
public final class XMPScanner {

    /* renamed from: a */
    public static final byte[] f94068a = {DeletedRef3DPtg.sid, 63, 120, 112, 97, 99, 107, 101, 116, 32, 98, 101, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, JSONB.Constants.BC_STR_ASCII_FIX_32, 110, 61};

    /* renamed from: b */
    public static final byte[] f94069b = {DeletedRef3DPtg.sid, 63, 120, 112, 97, 99, 107, 101, 116, 32, 101, 110, 100, 61};

    /* renamed from: a */
    public static long m60500a(ImageInputStream imageInputStream, byte[] bArr) throws IOException {
        while (true) {
            long j = -1;
            int i = 0;
            int i2 = 0;
            while (true) {
                int read = imageInputStream.read();
                if (read < 0) {
                    return -1L;
                }
                if (bArr[i] == ((byte) read)) {
                    if (j == -1) {
                        j = imageInputStream.getStreamPosition() - 1;
                    }
                    if (i2 == 1 || i2 == 3) {
                        imageInputStream.skipBytes(i2);
                    }
                    i++;
                    if (i == bArr.length) {
                        return j;
                    }
                } else if (i == 1 && read == 0 && i2 < 3) {
                    i2++;
                }
            }
        }
    }

    public static void main(String[] strArr) throws IOException {
        ImageInputStream createImageInputStream = ImageIO.createImageInputStream(new File(strArr[0]));
        while (true) {
            Reader scanForXMPPacket = scanForXMPPacket(createImageInputStream);
            if (scanForXMPPacket == null) {
                createImageInputStream.close();
                return;
            }
            BufferedReader bufferedReader = new BufferedReader(scanForXMPPacket);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    System.out.println(readLine);
                }
            }
        }
    }

    public static Reader scanForXMPPacket(Object obj) throws IOException {
        byte readByte;
        Charset charset;
        ImageInputStream createImageInputStream = obj instanceof ImageInputStream ? (ImageInputStream) obj : ImageIO.createImageInputStream(obj);
        if (!(createImageInputStream instanceof BufferedImageInputStream)) {
            createImageInputStream = new BufferedImageInputStream(createImageInputStream);
        }
        if (m60500a(createImageInputStream, f94068a) >= 0 && ((readByte = createImageInputStream.readByte()) == 39 || readByte == 34)) {
            byte[] bArr = new byte[4];
            createImageInputStream.readFully(bArr);
            byte b = bArr[0];
            if ((b == -17 && bArr[1] == -69 && bArr[2] == -65 && bArr[3] == readByte) || b == readByte) {
                charset = Charset.forName("UTF-8");
            } else if (b == -2 && bArr[1] == -1 && bArr[2] == 0 && bArr[3] == readByte) {
                charset = Charset.forName("UTF-16BE");
            } else if (b == 0 && bArr[1] == -1 && bArr[2] == -2 && bArr[3] == readByte) {
                createImageInputStream.skipBytes(1);
                charset = Charset.forName("UTF-16LE");
            } else if (b == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) {
                charset = Charset.forName(XmlStreamReader.f104448l);
            } else if (b == 0 && bArr[1] == 0 && bArr[2] == 0 && bArr[3] == -1 && createImageInputStream.read() == 254) {
                createImageInputStream.skipBytes(2);
                charset = Charset.forName(XmlStreamReader.f104449m);
            } else {
                charset = null;
            }
            if (charset != null) {
                createImageInputStream.mark();
                long m60500a = m60500a(createImageInputStream, f94069b);
                createImageInputStream.reset();
                InputStreamReader inputStreamReader = new InputStreamReader(IIOUtil.createStreamAdapter(createImageInputStream, m60500a - createImageInputStream.getStreamPosition()), charset);
                do {
                } while (inputStreamReader.read() != 62);
                return inputStreamReader;
            }
        }
        return null;
    }
}
