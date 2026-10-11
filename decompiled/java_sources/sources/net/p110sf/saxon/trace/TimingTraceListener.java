package net.p110sf.saxon.trace;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.event.PushToReceiver;
import net.p110sf.saxon.event.TransformerReceiver;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.instruct.GlobalParameterSet;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.expr.instruct.NamedTemplate;
import net.p110sf.saxon.expr.instruct.TemplateRule;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.lib.Logger;
import net.p110sf.saxon.lib.StandardLogger;
import net.p110sf.saxon.lib.TraceListener;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.HostLanguage;
import net.p110sf.saxon.s9api.SaxonApiException;
import net.p110sf.saxon.s9api.push.Document;
import net.p110sf.saxon.s9api.push.Element;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.style.Compilation;
import net.p110sf.saxon.trans.CompilerInfo;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.trans.XsltController;
import net.p110sf.saxon.value.StringValue;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class TimingTraceListener implements TraceListener {

    /* renamed from: g */
    public long f102197g;

    /* renamed from: e */
    public int f102195e = 0;

    /* renamed from: f */
    public Logger f102196f = new StandardLogger();

    /* renamed from: h */
    public final Stack<C18527b> f102198h = new Stack<>();

    /* renamed from: i */
    public final HashMap<Traceable, C18527b> f102199i = new HashMap<>();
    protected Configuration config = null;

    /* renamed from: j */
    public final Map<Traceable, Integer> f102200j = new HashMap();

    /* renamed from: k */
    public HostLanguage f102201k = HostLanguage.XSLT;

    /* renamed from: net.sf.saxon.trace.TimingTraceListener$b */
    /* loaded from: classes11.dex */
    public static class C18527b {

        /* renamed from: a */
        public TraceableComponent f102202a;

        /* renamed from: b */
        public Map<String, Object> f102203b;

        /* renamed from: c */
        public long f102204c;

        /* renamed from: d */
        public long f102205d;

        /* renamed from: e */
        public long f102206e;

        public C18527b() {
        }
    }

    /* renamed from: a */
    public final PreparedStylesheet m64079a() throws XPathException {
        StreamSource streamSource = new StreamSource(m64080b(), "profile.xsl");
        CompilerInfo defaultXsltCompilerInfo = this.config.getDefaultXsltCompilerInfo();
        defaultXsltCompilerInfo.setParameter(new StructuredQName("", "", "lang"), StringValue.bmp(this.f102201k == HostLanguage.XSLT ? "XSLT" : "XQuery"));
        return Compilation.compileSingletonPackage(this.config, defaultXsltCompilerInfo, streamSource);
    }

    /* renamed from: b */
    public final InputStream m64080b() {
        return Version.platform.locateResource("profile.xsl", new ArrayList());
    }

    /* renamed from: c */
    public final boolean m64081c(Traceable traceable) {
        return (traceable instanceof UserFunction) || (traceable instanceof GlobalVariable) || (traceable instanceof NamedTemplate) || (traceable instanceof TemplateRule);
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void close() {
        this.f102197g = System.nanoTime() - this.f102197g;
        this.f102195e++;
        try {
            XsltController newController = m64079a().newController();
            SerializationProperties serializationProperties = new SerializationProperties();
            serializationProperties.setProperty("method", "html");
            serializationProperties.setProperty("indent", "yes");
            newController.setTraceListener(null);
            TransformerReceiver transformerReceiver = new TransformerReceiver(newController);
            newController.initializeController(new GlobalParameterSet());
            transformerReceiver.open();
            transformerReceiver.setDestination(this.config.getSerializerFactory().getReceiver(this.f102196f.asStreamResult(), serializationProperties, newController.makePipelineConfiguration()));
            Document document = new PushToReceiver(transformerReceiver).document(true);
            Element attribute = document.element(AbstractLogger.TRACE).attribute("t-total", Double.toString(this.f102197g / 1000000.0d));
            for (C18527b c18527b : this.f102199i.values()) {
                Element element = attribute.element("fn");
                if (c18527b.f102202a.getObjectName() != null) {
                    element.attribute("name", c18527b.f102202a.getObjectName().getDisplayName());
                } else if (c18527b.f102203b.get("name") != null) {
                    element.attribute("name", c18527b.f102203b.get("name").toString());
                }
                if (c18527b.f102203b.get(Constants.ATTRNAME_MATCH) != null) {
                    element.attribute(Constants.ATTRNAME_MATCH, c18527b.f102203b.get(Constants.ATTRNAME_MATCH).toString());
                }
                if (c18527b.f102203b.get(Constants.ATTRNAME_MODE) != null) {
                    element.attribute(Constants.ATTRNAME_MODE, c18527b.f102203b.get(Constants.ATTRNAME_MODE).toString());
                }
                element.attribute(Constants.ELEMNAME_CONSTRUCT_STRING, c18527b.f102202a.getTracingTag()).attribute("file", c18527b.f102202a.getLocation().getSystemId()).attribute("count", Long.toString(c18527b.f102206e / this.f102195e)).attribute("t-sum-net", Double.toString((c18527b.f102205d / this.f102195e) / 1000000.0d)).attribute("t-avg-net", Double.toString((c18527b.f102205d / c18527b.f102206e) / 1000000.0d)).attribute("t-sum", Double.toString((c18527b.f102204c / this.f102195e) / 1000000.0d)).attribute("t-avg", Double.toString((c18527b.f102204c / c18527b.f102206e) / 1000000.0d)).attribute("line", Long.toString(c18527b.f102202a.getLocation().getLineNumber())).close();
            }
            document.close();
        } catch (TransformerException e) {
            System.err.println("Unable to transform timing profile information: " + e.getMessage());
        } catch (SaxonApiException e2) {
            System.err.println("Unable to generate timing profile information: " + e2.getMessage());
        }
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void endCurrentItem(Item item) {
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void enter(Traceable traceable, Map<String, Object> map, XPathContext xPathContext) {
        if (m64081c(traceable)) {
            long nanoTime = System.nanoTime();
            C18527b c18527b = new C18527b();
            c18527b.f102202a = (TraceableComponent) traceable;
            c18527b.f102203b = map;
            c18527b.f102204c = nanoTime;
            this.f102198h.add(c18527b);
            Integer num = this.f102200j.get(traceable);
            if (num == null) {
                this.f102200j.put(traceable, 0);
            } else {
                this.f102200j.put(traceable, Integer.valueOf(num.intValue() + 1));
            }
        }
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void leave(Traceable traceable) {
        if (m64081c(traceable)) {
            C18527b peek = this.f102198h.peek();
            long nanoTime = System.nanoTime() - peek.f102204c;
            peek.f102205d = nanoTime - peek.f102205d;
            peek.f102204c = nanoTime;
            C18527b c18527b = this.f102199i.get(traceable);
            if (c18527b == null) {
                peek.f102206e = 1L;
                this.f102199i.put(traceable, peek);
            } else {
                c18527b.f102206e++;
                Integer num = this.f102200j.get(traceable);
                Map<Traceable, Integer> map = this.f102200j;
                Integer valueOf = Integer.valueOf(num.intValue() - 1);
                map.put(traceable, valueOf);
                if (valueOf.intValue() == 0) {
                    c18527b.f102204c += peek.f102204c;
                }
                c18527b.f102205d += peek.f102205d;
            }
            this.f102198h.pop();
            if (this.f102198h.isEmpty()) {
                return;
            }
            this.f102198h.peek().f102205d += nanoTime;
        }
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void open(Controller controller) {
        this.config = controller.getConfiguration();
        this.f102201k = controller.getExecutable().getHostLanguage();
        this.f102197g = System.nanoTime();
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void setOutputDestination(Logger logger) {
        this.f102196f = logger;
    }

    @Override // net.p110sf.saxon.lib.TraceListener
    public void startCurrentItem(Item item) {
    }
}
