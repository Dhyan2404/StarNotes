package com.fasterxml.uuid;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.motion.MotionUtils;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes4.dex */
public class Jug {
    protected static final HashMap<String, String> OPTIONS;
    protected static final HashMap<String, String> TYPES;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        TYPES = hashMap;
        hashMap.put("time-based", "t");
        hashMap.put("random-based", "r");
        hashMap.put("name-based", GoogleApiAvailabilityLight.f29016b);
        hashMap.put("reordered-time-based", C4921e.f26528e);
        hashMap.put("epoch-time-based", "e");
        HashMap<String, String> hashMap2 = new HashMap<>();
        OPTIONS = hashMap2;
        hashMap2.put("count", "c");
        hashMap2.put("ethernet-address", "e");
        hashMap2.put("help", C6999h.f39688c);
        hashMap2.put(Constants.ATTRNAME_NAMESPACE, "s");
        hashMap2.put("name", GoogleApiAvailabilityLight.f29016b);
        hashMap2.put("performance", "p");
        hashMap2.put("verbose", "v");
    }

    /* renamed from: a */
    public static void m17314a(Map<String, String> map, PrintStream printStream, boolean z) {
        int size = map.size();
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            i++;
            if (i > 1) {
                if (i < size) {
                    printStream.print(", ");
                } else {
                    printStream.print(CloudStorageConstants.OPERATION_AND);
                }
            }
            if (z) {
                printStream.print(MultiPartWriter.f115320h);
            }
            printStream.print(entry.getKey());
            printStream.print(" (");
            if (z) {
                printStream.print("-");
            }
            printStream.print(entry.getValue());
            printStream.print(MotionUtils.f31762d);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x030e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void main(java.lang.String[] r18) {
        /*
            Method dump skipped, instructions count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.uuid.Jug.main(java.lang.String[]):void");
    }

    public static void printUsage() {
        String name = Jug.class.getName();
        System.err.println("Usage: java " + name + " [options] type");
        System.err.println("Where options are:");
        System.err.println("  --count / -c <number>: will generate <number> UUIDs (default: 1)");
        System.err.println("  --ethernet-address / -e <ether-address>: defines the ethernet address");
        System.err.println("    (in xx:xx:xx:xx:xx:xx notation, usually obtained using 'ifconfig' etc)");
        System.err.println("    to use with time-based UUID generation");
        System.err.println("  --help / -h: lists the usage (ie. what you see now)");
        System.err.println("  --name / -n: specifies");
        System.err.println("     o name for name-based UUID generation");
        System.err.println("     o 'information' part of tag-URI for tag-URI UUID generation");
        System.err.println("  --namespace / -s: specifies");
        System.err.println("    o the namespace (DNS or URL) for name-based UUID generation");
        System.err.println("    o 'authority' part of tag-URI for tag-URI UUID generation;");
        System.err.println("        (fully-qualified domain name, email address)");
        System.err.println("  --performance / -p: measure time it takes to generate UUID(s).");
        System.err.println("    [note that UUIDs are not printed out unless 'verbose' is also specified]");
        System.err.println("  --verbose / -v: lists additional information about UUID generation\n    (by default only UUIDs are printed out (to make it usable in scripts)");
        System.err.println("And type is one of:");
        System.err.println("  time-based / t: generate UUID based on current time and optional\n    location information (defined with -e option)");
        System.err.println("  random-based / r: generate UUID based on the default secure random number generator");
        System.err.println("  name-based / n: generate UUID based on MD5 hash of given String ('name')");
        System.err.println("  reordered-time-based / o: generate UUID based on current time and optional\n    location information (defined with -e option)");
        System.err.println("  epoch-based / e: generate UUID based on current time (as 'epoch') and random number");
    }
}
