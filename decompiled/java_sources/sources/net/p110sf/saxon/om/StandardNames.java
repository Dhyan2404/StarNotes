package net.p110sf.saxon.om;

import androidx.core.app.NotificationCompat;
import androidx.room.EntityUpsertionAdapterKt;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sunia.HTREnginev2.gon;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.HashMap;
import net.p110sf.saxon.lib.NamespaceConstant;

/* loaded from: classes11.dex */
public abstract class StandardNames {
    public static final int DFLT = 0;
    public static final int SAXON = 256;
    public static final int SAXON_ASSIGN = 257;
    public static final String SAXON_ASYCHRONOUS = "{http://saxon.sf.net/}asynchronous";
    public static final int SAXON_DEEP_UPDATE = 259;
    public static final int SAXON_DISTINCT = 278;
    public static final int SAXON_DO = 262;
    public static final int SAXON_DOCTYPE = 263;
    public static final int SAXON_ENTITY_REF = 264;
    public static final String SAXON_EXPLAIN = "{http://saxon.sf.net/}explain";
    public static final int SAXON_ORDER = 279;
    public static final int SAXON_PARAM = 276;
    public static final int SAXON_PREPROCESS = 277;
    public static final int SAXON_TABULATE_MAPS = 265;
    public static final int SAXON_WHILE = 271;
    public static final StructuredQName SQ_XS_INVALID_NAME;
    public static final int XML = 384;
    public static final int XML_BASE = 385;
    public static final int XML_LANG = 387;
    public static final int XML_LANG_TYPE = 389;
    public static final int XML_SPACE = 386;
    public static final int XML_SPACE_TYPE = 6;

