package net.p110sf.saxon.s9api;

import com.sunia.HTREnginev2.gae;
import java.util.Map;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.ma.arrays.ArrayItem;
import net.p110sf.saxon.ma.arrays.ArrayItemType;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.pattern.CombinedNodeTest;
import net.p110sf.saxon.pattern.ContentTypeTest;
import net.p110sf.saxon.pattern.DocumentNodeTest;
import net.p110sf.saxon.pattern.NameTest;
import net.p110sf.saxon.pattern.NodeKindTest;
import net.p110sf.saxon.pattern.NodeTest;
import net.p110sf.saxon.pattern.SameNameTest;
import net.p110sf.saxon.s9api.ItemType;
import net.p110sf.saxon.type.AnyExternalObjectType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaDeclaration;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.ObjectValue;

/* loaded from: classes11.dex */
public class ItemTypeFactory {

    /* renamed from: a */
    public final Configuration f101345a;

    /* renamed from: net.sf.saxon.s9api.ItemTypeFactory$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18473a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f101346a;

        static {
            int[] iArr = new int[XdmNodeKind.values().length];
            f101346a = iArr;
            try {
                iArr[XdmNodeKind.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f101346a[XdmNodeKind.ELEMENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f101346a[XdmNodeKind.ATTRIBUTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f101346a[XdmNodeKind.TEXT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f101346a[XdmNodeKind.COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f101346a[XdmNodeKind.PROCESSING_INSTRUCTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f101346a[XdmNodeKind.NAMESPACE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public ItemTypeFactory(Processor processor) {
        this.f101345a = processor.getUnderlyingConfiguration();
    }

    /* renamed from: a */
    public final ItemType m63656a(StructuredQName structuredQName) throws SaxonApiException {
        String uri = structuredQName.getURI();
        String localPart = structuredQName.getLocalPart();
        if ("http://www.w3.org/2001/XMLSchema".equals(uri)) {
            int fingerprint = StandardNames.getFingerprint(uri, localPart);
            return (this.f101345a.getXsdVersion() == 10 && this.f101345a.getXMLVersion() == 10) ? m63657b(fingerprint) : ItemType.BuiltInAtomicItemType.makeVariant((ItemType.BuiltInAtomicItemType) m63657b(fingerprint), this.f101345a.getConversionRules());
        }
        SchemaType schemaType = this.f101345a.getSchemaType(new StructuredQName("", uri, localPart));
        if (schemaType != null && schemaType.isAtomicType()) {
            return new gae((AtomicType) schemaType, this.f101345a);
        }
        throw new SaxonApiException("Unknown atomic type " + structuredQName.getClarkName());
    }

    /* renamed from: b */
    public final ItemType m63657b(int i) throws SaxonApiException {
        if (i == 563) {
            return ItemType.ENTITY;
        }
        if (i == 565) {
            return ItemType.DATE_TIME_STAMP;
        }
        switch (i) {
            case 513:
                return ItemType.STRING;
            case 514:
                return ItemType.BOOLEAN;
            case 515:
                return ItemType.DECIMAL;
            case 516:
                return ItemType.FLOAT;
            case 517:
                return ItemType.DOUBLE;
            case 518:
                return ItemType.DURATION;
            case 519:
                return ItemType.DATE_TIME;
            case 520:
                return ItemType.TIME;
            case 521:
                return ItemType.DATE;
            case 522:
                return ItemType.G_YEAR_MONTH;
            case StandardNames.XS_G_YEAR /* 523 */:
                return ItemType.G_YEAR;
            case 524:
                return ItemType.G_MONTH_DAY;
            case StandardNames.XS_G_DAY /* 525 */:
                return ItemType.G_DAY;
            case StandardNames.XS_G_MONTH /* 526 */:
                return ItemType.G_MONTH;
            case 527:
                return ItemType.HEX_BINARY;
            case StandardNames.XS_BASE64_BINARY /* 528 */:
                return ItemType.BASE64_BINARY;
            case 529:
                return ItemType.ANY_URI;
            case 530:
                return ItemType.QNAME;
            case 531:
                return ItemType.NOTATION;
            default:
                switch (i) {
                    case StandardNames.XS_INTEGER /* 533 */:
                        return ItemType.INTEGER;
                    case 534:
                        return ItemType.NON_POSITIVE_INTEGER;
                    case StandardNames.XS_NEGATIVE_INTEGER /* 535 */:
                        return ItemType.NEGATIVE_INTEGER;
                    case StandardNames.XS_LONG /* 536 */:
                        return ItemType.LONG;
                    case 537:
                        return ItemType.INT;
                    case 538:
                        return ItemType.SHORT;
                    case 539:
                        return ItemType.BYTE;
                    case StandardNames.XS_NON_NEGATIVE_INTEGER /* 540 */:
                        return ItemType.NON_NEGATIVE_INTEGER;
                    case StandardNames.XS_POSITIVE_INTEGER /* 541 */:
                        return ItemType.POSITIVE_INTEGER;
                    case 542:
                        return ItemType.UNSIGNED_LONG;
                    case StandardNames.XS_UNSIGNED_INT /* 543 */:
                        return ItemType.UNSIGNED_INT;
                    case StandardNames.XS_UNSIGNED_SHORT /* 544 */:
                        return ItemType.UNSIGNED_SHORT;
                    case StandardNames.XS_UNSIGNED_BYTE /* 545 */:
                        return ItemType.UNSIGNED_BYTE;
                    default:
                        switch (i) {
                            case StandardNames.XS_NORMALIZED_STRING /* 553 */:
                                return ItemType.NORMALIZED_STRING;
                            case 554:
                                return ItemType.TOKEN;
                            case StandardNames.XS_LANGUAGE /* 555 */:
                                return ItemType.LANGUAGE;
                            case StandardNames.XS_NMTOKEN /* 556 */:
                                return ItemType.NMTOKEN;
                            default:
                                switch (i) {
                                    case StandardNames.XS_NAME /* 558 */:
                                        return ItemType.NAME;
                                    case 559:
                                        return ItemType.NCNAME;
                                    case StandardNames.XS_ID /* 560 */:
                                        return ItemType.f101342ID;
                                    case StandardNames.XS_IDREF /* 561 */:
                                        return ItemType.IDREF;
                                    default:
                                        switch (i) {
                                            case StandardNames.XS_UNTYPED_ATOMIC /* 631 */:
                                                return ItemType.UNTYPED_ATOMIC;
                                            case 632:
                                                return ItemType.ANY_ATOMIC_VALUE;
                                            case StandardNames.XS_YEAR_MONTH_DURATION /* 633 */:
                                                return ItemType.YEAR_MONTH_DURATION;
                                            case 634:
                                                return ItemType.DAY_TIME_DURATION;
                                            default:
                                                throw new SaxonApiException("Unknown atomic type " + this.f101345a.getNamePool().getClarkName(i));
                                        }
                                }
                        }
                }
        }
    }

