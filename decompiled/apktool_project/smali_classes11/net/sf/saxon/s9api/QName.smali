.class public Lnet/sf/saxon/s9api/QName;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final XS_ANY_ATOMIC_TYPE:Lnet/sf/saxon/s9api/QName;

.field public static final XS_ANY_URI:Lnet/sf/saxon/s9api/QName;

.field public static final XS_BASE64_BINARY:Lnet/sf/saxon/s9api/QName;

.field public static final XS_BOOLEAN:Lnet/sf/saxon/s9api/QName;

.field public static final XS_BYTE:Lnet/sf/saxon/s9api/QName;

.field public static final XS_DATE:Lnet/sf/saxon/s9api/QName;

.field public static final XS_DATE_TIME:Lnet/sf/saxon/s9api/QName;

.field public static final XS_DATE_TIME_STAMP:Lnet/sf/saxon/s9api/QName;

.field public static final XS_DAY_TIME_DURATION:Lnet/sf/saxon/s9api/QName;

.field public static final XS_DECIMAL:Lnet/sf/saxon/s9api/QName;

.field public static final XS_DOUBLE:Lnet/sf/saxon/s9api/QName;

.field public static final XS_DURATION:Lnet/sf/saxon/s9api/QName;

.field public static final XS_ENTITIES:Lnet/sf/saxon/s9api/QName;

.field public static final XS_ENTITY:Lnet/sf/saxon/s9api/QName;

.field public static final XS_FLOAT:Lnet/sf/saxon/s9api/QName;

.field public static final XS_G_DAY:Lnet/sf/saxon/s9api/QName;

.field public static final XS_G_MONTH:Lnet/sf/saxon/s9api/QName;

.field public static final XS_G_MONTH_DAY:Lnet/sf/saxon/s9api/QName;

.field public static final XS_G_YEAR:Lnet/sf/saxon/s9api/QName;

.field public static final XS_G_YEAR_MONTH:Lnet/sf/saxon/s9api/QName;

.field public static final XS_HEX_BINARY:Lnet/sf/saxon/s9api/QName;

.field public static final XS_ID:Lnet/sf/saxon/s9api/QName;

.field public static final XS_IDREF:Lnet/sf/saxon/s9api/QName;

.field public static final XS_IDREFS:Lnet/sf/saxon/s9api/QName;

.field public static final XS_INT:Lnet/sf/saxon/s9api/QName;

.field public static final XS_INTEGER:Lnet/sf/saxon/s9api/QName;

.field public static final XS_LANGUAGE:Lnet/sf/saxon/s9api/QName;

.field public static final XS_LONG:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NAME:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NCNAME:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NMTOKEN:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NMTOKENS:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NON_NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NON_POSITIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NORMALIZED_STRING:Lnet/sf/saxon/s9api/QName;

.field public static final XS_NOTATION:Lnet/sf/saxon/s9api/QName;

.field public static final XS_POSITIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

.field public static final XS_QNAME:Lnet/sf/saxon/s9api/QName;

.field public static final XS_SHORT:Lnet/sf/saxon/s9api/QName;

.field public static final XS_STRING:Lnet/sf/saxon/s9api/QName;

.field public static final XS_TIME:Lnet/sf/saxon/s9api/QName;

.field public static final XS_TOKEN:Lnet/sf/saxon/s9api/QName;

.field public static final XS_UNSIGNED_BYTE:Lnet/sf/saxon/s9api/QName;

.field public static final XS_UNSIGNED_INT:Lnet/sf/saxon/s9api/QName;

.field public static final XS_UNSIGNED_LONG:Lnet/sf/saxon/s9api/QName;

.field public static final XS_UNSIGNED_SHORT:Lnet/sf/saxon/s9api/QName;

.field public static final XS_UNTYPED:Lnet/sf/saxon/s9api/QName;

.field public static final XS_UNTYPED_ATOMIC:Lnet/sf/saxon/s9api/QName;

.field public static final XS_YEAR_MONTH_DURATION:Lnet/sf/saxon/s9api/QName;


# instance fields
.field public final a:Lnet/sf/saxon/om/StructuredQName;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "string"

    const-string v2, "xs"

    const-string v3, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_STRING:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "boolean"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_BOOLEAN:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "decimal"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_DECIMAL:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "float"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_FLOAT:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "double"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_DOUBLE:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "duration"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_DURATION:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "dateTime"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_DATE_TIME:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "time"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_TIME:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "date"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_DATE:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "gYearMonth"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_G_YEAR_MONTH:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "gYear"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_G_YEAR:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "gMonthDay"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_G_MONTH_DAY:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "gDay"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_G_DAY:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "gMonth"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_G_MONTH:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "hexBinary"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_HEX_BINARY:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "base64Binary"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_BASE64_BINARY:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "anyURI"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_ANY_URI:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "QName"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_QNAME:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "NOTATION"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NOTATION:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "integer"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_INTEGER:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "nonPositiveInteger"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NON_POSITIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "negativeInteger"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "long"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_LONG:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "int"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_INT:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "short"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_SHORT:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "byte"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_BYTE:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "nonNegativeInteger"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NON_NEGATIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "positiveInteger"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_POSITIVE_INTEGER:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "unsignedLong"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_UNSIGNED_LONG:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "unsignedInt"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_UNSIGNED_INT:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "unsignedShort"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_UNSIGNED_SHORT:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "unsignedByte"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_UNSIGNED_BYTE:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "normalizedString"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NORMALIZED_STRING:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "token"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_TOKEN:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "language"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_LANGUAGE:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "NMTOKEN"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NMTOKEN:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "NMTOKENS"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NMTOKENS:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "Name"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NAME:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "NCName"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_NCNAME:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "ID"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_ID:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "IDREF"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_IDREF:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "IDREFS"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_IDREFS:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "ENTITY"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_ENTITY:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "ENTITIES"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_ENTITIES:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "untyped"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_UNTYPED:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "untypedAtomic"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_UNTYPED_ATOMIC:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "anyAtomicType"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_ANY_ATOMIC_TYPE:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "yearMonthDuration"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_YEAR_MONTH_DURATION:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "dayTimeDuration"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_DAY_TIME_DURATION:Lnet/sf/saxon/s9api/QName;

    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v1, "dateTimeStamp"

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lnet/sf/saxon/s9api/QName;->XS_DATE_TIME_STAMP:Lnet/sf/saxon/s9api/QName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 11
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local name contains a colon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const/16 v1, 0x3a

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 5
    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v1, v0, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v1, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v1, v0, p1, p2}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-direct {v0, p1, p2, p3}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/s9api/XdmNode;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "{"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingValue()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    .line 17
    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getAllNamespaces()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0, v0, p2}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/StructuredQName;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    return-void
.end method

.method public static fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    const-string v2, ""

    if-ne v0, v1, :cond_2

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing local part in Clark name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No closing \'}\' in Clark name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v3, v2

    :goto_0
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v0, v2, v3, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Supplied Clark name is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromEQName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x51

    const-string v2, ""

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x7b

    if-ne v1, v3, :cond_2

    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v1, v4, :cond_0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing local part in EQName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No closing \'}\' in EQName"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v3, v2

    :goto_0
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v0, v2, v3, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/s9api/QName;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    check-cast p1, Lnet/sf/saxon/s9api/QName;

    iget-object p1, p1, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/om/StructuredQName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getClarkName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEQName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Q{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStructuredQName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->hashCode()I

    move-result p0

    return p0
.end method

.method public isValid(Lnet/sf/saxon/s9api/Processor;)Z
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/QName;->a:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
