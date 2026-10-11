.class public abstract Lnet/sf/saxon/s9api/ItemType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;
    }
.end annotation


# static fields
.field public static final ANY_ARRAY:Lnet/sf/saxon/s9api/ItemType;

.field public static final ANY_ATOMIC_VALUE:Lnet/sf/saxon/s9api/ItemType;

.field public static ANY_FUNCTION:Lnet/sf/saxon/s9api/ItemType;

.field public static ANY_ITEM:Lnet/sf/saxon/s9api/ItemType;

.field public static final ANY_MAP:Lnet/sf/saxon/s9api/ItemType;

.field public static final ANY_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final ANY_URI:Lnet/sf/saxon/s9api/ItemType;

.field public static final ATTRIBUTE_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final BASE64_BINARY:Lnet/sf/saxon/s9api/ItemType;

.field public static final BOOLEAN:Lnet/sf/saxon/s9api/ItemType;

.field public static final BYTE:Lnet/sf/saxon/s9api/ItemType;

.field public static final COMMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final DATE:Lnet/sf/saxon/s9api/ItemType;

.field public static final DATE_TIME:Lnet/sf/saxon/s9api/ItemType;

.field public static final DATE_TIME_STAMP:Lnet/sf/saxon/s9api/ItemType;

.field public static final DAY_TIME_DURATION:Lnet/sf/saxon/s9api/ItemType;

.field public static final DECIMAL:Lnet/sf/saxon/s9api/ItemType;

.field public static final DOCUMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final DOUBLE:Lnet/sf/saxon/s9api/ItemType;

.field public static final DURATION:Lnet/sf/saxon/s9api/ItemType;

.field public static final ELEMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final ENTITY:Lnet/sf/saxon/s9api/ItemType;

.field public static final ERROR:Lnet/sf/saxon/s9api/ItemType;

.field public static final FLOAT:Lnet/sf/saxon/s9api/ItemType;

.field public static final G_DAY:Lnet/sf/saxon/s9api/ItemType;

.field public static final G_MONTH:Lnet/sf/saxon/s9api/ItemType;

.field public static final G_MONTH_DAY:Lnet/sf/saxon/s9api/ItemType;

.field public static final G_YEAR:Lnet/sf/saxon/s9api/ItemType;

.field public static final G_YEAR_MONTH:Lnet/sf/saxon/s9api/ItemType;

.field public static final HEX_BINARY:Lnet/sf/saxon/s9api/ItemType;

.field public static final ID:Lnet/sf/saxon/s9api/ItemType;

.field public static final IDREF:Lnet/sf/saxon/s9api/ItemType;

.field public static final INT:Lnet/sf/saxon/s9api/ItemType;

.field public static final INTEGER:Lnet/sf/saxon/s9api/ItemType;

.field public static final LANGUAGE:Lnet/sf/saxon/s9api/ItemType;

.field public static final LONG:Lnet/sf/saxon/s9api/ItemType;

.field public static final NAME:Lnet/sf/saxon/s9api/ItemType;

.field public static final NAMESPACE_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final NCNAME:Lnet/sf/saxon/s9api/ItemType;

.field public static final NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

.field public static final NMTOKEN:Lnet/sf/saxon/s9api/ItemType;

.field public static final NON_NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

.field public static final NON_POSITIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

.field public static final NORMALIZED_STRING:Lnet/sf/saxon/s9api/ItemType;

.field public static final NOTATION:Lnet/sf/saxon/s9api/ItemType;

.field public static final NUMERIC:Lnet/sf/saxon/s9api/ItemType;

.field public static final POSITIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

.field public static final PROCESSING_INSTRUCTION_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final QNAME:Lnet/sf/saxon/s9api/ItemType;

.field public static final SHORT:Lnet/sf/saxon/s9api/ItemType;

.field public static final STRING:Lnet/sf/saxon/s9api/ItemType;

.field public static final TEXT_NODE:Lnet/sf/saxon/s9api/ItemType;

.field public static final TIME:Lnet/sf/saxon/s9api/ItemType;

.field public static final TOKEN:Lnet/sf/saxon/s9api/ItemType;

.field public static final UNSIGNED_BYTE:Lnet/sf/saxon/s9api/ItemType;

.field public static final UNSIGNED_INT:Lnet/sf/saxon/s9api/ItemType;

.field public static final UNSIGNED_LONG:Lnet/sf/saxon/s9api/ItemType;

.field public static final UNSIGNED_SHORT:Lnet/sf/saxon/s9api/ItemType;

.field public static final UNTYPED_ATOMIC:Lnet/sf/saxon/s9api/ItemType;

.field public static final YEAR_MONTH_DURATION:Lnet/sf/saxon/s9api/ItemType;

.field public static final a:Lnet/sf/saxon/lib/ConversionRules;


