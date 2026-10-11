.class public final Lorg/etsi/uri/x01903/v13/QualifierType$Enum;
.super Lorg/apache/xmlbeans/StringEnumAbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/etsi/uri/x01903/v13/QualifierType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_OID_AS_URI:I = 0x1

.field static final INT_OID_AS_URN:I = 0x2

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    new-instance v1, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    const-string v2, "OIDAsURI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    const-string v3, "OIDAsURN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v1, v2}, [Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;-><init>([Lorg/apache/xmlbeans/StringEnumAbstractBase;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/StringEnumAbstractBase;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/etsi/uri/x01903/v13/QualifierType$Enum;
    .locals 1

    sget-object v0, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forInt(I)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/etsi/uri/x01903/v13/QualifierType$Enum;
    .locals 1

    sget-object v0, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;->table:Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;

    invoke-virtual {v0, p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase$Table;->forString(Ljava/lang/String;)Lorg/apache/xmlbeans/StringEnumAbstractBase;

    move-result-object p0

    check-cast p0, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;->forInt(I)Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    move-result-object p0

    return-object p0
.end method