    /* renamed from: XS */
    public static final int f100855XS = 512;
    public static final int XSI = 640;
    public static final int XSI_NIL = 642;
    public static final int XSI_NO_NAMESPACE_SCHEMA_LOCATION = 644;
    public static final int XSI_SCHEMA_LOCATION = 643;
    public static final int XSI_SCHEMA_LOCATION_TYPE = 645;
    public static final int XSI_TYPE = 641;
    public static final int XSL = 128;
    public static final int XSL_ACCEPT = 128;
    public static final int XSL_ACCUMULATOR = 129;
    public static final int XSL_ACCUMULATOR_RULE = 130;
    public static final int XSL_ANALYZE_STRING = 131;
    public static final int XSL_APPLY_IMPORTS = 132;
    public static final int XSL_APPLY_TEMPLATES = 133;
    public static final int XSL_ARRAY = 134;
    public static final int XSL_ARRAY_MEMBER = 135;
    public static final int XSL_ASSERT = 136;
    public static final int XSL_ATTRIBUTE = 137;
    public static final int XSL_ATTRIBUTE_SET = 138;
    public static final int XSL_BREAK = 139;
    public static final int XSL_CALL_TEMPLATE = 140;
    public static final int XSL_CATCH = 141;
    public static final int XSL_CHARACTER_MAP = 142;
    public static final int XSL_CHOOSE = 143;
    public static final int XSL_COMMENT = 144;
    public static final int XSL_CONTEXT_ITEM = 145;
    public static final int XSL_COPY = 146;
    public static final int XSL_COPY_OF = 147;
    public static final int XSL_DECIMAL_FORMAT = 148;
    public static final int XSL_DEFAULT_COLLATION = 228;
    public static final int XSL_DEFAULT_MODE = 229;
    public static final int XSL_DEFAULT_VALIDATION = 230;
    public static final int XSL_DOCUMENT = 150;
    public static final int XSL_ELEMENT = 151;
    public static final int XSL_EVALUATE = 153;
    public static final int XSL_EXCLUDE_RESULT_PREFIXES = 231;
    public static final int XSL_EXPAND_TEXT = 232;
    public static final int XSL_EXPOSE = 152;
    public static final int XSL_EXTENSION_ELEMENT_PREFIXES = 233;
    public static final int XSL_FALLBACK = 154;
    public static final int XSL_FORK = 159;
    public static final int XSL_FOR_EACH = 155;
    public static final int XSL_FOR_EACH_GROUP = 156;
    public static final int XSL_FUNCTION = 160;
    public static final int XSL_GLOBAL_CONTEXT_ITEM = 161;
    public static final int XSL_IF = 162;
    public static final int XSL_IMPORT = 163;
    public static final int XSL_IMPORT_SCHEMA = 164;
    public static final int XSL_INCLUDE = 165;
    public static final int XSL_INHERIT_NAMESPACES = 234;
    public static final int XSL_ITEM_TYPE = 166;
    public static final int XSL_ITERATE = 168;
    public static final int XSL_KEY = 169;
    public static final int XSL_MAP = 170;
    public static final int XSL_MAP_ENTRY = 171;
    public static final int XSL_MATCH = 172;
    public static final int XSL_MATCHING_SUBSTRING = 173;
    public static final int XSL_MERGE = 174;
    public static final int XSL_MERGE_ACTION = 175;
    public static final int XSL_MERGE_KEY = 176;
    public static final int XSL_MERGE_SOURCE = 178;
    public static final int XSL_MESSAGE = 179;
    public static final int XSL_MODE = 180;
    public static final int XSL_NAMESPACE = 181;
    public static final int XSL_NAMESPACE_ALIAS = 182;
    public static final int XSL_NEXT_ITERATION = 183;
    public static final int XSL_NEXT_MATCH = 184;
    public static final int XSL_NON_MATCHING_SUBSTRING = 185;
    public static final int XSL_NUMBER = 186;
    public static final int XSL_ON_COMPLETION = 188;
    public static final int XSL_ON_EMPTY = 189;
    public static final int XSL_ON_NON_EMPTY = 190;
    public static final int XSL_OTHERWISE = 187;
    public static final int XSL_OUTPUT = 191;
    public static final int XSL_OUTPUT_CHARACTER = 193;
    public static final int XSL_OVERRIDE = 192;
    public static final int XSL_PACKAGE = 194;
    public static final int XSL_PARAM = 195;
    public static final int XSL_PERFORM_SORT = 198;
    public static final int XSL_PRESERVE_SPACE = 199;
    public static final int XSL_PROCESSING_INSTRUCTION = 200;
    public static final int XSL_RESULT_DOCUMENT = 201;
    public static final int XSL_SEQUENCE = 202;
    public static final int XSL_SORT = 203;
    public static final int XSL_SOURCE_DOCUMENT = 204;
    public static final int XSL_STRIP_SPACE = 205;
    public static final int XSL_STYLESHEET = 208;
    public static final int XSL_SWITCH = 209;
    public static final int XSL_TEMPLATE = 210;
    public static final int XSL_TEXT = 211;
    public static final int XSL_TRANSFORM = 212;
    public static final int XSL_TRY = 213;
    public static final int XSL_TYPE = 235;
    public static final int XSL_USE_ATTRIBUTE_SETS = 236;
    public static final int XSL_USE_PACKAGE = 214;
    public static final int XSL_USE_WHEN = 237;
    public static final int XSL_VALIDATION = 238;
    public static final int XSL_VALUE_OF = 215;
    public static final int XSL_VARIABLE = 218;
    public static final int XSL_VERSION = 239;
    public static final int XSL_WHEN = 219;
    public static final int XSL_WHERE_POPULATED = 220;
    public static final int XSL_WITH_PARAM = 221;
    public static final int XSL_XPATH_DEFAULT_NAMESPACE = 240;
    public static final int XS_ALL = 576;
    public static final int XS_ALTERNATIVE = 577;
    public static final int XS_ANNOTATION = 578;
    public static final int XS_ANY = 579;
    public static final int XS_ANY_ATOMIC_TYPE = 632;
    public static final int XS_ANY_ATTRIBUTE = 580;
    public static final int XS_ANY_SIMPLE_TYPE = 573;
    public static final int XS_ANY_TYPE = 572;
    public static final int XS_ANY_URI = 529;
    public static final int XS_APPINFO = 581;
    public static final int XS_ASSERT = 582;
    public static final int XS_ASSERTION = 583;
    public static final int XS_ATTRIBUTE = 584;
    public static final int XS_ATTRIBUTE_GROUP = 585;
    public static final int XS_BASE64_BINARY = 528;
    public static final int XS_BOOLEAN = 514;
    public static final int XS_BYTE = 539;
    public static final int XS_CHOICE = 586;
    public static final int XS_COMPLEX_CONTENT = 587;
    public static final int XS_COMPLEX_TYPE = 588;
    public static final int XS_DATE = 521;
    public static final int XS_DATE_TIME = 519;
    public static final int XS_DATE_TIME_STAMP = 565;
    public static final int XS_DAY_TIME_DURATION = 634;
    public static final int XS_DECIMAL = 515;
    public static final int XS_DEFAULT_OPEN_CONTENT = 589;
    public static final int XS_DOCUMENTATION = 590;
    public static final int XS_DOUBLE = 517;
    public static final int XS_DURATION = 518;
    public static final int XS_ELEMENT = 591;
    public static final int XS_ENTITIES = 564;
    public static final int XS_ENTITY = 563;
    public static final int XS_ENUMERATION = 592;
    public static final int XS_ERROR = 575;
    public static final int XS_EXPLICIT_TIMEZONE = 622;
    public static final int XS_EXTENSION = 593;
    public static final int XS_FIELD = 594;
    public static final int XS_FLOAT = 516;
    public static final int XS_FRACTION_DIGITS = 595;
    public static final int XS_GROUP = 596;
    public static final int XS_G_DAY = 525;
    public static final int XS_G_MONTH = 526;
    public static final int XS_G_MONTH_DAY = 524;
    public static final int XS_G_YEAR = 523;
    public static final int XS_G_YEAR_MONTH = 522;
    public static final int XS_HEX_BINARY = 527;
    public static final int XS_ID = 560;
    public static final int XS_IDREF = 561;
    public static final int XS_IDREFS = 562;
    public static final int XS_IMPORT = 597;
    public static final int XS_INCLUDE = 598;
    public static final int XS_INT = 537;
    public static final int XS_INTEGER = 533;
    public static final int XS_KEY = 599;
    public static final int XS_KEYREF = 600;
    public static final int XS_LANGUAGE = 555;
    public static final int XS_LENGTH = 601;
    public static final int XS_LIST = 602;
    public static final int XS_LONG = 536;
    public static final int XS_MAX_EXCLUSIVE = 603;
    public static final int XS_MAX_INCLUSIVE = 604;
    public static final int XS_MAX_LENGTH = 605;
    public static final int XS_MAX_SCALE = 606;
    public static final int XS_MIN_EXCLUSIVE = 607;
    public static final int XS_MIN_INCLUSIVE = 608;
    public static final int XS_MIN_LENGTH = 609;
    public static final int XS_MIN_SCALE = 610;
    public static final int XS_NAME = 558;
    public static final int XS_NCNAME = 559;
    public static final int XS_NEGATIVE_INTEGER = 535;
    public static final int XS_NMTOKEN = 556;
    public static final int XS_NMTOKENS = 557;
    public static final int XS_NON_NEGATIVE_INTEGER = 540;
    public static final int XS_NON_POSITIVE_INTEGER = 534;
    public static final int XS_NORMALIZED_STRING = 553;
    public static final int XS_NOTATION = 531;
    public static final int XS_NUMERIC = 635;
    public static final int XS_OPEN_CONTENT = 612;
    public static final int XS_OVERRIDE = 613;
    public static final int XS_PATTERN = 614;
    public static final int XS_POSITIVE_INTEGER = 541;
    public static final int XS_QNAME = 530;
    public static final int XS_REDEFINE = 615;
    public static final int XS_RESTRICTION = 616;
    public static final int XS_SCHEMA = 617;
    public static final int XS_SELECTOR = 618;
    public static final int XS_SEQUENCE = 619;
    public static final int XS_SHORT = 538;
    public static final int XS_SIMPLE_CONTENT = 620;
    public static final int XS_SIMPLE_TYPE = 621;
    public static final int XS_STRING = 513;
    public static final int XS_TIME = 520;
    public static final int XS_TOKEN = 554;
    public static final int XS_TOTAL_DIGITS = 623;
    public static final int XS_UNION = 624;
    public static final int XS_UNIQUE = 625;
    public static final int XS_UNSIGNED_BYTE = 545;
    public static final int XS_UNSIGNED_INT = 543;
    public static final int XS_UNSIGNED_LONG = 542;
    public static final int XS_UNSIGNED_SHORT = 544;
    public static final int XS_UNTYPED = 630;
    public static final int XS_UNTYPED_ATOMIC = 631;
    public static final int XS_WHITE_SPACE = 626;
    public static final int XS_YEAR_MONTH_DURATION = 633;
    public static final int XS_notation = 611;

