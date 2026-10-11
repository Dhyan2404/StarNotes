.class public interface abstract Lcom/microsoft/schemas/vml/STImageAspect;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/vml/STImageAspect$Enum;
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/microsoft/schemas/vml/STImageAspect$Enum;

.field public static final AT_MOST:Lcom/microsoft/schemas/vml/STImageAspect$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/vml/STImageAspect;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE:Lcom/microsoft/schemas/vml/STImageAspect$Enum;

.field public static final INT_AT_LEAST:I = 0x3

.field public static final INT_AT_MOST:I = 0x2

.field public static final INT_IGNORE:I = 0x1

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stimageaspectf0d7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/vml/STImageAspect;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STImageAspect;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "ignore"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STImageAspect$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STImageAspect$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STImageAspect;->IGNORE:Lcom/microsoft/schemas/vml/STImageAspect$Enum;

    const-string v0, "atMost"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STImageAspect$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STImageAspect$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STImageAspect;->AT_MOST:Lcom/microsoft/schemas/vml/STImageAspect$Enum;

    const-string v0, "atLeast"

    invoke-static {v0}, Lcom/microsoft/schemas/vml/STImageAspect$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/vml/STImageAspect$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/vml/STImageAspect;->AT_LEAST:Lcom/microsoft/schemas/vml/STImageAspect$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
