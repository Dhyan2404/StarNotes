package net.p110sf.saxon.functions.hof;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Map;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.ContextItemExpression;
import net.p110sf.saxon.expr.ContextOriginator;
import net.p110sf.saxon.expr.ExportAgent;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.GlobalContextRequirement;
import net.p110sf.saxon.expr.instruct.GlobalVariable;
import net.p110sf.saxon.functions.OptionsParameter;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.functions.hof.UserFunctionReference;
import net.p110sf.saxon.lib.ModuleURIResolver;
import net.p110sf.saxon.lib.StandardModuleURIResolver;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.ma.map.HashTrieMap;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.ma.map.SingleEntryMap;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.query.DynamicQueryContext;
import net.p110sf.saxon.query.QueryLibrary;
import net.p110sf.saxon.query.QueryModule;
import net.p110sf.saxon.query.QueryReader;
import net.p110sf.saxon.query.StaticQueryContext;
import net.p110sf.saxon.query.XQueryExpression;
import net.p110sf.saxon.query.XQueryFunction;
import net.p110sf.saxon.query.XQueryFunctionLibrary;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.SaxonErrorCode;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.tree.iter.AtomicIterator;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DecimalValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.QNameValue;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class LoadXqueryModule extends SystemFunction implements Callable {

    /* renamed from: net.sf.saxon.functions.hof.LoadXqueryModule$a */
    /* loaded from: classes11.dex */
    public class C18387a implements ExportAgent {
        public C18387a() {
        }

        @Override // net.p110sf.saxon.expr.ExportAgent
        public void export(ExpressionPresenter expressionPresenter) throws XPathException {
            XPathException xPathException = new XPathException("Cannot export a stylesheet that statically incorporates XQuery functions", SaxonErrorCode.SXST0069);
            xPathException.setIsStaticError(true);
            throw xPathException;
        }
    }

    public static OptionsParameter makeOptionsParameter() {
        OptionsParameter optionsParameter = new OptionsParameter();
        optionsParameter.addAllowedOption("xquery-version", SequenceType.SINGLE_DECIMAL);
        optionsParameter.addAllowedOption("location-hints", SequenceType.STRING_SEQUENCE);
        optionsParameter.addAllowedOption("context-item", SequenceType.OPTIONAL_ITEM);
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.QNAME;
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        optionsParameter.addAllowedOption("variables", SequenceType.makeSequenceType(new MapType(builtInAtomicType, sequenceType), 16384));
        optionsParameter.addAllowedOption("vendor-options", SequenceType.makeSequenceType(new MapType(builtInAtomicType, sequenceType), 16384));
        return optionsParameter;
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public XPathContext makeNewContext(XPathContext xPathContext, ContextOriginator contextOriginator) {
        return xPathContext;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public MapItem call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Sequence sequence;
        Sequence sequence2;
        Sequence sequence3;
        Sequence sequence4;
        GroundedValue singleEntryMap;
        ItemType requiredItemType;
        if (sequenceArr.length == 2) {
            Map<String, Sequence> processSuppliedOptions = getDetails().optionDetails.processSuppliedOptions((MapItem) sequenceArr[1].head(), xPathContext);
            sequence = processSuppliedOptions.get("xquery-version");
            if (sequence != null) {
                double doubleValue = ((DecimalValue) sequence.head()).getDoubleValue();
                if (10.0d * doubleValue > 31.0d) {
                    throw new XPathException("No XQuery version " + doubleValue + " processor is available", "FOQM0006");
                }
            }
            sequence2 = processSuppliedOptions.get("location-hints");
            sequence3 = processSuppliedOptions.get("variables");
            sequence4 = processSuppliedOptions.get("context-item");
            processSuppliedOptions.get("vendor-options");
        } else {
            sequence = null;
            sequence2 = null;
            sequence3 = null;
            sequence4 = null;
        }
        if (sequence != null) {
            BigDecimal decimalValue = ((DecimalValue) sequence.head()).getDecimalValue();
            if (!decimalValue.equals(new BigDecimal("1.0")) && !decimalValue.equals(new BigDecimal(XQueryParser.XQUERY30)) && !decimalValue.equals(new BigDecimal(XQueryParser.XQUERY31))) {
                throw new XPathException("Unsupported XQuery version " + decimalValue, "FOQM0006");
            }
            decimalValue.multiply(BigDecimal.TEN).intValue();
        }
        String stringValue = sequenceArr[0].head().getStringValue();
        if (!stringValue.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            if (sequence2 != null) {
                SequenceIterator iterate = sequence2.iterate();
                while (true) {
                    Item next = iterate.next();
                    if (next == null) {
                        break;
                    }
                    arrayList.add(next.getStringValue());
                }
            }
            Configuration configuration = xPathContext.getConfiguration();
            StaticQueryContext newStaticQueryContext = configuration.newStaticQueryContext();
            ModuleURIResolver moduleURIResolver = configuration.getModuleURIResolver();
            if (moduleURIResolver == null) {
                moduleURIResolver = new StandardModuleURIResolver(configuration);
            }
            newStaticQueryContext.setModuleURIResolver(moduleURIResolver);
            String staticBaseUriString = getRetainedStaticContext().getStaticBaseUriString();
            newStaticQueryContext.setBaseURI(staticBaseUriString);
            try {
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                StreamSource[] resolve = newStaticQueryContext.getModuleURIResolver().resolve(stringValue, staticBaseUriString, strArr);
                if (resolve == null) {
                    resolve = new StandardModuleURIResolver(configuration).resolve(stringValue, staticBaseUriString, strArr);
                }
                if (resolve.length != 0) {
                    try {
                        newStaticQueryContext.compileLibrary(QueryReader.readSourceQuery(resolve[0], configuration.getValidCharacterChecker()));
                        QueryLibrary compiledLibrary = newStaticQueryContext.getCompiledLibrary(stringValue);
                        if (compiledLibrary != null) {
                            QueryModule queryModule = new QueryModule(newStaticQueryContext);
                            queryModule.setPackageData(compiledLibrary.getPackageData());
                            queryModule.setExecutable(compiledLibrary.getExecutable());
                            compiledLibrary.link(queryModule);
                            XQueryExpression xQueryExpression = new XQueryExpression(new ContextItemExpression(), queryModule, false);
                            DynamicQueryContext dynamicQueryContext = new DynamicQueryContext(xPathContext.getConfiguration());
                            if (sequence3 != null) {
                                MapItem mapItem = (MapItem) sequence3.head();
                                AtomicIterator keys = mapItem.keys();
                                while (true) {
                                    AtomicValue next2 = keys.next();
                                    if (next2 == null) {
                                        break;
                                    }
                                    dynamicQueryContext.setParameter(((QNameValue) next2).getStructuredQName(), mapItem.get(next2).materialize());
                                }
                            }
                            if (sequence4 != null) {
                                Item head = sequence4.head();
                                GlobalContextRequirement globalContextRequirement = queryModule.getExecutable().getGlobalContextRequirement();
                                if (globalContextRequirement != null && (requiredItemType = globalContextRequirement.getRequiredItemType()) != null && !requiredItemType.matches(head, configuration.getTypeHierarchy())) {
                                    throw new XPathException("Required context item type is " + requiredItemType, "FOQM0005");
                                }
                                dynamicQueryContext.setContextItem(sequence4.head());
                            }
                            Controller newController = xQueryExpression.newController(dynamicQueryContext);
                            XPathContextMajor newXPathContext = newController.newXPathContext();
                            MapItem hashTrieMap = new HashTrieMap();
                            for (GlobalVariable globalVariable : compiledLibrary.getImportedGlobalVariables()) {
                                QNameValue qNameValue = new QNameValue(globalVariable.getVariableQName(), BuiltInAtomicType.QNAME);
                                if (qNameValue.getNamespaceURI().equals(stringValue)) {
                                    try {
                                        hashTrieMap = hashTrieMap.addEntry(qNameValue, globalVariable.evaluateVariable((XPathContext) newXPathContext));
                                    } catch (XPathException e) {
                                        e.setIsGlobalError(false);
                                        if (e.getErrorCodeLocalPart().equals("XPTY0004")) {
                                            throw new XPathException(e.getMessage(), "FOQM0005");
                                        }
                                        throw e;
                                    }
                                }
                            }
                            MapItem hashTrieMap2 = new HashTrieMap();
                            XQueryFunctionLibrary globalFunctionLibrary = compiledLibrary.getGlobalFunctionLibrary();
                            C18387a c18387a = new C18387a();
                            for (XQueryFunction xQueryFunction : globalFunctionLibrary.getFunctionDefinitions()) {
                                QNameValue qNameValue2 = new QNameValue(xQueryFunction.getFunctionName(), BuiltInAtomicType.QNAME);
                                if (qNameValue2.getNamespaceURI().equals(stringValue)) {
                                    UserFunctionReference.BoundUserFunction boundUserFunction = new UserFunctionReference.BoundUserFunction(c18387a, xQueryFunction.getUserFunction(), null, newController);
                                    if (hashTrieMap2.get(qNameValue2) != null) {
                                        singleEntryMap = ((MapItem) hashTrieMap2.get(qNameValue2)).addEntry(new Int64Value(xQueryFunction.getNumberOfArguments()), boundUserFunction);
                                    } else {
                                        singleEntryMap = new SingleEntryMap(Int64Value.makeIntegerValue(xQueryFunction.getNumberOfArguments()), boundUserFunction);
                                    }
                                    hashTrieMap2 = hashTrieMap2.addEntry(qNameValue2, singleEntryMap);
                                }
                            }
                            DictionaryMap dictionaryMap = new DictionaryMap();
                            dictionaryMap.initialPut("variables", hashTrieMap);
                            dictionaryMap.initialPut(Constants.ELEMNAME_EXTENSION_STRING, hashTrieMap2);
                            return dictionaryMap;
                        }
                        throw new XPathException("The library module located does not have the expected namespace " + stringValue, "FOQM0002");
                    } catch (XPathException e2) {
                        throw new XPathException(e2.getMessage(), "FOQM0003");
                    }
                }
                throw new XPathException("No library module found with specified target namespace " + stringValue, "FOQM0002");
            } catch (XPathException e3) {
                e3.maybeSetErrorCode("FOQM0002");
                throw e3;
            }
        }
        throw new XPathException("First argument of fn:load-xquery-module() must not be a zero length string", "FOQM0001");
    }
}
