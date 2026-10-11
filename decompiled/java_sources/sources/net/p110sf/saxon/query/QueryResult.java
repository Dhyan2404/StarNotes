package net.p110sf.saxon.query;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;
import javax.xml.transform.Result;
import javax.xml.transform.stream.StreamResult;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.event.SequenceCopier;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.serialize.SerializationProperties;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.SingletonIterator;
import net.p110sf.saxon.tree.tiny.TinyBuilder;

/* loaded from: classes11.dex */
public class QueryResult {
    public static String RESULT_NS = "http://saxon.sf.net/xquery-results";

    public static void rewriteToDisk(NodeInfo nodeInfo, Properties properties, boolean z, PrintStream printStream) throws XPathException {
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            NodeInfo parent = nodeInfo.getParent();
            if (parent != null && parent.getNodeKind() != 9) {
                throw new XPathException("Cannot rewrite an element node unless it is top-level");
            }
        } else if (nodeKind != 9) {
            throw new XPathException("Node to be rewritten must be a document or element node");
        }
        String systemId = nodeInfo.getSystemId();
        if (systemId == null || systemId.isEmpty()) {
            throw new XPathException("Cannot rewrite a document with no known URI");
        }
        try {
            File file = new File(new URI(systemId));
            File parentFile = file.getParentFile();
            if (z && file.exists()) {
                File file2 = new File(parentFile, file.getName() + ".bak");
                if (printStream != null) {
                    printStream.println("Creating backup file " + file2);
                }
                if (!file.renameTo(file2)) {
                    throw new XPathException("Failed to create backup file of " + file2);
                }
            }
            if (!file.exists()) {
                if (printStream != null) {
                    printStream.println("Creating file " + file);
                }
                try {
                    file.createNewFile();
                } catch (IOException unused) {
                    throw new XPathException("Failed to create new file " + file);
                }
            } else if (printStream != null) {
                printStream.println("Overwriting file " + file);
            }
            Receiver receiver = nodeInfo.getConfiguration().getSerializerFactory().getReceiver(new StreamResult(file), new SerializationProperties(properties));
            nodeInfo.copy(receiver, 2, Loc.NONE);
            receiver.close();
        } catch (URISyntaxException unused2) {
            throw new XPathException("SystemId of updated document is not a valid URI: " + systemId);
        }
    }

    public static void sendWrappedSequence(SequenceIterator sequenceIterator, Receiver receiver) throws XPathException {
        SequenceCopier.copySequence(sequenceIterator, receiver.getPipelineConfiguration().getConfiguration().getSerializerFactory().newSequenceWrapper(receiver));
    }

    public static String serialize(NodeInfo nodeInfo) throws XPathException {
        StringWriter stringWriter = new StringWriter();
        Properties properties = new Properties();
        properties.setProperty("method", "xml");
        properties.setProperty("indent", "yes");
        properties.setProperty("omit-xml-declaration", "yes");
        serialize(nodeInfo, new StreamResult(stringWriter), properties);
        return stringWriter.toString();
    }

    public static void serializeSequence(SequenceIterator sequenceIterator, Configuration configuration, OutputStream outputStream, Properties properties) throws XPathException {
        serializeSequence(sequenceIterator, configuration, new StreamResult(outputStream), properties);
        try {
            outputStream.flush();
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    public static NodeInfo wrap(SequenceIterator sequenceIterator, Configuration configuration) throws XPathException {
        TinyBuilder tinyBuilder = new TinyBuilder(configuration.makePipelineConfiguration());
        tinyBuilder.setStatistics(configuration.getTreeStatistics().SOURCE_DOCUMENT_STATISTICS);
        sendWrappedSequence(sequenceIterator, tinyBuilder);
        return tinyBuilder.getCurrentRoot();
    }

    public static void serializeSequence(SequenceIterator sequenceIterator, Configuration configuration, Writer writer, Properties properties) throws XPathException {
        serializeSequence(sequenceIterator, configuration, new StreamResult(writer), properties);
        try {
            writer.flush();
        } catch (IOException e) {
            throw new XPathException(e);
        }
    }

    public static void serializeSequence(SequenceIterator sequenceIterator, Configuration configuration, Result result, Properties properties) throws XPathException {
        SequenceCopier.copySequence(sequenceIterator, configuration.getSerializerFactory().getReceiver(result, new SerializationProperties(properties)));
    }

    public static void serialize(NodeInfo nodeInfo, Result result, Properties properties) throws XPathException {
        serializeSequence(SingletonIterator.makeIterator(nodeInfo), nodeInfo.getConfiguration(), result, properties);
    }

    public static void serialize(NodeInfo nodeInfo, Result result, SerializationProperties serializationProperties) throws XPathException {
        serializeSequence(SingletonIterator.makeIterator(nodeInfo), nodeInfo.getConfiguration(), result, serializationProperties);
    }

    public static void serializeSequence(SequenceIterator sequenceIterator, Configuration configuration, Result result, SerializationProperties serializationProperties) throws XPathException {
        SequenceCopier.copySequence(sequenceIterator, configuration.getSerializerFactory().getReceiver(result, serializationProperties));
    }
}
