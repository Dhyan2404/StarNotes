package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.expr.JPConverter;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.jaxp.IdentityTransformer;
import net.p110sf.saxon.jaxp.ReceivingDestination;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.s9api.DOMDestination;
import net.p110sf.saxon.s9api.Destination;
import net.p110sf.saxon.s9api.QName;
import net.p110sf.saxon.s9api.SAXDestination;
import net.p110sf.saxon.s9api.Serializer;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.XsltExecutable;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.JavaExternalObjectType;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.ObjectValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;
import org.w3c.dom.Node;
import org.xml.sax.XMLFilter;

/* renamed from: com.sunia.HTREnginev2.h5 */
/* loaded from: classes11.dex */
public abstract class AbstractC13810h5 extends IdentityTransformer {

    /* renamed from: i */
    public final XsltExecutable f71819i;

    /* renamed from: j */
    public final Map<String, Object> f71820j;

    public AbstractC13810h5(XsltExecutable xsltExecutable) {
        super(xsltExecutable.getProcessor().getUnderlyingConfiguration());
        this.f71820j = new HashMap(8);
        this.f71819i = xsltExecutable;
    }

    /* renamed from: b */
    public Destination m54398b(Result result) throws XPathException {
        Destination receivingDestination;
        Serializer newSerializer;
        if (!(result instanceof StreamResult)) {
            if (result instanceof SAXResult) {
                receivingDestination = new SAXDestination(((SAXResult) result).getHandler());
            } else {
                if (result instanceof DOMResult) {
                    Node node = ((DOMResult) result).getNode();
                    if (node == null) {
                        try {
                            DocumentBuilderFactory newInstance = DocumentBuilderFactory.newInstance();
                            newInstance.setNamespaceAware(true);
                            node = newInstance.newDocumentBuilder().newDocument();
                            ((DOMResult) result).setNode(node);
                        } catch (ParserConfigurationException e) {
                            throw new XPathException(e);
                        }
                    }
                    return new DOMDestination(node);
                }
                if (!(result instanceof Receiver)) {
                    return null;
                }
                receivingDestination = new ReceivingDestination((Receiver) result);
            }
            return receivingDestination;
        }
        StreamResult streamResult = (StreamResult) result;
        if (streamResult.getOutputStream() != null) {
            newSerializer = this.f71819i.getProcessor().newSerializer(streamResult.getOutputStream());
        } else if (streamResult.getWriter() != null) {
            newSerializer = this.f71819i.getProcessor().newSerializer(streamResult.getWriter());
        } else {
            if (streamResult.getSystemId() == null) {
                throw new IllegalArgumentException("StreamResult supplies neither an OutputStream nor a Writer");
            }
            try {
                URI uri = new URI(streamResult.getSystemId());
                if (!uri.isAbsolute()) {
                    try {
                        uri = new File(streamResult.getSystemId()).getAbsoluteFile().toURI();
                    } catch (Exception unused) {
                    }
                }
                File file = new File(uri);
                try {
                    if ("file".equals(uri.getScheme()) && !file.exists()) {
                        File parentFile = file.getParentFile();
                        if (parentFile != null && !parentFile.exists()) {
                            parentFile.mkdirs();
                        }
                        file.createNewFile();
                    }
                    try {
                        newSerializer = this.f71819i.getProcessor().newSerializer(new FileOutputStream(file));
                        newSerializer.setCloseOnCompletion(true);
                    } catch (FileNotFoundException e2) {
                        throw new XPathException("Failed to create output file", e2);
                    }
                } catch (IOException e3) {
                    throw new XPathException("Failed to create output file " + uri, e3);
                }
            } catch (URISyntaxException e4) {
                throw new XPathException("System ID in Result object is not a valid URI: " + streamResult.getSystemId(), e4);
            }
        }
        Properties localOutputProperties = getLocalOutputProperties();
        for (String str : localOutputProperties.stringPropertyNames()) {
            QName fromClarkName = QName.fromClarkName(str);
            if (!fromClarkName.getNamespaceURI().equals(NamespaceConstant.SAXON) || !fromClarkName.getLocalName().equals("next-in-chain")) {
                newSerializer.setOutputProperty(QName.fromClarkName(str), localOutputProperties.getProperty(str));
            }
        }
        return newSerializer;
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void clearParameters() {
        this.f71820j.clear();
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public Object getParameter(String str) {
        return this.f71820j.get(str);
    }

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer
    public Properties getStylesheetOutputProperties() {
        return this.f71819i.getUnderlyingCompiledStylesheet().getPrimarySerializationProperties().getProperties();
    }

    public abstract Controller getUnderlyingController();

    public XsltExecutable getUnderlyingXsltExecutable() {
        return this.f71819i;
    }

    public abstract XMLFilter newXMLFilter();

    public abstract void setConvertedParameter(QName qName, XdmValue xdmValue);

    @Override // net.p110sf.saxon.jaxp.IdentityTransformer, javax.xml.transform.Transformer
    public void setParameter(String str, Object obj) {
        Objects.requireNonNull(str, "name");
        Objects.requireNonNull(obj, "value");
        this.f71820j.put(str, obj);
        QName fromClarkName = QName.fromClarkName(str);
        XsltExecutable.ParameterDetails parameterDetails = this.f71819i.getGlobalParameters().get(fromClarkName);
        if (parameterDetails == null) {
            return;
        }
        Configuration configuration = getConfiguration();
        SequenceType underlyingDeclaredType = parameterDetails.getUnderlyingDeclaredType();
        try {
            GroundedValue materialize = obj instanceof Sequence ? ((Sequence) obj).materialize() : obj instanceof String ? StringValue.makeUntypedAtomic(StringView.tidy((String) obj)) : underlyingDeclaredType.getPrimaryType() instanceof JavaExternalObjectType ? new ObjectValue(obj) : JPConverter.allocate(obj.getClass(), null, configuration).convert(obj, getUnderlyingController().newXPathContext());
            if (materialize == null) {
                materialize = EmptySequence.getInstance();
            }
            if (underlyingDeclaredType != null && !underlyingDeclaredType.matches(materialize, configuration.getTypeHierarchy())) {
                materialize = configuration.getTypeHierarchy().applyFunctionConversionRules(materialize, underlyingDeclaredType, new RoleDiagnostic(3, fromClarkName.toString(), -1), Loc.NONE);
            }
            setConvertedParameter(fromClarkName, XdmValue.wrap(materialize));
        } catch (XPathException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
