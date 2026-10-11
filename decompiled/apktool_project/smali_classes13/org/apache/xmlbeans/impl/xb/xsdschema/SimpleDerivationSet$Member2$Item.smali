.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Item"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_LIST:I = 0x4

.field public static final INT_RESTRICTION:I = 0x3

.field public static final INT_UNION:I = 0x5

.field public static final LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "anonf38etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->type:Lorg/apache/xmlbeans/SchemaType;

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->LIST:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->UNION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl;->RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/SimpleDerivationSet$Member2$Item;->RESTRICTION:Lorg/apache/xmlbeans/impl/xb/xsdschema/DerivationControl$Enum;

    return-void
.end method
