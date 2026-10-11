.class public interface abstract Lcom/microsoft/schemas/office/office/STScreenSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/schemas/office/office/STScreenSize$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lcom/microsoft/schemas/office/office/STScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_X_1024_768:I = 0x5

.field public static final INT_X_1152_862:I = 0x6

.field public static final INT_X_544_376:I = 0x1

.field public static final INT_X_640_480:I = 0x2

.field public static final INT_X_720_512:I = 0x3

.field public static final INT_X_800_600:I = 0x4

.field public static final X_1024_768:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

.field public static final X_1152_862:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

.field public static final X_544_376:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

.field public static final X_640_480:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

.field public static final X_720_512:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

.field public static final X_800_600:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stscreensize2340type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "544,376"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STScreenSize$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->X_544_376:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    const-string v0, "640,480"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STScreenSize$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->X_640_480:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    const-string v0, "720,512"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STScreenSize$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->X_720_512:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    const-string v0, "800,600"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STScreenSize$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->X_800_600:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    const-string v0, "1024,768"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STScreenSize$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->X_1024_768:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    const-string v0, "1152,862"

    invoke-static {v0}, Lcom/microsoft/schemas/office/office/STScreenSize$Enum;->forString(Ljava/lang/String;)Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/office/STScreenSize;->X_1152_862:Lcom/microsoft/schemas/office/office/STScreenSize$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
