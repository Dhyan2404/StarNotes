package androidx.constraintlayout.core.motion.utils;

import com.google.android.material.motion.MotionUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes3.dex */
public class Utils {

    /* renamed from: a */
    public static DebugHandle f3070a;

    /* loaded from: classes3.dex */
    public interface DebugHandle {
        void message(String str);
    }

    /* renamed from: a */
    public static int m1530a(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static void log(String str, String str2) {
        System.out.println(str + " : " + str2);
    }

    public static void logStack(String str, int i) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int min = Math.min(i, stackTrace.length - 1);
        String str2 = " ";
        for (int i2 = 1; i2 <= min; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            String str3 = ".(" + stackTrace[i2].getFileName() + ":" + stackTrace[i2].getLineNumber() + ") " + stackTrace[i2].getMethodName();
            str2 = str2 + " ";
            System.out.println(str + str2 + str3 + str2);
        }
    }

    public static void loge(String str, String str2) {
        System.err.println(str + " : " + str2);
    }

    public static int rgbaTocColor(float f, float f2, float f3, float f4) {
        int m1530a = m1530a((int) (f * 255.0f));
        int m1530a2 = m1530a((int) (f2 * 255.0f));
        return (m1530a << 16) | (m1530a((int) (f4 * 255.0f)) << 24) | (m1530a2 << 8) | m1530a((int) (f3 * 255.0f));
    }

    public static void setDebugHandle(DebugHandle debugHandle) {
        f3070a = debugHandle;
    }

    public static void socketSend(String str) {
        try {
            OutputStream outputStream = new Socket("127.0.0.1", 5327).getOutputStream();
            outputStream.write(str.getBytes());
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public int getInterpolatedColor(float[] fArr) {
        return (m1530a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m1530a((int) (fArr[3] * 255.0f)) << 24) | (m1530a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m1530a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    public static void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String substring = (stackTraceElement.getMethodName() + "                  ").substring(0, 17);
        String str2 = ".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + MotionUtils.f31762d + MapUtils.f104930a.substring(Integer.toString(stackTraceElement.getLineNumber()).length()) + substring;
        System.out.println(str2 + " " + str);
        DebugHandle debugHandle = f3070a;
        if (debugHandle != null) {
            debugHandle.message(str2 + " " + str);
        }
    }
}
