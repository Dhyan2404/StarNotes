.class public interface abstract Lcom/microsoft/schemas/vml/STExt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STExt$Enum;
    }
.end annotation


# static fields
.field public static final BACKWARD_COMPATIBLE:Lcom/microsoft/schemas/vml/STExt$Enum;

.field public static final EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_BACKWARD_COMPATIBLE:I = 0x3

.field public static final INT_EDIT:I = 0x2

.field public static final INT_VIEW:I = 0x1

.field public static final VIEW:Lcom/microsoft/schemas/vml/STExt$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stext2fe5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "view"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STExt$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STExt$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->VIEW:Lcom/microsoft/schemas/vml/STExt$Enum;

    const-string v0, "edit"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STExt$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STExt$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->EDIT:Lcom/microsoft/schemas/vml/STExt$Enum;

    const-string v0, "backwardCompatible"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STExt$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STExt$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STExt;->BACKWARD_COMPATIBLE:Lcom/microsoft/schemas/vml/STExt$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
