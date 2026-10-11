.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;
    }
.end annotation


# static fields
.field public static final C:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_C:I = 0x4

.field public static final INT_K:I = 0x7

.field public static final INT_M:I = 0x1

.field public static final INT_P:I = 0x6

.field public static final INT_R:I = 0x5

.field public static final INT_S:I = 0x3

.field public static final INT_V:I = 0x2

.field public static final K:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

.field public static final M:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

.field public static final P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

.field public static final R:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

.field public static final S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

.field public static final V:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "stmdxfunctiontype3b22type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "m"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->M:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    const-string v0, "v"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->V:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    const-string v0, "s"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->S:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    const-string v0, "c"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->C:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    const-string v0, "r"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->R:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    const-string v0, "p"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->P:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    const-string v0, "k"

    invoke-static {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType;->K:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STMdxFunctionType$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
