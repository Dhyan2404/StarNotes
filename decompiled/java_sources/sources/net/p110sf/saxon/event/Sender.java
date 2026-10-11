package net.p110sf.saxon.event;

import java.util.List;
import java.util.function.Function;
import javax.xml.transform.Source;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.LocationCopier;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.AugmentedSource;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.om.NamePool;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class Sender {
    public static Receiver makeValidator(Receiver receiver, String str, ParseOptions parseOptions) throws XPathException {
        Controller controller;
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        pipelineConfiguration.getConfiguration();
        int schemaValidationMode = parseOptions.getSchemaValidationMode();
        if (schemaValidationMode == 3 || schemaValidationMode == 0 || (controller = pipelineConfiguration.getController()) == null || controller.getExecutable().isSchemaAware() || schemaValidationMode == 4) {
            return receiver;
        }
        throw new XPathException("Cannot use schema-validated input documents when the query/stylesheet is not schema-aware");
    }

    public static void send(Source source, Receiver receiver, ParseOptions parseOptions) throws XPathException {
        AugmentedSource augmentedSource;
        Source source2;
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        ParseOptions parseOptions2 = parseOptions == null ? new ParseOptions(pipelineConfiguration.getParseOptions()) : new ParseOptions(parseOptions);
        String systemId = source.getSystemId();
        if (source instanceof AugmentedSource) {
            AugmentedSource augmentedSource2 = (AugmentedSource) source;
            parseOptions2.merge(augmentedSource2.getParseOptions());
            String systemId2 = source.getSystemId();
            source2 = augmentedSource2.getContainedSource();
            augmentedSource = augmentedSource2;
            systemId = systemId2;
        } else {
            augmentedSource = null;
            source2 = source;
        }
        Configuration configuration = pipelineConfiguration.getConfiguration();
        parseOptions2.applyDefaults(configuration);
        receiver.setSystemId(systemId);
        List<FilterFactory> filters = parseOptions2.getFilters();
        if (filters != null) {
            for (int size = filters.size() - 1; size >= 0; size--) {
                receiver = filters.get(size).makeFilter(receiver);
                receiver.setSystemId(source2.getSystemId());
            }
        }
        Receiver makeValidator = makeValidator(receiver, source2.getSystemId(), parseOptions2);
        SpaceStrippingRule spaceStrippingRule = parseOptions2.getSpaceStrippingRule();
        if (spaceStrippingRule != null && !(spaceStrippingRule instanceof NoElementsSpaceStrippingRule)) {
            makeValidator = spaceStrippingRule.makeStripper(makeValidator);
        }
        if (!(source2 instanceof ActiveSource)) {
            source2 = configuration.resolveSource(source2, configuration);
        }
        if (source2 == null) {
            throw new XPathException("A source of type " + source.getClass().getName() + " is not supported in this environment");
        }
        ((ActiveSource) source2).deliver(makeValidator, parseOptions2);
        if (augmentedSource == null || !augmentedSource.isPleaseCloseAfterUse()) {
            return;
        }
        augmentedSource.close();
    }

    public static void sendDocumentInfo(NodeInfo nodeInfo, Receiver receiver, Location location) throws XPathException {
        PipelineConfiguration pipelineConfiguration = receiver.getPipelineConfiguration();
        NamePool namePool = pipelineConfiguration.getConfiguration().getNamePool();
        if (nodeInfo.getConfiguration().getNamePool() != namePool) {
            receiver = new NamePoolConverter(receiver, nodeInfo.getConfiguration().getNamePool(), namePool);
        }
        final LocationCopier locationCopier = new LocationCopier(nodeInfo.getNodeKind() == 9, location.getSystemId());
        pipelineConfiguration.setComponent(CopyInformee.class.getName(), locationCopier);
        pipelineConfiguration.setCopyInformee(new Function() { // from class: com.sunia.HTREnginev2.vgm
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object notifyElementNode;
                notifyElementNode = LocationCopier.this.notifyElementNode((NodeInfo) obj);
                return notifyElementNode;
            }
        });
        receiver.open();
        int nodeKind = nodeInfo.getNodeKind();
        if (nodeKind == 1) {
            receiver.startDocument(0);
            nodeInfo.copy(receiver, 6, location);
            receiver.endDocument();
        } else {
            if (nodeKind != 9) {
                throw new IllegalArgumentException("Expected document or element node");
            }
            nodeInfo.copy(receiver, 6, location);
        }
        receiver.close();
    }
}
