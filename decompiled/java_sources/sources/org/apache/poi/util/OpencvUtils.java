package org.apache.poi.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import org.opencv.core.Mat;
import org.opencv.core.MatOfByte;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;

/* loaded from: classes13.dex */
public class OpencvUtils {
    static {
        System.load((System.getProperty("os.name").contains("Mac OS") ? new File("libs/libopencv_java440.dylib") : new File("libs/opencv_java455.dll")).getAbsolutePath());
    }

    public static double compareHist(String str, String str2) {
        return compareHist(Imgcodecs.imdecode(new MatOfByte(readImage(str)), -1), Imgcodecs.imdecode(new MatOfByte(readImage(str2)), -1));
    }

    private static byte[] readImage(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                fileInputStream.close();
            } finally {
            }
        } catch (Exception unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static double compareHist(String str, byte[] bArr) {
        return compareHist(Imgcodecs.imdecode(new MatOfByte(readImage(str)), -1), Imgcodecs.imdecode(new MatOfByte(bArr), -1));
    }

    public static double compareHist(Mat mat, Mat mat2) {
        Mat mat3 = new Mat();
        Mat mat4 = new Mat();
        Imgproc.cvtColor(mat, mat3, 6);
        Imgproc.cvtColor(mat2, mat4, 6);
        mat.release();
        mat2.release();
        Mat mat5 = new Mat();
        Mat mat6 = new Mat();
        mat3.convertTo(mat5, 5);
        mat4.convertTo(mat6, 5);
        mat3.release();
        mat4.release();
        double compareHist = Imgproc.compareHist(mat5, mat6, 0);
        mat5.release();
        mat6.release();
        return compareHist;
    }
}
