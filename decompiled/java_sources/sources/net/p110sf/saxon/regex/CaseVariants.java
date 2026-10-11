package net.p110sf.saxon.regex;

import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntArraySet;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.p111z.IntToIntHashMap;
import net.p110sf.saxon.p111z.IntToIntMap;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public class CaseVariants {
    public static int[] ROMAN_VARIANTS = {304, 305, 8490, 383};

    /* renamed from: a */
    public static IntToIntMap f101144a;

    /* renamed from: b */
    public static IntHashMap<int[]> f101145b;

    /* renamed from: a */
    public static void m63569a() {
        f101144a = new IntToIntHashMap(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS);
        f101145b = new IntHashMap<>(100);
        InputStream locateResource = Version.platform.locateResource("casevariants.xml", new ArrayList());
        if (locateResource == null) {
            throw new RuntimeException("Unable to read casevariants.xml file");
        }
        Configuration configuration = new Configuration();
        ParseOptions parseOptions = new ParseOptions();
        parseOptions.setSchemaValidationMode(4);
        parseOptions.setDTDValidationMode(4);
        try {
            AxisIterator iterateAxis = configuration.buildDocumentTree(new StreamSource(locateResource, "casevariants.xml"), parseOptions).getRootNode().iterateAxis(4, new NameTest(1, "", "c", configuration.getNamePool()));
            while (true) {
                NodeInfo next = iterateAxis.next();
                if (next == null) {
                    return;
                }
                int parseInt = Integer.parseInt(next.getAttributeValue("", GoogleApiAvailabilityLight.f29016b), 16);
                String[] split = next.getAttributeValue("", "v").split(",");
                int[] iArr = new int[split.length];
                for (int i = 0; i < split.length; i++) {
                    iArr[i] = Integer.parseInt(split[i], 16);
                }
                if (split.length == 1) {
                    f101144a.put(parseInt, iArr[0]);
                } else {
                    f101145b.put(parseInt, iArr);
                }
            }
        } catch (XPathException e) {
            throw new RuntimeException("Failed to build casevariants.xml", e);
        }
    }

    public static synchronized int[] getCaseVariants(int i) {
        synchronized (CaseVariants.class) {
            if (f101144a == null) {
                m63569a();
            }
            int i2 = f101144a.get(i);
            if (i2 != f101144a.getDefaultValue()) {
                return new int[]{i2};
            }
            int[] iArr = f101145b.get(i);
            if (iArr != null) {
                return iArr;
            }
            return IntArraySet.EMPTY_INT_ARRAY;
        }
    }
}
