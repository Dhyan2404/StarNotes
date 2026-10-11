.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlToken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final HANG:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

.field public static final INIT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

.field public static final INT_HANG:I = 0x3

.field public static final INT_INIT:I = 0x5

.field public static final INT_L:I = 0x1

.field public static final INT_R:I = 0x2

.field public static final INT_STD:I = 0x4

.field public static final L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

.field public static final R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

.field public static final STD:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "sthierbranchstyleefaatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/SimpleTypeFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "l"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;->L:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    const-string v0, "r"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;->R:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    const-string v0, "hang"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;->HANG:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    const-string v0, "std"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;->STD:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    const-string v0, "init"

    invoke-static {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle;->INIT:Lorg/openxmlformats/schemas/drawingml/x2006/diagram/STHierBranchStyle$Enum;

    return-void
.end method


# virtual methods
.method public abstract getEnumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract setEnumValue(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
