package net.p110sf.saxon.s9api;

import com.sunia.HTREnginev2.gae;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.PreparedStylesheet;
import net.p110sf.saxon.expr.instruct.GlobalParam;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.style.StylesheetPackage;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XsltExecutable {

    /* renamed from: a */
    public Processor f101426a;

    /* renamed from: b */
    public PreparedStylesheet f101427b;

    /* loaded from: classes11.dex */
    public static class ParameterDetails {

        /* renamed from: a */
        public final Processor f101428a;

        /* renamed from: b */
        public final SequenceType f101429b;

        /* renamed from: c */
        public final boolean f101430c;

        public ParameterDetails(Processor processor, SequenceType sequenceType, boolean z) {
            this.f101428a = processor;
            this.f101429b = sequenceType;
            this.f101430c = z;
        }

        public OccurrenceIndicator getDeclaredCardinality() {
            return OccurrenceIndicator.getOccurrenceIndicator(this.f101429b.getCardinality());
        }

        public ItemType getDeclaredItemType() {
            return new gae(this.f101429b.getPrimaryType(), this.f101428a.getUnderlyingConfiguration());
        }

        public SequenceType getUnderlyingDeclaredType() {
            return this.f101429b;
        }

        public boolean isRequired() {
            return this.f101430c;
        }
    }

    public XsltExecutable(Processor processor, PreparedStylesheet preparedStylesheet) {
        this.f101426a = processor;
        this.f101427b = preparedStylesheet;
    }

    public void explain(Destination destination) throws SaxonApiException {
        Configuration underlyingConfiguration = this.f101426a.getUnderlyingConfiguration();
        try {
            this.f101427b.explain(new ExpressionPresenter(underlyingConfiguration, destination.getReceiver(underlyingConfiguration.makePipelineConfiguration(), underlyingConfiguration.obtainDefaultSerializationProperties())));
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public void export(OutputStream outputStream) throws SaxonApiException {
        String targetEdition = this.f101427b.getTopLevelPackage().getTargetEdition();
        if (targetEdition == null) {
            targetEdition = getProcessor().getSaxonEdition();
        }
        export(outputStream, targetEdition);
    }

    public HashMap<QName, ParameterDetails> getGlobalParameters() {
        Map<StructuredQName, GlobalParam> globalParameters = this.f101427b.getGlobalParameters();
        HashMap<QName, ParameterDetails> hashMap = new HashMap<>();
        for (GlobalParam globalParam : globalParameters.values()) {
            hashMap.put(new QName(globalParam.getVariableQName()), new ParameterDetails(this.f101426a, globalParam.getRequiredType(), globalParam.isRequiredParam()));
        }
        return hashMap;
    }

    public Processor getProcessor() {
        return this.f101426a;
    }

    public PreparedStylesheet getUnderlyingCompiledStylesheet() {
        return this.f101427b;
    }

    public WhitespaceStrippingPolicy getWhitespaceStrippingPolicy() {
        StylesheetPackage topLevelPackage = this.f101427b.getTopLevelPackage();
        return topLevelPackage.isStripsWhitespace() ? new WhitespaceStrippingPolicy(topLevelPackage) : WhitespaceStrippingPolicy.UNSPECIFIED;
    }

    public XsltTransformer load() {
        XsltTransformer xsltTransformer = new XsltTransformer(this.f101426a, this.f101427b.newController(), this.f101427b.getCompileTimeParams());
        StructuredQName defaultInitialTemplateName = this.f101427b.getDefaultInitialTemplateName();
        if (defaultInitialTemplateName != null) {
            xsltTransformer.setInitialTemplate(new QName(defaultInitialTemplateName));
        }
        return xsltTransformer;
    }

    public Xslt30Transformer load30() {
        return new Xslt30Transformer(this.f101426a, this.f101427b.newController(), this.f101427b.getCompileTimeParams());
    }

    public void export(OutputStream outputStream, String str) throws SaxonApiException {
        Configuration underlyingConfiguration = this.f101426a.getUnderlyingConfiguration();
        try {
            StylesheetPackage topLevelPackage = this.f101427b.getTopLevelPackage();
            ExpressionPresenter newExpressionExporter = underlyingConfiguration.newExpressionExporter(str, outputStream, topLevelPackage);
            newExpressionExporter.setRelocatable(topLevelPackage.isRelocatable());
            topLevelPackage.export(newExpressionExporter);
            try {
                outputStream.close();
            } catch (IOException e) {
                throw new SaxonApiException(e);
            }
        } catch (XPathException e2) {
            throw new SaxonApiException(e2);
        }
    }
}
