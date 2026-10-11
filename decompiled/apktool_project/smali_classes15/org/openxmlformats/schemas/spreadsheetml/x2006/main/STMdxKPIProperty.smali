.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;",
            ">;"
        }
    .end annotation
.end field

.field public static final G:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

.field public static final INT_G:I = 0x2

.field public static final INT_M:I = 0x6

.field public static final INT_S:I = 0x3

.field public static final INT_T:I = 0x4

.field public static final INT_V:I = 0x1

.field public static final INT_W:I = 0x5

.field public static final M:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

.field public static final S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

.field public static final T:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

.field public static final V:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

.field public static final W:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmdxkpiproperty8631type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "v"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->V:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    const-string v0, "g"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->G:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    const-string v0, "s"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    const-string v0, "t"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->T:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    const-string v0, "w"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->W:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    const-string v0, "m"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty;->M:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxKPIProperty$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
