.class public final Lnet/sf/saxon/value/SequenceType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

.field public static final ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

.field public static final EMPTY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

.field public static final FUNCTION_ITEM_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

.field public static final NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

.field public static final NON_EMPTY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_ANY_URI:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_BASE64_BINARY:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_BYTE:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_DATE:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_DATE_TIME:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_DAY_TIME_DURATION:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_DECIMAL:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_DOCUMENT_NODE:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_DOUBLE:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_DURATION:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_FLOAT:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_FUNCTION_ITEM:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_G_DAY:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_G_MONTH:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_G_MONTH_DAY:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_G_YEAR:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_G_YEAR_MONTH:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_HEX_BINARY:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_INTEGER:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_NODE:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_NOTATION:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_NUMERIC:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_QNAME:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_SHORT:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_STRING:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_TIME:Lnet/sf/saxon/value/SequenceType;

.field public static final OPTIONAL_YEAR_MONTH_DURATION:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_BYTE:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_DECIMAL:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_DOUBLE:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_FLOAT:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_FUNCTION:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_NODE:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_NUMERIC:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_QNAME:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_SHORT:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

.field public static final SINGLE_UNTYPED_ATOMIC:Lnet/sf/saxon/value/SequenceType;

.field public static final STRING_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

.field public static final VOID:Lnet/sf/saxon/value/SequenceType;


# instance fields
.field public final a:Lnet/sf/saxon/type/ItemType;

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/AnyItemType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/AnyItemType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/type/AnyItemType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->ATOMIC_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_UNTYPED_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_STRING:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_INTEGER:Lnet/sf/saxon/value/SequenceType;

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_DECIMAL:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_INTEGER:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_SHORT:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_SHORT:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_BYTE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BYTE:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_DOUBLE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DOUBLE:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    sput-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_FLOAT:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_FLOAT:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v2}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DECIMAL:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ANY_URI:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DATE:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_TIME:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_YEAR:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_YEAR_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_YEAR_MONTH:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_MONTH:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_MONTH_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_MONTH_DAY:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->G_DAY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_G_DAY:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DATE_TIME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DATE_TIME:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DURATION:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->YEAR_MONTH_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_YEAR_MONTH_DURATION:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DAY_TIME_DURATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DAY_TIME_DURATION:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    sput-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_QNAME:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_QNAME:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NOTATION:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_NOTATION:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->BASE64_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_BASE64_BINARY:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->HEX_BINARY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v1}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_HEX_BINARY:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v1

    const/16 v2, 0x6000

    invoke-static {v1, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_NUMERIC:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v1

    const/16 v3, 0x4000

    invoke-static {v1, v3}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_NUMERIC:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_NODE:Lnet/sf/saxon/value/SequenceType;

    sget-object v1, Lnet/sf/saxon/pattern/NodeKindTest;->DOCUMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_DOCUMENT_NODE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/pattern/AnyNodeTest;->getInstance()Lnet/sf/saxon/pattern/AnyNodeTest;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/pattern/NodeTest;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    sput-object v1, Lnet/sf/saxon/value/SequenceType;->NODE_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0}, Lnet/sf/saxon/type/BuiltInAtomicType;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->STRING_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    sget-object v0, Lnet/sf/saxon/type/AnyFunctionType;->ANY_FUNCTION:Lnet/sf/saxon/type/AnyFunctionType;

    invoke-static {v0, v3}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->SINGLE_FUNCTION:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v0

    invoke-static {v0, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_FUNCTION_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/AnyFunctionType;->getInstance()Lnet/sf/saxon/type/AnyFunctionType;

    move-result-object v0

    const v1, 0xe000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->FUNCTION_ITEM_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->EMPTY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/AnyItemType;->getInstance()Lnet/sf/saxon/type/AnyItemType;

    move-result-object v0

    const v1, 0xc000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->NON_EMPTY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object v0

    const v1, 0x8000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/SequenceType;->VOID:Lnet/sf/saxon/value/SequenceType;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/ItemType;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    instance-of p1, p1, Lnet/sf/saxon/type/ErrorType;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    iput p1, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    goto :goto_0

    :cond_0
    iput p2, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    :goto_0
    return-void
.end method

.method public static makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;

    const/16 v1, 0x4000

    if-eq p1, v1, :cond_3

    const/16 v1, 0x6000

    if-eq p1, v1, :cond_2

    const v1, 0xc000

    if-eq p1, v1, :cond_1

    const v1, 0xe000

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;->zeroOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;->oneOrMore()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;->zeroOrOne()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {v0}, Lnet/sf/saxon/type/ItemTypeWithSequenceTypeCache;->one()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/16 v0, 0x2000

    if-ne p1, v0, :cond_5

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->EMPTY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    return-object p0

    :cond_5
    new-instance v0, Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/SequenceType;-><init>(Lnet/sf/saxon/type/ItemType;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/value/SequenceType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    check-cast p1, Lnet/sf/saxon/value/SequenceType;

    iget-object v1, p1, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    iget p1, p1, Lnet/sf/saxon/value/SequenceType;->b:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public explainMismatch(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/GroundedValue;",
            "Lnet/sf/saxon/type/TypeHierarchy;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v3, v1, p2}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->ordinal(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " item is not an instance of the required type"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-interface {p0, v1, p2}, Lnet/sf/saxon/type/ItemType;->explainMismatch(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez v0, :cond_5

    iget p1, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "The type does not allow an empty sequence"

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_5
    if-le v0, v2, :cond_6

    iget p0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "The type does not allow a sequence of more than one item"

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    return p0
.end method

.method public getPrimaryType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public isSameType(Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 2

    iget v0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    iget v1, p1, Lnet/sf/saxon/value/SequenceType;->b:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    iget-object p1, p1, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p2, p0, p1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z
    .locals 4

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v3, v2, p2}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    if-nez v1, :cond_2

    iget p1, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    const/4 p1, 0x1

    if-le v1, p1, :cond_3

    iget p0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, p1

    :cond_4
    return v0
.end method

.method public toAlphaCode()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/type/AlphaCode;->fromSequenceType(Lnet/sf/saxon/value/SequenceType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toExportString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const-string p0, "empty-sequence()"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->toExportString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->getOccurrenceIndicator(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const-string p0, "empty-sequence()"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/value/SequenceType;->a:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/value/SequenceType;->b:I

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->getOccurrenceIndicator(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