    public ItemType exposeItemType(net.p110sf.saxon.type.ItemType itemType) {
        return new gae(itemType, this.f101345a);
    }

    public ItemType getArrayType(SequenceType sequenceType) {
        return new gae(new ArrayItemType(sequenceType.getUnderlyingSequenceType()), this.f101345a);
    }

    public ItemType getAtomicType(QName qName) throws SaxonApiException {
        return m63656a(qName.getStructuredQName());
    }

    public ItemType getAttributeTest(QName qName, QName qName2) throws SaxonApiException {
        ContentTypeTest contentTypeTest = null;
        NameTest nameTest = qName != null ? new NameTest(2, this.f101345a.getNamePool().allocateFingerprint(qName.getNamespaceURI(), qName.getLocalName()), this.f101345a.getNamePool()) : null;
        if (qName2 != null) {
            SchemaType schemaType = this.f101345a.getSchemaType(new StructuredQName("", qName2.getNamespaceURI(), qName2.getLocalName()));
            if (schemaType == null) {
                throw new SaxonApiException("Unknown schema type " + qName2.getClarkName());
            }
            contentTypeTest = new ContentTypeTest(2, schemaType, this.f101345a, false);
        }
        return contentTypeTest == null ? nameTest == null ? getNodeKindTest(XdmNodeKind.ATTRIBUTE) : new gae(nameTest, this.f101345a) : nameTest == null ? new gae(contentTypeTest, this.f101345a) : new gae(new CombinedNodeTest(nameTest, 23, contentTypeTest), this.f101345a);
    }

    public ItemType getDocumentTest(ItemType itemType) {
        net.p110sf.saxon.type.ItemType underlyingItemType = itemType.getUnderlyingItemType();
        if (underlyingItemType.getPrimitiveType() == 1) {
            return new gae(new DocumentNodeTest((NodeTest) underlyingItemType), this.f101345a);
        }
        throw new IllegalArgumentException("Supplied itemType is not an element test");
    }

    public ItemType getElementTest(QName qName, QName qName2, boolean z) throws SaxonApiException {
        ContentTypeTest contentTypeTest = null;
        NameTest nameTest = qName != null ? new NameTest(1, this.f101345a.getNamePool().allocateFingerprint(qName.getNamespaceURI(), qName.getLocalName()), this.f101345a.getNamePool()) : null;
        if (qName2 != null) {
            SchemaType schemaType = this.f101345a.getSchemaType(new StructuredQName("", qName2.getNamespaceURI(), qName2.getLocalName()));
            if (schemaType == null) {
                throw new SaxonApiException("Unknown schema type " + qName2.getClarkName());
            }
            contentTypeTest = new ContentTypeTest(1, schemaType, this.f101345a, z);
        }
        return contentTypeTest == null ? nameTest == null ? getNodeKindTest(XdmNodeKind.ELEMENT) : new gae(nameTest, this.f101345a) : nameTest == null ? new gae(contentTypeTest, this.f101345a) : new gae(new CombinedNodeTest(nameTest, 23, contentTypeTest), this.f101345a);
    }

