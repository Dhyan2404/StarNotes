package net.p110sf.saxon.regex;

import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.p111z.IntBlockSet;
import net.p110sf.saxon.p111z.IntSet;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AxisIterator;

/* loaded from: classes11.dex */
public class UnicodeBlocks {

    /* renamed from: a */
    public static Map<String, IntSet> f101256a;

    /* renamed from: a */
    public static String m63602a(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ' && charAt != '_') {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static synchronized void m63603b(Configuration configuration) throws RESyntaxException {
        synchronized (UnicodeBlocks.class) {
            f101256a = new HashMap(250);
            InputStream locateResource = Version.platform.locateResource("unicodeBlocks.xml", new ArrayList());
            if (locateResource == null) {
                throw new RESyntaxException("Unable to read unicodeBlocks.xml file");
            }
            ParseOptions parseOptions = new ParseOptions();
            parseOptions.setSchemaValidationMode(4);
            parseOptions.setDTDValidationMode(4);
            parseOptions.setSpaceStrippingRule(AllElementsSpaceStrippingRule.getInstance());
            try {
                AxisIterator iterateAxis = configuration.buildDocumentTree(new StreamSource(locateResource, "unicodeBlocks.xml"), parseOptions).getRootNode().iterateAxis(4, new NameTest(1, "", BreakpointSQLiteHelper.f39283i, configuration.getNamePool()));
                while (true) {
                    NodeInfo next = iterateAxis.next();
                    if (next != null) {
                        String m63602a = m63602a(next.getAttributeValue("", "name"));
                        IntSet intSet = null;
                        for (NodeInfo nodeInfo : next.children(NodeKindTest.ELEMENT)) {
                            IntBlockSet intBlockSet = new IntBlockSet(Integer.parseInt(nodeInfo.getAttributeValue("", "from").substring(2), 16), Integer.parseInt(nodeInfo.getAttributeValue("", "to").substring(2), 16));
                            intSet = intSet == null ? intBlockSet : intSet instanceof IntBlockSet ? intSet.mutableCopy().union(intBlockSet) : intSet.union(intBlockSet);
                        }
                        f101256a.put(m63602a, intSet);
                    }
                }
            } catch (XPathException e) {
                throw new RESyntaxException("Failed to process unicodeBlocks.xml: " + e.getMessage());
            }
        }
    }

    public static IntSet getBlock(String str) throws RESyntaxException {
        if (f101256a == null) {
            m63603b(new Configuration());
        }
        IntSet intSet = f101256a.get(str);
        return intSet != null ? intSet : f101256a.get(m63602a(str));
    }
}
