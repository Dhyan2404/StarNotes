package org.apache.poi.hslf.extractor;

import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.poi.hslf.usermodel.HSLFPictureData;
import org.apache.poi.hslf.usermodel.HSLFSlideShow;
import org.apache.poi.hslf.usermodel.HSLFSlideShowImpl;
import org.apache.poi.sl.usermodel.PictureData;

/* loaded from: classes12.dex */
public final class ImageExtractor {
    public static void main(String[] strArr) throws IOException {
        if (strArr.length < 1) {
            System.err.println("Usage:");
            System.err.println("\tImageExtractor <file>");
            return;
        }
        int i = 0;
        HSLFSlideShow hSLFSlideShow = new HSLFSlideShow(new HSLFSlideShowImpl(strArr[0]));
        try {
            for (HSLFPictureData hSLFPictureData : hSLFSlideShow.getPictureData()) {
                byte[] data = hSLFPictureData.getData();
                PictureData.PictureType type = hSLFPictureData.getType();
                StringBuilder sb = new StringBuilder();
                sb.append("pict_");
                int i2 = i + 1;
                sb.append(i);
                sb.append(type.extension);
                FileOutputStream fileOutputStream = new FileOutputStream(sb.toString());
                try {
                    fileOutputStream.write(data);
                    fileOutputStream.close();
                    i = i2;
                } finally {
                }
            }
            hSLFSlideShow.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    hSLFSlideShow.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }
}