    public XdmItem getExternalObject(Object obj) {
        return (XdmItem) XdmValue.wrap(new ObjectValue(obj));
    }

    public ItemType getExternalObjectType(Class cls) {
        return new gae(this.f101345a.getJavaExternalObjectType(cls), this.f101345a);
    }

    public ItemType getItemType(XdmNodeKind xdmNodeKind, QName qName) {
        int number = xdmNodeKind.getNumber();
        if (number != 1 && number != 2 && number != 7) {
            throw new IllegalArgumentException("Node kind must be element, attribute, or processing-instruction");
        }
        if (number == 7 && qName.getNamespaceURI().isEmpty()) {
            throw new IllegalArgumentException("The name of a processing instruction must not be in a namespace");
        }
        return new gae(new NameTest(number, qName.getNamespaceURI(), qName.getLocalName(), this.f101345a.getNamePool()), this.f101345a);
    }

    public ItemType getMapType(ItemType itemType, SequenceType sequenceType) {
        if (itemType.getUnderlyingItemType() instanceof AtomicType) {
            return new gae(new MapType((AtomicType) itemType.getUnderlyingItemType(), sequenceType.getUnderlyingSequenceType()), this.f101345a);
        }
        throw new IllegalArgumentException("Map key must be atomic");
    }

    public ItemType getNodeKindTest(XdmNodeKind xdmNodeKind) {
        switch (C18473a.f101346a[xdmNodeKind.ordinal()]) {
            case 1:
                return ItemType.DOCUMENT_NODE;
            case 2:
                return ItemType.ELEMENT_NODE;
            case 3:
                return ItemType.ATTRIBUTE_NODE;
            case 4:
                return ItemType.TEXT_NODE;
            case 5:
                return ItemType.COMMENT_NODE;
            case 6:
                return ItemType.PROCESSING_INSTRUCTION_NODE;
            case 7:
                return ItemType.NAMESPACE_NODE;
            default:
                throw new IllegalArgumentException("XdmNodeKind");
        }
    }

    public ItemType getSchemaAttributeTest(QName qName) throws SaxonApiException {
        SchemaDeclaration attributeDeclaration = this.f101345a.getAttributeDeclaration(new StructuredQName("", qName.getNamespaceURI(), qName.getLocalName()));
        if (attributeDeclaration != null) {
            try {
                return new gae(attributeDeclaration.makeSchemaNodeTest(), this.f101345a);
            } catch (MissingComponentException e) {
                throw new SaxonApiException(e);
            }
        }
        throw new SaxonApiException("No global declaration found for attribute " + qName.getClarkName());
    }

    public ItemType getSchemaElementTest(QName qName) throws SaxonApiException {
        SchemaDeclaration elementDeclaration = this.f101345a.getElementDeclaration(qName.getStructuredQName());
        if (elementDeclaration != null) {
            try {
                return new gae(elementDeclaration.makeSchemaNodeTest(), this.f101345a);
            } catch (MissingComponentException e) {
                throw new SaxonApiException(e);
            }
        }
        throw new SaxonApiException("No global declaration found for element " + qName.getClarkName());
    }

    public XdmMap newMap(Map<?, ?> map) throws SaxonApiException {
        try {
            return XdmMap.makeMap(map);
        } catch (IllegalArgumentException e) {
            throw new SaxonApiException(e);
        }
    }

    public ItemType getItemType(XdmItem xdmItem) {
        if (xdmItem.isAtomicValue()) {
            return new gae(((AtomicValue) xdmItem.getUnderlyingValue()).getItemType(), this.f101345a);
        }
        if (xdmItem.isNode()) {
            NodeInfo nodeInfo = (NodeInfo) xdmItem.getUnderlyingValue();
            int nodeKind = nodeInfo.getNodeKind();
            if (nodeInfo.getLocalPart().isEmpty()) {
                return new gae(NodeKindTest.makeNodeKindTest(nodeKind), this.f101345a);
            }
            return new gae(new SameNameTest(nodeInfo), this.f101345a);
        }
        Item underlyingValue = xdmItem.getUnderlyingValue();
        if (underlyingValue instanceof MapItem) {
            return ItemType.ANY_MAP;
        }
        if (underlyingValue instanceof ArrayItem) {
            return ItemType.ANY_ARRAY;
        }
        if (underlyingValue.getGenre() == Genre.EXTERNAL) {
            return new gae(AnyExternalObjectType.THE_INSTANCE, this.f101345a);
        }
        return ItemType.ANY_FUNCTION;
    }
}