    /* renamed from: a */
    public static final int f100856a = 0;

    /* renamed from: b */
    public static final int f100857b = 1;

    /* renamed from: c */
    public static final int f100858c = 2;

    /* renamed from: d */
    public static final int f100859d = 3;

    /* renamed from: e */
    public static final int f100860e = 4;

    /* renamed from: f */
    public static final int f100861f = 5;

    /* renamed from: g */
    public static final String f100862g = "{http://saxon.sf.net/}";
    public static final int XML_ID = 388;
    public static final NodeName XML_ID_NAME = new FingerprintedQName("xml", "http://www.w3.org/XML/1998/namespace", "id", XML_ID);

    /* renamed from: h */
    public static final String[] f100863h = new String[1023];

    /* renamed from: i */
    public static final HashMap<String, Integer> f100864i = new HashMap<>(1023);
    public static StructuredQName[] errorVariables = {new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "code"), new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "description"), new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "value"), new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "module"), new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "line-number"), new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "column-number"), new StructuredQName(NotificationCompat.CATEGORY_ERROR, NamespaceConstant.ERR, "additional")};

    static {
        m63413d(128, "accept");
        m63413d(129, "accumulator");
        m63413d(130, "accumulator-rule");
        m63413d(131, "analyze-string");
        m63413d(132, Constants.ELEMNAME_APPLY_IMPORTS_STRING);
        m63413d(133, Constants.ELEMNAME_APPLY_TEMPLATES_STRING);
        m63413d(128, "accept");
        m63413d(134, "array");
        m63413d(135, "array-member");
        m63413d(136, "assert");
        m63413d(137, "attribute");
        m63413d(138, "attribute-set");
        m63413d(139, "break");
        m63413d(140, Constants.ELEMNAME_CALLTEMPLATE_STRING);
        m63413d(141, "catch");
        m63413d(142, "character-map");
        m63413d(143, Constants.ELEMNAME_CHOOSE_STRING);
        m63413d(144, "comment");
        m63413d(145, "context-item");
        m63413d(146, "copy");
        m63413d(147, Constants.ELEMNAME_COPY_OF_STRING);
        m63413d(148, Constants.ELEMNAME_DECIMALFORMAT_STRING);
        m63413d(150, "document");
        m63413d(151, "element");
        m63413d(153, "evaluate");
        m63413d(152, "expose");
        m63413d(154, Constants.ELEMNAME_FALLBACK_STRING);
        m63413d(155, Constants.ELEMNAME_FOREACH_STRING);
        m63413d(156, "for-each-group");
        m63413d(159, "fork");
        m63413d(160, Constants.EXSLT_ELEMNAME_FUNCTION_STRING);
        m63413d(161, "global-context-item");
        m63413d(162, Constants.ELEMNAME_IF_STRING);
        m63413d(163, Constants.ELEMNAME_IMPORT_STRING);
        m63413d(164, "import-schema");
        m63413d(165, "include");
        m63413d(166, "item-type");
        m63413d(168, "iterate");
        m63413d(169, "key");
        m63413d(170, Constant.MAP_TAG);
        m63413d(171, "map-entry");
        m63413d(172, Constants.ATTRNAME_MATCH);
        m63413d(173, "matching-substring");
        m63413d(174, "merge");
        m63413d(178, "merge-source");
        m63413d(175, "merge-action");
        m63413d(176, "merge-key");
        m63413d(179, "message");
        m63413d(180, Constants.ATTRNAME_MODE);
        m63413d(184, "next-match");
        m63413d(186, "number");
        m63413d(181, Constants.ATTRNAME_NAMESPACE);
        m63413d(182, Constants.ELEMNAME_NSALIAS_STRING);
        m63413d(183, "next-iteration");
        m63413d(185, "non-matching-substring");
        m63413d(188, "on-completion");
        m63413d(189, "on-empty");
        m63413d(190, "on-non-empty");
        m63413d(187, Constants.ELEMNAME_OTHERWISE_STRING);
        m63413d(191, Constants.ELEMNAME_OUTPUT_STRING);
        m63413d(193, "output-character");
        m63413d(192, "override");
        m63413d(194, "package");
        m63413d(195, Constants.ELEMNAME_PARAMVARIABLE_STRING);
        m63413d(198, "perform-sort");
        m63413d(199, Constants.ELEMNAME_PRESERVESPACE_STRING);
        m63413d(200, Constants.ELEMNAME_PI_STRING);
        m63413d(201, "result-document");
        m63413d(202, "sequence");
        m63413d(203, Constants.ELEMNAME_SORT_STRING);
        m63413d(204, "source-document");
        m63413d(205, Constants.ELEMNAME_STRIPSPACE_STRING);
        m63413d(208, Constants.ELEMNAME_STYLESHEET_STRING);
        m63413d(209, "switch");
        m63413d(210, "template");
        m63413d(211, "text");
        m63413d(212, Constants.ELEMNAME_TRANSFORM_STRING);
        m63413d(213, "try");
        m63413d(214, "use-package");
        m63413d(215, Constants.ELEMNAME_VALUEOF_STRING);
        m63413d(218, Constants.ELEMNAME_VARIABLE_STRING);
        m63413d(221, Constants.ELEMNAME_WITHPARAM_STRING);
        m63413d(219, Constants.ELEMNAME_WHEN_STRING);
        m63413d(220, "where-populated");
        m63413d(228, "default-collation");
        m63413d(229, "default-mode");
        m63413d(230, "default-validation");
        m63413d(232, "expand-text");
        m63413d(231, Constants.ATTRNAME_EXCLUDE_RESULT_PREFIXES);
        m63413d(233, Constants.ATTRNAME_EXTENSIONELEMENTPREFIXES);
        m63413d(234, "inherit-namespaces");
        m63413d(235, "type");
        m63413d(236, Constants.ATTRNAME_USEATTRIBUTESETS);
        m63413d(237, "use-when");
        m63413d(238, "validation");
        m63413d(239, "version");
        m63413d(240, "xpath-default-namespace");
        m63410a(257, "assign");
        m63410a(259, "deep-update");
        m63410a(278, "distinct");
        m63410a(262, "do");
        m63410a(263, "doctype");
        m63410a(264, "entity-ref");
        m63410a(279, Constants.ATTRNAME_ORDER);
        m63410a(271, "while");
        m63410a(276, Constants.ELEMNAME_PARAMVARIABLE_STRING);
        m63410a(277, "preprocess");
        m63411b(XML_BASE, gon.f71271X);
        m63411b(XML_SPACE, "space");
        m63411b(XML_LANG, "lang");
        m63411b(XML_ID, "id");
        m63411b(XML_LANG_TYPE, "_langType");
        m63411b(6, "_spaceType");
        m63414e(513, "string");
        m63414e(514, "boolean");
        m63414e(515, "decimal");
        m63414e(516, "float");
        m63414e(517, "double");
        m63414e(518, "duration");
        m63414e(519, "dateTime");
        m63414e(520, "time");
        m63414e(521, "date");
        m63414e(522, "gYearMonth");
        m63414e(XS_G_YEAR, "gYear");
        m63414e(524, "gMonthDay");
        m63414e(XS_G_DAY, "gDay");
        m63414e(XS_G_MONTH, "gMonth");
        m63414e(527, "hexBinary");
        m63414e(XS_BASE64_BINARY, "base64Binary");
        m63414e(529, "anyURI");
        m63414e(530, "QName");
        m63414e(531, "NOTATION");
        m63414e(635, "numeric");
        m63414e(XS_INTEGER, "integer");
        m63414e(534, "nonPositiveInteger");
        m63414e(XS_NEGATIVE_INTEGER, "negativeInteger");
        m63414e(XS_LONG, "long");
        m63414e(537, "int");
        m63414e(538, "short");
        m63414e(539, "byte");
        m63414e(XS_NON_NEGATIVE_INTEGER, "nonNegativeInteger");
        m63414e(XS_POSITIVE_INTEGER, "positiveInteger");
        m63414e(542, "unsignedLong");
        m63414e(XS_UNSIGNED_INT, "unsignedInt");
        m63414e(XS_UNSIGNED_SHORT, "unsignedShort");
        m63414e(XS_UNSIGNED_BYTE, "unsignedByte");
        m63414e(XS_NORMALIZED_STRING, "normalizedString");
        m63414e(554, "token");
        m63414e(XS_LANGUAGE, "language");
        m63414e(XS_NMTOKEN, "NMTOKEN");
        m63414e(557, "NMTOKENS");
        m63414e(XS_NAME, "Name");
        m63414e(559, "NCName");
        m63414e(XS_ID, "ID");
        m63414e(XS_IDREF, "IDREF");
        m63414e(562, "IDREFS");
        m63414e(XS_ENTITY, "ENTITY");
        m63414e(XS_ENTITIES, "ENTITIES");
        m63414e(XS_DATE_TIME_STAMP, "dateTimeStamp");
        m63414e(572, "anyType");
        m63414e(XS_ANY_SIMPLE_TYPE, "anySimpleType");
        m63414e(575, "error");
        m63414e(576, "all");
        m63414e(577, "alternative");
        m63414e(XS_ANNOTATION, "annotation");
        m63414e(XS_ANY, "any");
        m63414e(XS_ANY_ATTRIBUTE, "anyAttribute");
        m63414e(XS_APPINFO, "appinfo");
        m63414e(582, "assert");
        m63414e(XS_ASSERTION, "assertion");
        m63414e(XS_ATTRIBUTE, "attribute");
        m63414e(XS_ATTRIBUTE_GROUP, "attributeGroup");
        m63414e(XS_CHOICE, "choice");
        m63414e(587, "complexContent");
        m63414e(XS_COMPLEX_TYPE, "complexType");
        m63414e(XS_DEFAULT_OPEN_CONTENT, "defaultOpenContent");
        m63414e(XS_DOCUMENTATION, "documentation");
        m63414e(XS_ELEMENT, "element");
        m63414e(592, "enumeration");
        m63414e(622, "explicitTimezone");
        m63414e(XS_EXTENSION, "extension");
        m63414e(XS_FIELD, "field");
        m63414e(XS_FRACTION_DIGITS, "fractionDigits");
        m63414e(XS_GROUP, "group");
        m63414e(597, Constants.ELEMNAME_IMPORT_STRING);
        m63414e(XS_INCLUDE, "include");
        m63414e(XS_KEY, "key");
        m63414e(600, "keyref");
        m63414e(601, "length");
        m63414e(602, "list");
        m63414e(603, "maxExclusive");
        m63414e(604, "maxInclusive");
        m63414e(605, "maxLength");
        m63414e(606, "maxScale");
        m63414e(607, "minExclusive");
        m63414e(608, "minInclusive");
        m63414e(609, "minLength");
        m63414e(610, "minScale");
        m63414e(611, "notation");
        m63414e(612, "openContent");
        m63414e(613, "override");
        m63414e(XS_PATTERN, "pattern");
        m63414e(615, "redefine");
        m63414e(XS_RESTRICTION, "restriction");
        m63414e(617, "schema");
        m63414e(XS_SELECTOR, IStyleSheet.CLASS_SELECTOR);
        m63414e(XS_SEQUENCE, "sequence");
        m63414e(XS_SIMPLE_CONTENT, "simpleContent");
        m63414e(XS_SIMPLE_TYPE, "simpleType");
        m63414e(XS_TOTAL_DIGITS, "totalDigits");
        m63414e(XS_UNION, "union");
        m63414e(XS_UNIQUE, EntityUpsertionAdapterKt.f10049b);
        m63414e(XS_WHITE_SPACE, "whiteSpace");
        m63414e(630, "untyped");
        m63414e(XS_UNTYPED_ATOMIC, "untypedAtomic");
        m63414e(632, "anyAtomicType");
        m63414e(XS_YEAR_MONTH_DURATION, "yearMonthDuration");
        m63414e(634, "dayTimeDuration");
        m63412c(XSI_TYPE, "type");
        m63412c(642, "nil");
        m63412c(643, "schemaLocation");
        m63412c(XSI_NO_NAMESPACE_SCHEMA_LOCATION, "noNamespaceSchemaLocation");
        m63412c(XSI_SCHEMA_LOCATION_TYPE, "anonymous_schemaLocationType");
        SQ_XS_INVALID_NAME = new StructuredQName("xs", "http://www.w3.org/2001/XMLSchema", "invalid-name");
    }

    /* renamed from: a */
    public static void m63410a(int i, String str) {
        f100863h[i] = str;
        f100864i.put(f100862g + str, Integer.valueOf(i));
    }

    /* renamed from: b */
    public static void m63411b(int i, String str) {
        f100863h[i] = str;
        f100864i.put("{http://www.w3.org/XML/1998/namespace}" + str, Integer.valueOf(i));
    }

    /* renamed from: c */
    public static void m63412c(int i, String str) {
        f100863h[i] = str;
        f100864i.put("{http://www.w3.org/2001/XMLSchema-instance}" + str, Integer.valueOf(i));
    }

    /* renamed from: d */
    public static void m63413d(int i, String str) {
        f100863h[i] = str;
        f100864i.put("{http://www.w3.org/1999/XSL/Transform}" + str, Integer.valueOf(i));
    }

    /* renamed from: e */
    public static void m63414e(int i, String str) {
        f100863h[i] = str;
        f100864i.put("{http://www.w3.org/2001/XMLSchema}" + str, Integer.valueOf(i));
    }

    public static String getClarkName(int i) {
        String uri = getURI(i);
        if (uri.isEmpty()) {
            return getLocalName(i);
        }
        return '{' + uri + '}' + getLocalName(i);
    }

    public static String getDisplayName(int i) {
        if (i == -1) {
            return "(anonymous type)";
        }
        if (i > 1023) {
            return MotionUtils.f31761c + i + ')';
        }
        if ((i >> 7) == 0) {
            return getLocalName(i);
        }
        return getPrefix(i) + ':' + getLocalName(i);
    }

    public static int getFingerprint(String str, String str2) {
        return f100864i.getOrDefault('{' + str + '}' + str2, -1).intValue();
    }

    public static String getLocalName(int i) {
        return f100863h[i];
    }

    public static String getPrefix(int i) {
        int i2 = i >> 7;
        if (i2 == 0) {
            return "";
        }
        if (i2 == 1) {
            return "xsl";
        }
        if (i2 == 2) {
            return "saxon";
        }
        if (i2 == 3) {
            return "xml";
        }
        if (i2 == 4) {
            return "xs";
        }
        if (i2 != 5) {
            return null;
        }
        return "xsi";
    }

    public static StructuredQName getStructuredQName(int i) {
        return new StructuredQName(getPrefix(i), getURI(i), getLocalName(i));
    }

    public static String getURI(int i) {
        int i2 = i >> 7;
        if (i2 == 0) {
            return "";
        }
        if (i2 == 1) {
            return "http://www.w3.org/1999/XSL/Transform";
        }
        if (i2 == 2) {
            return NamespaceConstant.SAXON;
        }
        if (i2 == 3) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        if (i2 == 4) {
            return "http://www.w3.org/2001/XMLSchema";
        }
        if (i2 == 5) {
            return "http://www.w3.org/2001/XMLSchema-instance";
        }
        throw new IllegalArgumentException("Unknown system fingerprint " + i);
    }

    public static StructuredQName getUnprefixedQName(int i) {
        return new StructuredQName("", getURI(i), getLocalName(i));
    }
}
