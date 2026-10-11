package net.p110sf.saxon.trace;

import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.util.Map;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.ApplyTemplates;
import net.p110sf.saxon.expr.instruct.Instruction;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.StandardDiagnostics;
import net.p110sf.saxon.lib.StandardLogger;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.Mode;
import net.p110sf.saxon.tree.util.Navigator;
import net.p110sf.saxon.value.StringValue;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public abstract class AbstractTraceListener extends StandardDiagnostics implements TraceListener {

    /* renamed from: f */
    public static final StringBuilder f102170f = new StringBuilder("                ");
    protected int indent = 0;

    /* renamed from: e */
    public int f102171e = 2;
    protected Logger out = new StandardLogger();

    public static String spaces(int i) {
        while (true) {
            StringBuilder sb = f102170f;
            if (sb.length() >= i) {
                return sb.substring(0, i);
            }
            sb.append((CharSequence) sb);
        }
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void close() {
        this.indent--;
        this.out.info("</trace>");
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void endCurrentItem(Item item) {
        this.indent--;
        if (!(item instanceof NodeInfo) || this.f102171e <= 0) {
            return;
        }
        this.out.info(spaces(this.indent) + "</source><!-- " + Navigator.getPath((NodeInfo) item) + " -->");
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void endRuleSearch(Object obj, Mode mode, Item item) {
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void enter(Traceable traceable, Map<String, Object> map, XPathContext xPathContext) {
        if (isApplicable(traceable)) {
            Location location = traceable.getLocation();
            String abbreviateLocationURI = abbreviateLocationURI(location.getSystemId());
            StringBuilder sb = new StringBuilder(spaces(this.indent) + '<' + tag(traceable));
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof StructuredQName) {
                    value = ((StructuredQName) value).getDisplayName();
                } else if (value instanceof StringValue) {
                    value = ((StringValue) value).getUnicodeStringValue();
                }
                if (value != null) {
                    sb.append(' ');
                    sb.append(entry.getKey());
                    sb.append("=\"");
                    sb.append(escape(value.toString()));
                    sb.append('\"');
                }
            }
            sb.append(" line=\"");
            sb.append(location.getLineNumber());
            sb.append('\"');
            if (location.getColumnNumber() >= 0) {
                sb.append(" column=\"");
                sb.append(location.getColumnNumber());
                sb.append('\"');
            }
            sb.append(" module=\"");
            sb.append(escape(abbreviateLocationURI));
            sb.append('\"');
            sb.append(">");
            this.out.info(sb.toString());
            this.indent++;
        }
    }

    public String escape(String str) {
        if (str == null) {
            return "";
        }
        String collapseWhitespace = Whitespace.collapseWhitespace(str);
        StringBuilder sb = new StringBuilder(collapseWhitespace.length() + 10);
        for (int i = 0; i < collapseWhitespace.length(); i++) {
            char charAt = collapseWhitespace.charAt(i);
            if (charAt == '<') {
                sb.append("&lt;");
            } else if (charAt == '>') {
                sb.append("&gt;");
            } else if (charAt == '&') {
                sb.append("&amp;");
            } else if (charAt == '\"') {
                sb.append("&#34;");
            } else if (charAt == '\n') {
                sb.append(SerializerConstants.ENTITY_CRLF);
            } else if (charAt == '\r') {
                sb.append("&#xD;");
            } else if (charAt == '\t') {
                sb.append("&#x9;");
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public abstract String getOpeningAttributes();

    public Logger getOutputDestination() {
        return this.out;
    }

    public boolean isApplicable(Traceable traceable) {
        return level(traceable) <= this.f102171e;
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void leave(Traceable traceable) {
        if (isApplicable(traceable)) {
            this.indent--;
            this.out.info(spaces(this.indent) + XMLStreamWriterImpl.OPEN_END_TAG + tag(traceable) + '>');
        }
    }

    public int level(Traceable traceable) {
        if ((traceable instanceof TraceableComponent) || (traceable instanceof ApplyTemplates)) {
            return 1;
        }
        return traceable instanceof Instruction ? 2 : 3;
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void open(Controller controller) {
        this.out.info("<trace saxon-version=\"" + Version.getProductVersion() + "\" " + getOpeningAttributes() + '>');
        this.indent = this.indent + 1;
    }

    public void setLevelOfDetail(int i) {
        this.f102171e = i;
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void setOutputDestination(Logger logger) {
        this.out = logger;
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void startCurrentItem(Item item) {
        if ((item instanceof NodeInfo) && this.f102171e > 0) {
            NodeInfo nodeInfo = (NodeInfo) item;
            this.out.info(spaces(this.indent) + "<source node=\"" + Navigator.getPath(nodeInfo) + "\" line=\"" + nodeInfo.getLineNumber() + "\" file=\"" + abbreviateLocationURI(nodeInfo.getSystemId()) + "\">");
        }
        this.indent++;
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void startRuleSearch() {
    }

    public abstract String tag(Traceable traceable);
}
