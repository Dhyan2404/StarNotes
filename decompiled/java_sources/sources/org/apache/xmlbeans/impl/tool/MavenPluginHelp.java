package org.apache.xmlbeans.impl.tool;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugins.annotations.Mojo;
import org.apache.maven.plugins.annotations.Parameter;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.DocumentHelper;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

@Mojo(name = "help", requiresProject = false, threadSafe = true)
/* loaded from: classes13.dex */
public class MavenPluginHelp extends AbstractMojo {
    private static final int DEFAULT_LINE_LENGTH = 80;
    private static final String PLUGIN_HELP_PATH = "/META-INF/maven/plugin.xml";

    @Parameter(defaultValue = "false", property = "detail")
    private boolean detail;

    @Parameter(property = "goal")
    private String goal;

    @Parameter(defaultValue = "2", property = "indentSize")
    private int indentSize;

    @Parameter(defaultValue = "80", property = "lineLength")
    private int lineLength;

    private void append(StringBuilder sb, String str, int i) {
        Iterator<String> it2 = toLines(str, i, this.indentSize, this.lineLength).iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            sb.append('\n');
        }
    }

    private Document build() throws MojoExecutionException {
        getLog().debug("load plugin-help.xml: /META-INF/maven/plugin.xml");
        try {
            InputStream resourceAsStream = getClass().getResourceAsStream(PLUGIN_HELP_PATH);
            try {
                Document readDocument = DocumentHelper.readDocument(new XmlOptions(), resourceAsStream);
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
                return readDocument;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (resourceAsStream != null) {
                        try {
                            resourceAsStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } catch (IOException | SAXException e) {
            throw new MojoExecutionException(e.getMessage(), e);
        }
    }

    private List<Node> findNamedChild(Node node, String str) {
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = node.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            if (str.equals(item.getNodeName())) {
                arrayList.add(item);
            }
        }
        return arrayList;
    }

    private Node findSingleChild(Node node, String str) throws MojoExecutionException {
        List<Node> findNamedChild = findNamedChild(node, str);
        if (findNamedChild.isEmpty()) {
            return null;
        }
        if (findNamedChild.size() <= 1) {
            return findNamedChild.get(0);
        }
        throw new MojoExecutionException("Multiple " + str + "in plugin.xml");
    }

    private static int getIndentLevel(String str) {
        int i = 0;
        for (int i2 = 0; i2 < str.length() && str.charAt(i2) == '\t'; i2++) {
            i++;
        }
        int i3 = i + 1;
        for (int i4 = i3; i4 <= i + 4 && i4 < str.length(); i4++) {
            if (str.charAt(i4) == '\t') {
                return i3;
            }
        }
        return i;
    }

    private String getPropertyFromExpression(String str) {
        if (str == null || !str.startsWith("${") || !str.endsWith("}") || str.substring(2).contains("${")) {
            return null;
        }
        return str.substring(2, str.length() - 1);
    }

    private Node getSingleChild(Node node, String str) throws MojoExecutionException {
        List<Node> findNamedChild = findNamedChild(node, str);
        if (findNamedChild.isEmpty()) {
            throw new MojoExecutionException("Could not find " + str + " in plugin.xml");
        }
        if (findNamedChild.size() <= 1) {
            return findNamedChild.get(0);
        }
        throw new MojoExecutionException("Multiple " + str + " in plugin.xml");
    }

    private String getValue(Node node, String str) throws MojoExecutionException {
        return getSingleChild(node, str).getTextContent();
    }

    private static boolean isNotEmpty(String str) {
        return str != null && str.length() > 0;
    }

    private static String repeat(String str, int i) {
        StringBuilder sb = new StringBuilder(str.length() * i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(str);
        }
        return sb.toString();
    }

    private static List<String> toLines(String str, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        String repeat = repeat("\t", i);
        for (String str2 : str.split("(\r\n)|(\r)|(\n)")) {
            toLines(arrayList, repeat + str2, i2, i3);
        }
        return arrayList;
    }

    private void writeGoal(StringBuilder sb, String str, Element element) throws MojoExecutionException {
        String value = getValue(element, "goal");
        Node findSingleChild = findSingleChild(element, "configuration");
        Node findSingleChild2 = findSingleChild(element, "description");
        String str2 = this.goal;
        if (str2 == null || str2.length() <= 0 || value.equals(this.goal)) {
            append(sb, str + ":" + value, 0);
            Node findSingleChild3 = findSingleChild(element, "deprecated");
            if (findSingleChild3 != null && isNotEmpty(findSingleChild3.getTextContent())) {
                append(sb, "Deprecated. " + findSingleChild3.getTextContent(), 1);
                if (this.detail && findSingleChild2 != null) {
                    append(sb, "", 0);
                    append(sb, findSingleChild2.getTextContent(), 1);
                }
            } else if (findSingleChild2 != null) {
                append(sb, findSingleChild2.getTextContent(), 1);
            }
            append(sb, "", 0);
            if (this.detail) {
                List<Node> findNamedChild = findNamedChild(getSingleChild(element, "parameters"), "parameter");
                append(sb, "Available parameters:", 1);
                append(sb, "", 0);
                Iterator<Node> it2 = findNamedChild.iterator();
                while (it2.hasNext()) {
                    writeParameter(sb, it2.next(), findSingleChild);
                }
            }
        }
    }

    private void writeParameter(StringBuilder sb, Node node, Node node2) throws MojoExecutionException {
        String str;
        String value = getValue(node, "name");
        String value2 = getValue(node, "description");
        Element element = node2 != null ? (Element) findSingleChild(node2, value) : null;
        if (element == null || !element.hasAttribute("default-value")) {
            str = "";
        } else {
            str = " (Default: " + element.getAttribute("default-value") + MotionUtils.f31762d;
        }
        append(sb, value + str, 2);
        Node findSingleChild = findSingleChild(node, "deprecated");
        if (findSingleChild != null && isNotEmpty(findSingleChild.getTextContent())) {
            append(sb, "Deprecated. " + findSingleChild.getTextContent(), 3);
            append(sb, "", 0);
        }
        append(sb, value2, 3);
        if ("true".equals(getValue(node, "required"))) {
            append(sb, "Required: Yes", 3);
        }
        if (element != null && isNotEmpty(element.getTextContent())) {
            append(sb, "User property: " + getPropertyFromExpression(element.getTextContent()), 3);
        }
        append(sb, "", 0);
    }

    public void execute() throws MojoExecutionException {
        if (this.lineLength <= 0) {
            getLog().warn("The parameter 'lineLength' should be positive, using '80' as default.");
            this.lineLength = 80;
        }
        if (this.indentSize <= 0) {
            getLog().warn("The parameter 'indentSize' should be positive, using '2' as default.");
            this.indentSize = 2;
        }
        Document build = build();
        StringBuilder sb = new StringBuilder();
        Node singleChild = getSingleChild(build, "plugin");
        String value = getValue(singleChild, "name");
        String value2 = getValue(singleChild, "version");
        String str = getValue(singleChild, CouchFieldKey.KEY_GROUP_ID) + ":" + getValue(singleChild, "artifactId") + ":" + value2;
        if (isNotEmpty(value) && !value.contains(str)) {
            append(sb, value + " " + value2, 0);
        } else if (isNotEmpty(value)) {
            append(sb, value, 0);
        } else {
            append(sb, str, 0);
        }
        append(sb, getValue(singleChild, "description"), 1);
        append(sb, "", 0);
        String value3 = getValue(singleChild, "goalPrefix");
        List<Node> findNamedChild = findNamedChild(getSingleChild(singleChild, "mojos"), "mojo");
        String str2 = this.goal;
        if (str2 == null || str2.length() <= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("This plugin has ");
            sb2.append(findNamedChild.size());
            sb2.append(findNamedChild.size() > 1 ? " goals:" : " goal:");
            append(sb, sb2.toString(), 0);
            append(sb, "", 0);
        }
        Iterator<Node> it2 = findNamedChild.iterator();
        while (it2.hasNext()) {
            writeGoal(sb, value3, (Element) it2.next());
        }
        if (getLog().isInfoEnabled()) {
            getLog().info(sb.toString());
        }
    }

    private static void toLines(List<String> list, String str, int i, int i2) {
        int indentLevel = getIndentLevel(str);
        StringBuilder sb = new StringBuilder(256);
        for (String str2 : str.split(" +")) {
            if (sb.length() > 0) {
                if (sb.length() + str2.length() >= i2) {
                    list.add(sb.toString());
                    sb.setLength(0);
                    sb.append(repeat(" ", indentLevel * i));
                } else {
                    sb.append(' ');
                }
            }
            for (int i3 = 0; i3 < str2.length(); i3++) {
                char charAt = str2.charAt(i3);
                if (charAt == '\t') {
                    sb.append(repeat(" ", i - (sb.length() % i)));
                } else if (charAt == 160) {
                    sb.append(' ');
                } else {
                    sb.append(charAt);
                }
            }
        }
        list.add(sb.toString());
    }
}
