.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;
    }
.end annotation


# static fields
.field public static final B_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final B_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final B_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final B_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT_B_CTR_CH:I = 0x7

.field public static final INT_B_CTR_DES:I = 0x8

.field public static final INT_B_L:I = 0x5

.field public static final INT_B_R:I = 0x6

.field public static final INT_L_B:I = 0xa

.field public static final INT_L_CTR_CH:I = 0xb

.field public static final INT_L_CTR_DES:I = 0xc

.field public static final INT_L_T:I = 0x9

.field public static final INT_R_B:I = 0xe

.field public static final INT_R_CTR_CH:I = 0xf

.field public static final INT_R_CTR_DES:I = 0x10

.field public static final INT_R_T:I = 0xd

.field public static final INT_T_CTR_CH:I = 0x3

.field public static final INT_T_CTR_DES:I = 0x4

.field public static final INT_T_L:I = 0x1

.field public static final INT_T_R:I = 0x2

.field public static final L_B:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final L_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final L_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final L_T:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final R_B:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final R_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final R_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final R_T:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final T_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final T_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final T_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final T_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthierarchyalignment4373type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "tL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->T_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "tR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->T_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "tCtrCh"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->T_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "tCtrDes"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->T_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "bL"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->B_L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "bR"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->B_R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "bCtrCh"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->B_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "bCtrDes"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->B_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "lT"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->L_T:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "lB"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->L_B:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "lCtrCh"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->L_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "lCtrDes"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->L_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "rT"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->R_T:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "rB"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->R_B:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "rCtrCh"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->R_CTR_CH:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    const-string v0, "rCtrDes"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment;->R_CTR_DES:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierarchyAlignment$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