# instance fields
.field protected final underlyingType:Lnet/sf/saxon/type/ItemType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/lib/ConversionRules;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ConversionRules;-><init>()V

    sput-object v0, Lnet/sf/saxon/s9api/ItemType;->a:Lnet/sf/saxon/lib/ConversionRules;

    invoke-static {}, Lnet/sf/saxon/type/StringToDouble;->getInstance()Lnet/sf/saxon/type/StringToDouble;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setStringToDoubleConverter(Lnet/sf/saxon/type/StringToDouble;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setNotationSet(Lnet/sf/saxon/om/NotationSet;)V

    invoke-static {}, Lnet/sf/saxon/lib/StandardURIChecker;->getInstance()Lnet/sf/saxon/lib/StandardURIChecker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ConversionRules;->setURIChecker(Lnet/sf/saxon/lib/URIChecker;)V

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$g;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$g;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_ITEM:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$h;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$h;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_FUNCTION:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$i;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$i;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$j;

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ATTRIBUTE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$j;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ATTRIBUTE_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$k;

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->COMMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$k;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->COMMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$l;

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->TEXT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$l;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->TEXT_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$m;

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$m;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ELEMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$n;

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$n;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->DOCUMENT_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$o;

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->NAMESPACE:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$o;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NAMESPACE_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$a;

    sget-object v2, Lnet/sf/saxon/pattern/NodeKindTest;->PROCESSING_INSTRUCTION:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$a;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->PROCESSING_INSTRUCTION_NODE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$b;

    sget-object v2, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$b;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_MAP:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$c;

    sget-object v2, Lnet/sf/saxon/ma/arrays/ArrayItemType;->ANY_ARRAY_TYPE:Lnet/sf/saxon/ma/arrays/ArrayItemType;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$c;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_ARRAY:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$d;

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$d;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_ATOMIC_VALUE:Lnet/sf/saxon/s9api/ItemType;

    new-instance v1, Lnet/sf/saxon/s9api/ItemType$e;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/s9api/ItemType$e;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ERROR:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->STRING:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->BOOLEAN:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->DURATION:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->DATE_TIME:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->DATE:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->TIME:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->G_YEAR_MONTH:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->G_MONTH:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->G_MONTH_DAY:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->G_YEAR:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->G_DAY:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->HEX_BINARY:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->BASE64_BINARY:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ANY_URI:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->QNAME:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NOTATION:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->UNTYPED_ATOMIC:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->DECIMAL:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->FLOAT:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->DOUBLE:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->INTEGER:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NON_POSITIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NON_POSITIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NEGATIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->LONG:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->INT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->INT:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->SHORT:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->BYTE:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NON_NEGATIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NON_NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->POSITIVE_INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->POSITIVE_INTEGER:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_LONG:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_INT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_INT:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_SHORT:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNSIGNED_BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->UNSIGNED_BYTE:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->DAY_TIME_DURATION:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NORMALIZED_STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NORMALIZED_STRING:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->TOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->TOKEN:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->LANGUAGE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->LANGUAGE:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NAME:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NMTOKEN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NMTOKEN:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->NCNAME:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ID:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ID:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->IDREF:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ENTITY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/s9api/ItemType;->ENTITY:Lnet/sf/saxon/s9api/ItemType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME_STAMP:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v1, v0}, Lnet/sf/saxon/s9api/ItemType;->b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/ItemType;->DATE_TIME_STAMP:Lnet/sf/saxon/s9api/ItemType;

    new-instance v0, Lnet/sf/saxon/s9api/ItemType$f;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/s9api/ItemType$f;-><init>(Lnet/sf/saxon/type/ItemType;)V

    sput-object v0, Lnet/sf/saxon/s9api/ItemType;->NUMERIC:Lnet/sf/saxon/s9api/ItemType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/ItemType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    return-void
.end method

.method public static synthetic a()Lnet/sf/saxon/lib/ConversionRules;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/ItemType;->a:Lnet/sf/saxon/lib/ConversionRules;

    return-object v0
.end method

.method public static b(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/s9api/ItemType;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/ItemType$BuiltInAtomicItemType;-><init>(Lnet/sf/saxon/type/BuiltInAtomicType;Lnet/sf/saxon/lib/ConversionRules;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/ItemType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    check-cast p1, Lnet/sf/saxon/s9api/ItemType;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getConversionRules()Lnet/sf/saxon/lib/ConversionRules;
    .locals 0

    sget-object p0, Lnet/sf/saxon/s9api/ItemType;->a:Lnet/sf/saxon/lib/ConversionRules;

    return-object p0
.end method

.method public getTypeName()Lnet/sf/saxon/s9api/QName;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/SchemaType;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/type/SchemaType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v1, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/ItemType;->underlyingType:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public abstract matches(Lnet/sf/saxon/s9api/XdmItem;)Z
.end method

.method public abstract subsumes(Lnet/sf/saxon/s9api/ItemType;)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/ItemType;->getUnderlyingItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/type/SchemaType;

    if-eqz v0, :cond_2

    check-cast p0, Lnet/sf/saxon/type/SchemaType;

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getEQName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Q{http://www.w3.org/2001/XMLSchema}anyType"

    return-object p0

    :cond_1
    const-string v0, "<"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
