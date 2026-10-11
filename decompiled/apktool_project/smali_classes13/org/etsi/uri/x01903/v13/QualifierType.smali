.class public interface abstract Lorg/etsi/uri/x01903/v13/QualifierType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/etsi/uri/x01903/v13/QualifierType$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/etsi/uri/x01903/v13/QualifierType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_OID_AS_URI:I = 0x1

.field public static final INT_OID_AS_URN:I = 0x2

.field public static final OID_AS_URI:Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

.field public static final OID_AS_URN:Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "qualifiertypec1c6type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/etsi/uri/x01903/v13/QualifierType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/QualifierType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "OIDAsURI"

    invoke-static {v0}, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;->forString(Ljava/lang/String;)Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/QualifierType;->OID_AS_URI:Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    const-string v0, "OIDAsURN"

    invoke-static {v0}, Lorg/etsi/uri/x01903/v13/QualifierType$Enum;->forString(Ljava/lang/String;)Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    move-result-object v0

    sput-object v0, Lorg/etsi/uri/x01903/v13/QualifierType;->OID_AS_URN:Lorg/etsi/uri/x01903/v13/QualifierType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
